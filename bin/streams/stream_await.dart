void main(){
  emitNumber()
  .listen((int value){
    print('Stream value $value');
  });
}
 //* función asíncrona que devuelve un stream de números enteros
Stream<int> emitNumber() async* {
  final valuesToEmit = [1,2,3,4,5];
  for (int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    //* yield = retornar "esto", hasta complementar (en este caso los elemento de la lista "valuesToEmit")
    yield i;
  }
}