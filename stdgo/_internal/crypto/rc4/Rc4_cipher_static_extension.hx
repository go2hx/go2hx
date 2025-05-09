package stdgo._internal.crypto.rc4;
@:keep @:allow(stdgo._internal.crypto.rc4.Rc4.Cipher_asInterface) class Cipher_static_extension {
    @:keep
    @:tdfield
    static public function xORKeyStream( _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>, _dst:stdgo.Slice<stdgo.GoUInt8>, _src:stdgo.Slice<stdgo.GoUInt8>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L62"
        if ((_src.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L63"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L65"
        if (stdgo._internal.crypto.internal.alias.Alias_inexactoverlap.inexactOverlap((_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>), _src)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L66"
            throw stdgo.Go.toInterface(("crypto/rc4: invalid buffer overlap" : stdgo.GoString));
        };
        var __0 = ((@:checkr _c ?? throw "null pointer dereference")._i : stdgo.GoUInt8), __1 = ((@:checkr _c ?? throw "null pointer dereference")._j : stdgo.GoUInt8);
var _j = __1, _i = __0;
        _dst[((_src.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
        _dst = (_dst.__slice__(0, (_src.length)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L71"
        for (_k => _v in _src) {
            _i = (_i + ((1 : stdgo.GoUInt8)) : stdgo.GoUInt8);
            var _x = ((@:checkr _c ?? throw "null pointer dereference")._s[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            _j = (_j + ((_x : stdgo.GoUInt8)) : stdgo.GoUInt8);
            var _y = ((@:checkr _c ?? throw "null pointer dereference")._s[(_j : stdgo.GoInt)] : stdgo.GoUInt32);
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                final __tmp__2 = (@:checkr _c ?? throw "null pointer dereference")._s;
                final __tmp__3 = (_i : stdgo.GoInt);
                final __tmp__4 = (@:checkr _c ?? throw "null pointer dereference")._s;
                final __tmp__5 = (_j : stdgo.GoInt);
                __tmp__2[__tmp__3] = @:binopAssign __tmp__0;
                __tmp__4[__tmp__5] = @:binopAssign __tmp__1;
            };
            _dst[(_k : stdgo.GoInt)] = (_v ^ ((@:checkr _c ?? throw "null pointer dereference")._s[(((_x + _y : stdgo.GoUInt32) : stdgo.GoUInt8) : stdgo.GoInt)] : stdgo.GoUInt8) : stdgo.GoUInt8);
        };
        {
            final __tmp__0 = _i;
            final __tmp__1 = _j;
            (@:checkr _c ?? throw "null pointer dereference")._i = @:binopAssign __tmp__0;
            (@:checkr _c ?? throw "null pointer dereference")._j = @:binopAssign __tmp__1;
        };
    }
    @:keep
    @:tdfield
    static public function reset( _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher>):Void {
        @:recv var _c:stdgo.Ref<stdgo._internal.crypto.rc4.Rc4_cipher.Cipher> = _c;
        //"file:///home/runner/.go/go1.21.3/src/crypto/rc4/rc4.go#L53"
        for (_i => _ in (@:checkr _c ?? throw "null pointer dereference")._s.__copy__()) {
            (@:checkr _c ?? throw "null pointer dereference")._s[(_i : stdgo.GoInt)] = (0u32 : stdgo.GoUInt32);
        };
        {
            final __tmp__0 = (0 : stdgo.GoUInt8);
            final __tmp__1 = (0 : stdgo.GoUInt8);
            (@:checkr _c ?? throw "null pointer dereference")._i = @:binopAssign __tmp__0;
            (@:checkr _c ?? throw "null pointer dereference")._j = @:binopAssign __tmp__1;
        };
    }
}
