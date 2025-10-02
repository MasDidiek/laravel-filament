<?php

namespace App\Filament\Resources\Permintaans\Pages;

use App\Filament\Resources\Permintaans\PermintaanResource;
use Filament\Actions\CreateAction;
use Filament\Resources\Pages\ListRecords;

class ListPermintaans extends ListRecords
{
    protected static string $resource = PermintaanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            CreateAction::make(),
        ];
    }
}
