<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pembelian extends Model
{
    protected $table = 'tbl_pembelians';
    protected $fillable = [
            'tanggal',
            'id_kategori',
            'permintaan_id',
            'no_pesanan',
            'jns_belanja',
            'jns_pembelian',
            'id_vendor',
            'id_ekatalog',
            'id_inaproc',
            'user_id',
            'status',
            'tahun_anggaran',
            // kolom dokumen & kedatangan bisa diupdate nanti
            'tgl_datang_barang',
            'penerima_barang',
            'note',
            'tgl_ba ',
            'no_spk ',
            'bapp',
            'bastp',
            'bap_penyelesaian ',
            'bast'
        ];


    public function details()
    {
        return $this->hasMany(PembelianDetail::class);
    }

    public function user()
    {
        return $this->belongsTo(User::class);
    }

    public function kategori()
    {
        return $this->belongsTo(Category::class, 'id_kategori');
    }

    public function vendor()
    {
        return $this->belongsTo(Vendor::class, 'id_vendor');
    }

    public function permintaan()
    {
        return $this->belongsTo(Permintaan::class, 'permintaan_id');
    }
}
