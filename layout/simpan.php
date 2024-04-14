<?php 
include "koneksi.php";
$idkategori = $_POST['idkategori'];
$judul = $_POST['judul'];
$opening = $_POST['opening'];
$artikel = $_POST['artikel'];

$foto1 = $_FILES['foto1']['name'];
// $foto2 = $_FILES['foto2']['name'];

$tmp = $_FILES['foto1']['tmp_name'];
// $tmp = $_FILES['foto2']['tmp_name'];

$fotobaru = date('dmYHis');
$path = "images/".$fotobaru;
if(move_uploaded_file($tmp, $path)){
    $query = "insert into produk VALUES('".$idkategori."', '".$judul."', '".$opening."', '".$artikel."', '".$foto1."', '".$foto2."')";
    $sql = mysqli_query($connect,$query);
    if($sql){
        header("location: index.php");
    }else {
        echo "Maaf, Terjadi Kesalahan Saat Input Data";
        echo "<br> <a href='addArtikel.php'>Kembali ke Form</a>";
    }
}else {
    echo "Maaf, Gambar Gagal Diupload";
    echo "<br> <a href='form_siswa.php'>Kembali ke Form</a>";
}
?>