import Go.ErrorReturn;

class Strconv {
    public static inline function parseFloat(s:String,bitSize:Int):ErrorReturn<Float> {
        try {
            return {value:Std.parseFloat(s)};
        }catch(e) {
            return {value:0,error: e};
        }
    }
    public static inline function parseInt(s:String,base:Int,bitSize:Int):ErrorReturn<Int> {
        try {
            var value = Std.parseInt(s);
            if (value == null)
                return {value: 0,error: new Errors('parsing "$s": invalid syntax')};
            return {value: value};
        }catch(e) {
            if (s.substr(0,2) == "0x")
                return parseInt(s.substr(2),0,0);
            return {value: 0,error: e};
        }
    }
    public static inline function parseUint(s:String,base:Int,bitSize:Int) {
        return parseInt(s,base,bitSize);
    }
    // `Atoi` is a convenience function for basic base-10
    public static inline function atoi(s:String) {
        return parseInt(s,0,0);
    }
}