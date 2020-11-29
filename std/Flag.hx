package std;

class Flag {
    public static function args():Array<String> {
        return [];
    }
    public static function parse() {}
    public static function string(flag:String,value:String,desc:String):Pointer<String> {
        return Pointer.make("");
    }
    public static function int(flag:String,value:Int,desc:String):Pointer<Int> {
        return Pointer.make(0);
    }
    public static function bool(flag:String,value:Bool,desc:String):Pointer<Bool> {
        return Pointer.make(false);
    }
    //Pointer ref of flag
    public static function stringVar(p:Any,flag:String,value:String,desc:String) {

    }
    public static function intVar(p:Any,flag:String,value:Int,desc:String) {

    }
    public static function boolVar(p:Any,flag:String,value:Bool,desc:String) {

    }
}