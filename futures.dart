// asynchronous. Like JS promises. For network requests

main(List<String> args) async {

  Future.delayed( Duration(seconds: 2), () {print("Future completed"); return 78;} )  // completes after 2sec, non-blocking
  .then((value) => print(value)) // after future completed
  .catchError((err) => print(err));

  print("Hello world from the future");


  // async await
  final value = await Future.delayed(Duration(seconds: 2), () {
    print("Future completed in 2sec"); 
    return 78;
  });
  await Future.delayed( Duration(seconds: 3), () {print("Future completed in 3sec");} );

  print("Hello world from the future of 5 seconds"); // waits for above futures to finish executing
}