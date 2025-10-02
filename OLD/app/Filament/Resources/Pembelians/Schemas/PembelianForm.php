<?php

namespace App\Filament\Resources\Pembelians\Schemas;

use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;

class PembelianForm
{
    public static function configure(Schema $schema): Schema
    {
        return $schema
            ->components([
                DatePicker::make('tanggal')
                    ->required(),
                TextInput::make('id_kategori')
                    ->required()
                    ->numeric(),
                TextInput::make('permintaan_id')
                    ->required()
                    ->numeric(),
                TextInput::make('no_pesanan')
                    ->required(),
                TextInput::make('jns_belanja')
                    ->required(),
                TextInput::make('jns_pembelian')
                    ->required(),
                TextInput::make('id_vendor')
                    ->numeric()
                    ->default(null),
                TextInput::make('id_ekatalog')
                    ->default(null),
                TextInput::make('user_id')
                    ->required()
                    ->numeric(),
                DateTimePicker::make('tgl_datang_barang'),
                TextInput::make('penerima_barang')
                    ->default(null),
                Textarea::make('note')
                    ->default(null)
                    ->columnSpanFull(),
                DatePicker::make('tgl_ba'),
                TextInput::make('no_spk')
                    ->default(null),
                TextInput::make('bapp')
                    ->default(null),
                TextInput::make('bastp')
                    ->default(null),
                TextInput::make('bap_penyelesaian')
                    ->default(null),
                TextInput::make('bast')
                    ->default(null),
                TextInput::make('status')
                    ->required()
                    ->default('draft'),
                TextInput::make('tahun_anggaran')
                    ->required(),
            ]);
    }
}
