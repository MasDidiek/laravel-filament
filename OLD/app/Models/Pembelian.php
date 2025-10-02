<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pembelian extends Model
{
    protected $table = 'tbl_pembelians';
    protected $fillable = [
        'tanggal',
        'no_faktur',
        'supplier',
        'user_id',
        'status',
        'total_harga',
        'tahun_anggaran',
    ];

    public function details()
    {
        return $this->hasMany(PembelianDetail::class);
    }
}
