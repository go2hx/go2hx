package std;

class Flag {
    public static function args():Array<String> {
        return [];
    }
    public static function parse() {}
    public static function string(flag:String,value:String,desc:String):Pointer<String> {
        return Pointer.make(() -> value,(x) -> value = x);
    }
    public static function int(flag:String,value:Int,desc:String):Pointer<Int> {
        return Pointer.make(() -> value,(x) -> value = x);
    }
    public static function bool(flag:String,value:Bool,desc:String):Pointer<Bool> {
        return Pointer.make(() -> value,(x) -> value);
    }
    //Pointer ref of flag
    public static function stringVar(p:Pointer<String>,flag:String,value:String,desc:String) {
        p.value = value;
    }
    public static function intVar(p:Pointer<Int>,flag:String,value:Int,desc:String) {
        p.value = value;
    }
    public static function boolVar(p:Pointer<Bool>,flag:String,value:Bool,desc:String) {
        p.value = value;
    }
}
class FlagSet {
    
}