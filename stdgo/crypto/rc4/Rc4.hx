package stdgo.crypto.rc4;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit @:using(stdgo.crypto.rc4.Rc4.Cipher_static_extension) class Cipher {
    public var _s : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 256) ((0 : GoUInt32))]);
    public var _i : GoUInt8 = ((0 : GoUInt8));
    public var _j : GoUInt8 = ((0 : GoUInt8));
    public function new(?_s:GoArray<GoUInt32>, ?_i:GoUInt8, ?_j:GoUInt8) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_j != null) this._j = _j;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Cipher(_s, _i, _j);
    }
}
@:named @:using(stdgo.crypto.rc4.Rc4.KeySizeError_static_extension) typedef KeySizeError = GoInt;
/**
    // NewCipher creates and returns a new Cipher. The key argument should be the
    // RC4 key, at least 1 byte and at most 256 bytes.
**/
function newCipher(_key:Slice<GoByte>):{ var _0 : Cipher; var _1 : Error; } {
        var _k:GoInt = (_key != null ? _key.length : ((0 : GoInt)));
        if ((_k < ((1 : GoInt))) || (_k > ((256 : GoInt)))) {
            return { _0 : null, _1 : {
                final __self__ = new KeySizeError_wrapper(((_k : KeySizeError)));
                __self__.error = #if !macro function():GoString return ((_k : KeySizeError)).error() #else null #end;
                __self__;
            } };
        };
        var _c:Cipher = new Cipher();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                if (_c._s != null) _c._s[_i] = ((_i : GoUInt32));
            });
        };
        var _j:GoUInt8 = ((0 : GoUInt8));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                _j = _j + ((((_c._s != null ? _c._s[_i] : ((0 : GoUInt32))) : GoUInt8)) + (_key != null ? _key[_i % _k] : ((0 : GoUInt8))));
                {
                    final __tmp__0 = (_c._s != null ? _c._s[_j] : ((0 : GoUInt32)));
                    final __tmp__1 = (_c._s != null ? _c._s[_i] : ((0 : GoUInt32)));
                    if (_c._s != null) _c._s[_i] = __tmp__0;
                    if (_c._s != null) _c._s[_j] = __tmp__1;
                };
            });
        };
        return { _0 : _c, _1 : ((null : stdgo.Error)) };
    }
@:keep class Cipher_static_extension {
    /**
        // XORKeyStream sets dst to the result of XORing src with the key stream.
        // Dst and src must overlap entirely or not at all.
    **/
    @:keep
    public static function xorkeyStream( _c:Cipher, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        if ((_src != null ? _src.length : ((0 : GoInt))) == ((0 : GoInt))) {
            return;
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>)), _src)) {
            throw Go.toInterface(((("crypto/rc4: invalid buffer overlap" : GoString))));
        };
        var _i:GoUInt8 = _c._i, _j:GoUInt8 = _c._j;
        (_dst != null ? _dst[(_src != null ? _src.length : ((0 : GoInt))) - ((1 : GoInt))] : ((0 : GoUInt8)));
        _dst = ((_dst.__slice__(0, (_src != null ? _src.length : ((0 : GoInt)))) : Slice<GoUInt8>));
        for (_k => _v in _src) {
            _i = _i + (((1 : GoUInt8)));
            var _x:GoUInt32 = (_c._s != null ? _c._s[_i] : ((0 : GoUInt32)));
            _j = _j + (((_x : GoUInt8)));
            var _y:GoUInt32 = (_c._s != null ? _c._s[_j] : ((0 : GoUInt32)));
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                if (_c._s != null) _c._s[_i] = __tmp__0;
                if (_c._s != null) _c._s[_j] = __tmp__1;
            };
            if (_dst != null) _dst[_k] = _v ^ (((_c._s != null ? _c._s[(((_x + _y) : GoUInt8))] : ((0 : GoUInt32))) : GoUInt8));
        };
        {
            final __tmp__0 = _i;
            final __tmp__1 = _j;
            _c._i = __tmp__0;
            _c._j = __tmp__1;
        };
    }
    /**
        // Reset zeros the key data and makes the Cipher unusable.
        //
        // Deprecated: Reset can't guarantee that the key will be entirely removed from
        // the process's memory.
    **/
    @:keep
    public static function reset( _c:Cipher):Void {
        for (_i => _ in _c._s) {
            if (_c._s != null) _c._s[_i] = ((0 : GoUInt32));
        };
        {
            final __tmp__0 = ((0 : GoUInt8));
            final __tmp__1 = ((0 : GoUInt8));
            _c._i = __tmp__0;
            _c._j = __tmp__1;
        };
    }
}
class Cipher_wrapper {
    /**
        // XORKeyStream sets dst to the result of XORing src with the key stream.
        // Dst and src must overlap entirely or not at all.
    **/
    @:keep
    public var xorkeyStream : (Slice<GoByte>, Slice<GoByte>) -> Void = null;
    /**
        // Reset zeros the key data and makes the Cipher unusable.
        //
        // Deprecated: Reset can't guarantee that the key will be entirely removed from
        // the process's memory.
    **/
    @:keep
    public var reset : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : Cipher;
}
@:keep class KeySizeError_static_extension {
    @:keep
    public static function error( _k:KeySizeError):GoString {
        return ((("crypto/rc4: invalid key size " : GoString))) + stdgo.strconv.Strconv.itoa(((_k : GoInt)));
    }
}
class KeySizeError_wrapper {
    @:keep
    public var error : () -> GoString = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : KeySizeError;
}
