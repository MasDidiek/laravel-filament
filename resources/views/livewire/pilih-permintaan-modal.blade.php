<div>
    <input type="text" placeholder="Search..." wire:model="search" class="border p-2 mb-2 w-full" />

    <table class="w-full border-collapse table-auto fi-ta-table">
        <thead>
            <tr class="border-b">
                <th class="p-2 text-left">Tanggal</th>
                <th class="p-2 text-left">No Permintaan</th>
                <th class="p-2 text-left">Pemohon</th>
                <th class="p-2 text-left">Aksi</th>
            </tr>
        </thead>
        <tbody>

          
            @foreach($permintaans as $permintaan)
                <tr class="border-b">
                     <td class="p-2">{{ $permintaan->tanggal }}</td>
                    <td class="p-2">{{ $permintaan->no_surat }}</td>
                    <td class="p-2">{{ $permintaan->nama_pemohon }} ( {{ $permintaan->bagian }})</td>
                    
                    <td class="p-2">
                        <button wire:click="pilih({{ $permintaan->id }})" class="bg-blue-500 text-white px-3 py-1 rounded">Pilih</button>
                    </td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>
