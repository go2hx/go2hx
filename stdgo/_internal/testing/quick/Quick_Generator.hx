package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:interface typedef Generator = stdgo.StructType & {
    /**
        Generate returns a random instance of the type on which it is a
        method using the size as a size hint.
        
        
    **/
    @:interfacetypeffun
    public dynamic function generate(_rand:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, _size:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value;
};
