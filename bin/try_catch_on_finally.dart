void main() async{
  print('Inicio del programa');
  //* bloque try que maneja diferentes exceptions:
  try {
    final value = await httpGet('https:google.com');
    print('Exito: $value');
  //* Exception comun:
  } on Exception catch(err){
    print('Tenemos una exception: $err');
  //* captura cualquier exception que no sea del tipo "Exception":
  } catch (err){
    print('OPP!! algo terrible pasó: $err');
  } finally {
    print('Fin del try-catch');
  }
  print('Fin del programa');
}

//! funcion configurada para lanzar la exception
Future<String> httpGet (String url) async{
  await Future.delayed(const Duration(seconds: 1));
  throw Exception('No hay parametros en el URL');
}