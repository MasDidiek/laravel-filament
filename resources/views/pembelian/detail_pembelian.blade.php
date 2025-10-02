<h2>Header Pembelian</h2>
<p>No Pesanan: {{ $pembelian->no_pesanan }}</p>
<p>Vendor: {{ $pembelian->vendor->nama ?? '-' }}</p>
<p>Permintaan: {{ $pembelian->permintaan->no_surat ?? '-' }}</p>

<h3>Pilih Barang dari Permintaan</h3>
<form action="{{ route('pembelian.detail.save', $pembelian->id) }}" method="POST">
    @csrf
    <table>
        <thead>
            <tr>
                <th>Pilih</th>
                <th>Nama Barang</th>
                <th>Jumlah</th>
            </tr>
        </thead>
        <tbody>
            @foreach($permintaanDetails as $detail)
            <tr>
                <td><input type="checkbox" name="barang_id[]" value="{{ $detail->id }}"></td>
                <td>{{ $detail->barang->nama ?? '-' }}</td>
                <td>{{ $detail->jumlah }}</td>
            </tr>
            @endforeach
        </tbody>
    </table>
    <button type="submit">Simpan Barang Terpilih</button>
</form>
