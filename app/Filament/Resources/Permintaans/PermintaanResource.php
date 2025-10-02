<?php

namespace App\Filament\Resources\Permintaans;

use App\Filament\Resources\Permintaans\Pages\CreatePermintaan;
use App\Filament\Resources\Permintaans\Pages\EditPermintaan;
use App\Filament\Resources\Permintaans\Pages\ListPermintaans;
use App\Filament\Resources\Permintaans\Schemas\PermintaanForm;
use App\Filament\Resources\Permintaans\Tables\PermintaansTable;
use App\Models\Permintaan;
use BackedEnum;
use Filament\Resources\Resource;
use Filament\Schemas\Schema;
use Filament\Support\Icons\Heroicon;
use Filament\Tables\Table;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Filters\Filter;
use Illuminate\Database\Eloquent\Builder;
use Filament\Tables\Filters\SelectFilter;
use Filament\Tables\Columns\BadgeColumn;



class PermintaanResource extends Resource
{
    protected static ?string $model = Permintaan::class;

    protected static string|BackedEnum|null $navigationIcon = Heroicon::OutlinedRectangleStack;

    protected static ?string $recordTitleAttribute = 'Permintaan';

    public static function form(Schema $schema): Schema
    {
        return PermintaanForm::configure($schema);
    }

    public static function table(Table $table): Table
    {
        //return PermintaansTable::configure($table);
        return $table
            ->recordUrl(null) 
            ->persistFiltersInSession() 
           
            ->columns([
                TextColumn::make('id')->sortable(),
                TextColumn::make('tanggal')->label('Tanggal')->sortable(),
               TextColumn::make('no_surat')
                ->label('No Surat')
                ->searchable()
                ->url(fn ($record) => url(config('filament.path') . "/admin/permintaans/{$record->getKey()}/details"))
                ->openUrlInNewTab(false)
                ->color('primary'),
                TextColumn::make('puskesmas')->label('Puskesmas')->sortable(),
                TextColumn::make('bagian')->label('Bagian')->sortable(),
                TextColumn::make('nama_pemohon')->label('Nama Pemohon')->sortable(),
                TextColumn::make('tahun_anggaran')->label('Tahun Anggaran')->sortable(),
                BadgeColumn::make('status')
                ->colors([
                    'warning' => 'Draft',
                    'info' => 'Diproses',
                    'success' => 'Selesai',
                ]),
                
                
            ]) 
          ->filters([
            // Filter Tahun Anggaran
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

            // Filter Status
            SelectFilter::make('status')
                ->options([
                    'Draft' => 'Draft',
                    'Diproses' => 'Diproses',
                    'Selesai' => 'Selesai',
                ]),
        ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPermintaans::route('/'),
            'create' => Pages\CreatePermintaan::route('/create'),
             'details' => Pages\PermintaanDetails::route('/{record}/details'),
            'edit' => Pages\EditPermintaan::route('/{record}/edit'),
           
        ];
    }
}
