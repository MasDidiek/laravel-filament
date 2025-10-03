<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Pembelian;
use App\Models\PembelianDetail;
use App\Models\PermintaanDetail;

class PembelianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }


 
     public function tambahBarang(Pembelian $pembelian)
    {
        $barangPermintaan = $pembelian->permintaan->details; // relasi Permintaan -> PermintaanDetail
        return view('pembelian.input_barang_pembelian', compact('pembelian', 'barangPermintaan'));
    }

    public function simpanBarang(Request $request, Pembelian $pembelian)
    {
        foreach ($request->barang_ids as $barangId) {
            $permintaanDetail = PermintaanDetail::find($barangId);
            PembelianDetail::create([
                'pembelian_id' => $pembelian->id,
                'nama_barang' => $permintaanDetail->nama_barang,
                'jumlah' => $permintaanDetail->jumlah,
                'satuan' => $permintaanDetail->satuan,
                'harga_satuan' => 0,
                'total_harga' => 0,
            ]);
        }

        return redirect()->route('pembelian.show', $pembelian->id)
            ->with('success', 'Barang berhasil ditambahkan.');
    }


    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
