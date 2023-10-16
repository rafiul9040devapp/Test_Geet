Future<void> main() async {
  print("Fetching user order...");
  //in the async process It is going to halt the execution for the await function
  //after the execution of the await function other commands are going to be executed
  print(await createOrderMessage());
  print("Do You Need Anything Else.....");
}

Future<String> createOrderMessage() async {
  var order = await fetchUserOrder();
  return "Your Order Is : $order";
}

Future<String> fetchUserOrder() =>
    Future.delayed(const Duration(seconds: 2), () => "Lemon Ice Tea");
