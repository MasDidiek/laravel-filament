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
        Schema::create('tbl_pembelians', function (Blueprint $table) {
               $table->id();
                $table->date('tanggal');
                $table->unsignedBigInteger('id_kategori');
                $table->string('no_pesanan');
                $table->string('jns_belanja');
                $table->string('jns_pembelian');
                $table->unsignedBigInteger('id_vendor')->nullable();
                $table->string('id_ekatalog')->nullable();
                $table->unsignedBigInteger('user_id');
                $table->dateTime('tgl_datang_barang')->nullable();
                $table->string('penerima_barang')->nullable();
                $table->text('note')->nullable();
                $table->date('tgl_ba')->nullable();
                $table->string('no_spk')->nullable();
                $table->string('bapp')->nullable();
                $table->string('bastp')->nullable();
                $table->string('bap_penyelesaian')->nullable();
                $table->string('bast')->nullable();
                $table->string('status')->default('draft');
                $table->year('tahun_anggaran');
                $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembelians');
    }
};
