package stdgo._internal.testing.quick;
typedef Generator = stdgo.StructType & {
    /**
        Generate returns a random instance of the type on which it is a
        method using the size as a size hint.
        
        
    **/
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value;
};
