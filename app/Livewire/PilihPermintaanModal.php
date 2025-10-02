<?php

namespace App\Livewire;

use Livewire\Component;
use App\Models\Permintaan;


class PilihPermintaanModal extends Component
{
    public $search = '';
    public $permintaans = [];

  public function pilih($id)
    {
        $this->emitUp('permintaanSelected', $id);
    }
    public function updatedSearch()
    {
       $this->permintaans = Permintaan::query()
            ->where('tahun_anggaran', date('Y'))
            ->where('status', 'Draft')
            ->where(function($query) {
                $query->where('no_surat', 'like', "%{$this->search}%")
                      ->orWhere('nama_pemohon', 'like', "%{$this->search}%");
            })
            ->get();
    }

    public function mount()
    {
        $this->permintaans = Permintaan::query()
            ->where('tahun_anggaran', date('Y'))
            ->where('status', 'Draft')
            ->get();
    
    }

    public function render()
    {
        return view('livewire.pilih-permintaan-modal');
    }
}
