<?php

namespace App\Filament\Resources\Permintaans\Pages;

use App\Filament\Resources\Permintaans\PermintaanResource;
use Filament\Resources\Pages\CreateRecord;

class CreatePermintaan extends CreateRecord
{
    protected static string $resource = PermintaanResource::class;

    protected function mutateFormDataBeforeCreate(array $data): array
    {
        $data['user_id'] = auth()->id(); // ambil user login
        return $data;
    }
}
