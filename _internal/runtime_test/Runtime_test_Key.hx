package _internal.runtime_test;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.runtime.Runtime;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unsafe.Unsafe;
typedef Key = stdgo.StructType & {
    /**
        
        
        set bits all to 0
    **/
    public dynamic function _clear():Void;
    /**
        
        
        set key to something random
    **/
    public dynamic function _random(_r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>):Void;
    /**
        
        
        how many bits key has
    **/
    public dynamic function _bits():stdgo.GoInt;
    /**
        
        
        flip bit i of the key
    **/
    public dynamic function _flipBit(_i:stdgo.GoInt):Void;
    /**
        
        
        hash the key
    **/
    public dynamic function _hash():stdgo.GoUIntptr;
    /**
        
        
        for error reporting
    **/
    public dynamic function _name():stdgo.GoString;
};
