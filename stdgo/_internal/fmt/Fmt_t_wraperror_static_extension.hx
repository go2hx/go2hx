package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapError_asInterface) class T_wrapError_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>):stdgo.Error {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._err;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperror.T_wrapError> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}
