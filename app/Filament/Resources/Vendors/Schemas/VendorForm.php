<?php

namespace App\Filament\Resources\Vendors\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;

class VendorForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
              ->components([
                TextInput::make('nama')
                    ->required(),
                TextInput::make('contact_person')
                    ->required(),
                TextInput::make('no_telp')
                    ->required(),
                TextInput::make('npwp'),
                TextInput::make('no_rekening'),
                TextInput::make('ppn22'),
                TextInput::make('ppn23'),
                TextInput::make('alamat')
                    ->required(),
            ]);
    }
}
