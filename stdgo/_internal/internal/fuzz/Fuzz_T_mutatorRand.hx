package stdgo._internal.internal.fuzz;
import stdgo._internal.unsafe.Unsafe;
typedef T_mutatorRand = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function _uint32():stdgo.GoUInt32;
    /**
        
        
        
    **/
    public dynamic function _intn(_0:stdgo.GoInt):stdgo.GoInt;
    /**
        
        
        
    **/
    public dynamic function _uint32n(_0:stdgo.GoUInt32):stdgo.GoUInt32;
    /**
        
        
        
    **/
    public dynamic function _exp2():stdgo.GoInt;
    /**
        
        
        
    **/
    public dynamic function _bool():Bool;
    /**
        
        
        
    **/
    public dynamic function _save(_randState:stdgo.Pointer<stdgo.GoUInt64>, _randInc:stdgo.Pointer<stdgo.GoUInt64>):Void;
    /**
        
        
        
    **/
    public dynamic function _restore(_randState:stdgo.GoUInt64, _randInc:stdgo.GoUInt64):Void;
};
