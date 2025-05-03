package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_ctr_asInterface) class T_ctr_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr> = _x;
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L80"
        if (((_dst.length) < (_src.length) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L81"
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L83"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L84"
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L86"
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L87"
            if (((@:checkr _x ?? throw "null pointer dereference")._outUsed >= (((@:checkr _x ?? throw "null pointer dereference")._out.length) - (@:checkr _x ?? throw "null pointer dereference")._b.blockSize() : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L88"
                _x._refill();
            };
            var _n = (stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_dst, _src, ((@:checkr _x ?? throw "null pointer dereference")._out.__slice__((@:checkr _x ?? throw "null pointer dereference")._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw "null pointer dereference")._outUsed = ((@:checkr _x ?? throw "null pointer dereference")._outUsed + (_n) : stdgo.GoInt);
        };
    }
    @:keep
    @:tdfield
    static public function _refill( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_ctr.T_ctr> = _x;
        var _remain = (((@:checkr _x ?? throw "null pointer dereference")._out.length) - (@:checkr _x ?? throw "null pointer dereference")._outUsed : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L60"
        (@:checkr _x ?? throw "null pointer dereference")._out.__copyTo__(((@:checkr _x ?? throw "null pointer dereference")._out.__slice__((@:checkr _x ?? throw "null pointer dereference")._outUsed) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _x ?? throw "null pointer dereference")._out = ((@:checkr _x ?? throw "null pointer dereference")._out.__slice__(0, (@:checkr _x ?? throw "null pointer dereference")._out.capacity) : stdgo.Slice<stdgo.GoUInt8>);
        var _bs = ((@:checkr _x ?? throw "null pointer dereference")._b.blockSize() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L63"
        while ((_remain <= (((@:checkr _x ?? throw "null pointer dereference")._out.length) - _bs : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L64"
            (@:checkr _x ?? throw "null pointer dereference")._b.encrypt(((@:checkr _x ?? throw "null pointer dereference")._out.__slice__(_remain) : stdgo.Slice<stdgo.GoUInt8>), (@:checkr _x ?? throw "null pointer dereference")._ctr);
            _remain = (_remain + (_bs) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L68"
            {
                var _i = (((@:checkr _x ?? throw "null pointer dereference")._ctr.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L69"
                    (@:checkr _x ?? throw "null pointer dereference")._ctr[(_i : stdgo.GoInt)]++;
//"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L70"
                    if ((@:checkr _x ?? throw "null pointer dereference")._ctr[(_i : stdgo.GoInt)] != ((0 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/crypto/cipher/ctr.go#L71"
                        break;
                    };
                    _i--;
                };
            };
        };
        (@:checkr _x ?? throw "null pointer dereference")._out = ((@:checkr _x ?? throw "null pointer dereference")._out.__slice__(0, _remain) : stdgo.Slice<stdgo.GoUInt8>);
        (@:checkr _x ?? throw "null pointer dereference")._outUsed = (0 : stdgo.GoInt);
    }
}
