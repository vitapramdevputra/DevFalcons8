public class Calculator {
    //class body.
    //we write everything inside class body.

    //parameter: msg = messsage to print. Datatype is string
    public void printNewMessage(string msg){
        //msg is variable name. msg is dynamic.
        //used ONLY inside the method
        system.debug(msg);
    }

   //create a method
    public void add(){
        integer a = 5;
        integer b = 10;
        integer sum = a + b;
        system.debug(sum);
    }

    /*public void add(integer a, integer b){
        integer sum = a + b;
        system.debug(sum);
    }*/
}
