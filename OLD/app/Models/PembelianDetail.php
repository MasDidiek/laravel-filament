<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class PembelianDetail extends Model
{

    protected $table = 'tbl_pembelian_details';
    protected $fillable = [
        'pembelian_id',
        'permintaan_detail_id',
        'nama_barang',
        'jumlah',
        'satuan',
        'harga_satuan',
        'total',
        'keterangan',
    ];

   public function pembelian()
    {
        return $this->belongsTo(Pembelian::class, 'pembelian_id');
    }

    public function permintaanDetail()
    {
        return $this->belongsTo(PermintaanDetail::class, 'permintaan_detail_id');
    }

}
