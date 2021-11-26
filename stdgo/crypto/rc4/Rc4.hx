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
@:structInit class Cipher {
    public function xorkeyStream(_dst:Slice<GoByte>, _src:Slice<GoByte>):Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_src.length == ((0 : GoInt))) {
            return;
        };
        if (crypto.internal.subtle.Subtle.inexactOverlap(_dst.__slice__(0, _src.length), _src)) {
            throw "crypto/rc4: invalid buffer overlap";
        };
        var _i:GoUInt8 = _c.value._i, _j:GoUInt8 = _c.value._j;
        _dst[_src.length - ((1 : GoInt))];
        _dst = _dst.__slice__(0, _src.length);
        for (_k => _v in _src) {
            _i = _i + (((1 : GoUInt8)));
            var _x:GoUInt32 = _c.value._s[_i];
            _j = _j + (((_x : GoUInt8)));
            var _y:GoUInt32 = _c.value._s[_j];
            {
                final __tmp__0 = _y;
                final __tmp__1 = _x;
                _c.value._s[_i] = __tmp__0;
                _c.value._s[_j] = __tmp__1;
            };
            _dst[_k] = _v ^ ((_c.value._s[(((_x + _y) : GoUInt8))] : GoUInt8));
        };
        {
            final __tmp__0 = _i;
            final __tmp__1 = _j;
            _c.value._i = __tmp__0;
            _c.value._j = __tmp__1;
        };
    }
    public function reset():Void {
        var _c = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        for (_i => _ in _c.value._s) {
            _c.value._s[_i] = ((0 : GoUInt32));
        };
        {
            final __tmp__0 = ((0 : GoUInt8));
            final __tmp__1 = ((0 : GoUInt8));
            _c.value._i = __tmp__0;
            _c.value._j = __tmp__1;
        };
    }
    public var _s : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 256) ((0 : GoUInt32))]);
    public var _i : GoUInt8 = ((0 : GoUInt8));
    public var _j : GoUInt8 = ((0 : GoUInt8));
    public function new(?_s:GoArray<GoUInt32>, ?_i:GoUInt8, ?_j:GoUInt8) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_s) + " " + Go.string(_i) + " " + Go.string(_j) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Cipher(_s, _i, _j);
    }
    public function __set__(__tmp__) {
        this._s = __tmp__._s;
        this._i = __tmp__._i;
        this._j = __tmp__._j;
        return this;
    }
}
@:named class KeySizeError {
    public function error():GoString {
        var _k = this.__copy__();
        return (("crypto/rc4: invalid key size " : GoString)) + stdgo.strconv.Strconv.itoa(_k.__t__);
    }
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new KeySizeError(__t__);
}
/**
    // NewCipher creates and returns a new Cipher. The key argument should be the
    // RC4 key, at least 1 byte and at most 256 bytes.
**/
function newCipher(_key:Slice<GoByte>):{ var _0 : Pointer<Cipher>; var _1 : Error; } {
        var _k:GoInt = _key.length;
        if (_k < ((1 : GoInt)) || _k > ((256 : GoInt))) {
            return { _0 : new Pointer<Cipher>().nil(), _1 : new KeySizeError(_k) };
        };
        var _c:Cipher = new Cipher();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                _c._s[_i] = ((_i : GoUInt32));
            });
        };
        var _j:GoUInt8 = ((0 : GoUInt8));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                _j = _j + (((_c._s[_i] : GoUInt8)) + _key[_i % _k]);
                {
                    final __tmp__0 = _c._s[_j];
                    final __tmp__1 = _c._s[_i];
                    _c._s[_i] = __tmp__0;
                    _c._s[_j] = __tmp__1;
                };
            });
        };
        return { _0 : Go.pointer(_c), _1 : ((null : stdgo.Error)) };
    }
class Cipher_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function xorkeyStream(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>):Void __tmp__.xorkeyStream(_dst, _src);
}
class KeySizeError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
