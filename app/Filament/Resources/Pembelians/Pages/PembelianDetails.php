<?php

namespace App\Filament\Resources\Pembelians\Pages;

use App\Filament\Resources\Pembelians\PembelianResource;
use Filament\Resources\Pages\Page; // HARUS Filament\Resources\Pages\Page
use Filament\Resources\Pages\Concerns\InteractsWithRecord;

class PembelianDetails extends Page
{
     protected static string $resource = PembelianResource::class;

       // ✅ Ini yang penting!
    protected static string $routePath = '/{record}/details';

    
    // Menunjukkan blade view yang digunakan
    protected  string $view = 'filament.resources.pembelians.pages.pembelians-details';

    //public Permintaan $record;

    public function mount(int|string $record): void
    {
        // Ambil data Permintaan dari ID/Slug/UUID
      $this->record = $this->resolveRecord($record)->load('details');
    }
}
