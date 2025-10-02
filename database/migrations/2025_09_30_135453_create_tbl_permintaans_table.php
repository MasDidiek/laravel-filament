<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('tbl_permintaans', function (Blueprint $table) {
             $table->id();
             $table->date('tanggal');
             $table->string('no_surat')->unique();
             $table->string('puskesmas');
             $table->string('bagian');
             $table->string('nama_pemohon');
             $table->foreignId('user_id')->constrained()->onDelete('cascade'); // pastikan tabel users ada
             $table->string('tahun_anggaran');
             $table->timestamps(); // created_at & updated_at
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_permintaans');
    }
};
