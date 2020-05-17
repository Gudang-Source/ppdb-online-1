<?php
// require_once './vendor/autoload.php';
// dd(file_exists('./vendor/autoload.php'));
error_reporting(E_ALL);
ini_set('display_error', 1);
// require_once '../../vendor/autoload.php';
use PhpOffice\PhpSpreadsheet\IOFactory;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Cell\DataType;
use PhpOffice\PhpSpreadsheet\Style\Fill;
use PhpOffice\PhpSpreadsheet\Style\Border;
use PhpOffice\PhpSpreadsheet\Style\Alignment;
use PhpOffice\PhpSpreadsheet\Style\NumberFormat;
use PhpOffice\PhpSpreadsheet\Worksheet\Worksheet as Worksheet;
// use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

// dd($bulan);
// var_dump($data);
// die;
$spreadsheet = new Spreadsheet();

$myWorkSheet = new Worksheet($spreadsheet, "TES");
$spreadsheet->addSheet($myWorkSheet, 0);
$spreadsheet->setActiveSheetIndex(0);
$activeSheet = $spreadsheet->getActiveSheet();
$activeSheet->setTitle("Summary Absensi");
$spreadsheet->getDefaultStyle()->getFont()->setName('Calibri');


$data_all = $siswa;
foreach ($siswa as $key => $value) {
    // "id_siswa",
    // "tahun",
    // "nl_siswa",
    // "np_siswa",
    // "jk_siswa",
    // "ttl",
    // "agama_siswa",
    // "asal_sekolah",
    // "ijazah",
    // "nisn",
    // "nik",
    // "skhun",
    // "warga_siswa",
    // "anak_ke",
    // "sdr_knd",
    // "sdr_tir",
    // "sdr_ang",
    // "bahasa",
    // "berat",
    // "tinggi",
    // "gol_dar",
    // "penyakit",
    // "alamat",
    // "kode_pos",
    // "hp_siswa",
    // "tinggal",
    // "photo",
    // $data_all[] = $ix;
}

// dd($data_all);

// dd($siswa);


$H1 = [
    'No',
    'Nama',
    'NISN',
    'NO Ijazah',
    'I',
    'S',
    'Abs',
    'DT',
    'C',
    'T/mnt'
];


$l = 4;
// dd(columnLetter($l));

// $add = count($col2);

// for ($i = 0; $i < count($bulan); $i++) {
//     $activeSheet->setCellValue(columnLetter($l) . '4', $bln[$bulan[$i] - 1] . ' ' . $year);
//     $last_l = columnLetter($l);
//     $l += $add;
//     $cur_l = columnLetter($l - 1);
//     $activeSheet->mergeCells("{$last_l}4:{$cur_l}4");
//     $H1 = array_merge($H1, $col);
//     $H2 = array_merge($H2, $col2);
// }
// $last_l = columnLetter($l);
// $cur_l = columnLetter($l + count($col2) - 1);
// $activeSheet->mergeCells("{$last_l}4:{$cur_l}4");

// $activeSheet->setCellValue(columnLetter($l) . '4', 'Total ' . $year);
// $H1 = array_merge($H1, $col);
// $H2 = array_merge($H2, $col2);

// last column
$last_col = columnLetter(count($H1));

// dd($H1);
$headerStyle = [
    'fill' => [
        'fillType' => Fill::FILL_GRADIENT_LINEAR,
        'rotation' => 90,
        'startColor' => [
            'argb' => 'BFBFBF',
        ],
        'endColor' => [
            'argb' => 'BFBFBF',
        ],
    ],
    'borders' => [
        'allBorders' => [
            'borderStyle' => Border::BORDER_THIN,
            'color' => ['argb' => '00000000'],
        ],
    ],
    'font' => [
        'size' => 8,
        'bold' => TRUE
    ],
    'alignment' => [
        'horizontal' => Alignment::HORIZONTAL_CENTER,
    ],
];

$innerStyle = [
    'borders' => [
        'allBorders' => [
            'borderStyle' => Border::BORDER_THIN,
            'color' => ['argb' => '00000000'],
        ],
    ],
    'font' => [
        'size' => 8
    ],
];



// // Set Title
$activeSheet->setCellValue('A1', 'DATA CALON SISWA ');
$activeSheet->setCellValue('A2', "TAHUN AJARAN");
$activeSheet->getStyle("A1")->getFont()->setBold(true);
$activeSheet->getStyle("A2")->getFont()->setBold(true);

// // Set Header
$activeSheet->fromArray($H1, NULL, "A4");
// $activeSheet->fromArray($H2, NULL, "A5");
$activeSheet->getStyle("A4:{$last_col}4")->applyFromArray($headerStyle);

// // set alignment
// $last_col = count($H2) + 1;
$activeSheet->getStyle("A4:{$last_col}4")->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
$activeSheet->getStyle("A5:{$last_col}5")->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
$activeSheet->getStyle("A4:{$last_col}4")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$activeSheet->getStyle("A5:{$last_col}5")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Merge Header
// $activeSheet->mergeCells("A4:A5");
// $activeSheet->mergeCells("B4:B5");
// $activeSheet->mergeCells("C4:C5");


$row_start = 5;
$row = $row_start;

$length_row = count($data_all[0]);
$arr_keys = array_keys($data_all[0]);

// dd($arr_keys);

$no = 0;
foreach ($data_all as $key => $value) {
    $no++;
    $activeSheet->setCellValue('A' . $row, $no);

    $last_col = '';
    for ($i = 0; $i < $length_row; $i++) {
        $last_col = columnLetter($i + 2);
        $activeSheet->setCellValue(columnLetter($i + 2) . $row, $value[$arr_keys[$i]]);
    }

    $activeSheet->getStyle("A$row:$last_col$row")->applyFromArray($innerStyle);
    $row++;
}


// define row size
$row_size = [
    'A' => 5,
    'B' => 20,
    'C' => 15,
];

foreach ($row_size as $key => $value) {
    $row = explode(',', $key);
    foreach ($row as $col) {
        $activeSheet->getColumnDimension($col)->setWidth($value);
    }
}

/* Freeze celll */
$activeSheet->freezePane('C6');

// Output
$title = "export_data_calon_siswa" . date('YmdHis');
$writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
$destination = __DIR__ . "/../../../assets/tmp/report/" . $title . '.xlsx';
// dd(__DIR__);
$writer->save($destination);
$location = base_url() . "/assets/tmp/report/" . $title . '.xlsx';
header("location:$location");
