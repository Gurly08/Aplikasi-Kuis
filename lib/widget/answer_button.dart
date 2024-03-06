import 'package:flutter/material.dart';


//Tujuan dalam pembuatan widget answer button ini agar setiap style button yang digunakan dapat digunakan pada setiap jawab yang akan ada di questionscreen.
//Pada styling disini setiap jawaban button memiliki warna ukuran yang sama tetapi memiliki isi 'teks' yang berbeda.

class AnswerButton extends StatelessWidget {
  const AnswerButton({
    super.key,
    required this.answerText, //penambahan required disini digunakan untuk sebagai pendeklarasi dari argummen nama yang dimasukan kedalam kurung kurawal.
    required this.onTap, //dimana diletakan sebagai bahan optional dari argumen name yang dibuat 
    });

//Alasan menggunakan "VoidCallback", yaitu menggunakan VoidCallback sebagai tipe untuk properti onTap adalah karena VoidCallback 
//sudah sesuai dengan tanda tangan (signature) dari metode yang diharapkan oleh properti onPressed dari ElevatedButton, yaitu sebuah fungsi tanpa argumen 
//dan tanpa nilai kembalian.

  final String answerText; //disini pendeklarasian sebuah properti yang sudah dibuat diatas, cetakan warna biru itu menandakan tipe yang digunakan dalam mendeklarasikan kembali
  final VoidCallback onTap;// tipe yang sudah digunakan. Penggunaan final karena argumen nya tidak akan terubah kembali


  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
          vertical: 10,
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        )
      ),
      child: Text(answerText, textAlign: TextAlign.center,),
    );
  }
}
