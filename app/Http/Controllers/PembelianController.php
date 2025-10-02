<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PembelianController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }


    public function detail($record)
    {
        // Logika untuk menampilkan detail pembelian berdasarkan $record (ID pembelian)
        // Misalnya, Anda bisa mengambil data pembelian dari database dan mengirimkannya ke view
        $pembelian = \App\Models\Pembelian::with('details')->findOrFail($record);
        $permintaanDetails = $pembelian->permintaan->details; // Asumsikan ada relasi ke permintaan
        return view('filament.resources.pembelians.pages.pembelians-details', compact('permintaanDetails', 'pembelian'));
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
