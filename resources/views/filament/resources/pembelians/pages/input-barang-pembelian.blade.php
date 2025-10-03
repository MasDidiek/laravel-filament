<x-filament-panels::page>
    {{-- Page content --}}

        
        @push('styles')
            <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
        @endpush


    
         <x-filament::card>

                    <h2 class="text-xl font-bold mb-4">Detail Pembelian</h2>
                 

                                <div class="row">
                        <div class="col-md-6">
                                    <div class="flex gap-2">
                                    <span class="w-40 font-semibold">No Pesanan</span> : 
                                    <span>{{ $record->no_pesanan }}</span>
                                </div>
                                <div class="flex gap-2">
                                    <span class="w-40 font-semibold">Tanggal </span> : 
                                    <span>{{ \Carbon\Carbon::parse($record->tanggal)->format('d-m-Y') }}</span>
                                </div>
                                <div class="flex gap-2">
                                    <span class="w-40 font-semibold">Jenis Belanja</span> : 
                                    <span>{{ $record->jns_belanja }}</span>
                                </div>
                                 <div class="flex gap-2">
                                    <span class="w-40 font-semibold">ID Ekat</span> : 
                                    <span>{{ $record->id_ekatalog }}</span>
                                </div>
                              

                        </div>
                        <div class="col-md-6">
                            
                                    <div class="flex gap-2">
                                        <span class="w-40 font-semibold">Jenis Pembelian</span> : 
                                        <span>{{ $record->jns_pembelian }}</span>
                                    </div>
                                    <div class="flex gap-2">
                                        <span class="w-40 font-semibold">Vendor</span> : 
                                        <span>{{ $record->vendor->nama }}</span>
                                    </div>
                                    <div class="flex gap-2">
                                        <span class="w-40 font-semibold">Status</span> : 
                                        <span>{{ ucfirst($record->status) }}</span>
                                    </div>
                                      <div class="flex gap-2">
                                        <span class="w-40 font-semibold">Tahun Anggaran</span> : 
                                        <span>{{ ucfirst($record->tahun_anggaran) }}</span>
                                    </div>

                        </div>
                    </div>

                   
                    
          
            </x-filament::card>
            <x-filament::card>
                    <h4>Pilih Barang yang akan dibeli</h4> <br>
                    @livewire('input-product', ['pembelian' => $record])


            </x-filament::card>
</x-filament-panels::page>
