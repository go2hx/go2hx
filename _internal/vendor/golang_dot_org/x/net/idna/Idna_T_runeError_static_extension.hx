package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_runeError_asInterface) class T_runeError_static_extension {
    @:keep
    static public function error( _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError):stdgo.GoString {
        @:recv var _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError = _e;
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(("idna: disallowed rune %U" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_e)))?.__copy__();
    }
    @:keep
    static public function _code( _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError):stdgo.GoString {
        @:recv var _e:_internal.vendor.golang_dot_org.x.net.idna.Idna_T_runeError.T_runeError = _e;
        return ("P1" : stdgo.GoString);
    }
}
