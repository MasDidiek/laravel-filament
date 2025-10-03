<?php

namespace App\Filament\Resources\Pembelians\Pages;

use App\Filament\Resources\Pembelians\PembelianResource;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Filament\Resources\Pages\Page;

class InputBarangPembelian extends Page
{
    use InteractsWithRecord;

    protected static string $resource = PembelianResource::class;

    protected string $view = 'filament.resources.pembelians.pages.input-barang-pembelian';

    public function mount(int|string $record): void
    {
        $this->record = $this->resolveRecord($record);
    }
}
