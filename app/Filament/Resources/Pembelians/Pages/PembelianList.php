<?php

namespace App\Filament\Resources\Pembelians\Pages;

use App\Filament\Resources\Pembelians\PembelianResource;
use Filament\Resources\Pages\Concerns\InteractsWithRecord;
use Filament\Resources\Pages\Page;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables\Table;
use App\Models\PembelianDetail;
use Filament\Actions\Action;
use Filament\Actions\Concerns\InteractsWithActions;
use Filament\Actions\Contracts\HasActions;
use Filament\Schemas\Concerns\InteractsWithSchemas;
use Filament\Schemas\Contracts\HasSchemas;
use Filament\Tables\Concerns\InteractsWithTable;
use Filament\Tables\Contracts\HasTable;
use Filament\Tables\Filters\SelectFilter;

class PembelianList extends Page
{
    use InteractsWithRecord;

    protected static string $resource = PembelianResource::class;

    protected string $view = 'filament.resources.pembelians.pages.pembelian-list';

    public function mount(int|string $record): void
    {
        $this->record = $this->resolveRecord($record);
    }

    public function getTitle(): string
    {
        return "Detail  Pembelian Barang";
    }

    
    protected function getHeaderActions(): array
    {
        return [
            Action::make('edit')
                ->color('success')
                ->url(fn () => $this->getResource()::getUrl('edit', ['record' => $this->record])),
            Action::make('delete')
                ->color('danger')
                ->requiresConfirmation()
                ->action(fn () => $this->post->delete()),
           Action::make('input barang')
                ->url(fn () => $this->getResource()::getUrl('input_barang', ['record' => $this->record])),
 
        ];
    }


        
        
    

}
