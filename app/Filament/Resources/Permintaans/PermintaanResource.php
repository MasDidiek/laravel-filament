<?php

namespace App\Filament\Resources\Permintaans;

use BackedEnum;
use App\Models\Permintaan;
use Filament\Tables\Table;
use Filament\Schemas\Schema;
use Filament\Resources\Resource;
use Filament\Tables\Filters\Filter;
use Filament\Support\Icons\Heroicon;
use Illuminate\Support\Facades\Auth;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Columns\BadgeColumn;
use Filament\Tables\Filters\SelectFilter;
use Illuminate\Database\Eloquent\Builder;
use App\Filament\Resources\Permintaans\Pages\EditPermintaan;
use App\Filament\Resources\Permintaans\Pages\ListPermintaans;
use App\Filament\Resources\Permintaans\Pages\CreatePermintaan;
use App\Filament\Resources\Permintaans\Schemas\PermintaanForm;
use App\Filament\Resources\Permintaans\Tables\PermintaansTable;



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
                ->url(fn ($record) => url(config('filament.path') . "/admin/permintaans/{$record->getKey()}/view"))
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

    public static function mutateFormDataBeforeCreate(array $data): array
    {
        $data['details'] = collect($data['details'] ?? [])
            ->map(function ($detail) {
                $detail['user_id'] = Auth::id(); // isi user_id dengan user yang sedang login
                return $detail;
            })
            ->toArray();

        return $data;
    }

    public static function mutateFormDataBeforeSave(array $data): array
    {
        $data['details'] = collect($data['details'] ?? [])
            ->map(function ($detail) {
                $detail['user_id'] = Auth::id();
                return $detail;
            })
            ->toArray();

        return $data;
    }


    public static function getPages(): array
    {
        return [
            'index' => Pages\ListPermintaans::route('/'),
            'create' => Pages\CreatePermintaan::route('/create'),
             'details' => Pages\ViewPermintaan::route('/{record}/view'),
            'edit' => Pages\EditPermintaan::route('/{record}/edit'),
           
        ];
    }
}
