package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.CheckError_asInterface) class CheckError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError>):stdgo.GoString {
        @:recv var _s:stdgo.Ref<stdgo._internal.testing.quick.Quick_checkerror.CheckError> = _s;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("#%d: failed on input %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference").count), stdgo.Go.toInterface(stdgo._internal.testing.quick.Quick__tostring._toString((@:checkr _s ?? throw "null pointer dereference").in_)))?.__copy__();
    }
}
