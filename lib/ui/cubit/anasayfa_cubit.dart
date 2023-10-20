import 'package:bloc_pattern/data/repo/matematik_islemler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnasayfaCubit extends Cubit<int>{
  AnasayfaCubit():super(0);

  var mrepo = MatematikRepository();

  void topla(String gelensayi1, String gelensayi2){
   // var toplam = mrepo.topla(gelensayi1, gelensayi2);
    emit(mrepo.topla(gelensayi1, gelensayi2));
  }


  void cixma(String gelensayi1, String gelensayi2){
    // var cixma = mrepo.cixma(gelensayi1, gelensayi2);
    emit(mrepo.cixma(gelensayi1, gelensayi2));
  }


}