package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_labelError_asInterface) class T_labelError_static_extension {
    @:keep
    static public function error( _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError):stdgo.GoString {
        @:recv var _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError = _e?.__copy__();
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("idna: invalid label %q" : stdgo.GoString), stdgo.Go.toInterface(_e._label))?.__copy__();
    }
    @:keep
    static public function _code( _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError):stdgo.GoString {
        @:recv var _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_labelError.T_labelError = _e?.__copy__();
        return _e._code_?.__copy__();
    }
}
