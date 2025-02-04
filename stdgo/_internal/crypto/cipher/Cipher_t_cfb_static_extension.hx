package stdgo._internal.crypto.cipher;
@:keep @:allow(stdgo._internal.crypto.cipher.Cipher.T_cfb_asInterface) class T_cfb_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _x:stdgo.Ref<stdgo._internal.crypto.cipher.Cipher_t_cfb.T_cfb> = _x;
        if (((_dst.length) < (_src.length) : Bool)) {
            throw stdgo.Go.toInterface(("crypto/cipher: output smaller than input" : stdgo.GoString));
        };
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            throw stdgo.Go.toInterface(("crypto/cipher: invalid buffer overlap" : stdgo.GoString));
        };
        while (((_src.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((@:checkr _x ?? throw "null pointer dereference")._outUsed == (((@:checkr _x ?? throw "null pointer dereference")._out.length))) {
                (@:checkr _x ?? throw "null pointer dereference")._b.encrypt((@:checkr _x ?? throw "null pointer dereference")._out, (@:checkr _x ?? throw "null pointer dereference")._next);
                (@:checkr _x ?? throw "null pointer dereference")._outUsed = (0 : stdgo.GoInt);
            };
            if ((@:checkr _x ?? throw "null pointer dereference")._decrypt) {
                ((@:checkr _x ?? throw "null pointer dereference")._next.__slice__((@:checkr _x ?? throw "null pointer dereference")._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_src);
            };
            var _n = (stdgo._internal.crypto.subtle.Subtle_xorbytes.xORBytes(_dst, _src, ((@:checkr _x ?? throw "null pointer dereference")._out.__slice__((@:checkr _x ?? throw "null pointer dereference")._outUsed) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            if (!(@:checkr _x ?? throw "null pointer dereference")._decrypt) {
                ((@:checkr _x ?? throw "null pointer dereference")._next.__slice__((@:checkr _x ?? throw "null pointer dereference")._outUsed) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_dst);
            };
            _dst = (_dst.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            _src = (_src.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _x ?? throw "null pointer dereference")._outUsed = ((@:checkr _x ?? throw "null pointer dereference")._outUsed + (_n) : stdgo.GoInt);
        };
    }
}
