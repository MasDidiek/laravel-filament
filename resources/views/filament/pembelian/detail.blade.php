<div class="p-4">
    <h2 class="text-lg font-bold mb-2">Header Pembelian</h2>
    <div class="mb-4">
        <p>No Pesanan: {{ $pembelian->no_pesanan }}</p>
        <p>Tanggal: {{ $pembelian->tanggal }}</p>
        <p>Vendor: {{ $pembelian->vendor->nama ?? '-' }}</p>
        <p>Permintaan: {{ $pembelian->permintaan->no_surat ?? '-' }}</p>
    </div>

    <h3 class="text-md font-semibold mb-2">Pilih Barang dari Permintaan</h3>
    <form wire:submit.prevent="submitDetail">
        <table class="table-auto w-full border-collapse">
            <thead>
                <tr class="border-b">
                    <th class="p-2">Pilih</th>
                    <th class="p-2">Nama Barang</th>
                    <th class="p-2">Jumlah Permintaan</th>
                </tr>
            </thead>
            <tbody>
                @foreach($permintaanDetails as $detail)
                    <tr class="border-b">
                        <td class="p-2 text-center">
                            <input type="checkbox" value="{{ $detail->id }}" wire:model="selectedBarang">
                        </td>
                        <td class="p-2">{{ $detail->barang->nama ?? '-' }}</td>
                        <td class="p-2">{{ $detail->jumlah }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>

        <button type="submit" class="mt-4 bg-blue-500 text-white px-4 py-2 rounded">Simpan Barang Terpilih</button>
    </form>
</div>
