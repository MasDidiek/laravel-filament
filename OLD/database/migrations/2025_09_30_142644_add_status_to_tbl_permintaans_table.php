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
        Schema::table('tbl_permintaans', function (Blueprint $table) {
             $table->enum('status', ['Draft', 'Diproses', 'Selesai'])
              ->default('Draft')
              ->after('tahun_anggaran');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::table('tbl_permintaans', function (Blueprint $table) {
            $table->dropColumn('status');
        });
    }
};
