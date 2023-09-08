void main() {
  print('Inicio del programa');

  //httpGet = request
  httpGet('https://google.com')
  //al llamar al metodo httpGet se ejecuta:
  .then(
    (value){
      print(value);
    })
    .catchError((err){
      print('Error: $err');
    });
  
  print('Fin del programa');
}

//* Future maneja los errores de los request a servidor>puerto>database
//! esta funcion simula una solicitud HTTP
Future<String> httpGet(String url){               //! funcion anonima: ()
  //* con delay manejamos la peticion y su retraso
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion Http';
    //* return 'Respuesta de la peticion http'
  });
}
