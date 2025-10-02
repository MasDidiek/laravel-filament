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
        Schema::create('tbl_permintaan_details', function (Blueprint $table) {
            $table->id();
            $table->foreignId('permintaan_id')->constrained('tbl_permintaans')->cascadeOnDelete();
            $table->unsignedBigInteger('pembelian_id')->default(0);
            $table->string('nama_barang');
            $table->integer('jumlah');
            $table->string('satuan')->nullable();
            $table->integer('harga')->default(0);
            $table->integer('total')->default(0);
            $table->text('keterangan')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_permintaan_details');
    }
};
