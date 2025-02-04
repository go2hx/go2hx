package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.T_myStruct_asInterface) class T_myStruct_static_extension {
    @:keep
    @:tdfield
    static public function generate( _m:stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect_value.Value {
        @:recv var _m:stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct = _m?.__copy__();
        return stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (42 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_t_mystruct.T_myStruct))))?.__copy__();
    }
}
