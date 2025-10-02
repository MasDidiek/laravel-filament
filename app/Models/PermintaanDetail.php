<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\Permintaan;
use App\Models\Pembelian;

class PermintaanDetail extends Model
{

     protected $table = 'tbl_permintaan_details';
     protected $fillable = [
        'permintaan_id',
        'pembelian_id',
        'nama_barang',
        'jumlah',
        'satuan',
        'harga',
        'total',
        'keterangan',
        'user_id',
    ];

    // Hitung total otomatis setiap kali save
    protected static function booted()
    {
        static::saving(function ($detail) {
            $detail->total = $detail->jumlah * $detail->harga;
        });
    }

    public function permintaan()
    {
        return $this->belongsTo(Permintaan::class);
    }

    public function pembelian()
    {
        return $this->belongsTo(Pembelian::class, 'pembelian_id');
    }
}
