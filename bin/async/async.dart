void main() async {
  //* Una función asíncrona es aquella que puede realizar tareas de manera concurrente, 
  //* permitiendo que otras operaciones continúen mientras se espera que se complete una tarea específica
  try{
    //* await esperará hasta que la función httpGet se complete antes de continuar
    //* await se utiliza antes de llamar a una función que devuelve un objeto de tipo Future
    final value = await httpGet('https:google.com');
    print(value);
  } catch (err){
    print('tenemos un error, $err');
  }
  print('fin del programa');
}

//* Future maneja los errores de los request a servidor>puerto>database
//! esta funcion simula una solicitud HTTP
Future<String> httpGet (String url) async {
  await Future.delayed(const Duration(seconds: 1));
  throw'Error en la peticion!';
}