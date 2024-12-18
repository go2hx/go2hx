package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_ctr_asInterface) class T_ctr_static_extension {
    @:keep
    static public function xorkeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr> = _x;
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactOverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((_x._outUsed >= ((_x._out.length) - _x._b.blockSize() : stdgo.GoInt) : Bool)) {
                _x._refill();
            };
            var _n = (stdgo._internal.crypto.subtle.Subtle_xorbytes.xorbytes(_dst, _src, (_x._out.__slice__(_x._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _x._outUsed = (_x._outUsed + (_n) : stdgo.GoInt);
        };
    }
    @:keep
    static public function _refill( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_T_ctr.T_ctr> = _x;
        var _remain = ((_x._out.length) - _x._outUsed : stdgo.GoInt);
        _x._out.__copyTo__((_x._out.__slice__(_x._outUsed) : stdgo.Slice<stdgo.GoUInt8>));
        _x._out = (_x._out.__slice__(0, _x._out.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        var _bs = (_x._b.blockSize() : stdgo.GoInt);
        while ((_remain <= ((_x._out.length) - _bs : stdgo.GoInt) : Bool)) {
            _x._b.encrypt((_x._out.__slice__(_remain) : stdgo.Slice<stdgo.GoUInt8>), _x._ctr);
            _remain = (_remain + (_bs) : stdgo.GoInt);
            {
                var _i = ((_x._ctr.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    _x._ctr[(_i : stdgo.GoInt)]++;
if (_x._ctr[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        break;
                    };
                    _i--;
                };
            };
        };
        _x._out = (_x._out.__slice__(0, _remain) : stdgo.Slice<stdgo.GoUInt8>);
        _x._outUsed = (0 : stdgo.GoInt);
    }
}
