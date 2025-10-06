<x-filament-panels::page>
            
        @push('styles')
            <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
        @endpush



    <x-filament::section heading="Informasi Permintaan">
        <div class="grid grid-cols-2 gap-4">
            <div>
                <strong>No Surat:</strong> {{ $record->no_surat }}
            </div>
           <div>
                <strong>Tanggal:</strong> {{ \Carbon\Carbon::parse($record->tanggal)->format('d-m-Y') }}
            </div>
            <div>
                <strong>Pemohon:</strong> {{ $record->nama_pemohon }}
            </div>
            <div>
                <strong>Status:</strong> {{ $record->status }}
            </div>
        </div>
    </x-filament::section>

    <x-filament::section heading="Input Barang ">

            {{-- Form Tambah Barang --}}
            <form wire:submit.prevent="createDetail" class="mb-6">

                <table class="table">
                    <tr>
                        <td>Nama barang</td>
                        <td>Qty</td>
                        <td>Satuan</td>
                        <td>Keterangan</td>
                        <td>#</td>
                    </tr>
                        <tr>
                            <td>  
                                 <x-filament::input label="Jumlah" id="nama_barang" wire:model.defer="nama_barang"
                                    list="nama-barang-list"  required />
                                    
                                <datalist id="nama-barang-list">
                                    @foreach ($suggestedItems as $item)
                                        <option value="{{ $item }}">
                                    @endforeach
                                </datalist>
                        </td>
                            <td  width="150">  <x-filament::input label="Jumlah" type="number" wire:model.defer="jumlah" required /></td>
                            <td  width="150"> <x-filament::input label="Satuan" wire:model.defer="satuan" /></td>
                            <td><x-filament::input label="Keterangan" wire:model.defer="keterangan" /></td>
                            <td> <x-filament::button type="submit">Tambah Barang</x-filament::button></td>
                        </tr>
                </table>


                </div>
            </form>

            {{-- Tabel Daftar Barang --}}

    </x-filament::section>


        <x-filament::card  heading="Daftar Barang ">
        {{ $this->table }}
    </x-filament::card>

   


</x-filament-panels::page>
