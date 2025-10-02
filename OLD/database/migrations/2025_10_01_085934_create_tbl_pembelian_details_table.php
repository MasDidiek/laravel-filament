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
        Schema::create('tbl_pembelian_details', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('pembelian_id');
            $table->unsignedBigInteger('permintaan_detail_id'); // refer ke item permintaan
            $table->string('nama_barang'); // opsional, bisa copy dari permintaan
            $table->integer('jumlah');
            $table->string('satuan')->nullable();
            $table->decimal('harga_satuan', 15, 2)->default(0);
            $table->decimal('total', 15, 2)->default(0);
            $table->text('keterangan')->nullable();
            $table->timestamps();

            $table->foreign('pembelian_id')->references('id')->on('tbl_pembelians')->onDelete('cascade');
            $table->foreign('permintaan_detail_id')->references('id')->on('tbl_permintaan_details')->onDelete('restrict');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('pembelian_details');
    }
};
