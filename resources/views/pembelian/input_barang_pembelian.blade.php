


    <form action="{{ route('pembelian.simpan-barang', $pembelian->id) }}" method="POST">
            @csrf
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                @foreach($barangPermintaan as $barang)
                    <div class="border p-2 rounded">
                        <label>
                            <input type="checkbox" name="barang_ids[]" value="{{ $barang->id }}">
                            {{ $barang->nama_barang }} ({{ $barang->jumlah }} {{ $barang->satuan }})
                        </label>
                    </div>
                @endforeach
            </div>
            <button type="submit" class="mt-4 px-4 py-2 bg-blue-600 text-white rounded">Simpan</button>
        </form>


    


