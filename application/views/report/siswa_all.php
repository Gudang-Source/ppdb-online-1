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

$bln = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'Nopember', 'Desember'];
$nik_temp = [];
$data_fix = [];
foreach ($data as $key => $item) {
    if (!in_array($item['nama'], $nik_temp)) {
        array_push($nik_temp, $item['nama']);
        array_push($data_fix, [
            // 'nik' => $item['nik'],
            'nama' => $item['nama'],
            'dept' => $item['dept'],
        ]);
    }
}
// dd($data);

$data_all = [];
foreach ($data_fix as $key => $value) {
    $temp_data = $value;
    // array_merge($temp_data, $value);


    $total = [];
    $total['total_alfa'] = 0;
    $total['total_izin'] = 0;
    $total['total_sakit'] = 0;
    $total['total_absen'] = 0;
    $total['total_terlambat'] = 0;
    $total['total_cuti'] = 0;
    $total['total_terlambat_menit'] = 0;

    $count = 0;

    foreach ($data as $key => $item) {

        // array_merge($value,[])
        if ($value['nama'] == $item['nama']) {

            $temp_data[$item['no_bulan'] . '_alfa'] = $item['alfa'];
            $temp_data[$item['no_bulan'] . '_izin'] = $item['izin'];
            $temp_data[$item['no_bulan'] . '_sakit'] = $item['sakit'];
            $temp_data[$item['no_bulan'] . '_absen'] = $item['alfa'] + $item['izin'] + $item['sakit'];
            $temp_data[$item['no_bulan'] . '_terlambat'] = $item['terlambat'];
            $temp_data[$item['no_bulan'] . '_cuti'] = $item['cuti'];
            $temp_data[$item['no_bulan'] . '_terlambat_menit'] = $item['terlambat_menit'];

            $total['total_alfa'] += floatval($item['alfa']);
            $total['total_izin'] += floatval($item['izin']);
            $total['total_sakit'] += floatval($item['sakit']);
            $total['total_absen'] += floatval($item['alfa']) + floatval($item['izin']) + floatval($item['sakit']);
            $total['total_terlambat'] += floatval($item['terlambat']);
            $total['total_cuti'] += floatval($item['cuti']);
            $total['total_terlambat_menit'] += floatval($item['terlambat_menit']);

            $count++;

            if ($count == count($bulan)) {
                break;
            }
        }
    }

    $ix = array_merge($temp_data, $total);

    $data_all[] = $ix;
}

// dd($data_all);


$col2 = [
    'A',
    'I',
    'S',
    'Abs',
    'DT',
    'C',
    'T/mnt'
];

$col = ['', '', '', '', '', '', ''];

$H1 = [
    'No',
    'Nama',
    'Departemen',
];

$H2 = ['', '', ''];

$l = 4;
// dd(columnLetter($l));

$add = count($col2);

for ($i = 0; $i < count($bulan); $i++) {
    $activeSheet->setCellValue(columnLetter($l) . '4', $bln[$bulan[$i] - 1] . ' ' . $year);
    $last_l = columnLetter($l);
    $l += $add;
    $cur_l = columnLetter($l - 1);
    $activeSheet->mergeCells("{$last_l}4:{$cur_l}4");
    $H1 = array_merge($H1, $col);
    $H2 = array_merge($H2, $col2);
}
$last_l = columnLetter($l);
$cur_l = columnLetter($l + count($col2) - 1);
$activeSheet->mergeCells("{$last_l}4:{$cur_l}4");

$activeSheet->setCellValue(columnLetter($l) . '4', 'Total ' . $year);
$H1 = array_merge($H1, $col);
$H2 = array_merge($H2, $col2);

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
$activeSheet->setCellValue('A1', 'REKAP ABSENSI PT. SEKAWAN GLOBAL ENGINEERING');
$activeSheet->setCellValue('A2', "Summary Absensi {$bln[$start - 1]} S/D {$bln[$end - 1]} {$year}");
$activeSheet->getStyle("A1")->getFont()->setBold(true);
$activeSheet->getStyle("A2")->getFont()->setBold(true);

// // Set Header
$activeSheet->fromArray($H1, NULL, "A4");
$activeSheet->fromArray($H2, NULL, "A5");
$activeSheet->getStyle("A4:{$last_col}4")->applyFromArray($headerStyle);
$activeSheet->getStyle("A5:{$last_col}5")->applyFromArray($headerStyle);

// // set alignment
// $last_col = count($H2) + 1;
$activeSheet->getStyle("A4:{$last_col}4")->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
$activeSheet->getStyle("A5:{$last_col}5")->getAlignment()->setVertical(Alignment::VERTICAL_CENTER);
$activeSheet->getStyle("A4:{$last_col}4")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);
$activeSheet->getStyle("A5:{$last_col}5")->getAlignment()->setHorizontal(Alignment::HORIZONTAL_CENTER);

// Merge Header
$activeSheet->mergeCells("A4:A5");
$activeSheet->mergeCells("B4:B5");
$activeSheet->mergeCells("C4:C5");


$row_start = 6;
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
$title = "REPORT SUMMARY ABSENSI {$_GET['start']} - {$_GET['start']} - {$_GET['year']}";
$writer = new PhpOffice\PhpSpreadsheet\Writer\Xlsx($spreadsheet);
$destination = __DIR__ . "/../../../assets/tmp/report/" . $title . '.xlsx';
// dd(__DIR__);
$writer->save($destination);
$location = base_url() . "/assets/tmp/report/" . $title . '.xlsx';
header("location:$location");
