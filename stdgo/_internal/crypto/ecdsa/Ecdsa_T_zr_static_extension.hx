package stdgo._internal.crypto.ecdsa;
@:keep @:allow(stdgo._internal.crypto.ecdsa.Ecdsa.T_zr_asInterface) class T_zr_static_extension {
    @:keep
    static public function read( _:stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr, _dst:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _:stdgo._internal.crypto.ecdsa.Ecdsa_T_zr.T_zr = _?.__copy__();
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        for (_i => _ in _dst) {
            _dst[(_i : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
        };
        return { _0 : _n = (_dst.length), _1 : _err = (null : stdgo.Error) };
    }
}
