<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\PermintaanDetail;

class PermintaanDetailController extends Controller
{
   public function store(Request $request, $permintaanId)
    {
        $request->validate([
            'nama_barang' => 'required|string|max:255',
            'jumlah' => 'required|integer',
            'satuan' => 'required|string|max:50',
            'harga' => 'nullable|numeric',
            'keterangan' => 'nullable|string',
        ]);

        $total = ($request->harga ?? 0) * $request->jumlah;

        PermintaanDetail::create([
            'permintaan_id' => $permintaanId,
            'nama_barang' => $request->nama_barang,
            'jumlah' => $request->jumlah,
            'satuan' => $request->satuan,
            'harga' => $request->harga ?? 0,
            'total' => $total,
            'keterangan' => $request->keterangan,
            'user_id'=> auth()->id(), // Pastikan user_id diisi dengan ID user yang sedang login
        ]);

        return redirect()->back()->with('success', 'Barang berhasil ditambahkan.');
    }


    public function destroy($id)
    {
        $detail = \App\Models\PermintaanDetail::findOrFail($id);
        $detail->delete();

        return redirect()->back()->with('success', 'Barang berhasil dihapus.');
    }

}
