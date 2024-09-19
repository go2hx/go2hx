package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckError_asInterface) class CheckError_static_extension {
    @:keep
    static public function error( _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckError.CheckError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_CheckError.CheckError> = _s;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d: failed on input %s" : stdgo.GoString), stdgo.Go.toInterface(_s.count), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__toString._toString(_s.in_)))?.__copy__();
    }
}
