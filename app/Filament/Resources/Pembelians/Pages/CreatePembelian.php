<?php

namespace App\Filament\Resources\Pembelians\Pages;

use App\Filament\Resources\Pembelians\PembelianResource;
use Filament\Resources\Pages\CreateRecord;

class CreatePembelian extends CreateRecord
{
    protected static string $resource = PembelianResource::class;


    public function submit()
    {
        $data = $this->form->getState();

        // Hapus kolom yang belum perlu diisi
        unset($data['bast'], $data['bapp'], $data['tgl_datang_barang'], $data['penerima_barang'], $data['note'], $data['tgl_ba'], $data['no_spk'], $data['bap'], $data['bastp'], $data['bap_penyelesaian']); 

         // Tambahkan user_id dari auth
        //$data['user_id'] =1;
        // Insert ke table pembelian
        $pembelian = \App\Models\Pembelian::create($data);

        // Redirect atau show notification
        $this->notify('success', 'Pembelian berhasil dibuat!');
        
        // Jika mau langsung ke halaman detail
        //return redirect()->route('filament.resources.pembelians.view', ['record' => $pembelian->id]);

         return redirect()->route('filament.resources.pembelians.detail', ['record' => $pembelian->id]);
    }
}
