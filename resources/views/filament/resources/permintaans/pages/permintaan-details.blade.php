<x-filament::page>

    
        <h4 class="font-weight-medium:500 text-xl mb-4">
          Detail Permintaan: {{ $record->no_surat }}
        </h4>

        @push('styles')
            <link rel="stylesheet" href="{{ asset('css/custom.css') }}">
        @endpush




      <x-filament::card>

        <div class="row">
            <div class="col-md-6">
                        <div class="flex gap-2">
                        <span class="w-40 font-semibold">No Surat</span> : 
                        <span>{{ $record->no_surat }}</span>
                    </div>
                    <div class="flex gap-2">
                        <span class="w-40 font-semibold">Tanggal Permintaan</span> : 
                        <span>{{ \Carbon\Carbon::parse($record->tanggal_permintaan)->format('d-m-Y') }}</span>
                    </div>
                    <div class="flex gap-2">
                        <span class="w-40 font-semibold">Pemohon</span> : 
                        <span>{{ $record->nama_pemohon }}</span>
                    </div>

            </div>
             <div class="col-md-6">
                
                        <div class="flex gap-2">
                            <span class="w-40 font-semibold">Puskesmas</span> : 
                            <span>{{ $record->puskesmas }}</span>
                        </div>
                        <div class="flex gap-2">
                            <span class="w-40 font-semibold">Bagian</span> : 
                            <span>{{ $record->bagian }}</span>
                        </div>
                        <div class="flex gap-2">
                            <span class="w-40 font-semibold">Status</span> : 
                            <span>{{ ucfirst($record->status) }}</span>
                        </div>

             </div>
        </div>
            

    </x-filament::card>


 <x-filament::card>
   

  
    <h3>Input Barang Permintaan</h3>

 <form method="POST" action="{{ route('permintaan.detail.store', $record->id) }}">
        @csrf


        <table width="100%" class="mb-4" >
            <tr>
                <td class="font-semibold text-lg mb-2"  width="400"><input type="text" name="nama_barang" placeholder="ketik nama barang" required class="fi-input w-full" /></td>   
                <td class="font-semibold text-lg mb-2"  width="150"><input type="number" name="jumlah" placeholder="jumlah" required class="fi-input w-full" /></td>   
                <td class="font-semibold text-lg mb-2"><input type="text" name="satuan" placeholder="satuan" required class="fi-input w-full" /></td>   
     
                <td class="font-semibold text-lg mb-2"><input type="text" name="keterangan" placeholder="keterangan" class="fi-input w-full" /></td>   
                <td class="font-semibold text-lg mb-2"  width="150">
                        <x-filament::button type="submit" class="w-full" color="success">
                        Simpan
                    </x-filament::button>
                </td> 
            </tr>
        </table>
       

    
    </form>
    <br>
    

     

        <div  class="fi-ta-content-ctn">
            <table class="fi-ta-table w-full">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Nama Barang</th>
                        <th>Jumlah</th>
                        <th>Satuan</th>
                        <th>Harga</th>
                        <th>Total</th>
                        <th>Keterangan</th>
                        <th>Aksi</th>
                    </tr>
                </thead>
                <tbody>
                    @foreach($record->details as $detail)
                        <tr  class="fi-ta-row">
                           <td>{{ $loop->iteration }}</td>
                            <td>{{ $detail->nama_barang }}</td>
                            <td>{{ $detail->jumlah }}</td>
                            <td>{{ $detail->satuan }}</td>
                            <td>{{ number_format($detail->harga) }}</td>
                            <td class="text-end">{{ number_format($detail->total) }}</td>
                            <td>{{ $detail->keterangan }}</td>
                             <td class="text-center">
                                <form method="POST" action="{{ route('permintaan.detail.delete', $detail->id) }}" onsubmit="return confirm('Yakin ingin menghapus?')">
                                    @csrf
                                    @method('DELETE')
                                   <button type="submit" class="text-red-600 hover:text-red-800" style="font-size: 8px">
                                        <x-heroicon-o-trash  /> hapus
                                    </button>
                                </form>
                            </td>
                        </tr>
                    @endforeach
                </tbody>
            </table>
        </div>
    </x-filament::card>
</x-filament::page>
