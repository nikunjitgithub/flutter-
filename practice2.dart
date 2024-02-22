void main(){
  print('welcome to dart');

  var myC = myClass();

  print(myC.Add(5,6));
  print(myC.Add(200,300));

  myC.printname('hello students');
  myC.printname('flutter');
}

class myClass{
  void printname(String name){
    print(name);

  }

  int Add(int a,int b){
    int sum;
    sum=a+b;
    return sum;
  }
}