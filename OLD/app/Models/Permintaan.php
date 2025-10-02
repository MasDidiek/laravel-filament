<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use App\Models\PermintaanDetail;

class Permintaan extends Model
{
    protected $table = 'tbl_permintaans';

    protected $fillable = [
        'tanggal',
        'no_surat',
        'puskesmas',
        'bagian',
        'nama_pemohon',
        'user_id',
        'tahun_anggaran',
         'status',
    ];


    public function details()
    {
        return $this->hasMany(PermintaanDetail::class);
    }
}
