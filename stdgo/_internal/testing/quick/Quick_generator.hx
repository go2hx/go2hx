package stdgo._internal.testing.quick;
@:interface typedef Generator = stdgo.StructType & {
    /**
        * Generate returns a random instance of the type on which it is a
        * method using the size as a size hint.
        
        
    **/
    @:interfacetypeffun
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value;
};
