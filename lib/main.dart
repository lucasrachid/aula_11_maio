import 'package:aula_onze_maio/app.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
// import 'package:mysql1/mysql1.dart';


Future<void> main() async {
  await Supabase.initialize(
    url: 'https://bolegsosusjeptueocek.supabase.co',
    // url: 'https://localhost:3000',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJvbGVnc29zdXNqZXB0dWVvY2VrIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODU2NjYwNDQsImV4cCI6MjAwMTI0MjA0NH0.9i_ocwi4N3Tfe6D8UB4Vm8IS3g93lemsY3JN56PRDJs',
  );

  final response = await Supabase.instance.client.from('users').select('*');

  if (response.error == null) {
    final List<dynamic>? data = response.data;
    if (data != null) {
      for (final row in data) {
        print('ID: ${row['id']}, Nome: ${row['nome']}, Idade: ${row['idade']}');
      }
    }
  }

  runApp(const App());
}





  // Vantagens Banco Fake
  // Trabalho em equipe
  // Isolamento de problemas
  // Agilizar o desenvolvimento


  
// DTO -> Desacoplar a aplicação da necessidade de uma tecnologia específica.