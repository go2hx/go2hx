package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckEqualError_asInterface) class CheckEqualError_static_extension {
    @:keep
    static public function error( _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckEqualError.CheckEqualError> = _s;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d: failed on input %s. Output 1: %s. Output 2: %s" : stdgo.GoString), stdgo.Go.toInterface(_s.checkError.count), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString(_s.checkError.in_)), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString(_s.out1)), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString(_s.out2)))?.__copy__();
    }
}
