package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError> = _e;
        return _e._err;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapError.T_wrapError> = _e;
        return _e._msg?.__copy__();
    }
}