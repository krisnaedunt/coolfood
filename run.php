<?php

error_reporting(0);
include ("support.php");
echo "\e[95m-------------------------------------------------\n";
echo "\e[94m            GOJEK VERSION 1.7.2            \n";
echo "\e[91m         Semoga Harimu Menyenangkan        \n";
echo "\e[93m            Format Nomor 62****            \n";
echo "\e[95m-------------------------------------------------\n";
echo "\n";
nope:
echo "\e[96m[?] Masukkan Nomor HP Anda (62) : ";
$nope = trim(fgets(STDIN));
$cek = cekno($nope);
if ($cek == false)
    {
    echo "\e[x] Nomor Telah Terdaftar Cok\n";
			goto nope;
    }
  else
    {
echo "\e[96m[!] Siapkan OTPmu\n";
sleep(5);
$register = register('62'.$nope);
if ($register == false)
    {
    echo "\e[91m[x] Failed Get OTP!\n";
    }
  else
    {
    otp:
    echo "\e[96m[!] Masukkan Kode Verifikasi (OTP) : ";
    $otp = trim(fgets(STDIN));
    $verif = verif($otp, $register);
    if ($verif == false)
        {
        echo "\e[91m[x] Kode Verifikasi Salah\n";
        goto otp;
        }
      else
        {
		$h=fopen("newgojek.txt","a");
		fwrite($h,json_encode(array('token' => $verif, 'voc' => 'gofood gak ada'))."\n");
		fclose($h); 
                echo "\e[96m[!] Trying to redeem Reff : DAIRYQUEEN !\n";
                sleep(3);
            $claim = reff($verif);
            if ($claim == false){
            echo "\e[!] Failed to Claim Voucher, Try to Claim Manually\n";
            }else{
                echo "\e[96m[+] ".$claim."\n";
            }
    }
    }
    }


?>
