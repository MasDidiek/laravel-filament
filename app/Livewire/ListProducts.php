<?php

namespace App\Livewire;

use Livewire\Component;

use App\Models\Pembelian;
use App\Models\PembelianDetail;
use Filament\Actions\Action;
use Filament\Actions\Concerns\InteractsWithActions;  
use Filament\Actions\Contracts\HasActions;
use Filament\Schemas\Concerns\InteractsWithSchemas;
use Filament\Schemas\Contracts\HasSchemas;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Table;
use Illuminate\Contracts\View\View;


class ListProducts extends Component  implements HasActions, HasSchemas, HasTable
{

    use InteractsWithActions;
    use InteractsWithSchemas;
    use InteractsWithTable;
    
    public function table(Table $table): Table
    {
        return $table
            ->query(PembelianDetail::query())
            ->columns([
                TextColumn::make('nama_barang')->label('Nama Barang'),
                TextColumn::make('jumlah')->label('Jumlah'),
                TextColumn::make('satuan')->label('Satuan'),
                TextColumn::make('harga_satuan')->label('Harga Satuan')->money('idr', true),
                TextColumn::make('total_harga')->label('Total Harga')->money('idr', true),
            ])
            ->filters([
                // ...
            ])
            ->recordActions([
                // ...
            ])
            ->toolbarActions([
                // ...
            ]);
    }
    

    public function render()
    {
        return view('livewire.list-products');
    }
}
