package stdgo._internal.testing.quick;
@:keep @:allow(stdgo._internal.testing.quick.Quick.SetupError_asInterface) class SetupError_static_extension {
    @:keep
    @:tdfield
    static public function error( _s:stdgo._internal.testing.quick.Quick_setuperror.SetupError):stdgo.GoString {
        @:recv var _s:stdgo._internal.testing.quick.Quick_setuperror.SetupError = _s;
        return (_s : stdgo.GoString)?.__copy__();
    }
}
