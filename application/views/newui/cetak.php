<style>
    th,
    td {
        white-space: nowrap;
    }
</style>
<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                <?= $this->Config_model->getConfig('nama_sekolah') ?>
                <small>Tahun Ajaran <?= $this->Config_model->getConfig('tahun_ajaran') ?></small>
            </h2>
        </div>

        <!-- Exportable Table -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            CETAK FORMULIR
                        </h2>
                        <p>Silahkan cari nama calon siswa di kolom search</p>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <input style="border:1px solid #eeeeee;border-radius:.4rem;margin-top:1rem;" type="text" id="search" name="search" class="form-control" placeholder="Cari Nik atau NISN">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <button class="btn btn-primary" style="margin-top:1rem;">Cari</button>
                        </div>
                    </div>
                    <div class="body">
                        <table id="table-cetak" class="table table-bordered table-striped table-hover dataTable">
                            <thead>
                                <tr>
                                    <th>Nama</th>
                                    <th>NIK</th>
                                    <th>NISN</th>
                                    <th>Tahun</th>
                                    <th>TTL</th>
                                    <th>Alamat</th>
                                    <th>Asal Sekolah</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Exportable Table -->
    </div>
</section>
<script>
    $(document).ready(function() {
        $('#table-cetak').DataTable({
            "ajax": "<?= base_url() . 'data_siswa' ?>",
            <?= !$this->session->userdata('masuk') ?  '"searching": false' : '' ?>,
            "bLengthChange": false,
            "scrollX": true,
            "columns": [{
                    "data": "nl_siswa"
                },
                {
                    "data": "nik"
                },
                {
                    "data": "nisn"
                },
                {
                    "data": "tahun"
                },
                {
                    "data": "ttl"
                },
                {
                    "data": "alamat"
                },
                {
                    "data": "asal_sekolah"
                },
                {
                    "data": "alamat",
                    render: function(data, type, row) {
                        return `<button onclick="printCalonSiswa('${row.id_siswa}')" class="waves-effect waves-light btn btn-primary btn-xs" type="button"><i class="material-icons left">local_printshop</i> Cetak</button>`
                    }
                }
            ]
        });
    });

    function printCalonSiswa(id) {
        window.open('<?= base_url() . 'export/' ?>' + id);
    }
</script>