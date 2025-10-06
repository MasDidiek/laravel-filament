<?php

namespace App\Filament\Resources\Permintaans\Pages;

use Filament\Tables\Table;
use App\Models\PermintaanDetail;
use Filament\Resources\Pages\Page;
use Illuminate\Support\Facades\Auth;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Concerns\InteractsWithTable;
use App\Filament\Resources\Permintaans\PermintaanResource;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;


class ViewPermintaan extends Page implements HasTable
{
    use InteractsWithRecord;
    use InteractsWithTable;

    public string $nama_barang = '';
    public int $jumlah = 0;
    public ?string $satuan = null;
    public ?string $keterangan = null;
    public array $suggestedItems = [];
    protected static string $resource = PermintaanResource::class;

    protected string $view = 'filament.resources.permintaans.pages.view-permintaan';

    public function mount($record)
    {
        $this->record = $this->resolveRecord($record);

          // Ambil daftar nama barang unik dari tabel
            $this->suggestedItems = PermintaanDetail::query()
                ->select('nama_barang')
                ->distinct()
                ->orderBy('nama_barang')
                ->pluck('nama_barang')
                ->toArray();

                
    }

    
    public function table(Table $table): Table
    {
        return $table
            ->query(
                PermintaanDetail::query()->where('permintaan_id', $this->record->id)
            )
            ->columns([
                TextColumn::make('nama_barang')->label('Nama Barang'),
                TextColumn::make('jumlah'),
                TextColumn::make('satuan'),
                TextColumn::make('keterangan'),
            ])
            ->paginated(false) ;
    }


    public function getTitle(): string
    {
        return 'Detail Permintaan #' . $this->record->no_surat;
    }


        
    public function createDetail()
    {
        $this->validate([
            'nama_barang' => 'required|string|max:255',
            'jumlah' => 'required|integer|min:1',
            'satuan' => 'nullable|string|max:255',
            'keterangan' => 'nullable|string',
        ]);

        $this->record->details()->create([
            'nama_barang' => $this->nama_barang,
            'jumlah' => $this->jumlah,
            'satuan' => $this->satuan,
            'keterangan' => $this->keterangan,
            'user_id' => Auth::id(),
        ]);

        // Reset form input
        $this->reset(['nama_barang', 'jumlah', 'satuan', 'keterangan']);

        // Refresh table
        $this->dispatch('$refresh');
    }
}
