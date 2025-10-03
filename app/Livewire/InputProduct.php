<?php

namespace App\Livewire;


use Livewire\Component;
use App\Models\Pembelian;
use App\Models\PermintaanDetail;
use App\Models\PembelianDetail;

use Filament\Actions\Action;
use Filament\Actions\Concerns\InteractsWithActions;  
use Filament\Actions\Contracts\HasActions;
use Filament\Schemas\Concerns\InteractsWithSchemas;
use Filament\Schemas\Contracts\HasSchemas;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Table;
use Illuminate\Contracts\View\View;
use Filament\Actions\BulkAction;


use Illuminate\Database\Eloquent\Collection;
use Filament\Notifications\Notification;




class InputProduct extends Component   implements HasActions, HasSchemas, HasTable
{

    
    use InteractsWithActions;
    use InteractsWithSchemas;
    use InteractsWithTable;
    
    public $pembelian;
    public $selectedBarang = []; // array keyed by permintaan_detail_id

    public function mount($pembelian)
    {
        $this->pembelian = $pembelian;
    }


    public function table(Table $table): Table
    {
        return $table
           ->query(
            PermintaanDetail::query()
                ->where('permintaan_id', $this->pembelian->permintaan_id)
                ->where('pembelian_id', 0) // hanya barang yang belum dibeli
        )
            ->columns([
                TextColumn::make('nama_barang')->label('Nama Barang'),
                TextColumn::make('jumlah')->label('Jumlah'),
                TextColumn::make('satuan')->label('Satuan'),
                TextColumn::make('harga')->label('Harga Satuan')->money('idr', true),
                TextColumn::make('total')->label('Total Harga')->money('idr', true),
            ])
            ->bulkActions([
                BulkAction::make('Tambahkan ke Pembelian')
                    ->action(function (Collection  $records) {
                        foreach ($records as $record) {
                            PembelianDetail::create([
                                'pembelian_id' => $this->pembelian->id,
                                'permintaan_detail_id' => $record->id,
                                'nama_barang' => $record->nama_barang,
                                'jumlah' => $record->jumlah,
                                'satuan' => $record->satuan,
                                'harga_satuan' => $record->harga,
                                'total' => $record->total,
                                'user_id' => auth()->id() ?? 1,
                            ]);

                                        
                            // Update permintaan_detail -> tandai sudah dibeli
                            $record->update([
                                'pembelian_id' => $this->pembelian->id,
                            ]);
                        }

                        
                            // Notifikasi sukses
                        Notification::make()
                            ->title('Berhasil')
                            ->body('Barang berhasil ditambahkan ke pembelian.')
                            ->success()
                            ->send();
                            
                        return redirect(url(config('filament.path') . "/admin/pembelians/{$this->pembelian->id}/list"));

                    })
                    ->requiresConfirmation(),
            ]);

            
    }
    

    public function render()
    {
        return view('livewire.input-product');
    }
}
