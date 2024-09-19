package stdgo._internal.errors;
@:keep @:allow(stdgo._internal.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_T_errorString.T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_T_errorString.T_errorString> = _e;
        return _e._s?.__copy__();
    }
}
