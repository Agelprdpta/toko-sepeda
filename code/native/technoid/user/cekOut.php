<?php
session_start();
require '../function/cart.php';
require '../function/transaksi.php';

$judul = transaksi()['judul'];

$subtotal = ambilCart()['subtotal']->subtotal;
$kuantiti = ambilCart()['kuantiti']->kuantiti;
$carts = ambilCart()['carts'];

if (isset($_POST['submit'])) {
    tambahTransaksi($_POST);
}

require 'templates/header.php';
?>
<div class="row mt-5">
    <h5 class="w-100">Pembelian</h5>
    <ul class="list-group list-group-flush">
        <li class="list-group-item">
            <h6>Total Kuantiti</h6><span><?= $kuantiti ?></span>
        </li>
        <li class="list-group-item">
            <h6>Total Harga</h6><span>Rp<?= number_format($subtotal, 0) ?></span>
        </li>
    </ul>
</div>
<div class="row mt-2">
    <h5 class="w-100">Form CekOut</h5>
    <div class="col-md-8">
        <form action="" method="POST">

            <input type="hidden" name="kuantiti_total" value="<?= $kuantiti ?>">
            <input type="hidden" name="subtotal" value="<?= $subtotal ?>">
            <?php
            $i = 1;
            foreach ($carts as $value) : ?>
                <input type="hidden" name="kuantiti<?= $i++ ?>" value="<?= $value->kuantiti ?>">
            <?php endforeach; ?>
            <?php $i = 1;
            foreach ($carts as $value) : ?>
                <input type="hidden" name="id_produk<?= $i++ ?>" value="<?= $value->id_produk ?>">
            <?php endforeach; ?>

            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="pengirim">Pengirim</label>
                    <input type="text" class="form-control" id="pengirim" name="pengirim">
                </div>
                <div class="col-md-6 form-group">
                    <label for="penerima">Penerima</label>
                    <input type="text" class="form-control" id="penerima" name="penerima">
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 form-group">
                    <label for="telp">Telepon penerima</label>
                    <input type="number" class="form-control" id="telp" name="telepon">
                </div>
                <div class="col-md-6 form-group">
                    <label for="email">Email penerima</label>
                    <input type="email" class="form-control" id="email" name="email">
                </div>
            </div>
            <div class="form-group">
                <label for="alamat">Alamat</label>
                <input type="text" class="form-control" id="alamat" name="alamat">
            </div>
            <button type="submit" name="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
</div>
<script>
    document.querySelectorAll('.kuantiti-input').forEach(function(input) {
        input.addEventListener('input', function() {
            updateTotal();
        });
    });

    function updateTotal() {
        let totalKuantiti = 0;
        let totalHarga = 0;

        // Loop melalui setiap input kuantiti dan hitung totalnya
        document.querySelectorAll('.kuantiti-input').forEach(function(input) {
            const kuantiti = parseInt(input.value); // Kuantiti yang dimasukkan user
            const harga = parseInt(input.dataset.harga); // Harga yang disimpan di data-harga

            totalKuantiti += kuantiti; // Jumlahkan total kuantiti
            totalHarga += kuantiti * harga; // Hitung total harga berdasarkan kuantiti
        });

        // Update nilai total kuantiti dan total harga di HTML
        document.getElementById('totalKuantiti').innerText = totalKuantiti;
        document.getElementById('totalHarga').innerText = 'Rp' + totalHarga.toLocaleString();

        // Update nilai total kuantiti dan subtotal di hidden input form (untuk pengiriman ke server)
        document.getElementById('kuantiti_total').value = totalKuantiti;
        document.getElementById('subtotal').value = totalHarga;
    }

    </script>
<?php
require 'templates/footer.php';
?>