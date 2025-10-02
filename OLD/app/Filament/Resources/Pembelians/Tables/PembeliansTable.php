<?php

namespace App\Filament\Resources\Pembelians\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;

class PembeliansTable
{
    public static function configure(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('tanggal')
                    ->date()
                    ->sortable(),
                TextColumn::make('id_kategori')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('permintaan_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('no_pesanan')
                    ->searchable(),
                TextColumn::make('jns_belanja')
                    ->searchable(),
                TextColumn::make('jns_pembelian')
                    ->searchable(),
                TextColumn::make('id_vendor')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('id_ekatalog')
                    ->searchable(),
                TextColumn::make('user_id')
                    ->numeric()
                    ->sortable(),
                TextColumn::make('tgl_datang_barang')
                    ->dateTime()
                    ->sortable(),
                TextColumn::make('penerima_barang')
                    ->searchable(),
                TextColumn::make('tgl_ba')
                    ->date()
                    ->sortable(),
                TextColumn::make('no_spk')
                    ->searchable(),
                TextColumn::make('bapp')
                    ->searchable(),
                TextColumn::make('bastp')
                    ->searchable(),
                TextColumn::make('bap_penyelesaian')
                    ->searchable(),
                TextColumn::make('bast')
                    ->searchable(),
                TextColumn::make('status')
                    ->searchable(),
                TextColumn::make('tahun_anggaran'),
                TextColumn::make('created_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
                TextColumn::make('updated_at')
                    ->dateTime()
                    ->sortable()
                    ->toggleable(isToggledHiddenByDefault: true),
            ])
            ->filters([
                //
            ])
            ->recordActions([
                EditAction::make(),
            ])
            ->toolbarActions([
                BulkActionGroup::make([
                    DeleteBulkAction::make(),
                ]),
            ]);
    }
}
