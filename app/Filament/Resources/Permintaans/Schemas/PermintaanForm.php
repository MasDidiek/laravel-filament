<?php

namespace App\Filament\Resources\Permintaans\Schemas;

use Filament\Schemas\Schema;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\Select;

class PermintaanForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                DatePicker::make('tanggal')
                    ->required(),
                TextInput::make('no_surat')
                    ->required(),
                TextInput::make('puskesmas')
                    ->required(),
                TextInput::make('bagian')
                    ->required(),
                TextInput::make('nama_pemohon')
                    ->required(),
                Select::make('tahun_anggaran')
                    ->options([                  
                        '2025' => '2025',
                        '2026' => '2026',
                        '2027' => '2027',
                    ])
                    ->required(),
            ]);
    }
}
