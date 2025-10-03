<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PembelianController;



Route::get('/', function () {
     return redirect('/admin/login');
});


Route::post('/admin/permintaans/{permintaan}/details', [\App\Http\Controllers\PermintaanDetailController::class, 'store'])->name('permintaan.detail.store');
Route::delete('/admin/permintaan-detail/{id}', [\App\Http\Controllers\PermintaanDetailController::class, 'destroy'])
    ->name('permintaan.detail.delete');

Route::post('/admin/pembelian/{record}/detail/save', [\App\Http\Controllers\PembelianController::class, 'saveDetail'])
->name('pembelian.detail.save');



Route::get('/pembelian/{pembelian}/tambah-barang', [PembelianController::class, 'tambahBarang'])
->name('pembelian.tambah-barang');
Route::post('/pembelian/{pembelian}/simpan-barang', [PembelianController::class, 'simpanBarang'])
->name('pembelian.simpan-barang');

