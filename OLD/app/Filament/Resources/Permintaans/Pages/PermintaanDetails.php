<?php

namespace App\Filament\Resources\Permintaans\Pages;

use App\Filament\Resources\Permintaans\PermintaanResource;
use App\Models\Permintaan;
use Filament\Resources\Pages\Page;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Illuminate\Contracts\View\View;

class PermintaanDetails extends Page
{  
     use InteractsWithRecord;

    protected static string $resource = PermintaanResource::class;
   
        // ✅ Ini yang penting!
    protected static string $routePath = '/{record}/details';

    // Menunjukkan blade view yang digunakan
    protected string $view = 'filament.resources.permintaans.pages.permintaan-details';

    //public Permintaan $record;

    public function mount(int|string $record): void
    {
        // Ambil data Permintaan dari ID/Slug/UUID
      $this->record = $this->resolveRecord($record)->load('details');
    }
}
