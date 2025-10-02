<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Vendor extends Model
{
    protected $table = 'tbl_vendor';
    protected $primaryKey = 'id'; // Sesuaikan dengan nama kolom primary key
    protected $fillable = [
        'nama',
        'alamat',
        'contact_person',
        'no_telp',
        'npwp',
        'no_rekening',
        'ppn22',
        'ppn23',
    ];
}
