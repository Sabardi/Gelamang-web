<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Form Simpan</title>
</head>

<body>
    <h1> add artikel Siswa</h1>
    <form method="post" action="simpan.php" enctype="multipart/form-data">
        <table cellpadding="8">
            <tr>
                <td>kategori</td>
                <td><input type="text" name="idkategori"></td>
            </tr>
            <tr>
                <td>judul</td>
                <td><input type="text" name="judul"></td>
            </tr>
            
            <tr>
                <td>opening</td>
                <td><textarea name="opening" id="" cols="30" rows="10"></textarea>
            </tr>

            <tr>
                <td>artikel</td>
                <td><textarea name="opening" id="" cols="30" rows="10"></textarea>

            </tr>
            <tr>
                <td>foto1</td>
                <td><input type="file" name="foto1"></td>
            </tr>
            <tr>
                <td>foto2</td>
                <td><input type="file" name="foto1"></td>
            </tr>
        </table>
        <hr>
        <input type="submit" value="simpan">
        <a href="index.php"><input type="button" value="batal"></a>
    </form>
</body>

</html>