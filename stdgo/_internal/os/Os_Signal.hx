package stdgo._internal.os;
typedef Signal = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function string():stdgo.GoString;
    /**
        
        
        to distinguish from other Stringers
    **/
    public dynamic function signal():Void;
};
