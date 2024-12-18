package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cfb_asInterface) class T_cfb_static_extension {
    @:keep
    static public function xorkeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_cfb.T_cfb> = _x;
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            if (_x._outUsed == ((_x._out.length))) {
                _x._b.encrypt(_x._out, _x._next);
                _x._outUsed = (0 : stdgo.GoInt);
            };
            if (_x._decrypt) {
                (_x._next.__slice__(_x._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_src);
            };
            var _n = (stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes(_dst, _src, (_x._out.__slice__(_x._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            if (!_x._decrypt) {
                (_x._next.__slice__(_x._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_dst);
            };
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _x._outUsed = (_x._outUsed + (_n) : stdgo.GoInt);
        };
    }
}
