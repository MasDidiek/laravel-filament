<?php

namespace App\Filament\Resources\Pembelians\Tables;

use Filament\Actions\BulkActionGroup;
use Filament\Actions\DeleteBulkAction;
use Filament\Actions\EditAction;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use Filament\Tables\Filters\SelectFilter;

class PembeliansTable
{
    public static function configure(Table $table): Table
    {
        return $table
          ->recordUrl(null) 
             ->persistFiltersInSession() 
            ->columns([
                TextColumn::make('tanggal')
                    ->date()
                    ->sortable(),
               TextColumn::make('kategori.nama_kategori')
                    ->label('Kategori')
                    ->sortable()
                    ->searchable(),
     

                TextColumn::make('no_pesanan')
                ->label('No Pesanan')
                ->searchable()
                ->url(fn ($record) => url(config('filament.path') . "/admin/pembelians/{$record->getKey()}/list"))
                ->openUrlInNewTab(false)
                ->color('primary'),

                TextColumn::make('jns_belanja')
                    ->label('Jenis Belanja')
                    ->sortable()
                    ->badge()
                     ->formatStateUsing(fn ($state) => match ($state) {
                        'barang_jasa' => 'Barang Jasa',
                        'modal' => 'Modal',
                        default => $state,
                    })
                    ->colors([
                        'info' => 'barang_jasa',
                        'warning' => 'modal',
                    ])
                    ->searchable(),
                TextColumn::make('jns_pembelian')
                ->label('Jenis Pembelian')
                ->sortable()
                ->badge()
                 ->formatStateUsing(fn ($state) => match ($state) {
                    'non_kat' => 'Non Katalog',
                    'Ekat' => 'E-Catalog',
                    default => $state,
                })
                ->colors([
                    'success' => 'Ekat',
                    'warning' => 'non_kat',
                ])
                    ->searchable(),
               TextColumn::make('vendor.nama')
                ->label('Vendor')
                ->sortable()
                ->searchable(),
                TextColumn::make('tgl_ba')
                    ->label('Tgl. BA')
                    ->date()
                    ->sortable(),
                TextColumn::make('no_spk')
                    ->label('No. SPK')
                    ->searchable(),
                TextColumn::make('bapp')
                    ->label('BAPP')
                    ->searchable(),
                TextColumn::make('bastp')
                    ->label('BASTP')
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
                 SelectFilter::make('tahun_anggaran')
                ->options(
                    \App\Models\Permintaan::query()
                        ->select('tahun_anggaran')
                        ->distinct()
                        ->orderByDesc('tahun_anggaran')
                        ->pluck('tahun_anggaran', 'tahun_anggaran')
                        ->toArray()
                )
                ->default(date('Y')),
             SelectFilter::make('kategori')
                ->label('Kategori')
                ->relationship('kategori', 'nama_kategori')
                ->searchable(),
            SelectFilter::make('vendor')
                ->label('Vendor')
                ->relationship('vendor', 'nama')
                ->searchable(),
            SelectFilter::make('status')
                ->options([
                    'Draft' => 'Draft',
                    'Diproses' => 'Diproses',
                    'Selesai' => 'Selesai',
                ]),
       
            SelectFilter::make('jns_pembelian')
                ->options([
                    'Ekat' => 'e-Catalog',
                    'non_kat' => 'Non Katalog',
                ]),
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
