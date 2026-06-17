<?php
// PendaftaranReguler.php
require_once 'Pendaftaran.php';

class PendaftaranReguler extends Pendaftaran {
    // Properti tambahan spesifik jalur Reguler
    private $pilihanProdi;
    private $lokasiKampus;

    // Constructor untuk menginisialisasi properti induk dan anak
    public function __construct($id_pendaftaran, $nama_calon, $asal_sekolah, $nilai_ujian, $biayaPendaftaranDasar, $pilihanProdi, $lokasiKampus) {
        // Memanggil constructor dari class induk (Pendaftaran)
        parent::__construct($id_pendaftaran, $nama_calon, $asal_sekolah, $nilai_ujian, $biayaPendaftaranDasar);
        $this->pilihanProdi = $pilihanProdi;
        $this->lokasiKampus = $lokasiKampus;
    }

    public function tampilkanInfoJalur() {
        return "Jalur Pendaftaran: Reguler | Prodi: " . $this->pilihanProdi . " | Kampus: " . $this->lokasiKampus;
    }

    // Metode Query Spesifik untuk Jalur Reguler
    public static function getDaftarReguler($db) {
        $query = "SELECT id_pendaftaran, nama_calon, asal_sekolah, nilai_ujian, biaya_pendaftaran_dasar, pilihan_prodi, lokasi_kampus 
                  FROM tabel_pendaftaran WHERE jalur_pendaftaran = 'Reguler'";
        
        $stmt = $db->prepare($query);
        $stmt->execute();
        
        $daftarReguler = [];
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            // Instansiasi objek PendaftaranReguler dari setiap baris data database
            $daftarReguler[] = new PendaftaranReguler(
                $row['id_pendaftaran'],
                $row['nama_calon'],
                $row['asal_sekolah'],
                $row['nilai_ujian'],
                $row['biaya_pendaftaran_dasar'],
                $row['pilihan_prodi'],
                $row['lokasi_kampus']
            );
        }
        return $daftarReguler;
    }

    // Getter untuk properti spesifik
    public function getPilihanProdi() { return $this->pilihanProdi; }
    public function getLokasiKampus() { return $this->lokasiKampus; }
}