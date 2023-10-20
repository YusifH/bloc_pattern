import 'package:bloc_pattern/ui/cubit/anasayfa_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnaSayfa extends StatelessWidget {

  var tfDeyer1 = TextEditingController();
  var tfDeyer2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Bloc Pattern'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50, right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<AnasayfaCubit, int>(
                builder: (context, sonuc) {
                  return Text(
                    sonuc.toString(),
                    style: const TextStyle(fontSize: 50),
                  );
                },
              ),
              TextField(
                controller: tfDeyer1,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Deyer 1'),
              ),
              TextField(
                controller: tfDeyer2,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(hintText: 'Deyer 2'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      context.read<AnasayfaCubit>().topla(tfDeyer1.text, tfDeyer2.text);
                    },
                    child: const Text('Topla'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      context.read<AnasayfaCubit>().cixma(tfDeyer1.text, tfDeyer2.text);
                    },
                    child: const Text('Cixma'),
                  ),

                  ElevatedButton(
                    onPressed: () {
                      tfDeyer1.clear();
                      tfDeyer2.clear();
                    },
                    
                    child: const Text('Sifirla'),
                  ),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
