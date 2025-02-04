package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapErrors_asInterface) class T_wrapErrors_static_extension {
    @:keep
    @:tdfield
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._errs;
    }
    @:keep
    @:tdfield
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_t_wraperrors.T_wrapErrors> = _e;
        return (@:checkr _e ?? throw "null pointer dereference")._msg?.__copy__();
    }
}
