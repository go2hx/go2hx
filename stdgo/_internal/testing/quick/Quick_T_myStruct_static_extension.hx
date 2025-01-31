package stdgo._internal.testing.quick;
import stdgo._internal.flag.Flag;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.time.Time;
@:keep @:allow(stdgo._internal.testing.quick.Quick.T_myStruct_asInterface) class T_myStruct_static_extension {
    @:keep
    @:tdfield
    static public function generate( _m:stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _m:stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct = _m?.__copy__();
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (42 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct))))?.__copy__();
    }
}
