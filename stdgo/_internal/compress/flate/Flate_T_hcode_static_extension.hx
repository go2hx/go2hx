package stdgo._internal.compress.flate;
@:keep @:allow(stdgo._internal.compress.flate.Flate.T_hcode_asInterface) class T_hcode_static_extension {
    @:keep
    static public function _set( _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode>, _code:stdgo.GoUInt16, _length:stdgo.GoUInt16):Void {
        @:recv var _h:stdgo.Ref<stdgo._internal.compress.flate.Flate_T_hcode.T_hcode> = _h;
        _h._len = _length;
        _h._code = _code;
    }
}
