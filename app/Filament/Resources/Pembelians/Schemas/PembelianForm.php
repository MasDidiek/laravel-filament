<?php

namespace App\Filament\Resources\Pembelians\Schemas;

use App\Models\Permintaan;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TextInput;
use Filament\Forms\Components\Textarea;
use Filament\Schemas\Schema;
use Filament\Forms\Components\Select;
use Filament\Forms\Components\Hidden;
use Filament\Actions\Action;
use Filament\Forms\Components\Section;
use Illuminate\View\View;




class PembelianForm
{
    public static function configure(Schema $schema): Schema
    {
      return $schema
      
       ->columns(3) // default semua komponen jadi 3 kolom
            ->components([
                Select::make('permintaan_id')
                    ->label('Permintaan')
                    ->options(function () {
                        // Ambil hanya permintaan tahun ini & status draft
                        return \App\Models\Permintaan::query()
                            ->where('tahun_anggaran', date('Y'))
                            ->where('status', 'Draft')
                            ->pluck('no_surat', 'id')
                            ->toArray();
                    })
                    ->searchable()
                    ->reactive()
                    ->afterStateUpdated(function ($state, callable $set) {
                        // Ambil data permintaan yang dipilih
                        $permintaan = \App\Models\Permintaan::find($state);
                        if ($permintaan) {
                            $set('tgl_permintaan', $permintaan->tanggal);
                            $set('nama_pemohon', $permintaan->nama_pemohon.'- '. $permintaan->bagian );
                        } else {
                            $set('tgl_permintaan', '');
                            $set('nama_pemohon', '');
                        }
                    })
                    ->required(),
                TextInput::make('tgl_permintaan')
                    ->label('Tanggal Permintaan')
                    ->disabled() // readonly
                    ->required(),

                TextInput::make('nama_pemohon')
                    ->label('Nama Pemohon')
                    ->disabled() // readonly
                    ->required(),

                DatePicker::make('tanggal')
                    ->required(),

                Select::make('id_kategori')
                    ->label('Kategori')
                    ->relationship('kategori', 'nama_kategori')
                    ->searchable()
                    ->required(),

           

                TextInput::make('no_pesanan')
                    ->required(),

                Select::make('jns_belanja')
                    ->label('Jenis Belanja')
                    ->options([
                         'modal' => 'Modal',
                         'barang_jasa' => 'Barang Jasa',
                         'apbd' => 'APBD',
                         'lainnya' => 'Lainnya',
                       
                    ])
                    ->required(),
                    
    
                Select::make('jns_pembelian')
                    ->label('Jenis Pembelian')
                    ->options([
                        'non_kat' => 'Non Katalog',
                        'Ekat' => 'E-Katalog',
                        'inaproc' => 'Inaproc V6'
                    ])
                    ->live()
                    ->required(),

                TextInput::make('id_ekatalog')
                ->label('ID E-Katalog')
                ->visible(fn ($get) => $get('jns_pembelian') === 'Ekat'),

                TextInput::make('id_inaproc')
                ->label('ID Inaproc')
                ->visible(fn ($get) => $get('jns_pembelian') === 'inaproc'),
                Hidden::make('user_id')
                    ->default(auth()->id()),

             
                Select::make('id_vendor')
                    ->label('Vendor')
                    ->relationship('vendor', 'nama')
                    ->searchable(),


              TextInput::make('tahun_anggaran')
                    ->numeric()
                    ->minValue(2000)
                    ->maxValue(date('Y') + 1)
                    ->required()
                    ->default(date('Y'))
            ]);

    }
}
