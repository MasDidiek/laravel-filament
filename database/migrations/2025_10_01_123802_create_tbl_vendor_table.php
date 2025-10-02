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
        Schema::create('tbl_vendor', function (Blueprint $table) {
                 $table->id(); // id_vendor
                $table->string('nama');
                $table->string('alamat')->nullable();
                $table->string('contact_person')->nullable();
                $table->string('no_telp')->nullable();
                $table->string('npwp')->nullable();
                $table->string('no_rekening')->nullable();
                $table->decimal('ppn22', 5, 2)->nullable(); // misal 1.5 = 1.5%
                $table->decimal('ppn23', 5, 2)->nullable(); // misal 2.0 = 2%
                $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('tbl_vendor');
    }
};
