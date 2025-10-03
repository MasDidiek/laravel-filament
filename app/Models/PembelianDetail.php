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
        'user_id'
    ];

   public function pembelian()
    {
        return $this->belongsTo(Pembelian::class, 'pembelian_id');
    }

    public function permintaanDetail()
    {
        return $this->belongsTo(PermintaanDetail::class, 'permintaan_detail_id');
    }


     protected static function boot()
    {
        parent::boot();

        // Saat pembelian_detail dihapus
        static::deleting(function ($detail) {
            if ($detail->permintaan_detail_id) {
                \App\Models\PermintaanDetail::where('id', $detail->permintaan_detail_id)
                    ->update(['pembelian_id' => 0]);
            }
        });
    }

}
