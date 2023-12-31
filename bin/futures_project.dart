void main() {
  print('Inicio del programa');

  httpGet('https//google.com')
  .then(
    (value){
      print(value);
    })
    .catchError((err){
      print('Error: $err');
    });
  
  print('Fin del programa');
}

Future<String> httpGet(String url){               //! funcion anonima: ()
  return Future.delayed(const Duration(seconds: 1), (){
    throw 'Error en la peticion Http';
    //* return 'Respuesta de la peticion http'
  });
}