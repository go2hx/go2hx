package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_hcode_asInterface) class T_hcode_static_extension {
    @:keep
    @:tdfield
    static public function _set( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode>, _code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_t_hcode.T_hcode> = _h;
        (@:checkr _h ?? throw "null pointer dereference")._len = _length;
        (@:checkr _h ?? throw "null pointer dereference")._code = _code;
    }
}
