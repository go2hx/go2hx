package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.T_myStruct_asInterface) class T_myStruct_static_extension {
    @:keep
    static public function generate( _m:stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct, _r:stdgo.Ref<stdgo._internal.math.rand.Rand_Rand.Rand>, __0:stdgo.GoInt):stdgo._internal.reflect.Reflect_Value.Value {
        @:recv var _m:stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct = _m?.__copy__();
        return stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(stdgo.Go.asInterface(({ _x : (42 : stdgo.GoInt) } : stdgo._internal.testing.quick.Quick_T_myStruct.T_myStruct))))?.__copy__();
    }
}