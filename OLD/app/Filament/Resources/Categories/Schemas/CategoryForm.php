<?php

namespace App\Filament\Resources\Categories\Schemas;

use Filament\Forms\Components\TextInput;
use Filament\Schemas\Schema;

class CategoryForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                TextInput::make('nama_kategori')
                    ->required(),
                TextInput::make('pagu')
                    ->required()
                    ->numeric()
                    ->default(0.0),
                TextInput::make('tahun_anggaran')
                    ->required(),
            ]);
    }
}
