void main() async{
  print('Inicio del programa');
  try {
    final value = await httpGet('https:google.com');
    print('Exito: $value');
  } on Exception catch(err){
    print('Tenemos una exception: $err');
  } catch (err){
    print('OPP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try-catch');
  }
  print('Fin del programa');
}

Future<String> httpGet (String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
}