<?php

namespace App\Filament\Resources\Pembelians\Pages;

use App\Filament\Resources\Pembelians\PembelianResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;
use Filament\Actions\Action;

class EditPembelian extends EditRecord
{
    protected static string $resource = PembelianResource::class;

    protected function getHeaderActions(): array
    {
       return [
        // Tombol default "Save" tetap ada
        
        ];
    }
}
