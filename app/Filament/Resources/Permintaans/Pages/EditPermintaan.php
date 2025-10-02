<?php

namespace App\Filament\Resources\Permintaans\Pages;

use App\Filament\Resources\Permintaans\PermintaanResource;
use Filament\Actions\DeleteAction;
use Filament\Resources\Pages\EditRecord;

class EditPermintaan extends EditRecord
{
    protected static string $resource = PermintaanResource::class;

    protected function getHeaderActions(): array
    {
        return [
            DeleteAction::make(),
        ];
    }
}
