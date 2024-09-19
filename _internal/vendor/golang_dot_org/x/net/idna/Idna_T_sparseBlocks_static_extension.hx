package _internal.vendor.golang_dot_org.x.net.idna;
@:keep @:allow(_internal.vendor.golang_dot_org.x.net.idna.Idna.T_sparseBlocks_asInterface) class T_sparseBlocks_static_extension {
    @:keep
    static public function _lookup( _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_sparseBlocks.T_sparseBlocks>, _n:stdgo.GoUInt32, _b:stdgo.GoUInt8):stdgo.GoUInt16 {
        @:recv var _t:stdgo.Ref<_internal.vendor.golang_dot_org.x.net.idna.Idna_T_sparseBlocks.T_sparseBlocks> = _t;
        var _offset = (_t._offset[(_n : stdgo.GoInt)] : stdgo.GoUInt16);
        var _header = (_t._values[(_offset : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_valueRange.T_valueRange);
        var _lo = (_offset + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
        var _hi = (_lo + (_header._lo : stdgo.GoUInt16) : stdgo.GoUInt16);
        while ((_lo < _hi : Bool)) {
            var _m = (_lo + (((_hi - _lo : stdgo.GoUInt16)) / (2 : stdgo.GoUInt16) : stdgo.GoUInt16) : stdgo.GoUInt16);
            var _r = (_t._values[(_m : stdgo.GoInt)] : _internal.vendor.golang_dot_org.x.net.idna.Idna_T_valueRange.T_valueRange);
            if (((_r._lo <= _b : Bool) && (_b <= _r._hi : Bool) : Bool)) {
                return (_r._value + (((_b - _r._lo : stdgo.GoUInt8) : stdgo.GoUInt16) * _header._value : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
            if ((_b < _r._lo : Bool)) {
                _hi = _m;
            } else {
                _lo = (_m + (1 : stdgo.GoUInt16) : stdgo.GoUInt16);
            };
        };
        return (0 : stdgo.GoUInt16);
    }
}
