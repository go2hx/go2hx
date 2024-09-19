package stdgo._internal.fmt;
@:keep @:allow(stdgo._internal.fmt.Fmt.T_wrapErrors_asInterface) class T_wrapErrors_static_extension {
    @:keep
    static public function unwrap( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>):stdgo.Slice<stdgo.Error> {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors> = _e;
        return _e._errs;
    }
    @:keep
    static public function error( _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors>):stdgo.GoString {
        @:recv var _e:stdgo.Ref<stdgo._internal.fmt.Fmt_T_wrapErrors.T_wrapErrors> = _e;
        return _e._msg?.__copy__();
    }
}
