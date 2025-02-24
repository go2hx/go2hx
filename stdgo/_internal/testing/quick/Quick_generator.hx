package stdgo._internal.testing.quick;
@:interface typedef Generator = stdgo.StructType & {
    @:interfacetypeffun
    function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value;
};
