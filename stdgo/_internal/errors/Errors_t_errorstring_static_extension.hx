package stdgo._internal.errors;
@:keep @:allow(stdgo._internal.errors.Errors.T_errorString_asInterface) class T_errorString_static_extension {
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.errors.Errors_t_errorstring.T_errorString> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._s?.__copy__();
    }
}
