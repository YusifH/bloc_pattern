class MatematikRepository{

 int topla(String gelensayi1, String gelensayi2){
    int sayi1 = int.parse(gelensayi1);
    int sayi2 = int.parse(gelensayi2);

    int toplam = sayi1 + sayi2;

   return toplam;
  }


  int cixma(String gelensayi1, String gelensayi2){
    int sayi1 = int.parse(gelensayi1);
    int sayi2 = int.parse(gelensayi2);

    int cixma = sayi1 - sayi2;
    return cixma;
  }
}