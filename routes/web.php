<?php

use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});


Route::post('/admin/permintaans/{permintaan}/details', [\App\Http\Controllers\PermintaanDetailController::class, 'store'])->name('permintaan.detail.store');
Route::delete('/admin/permintaan-detail/{id}', [\App\Http\Controllers\PermintaanDetailController::class, 'destroy'])
    ->name('permintaan.detail.delete');

    Route::post('/admin/pembelian/{record}/detail/save', [\App\Http\Controllers\PembelianController::class, 'saveDetail'])
    ->name('pembelian.detail.save');


