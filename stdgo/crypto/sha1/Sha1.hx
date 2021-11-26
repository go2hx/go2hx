package stdgo.crypto.sha1;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_digest {
    public function _constSum():GoArray<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _length:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        var _l:GoUInt64 = (_d.value._len << ((3 : GoUnTypedInt)));
        {
            var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_i < ((8 : GoUInt)), _i++, {
                _length[_i] = (((_l >> (((56 : GoUInt)) - ((8 : GoUInt)) * _i)) : GoByte));
            });
        };
        var _nx:GoUInt8 = ((_d.value._nx : GoByte));
        var _t:GoUInt8 = _nx - ((56 : GoUInt8));
        var _mask1b:GoUInt8 = (((((_t : GoInt8)) >> ((7 : GoUnTypedInt))) : GoByte));
        var _separator:GoUInt8 = ((((128 : GoUInt8)) : GoByte));
        {
            var _i:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
            Go.cfor(_i < _chunk, _i++, {
                var _mask:GoUInt8 = ((((((_i - _nx) : GoInt8)) >> ((7 : GoUnTypedInt))) : GoByte));
                _d.value._x[_i] = (-1 ^ _mask & _separator) | (_mask & _d.value._x[_i]);
                _separator = _separator & (_mask);
                if (_i >= ((56 : GoUInt8))) {
                    _d.value._x[_i] = _d.value._x[_i] | (_mask1b & _length[_i - ((56 : GoUInt8))]);
                };
            });
        };
        _block(_d, _d.value._x.__slice__(0));
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        for (_i => _s in _d.value._h) {
            _digest[_i * ((4 : GoInt))] = _mask1b & (((_s >> ((24 : GoUnTypedInt))) : GoByte));
            _digest[_i * ((4 : GoInt)) + ((1 : GoInt))] = _mask1b & (((_s >> ((16 : GoUnTypedInt))) : GoByte));
            _digest[_i * ((4 : GoInt)) + ((2 : GoInt))] = _mask1b & (((_s >> ((8 : GoUnTypedInt))) : GoByte));
            _digest[_i * ((4 : GoInt)) + ((3 : GoInt))] = _mask1b & ((_s : GoByte));
        };
        {
            var _i:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
            Go.cfor(_i < _chunk, _i++, {
                if (_i < ((56 : GoUInt8))) {
                    _d.value._x[_i] = _separator;
                    _separator = ((0 : GoUInt8));
                } else {
                    _d.value._x[_i] = _length[_i - ((56 : GoUInt8))];
                };
            });
        };
        _block(_d, _d.value._x.__slice__(0));
        for (_i => _s in _d.value._h) {
            _digest[_i * ((4 : GoInt))] = _digest[_i * ((4 : GoInt))] | (-1 ^ _mask1b & (((_s >> ((24 : GoUnTypedInt))) : GoByte)));
            _digest[_i * ((4 : GoInt)) + ((1 : GoInt))] = _digest[_i * ((4 : GoInt)) + ((1 : GoInt))] | (-1 ^ _mask1b & (((_s >> ((16 : GoUnTypedInt))) : GoByte)));
            _digest[_i * ((4 : GoInt)) + ((2 : GoInt))] = _digest[_i * ((4 : GoInt)) + ((2 : GoInt))] | (-1 ^ _mask1b & (((_s >> ((8 : GoUnTypedInt))) : GoByte)));
            _digest[_i * ((4 : GoInt)) + ((3 : GoInt))] = _digest[_i * ((4 : GoInt)) + ((3 : GoInt))] | (-1 ^ _mask1b & ((_s : GoByte)));
        };
        return _digest.copy();
    }
    public function constantTimeSum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d0:T_digest = _d.value.__copy__();
        var _hash:GoArray<GoUInt8> = _d0._constSum().copy();
        return _in.__append__(..._hash.__slice__(0).toArray());
    }
    public function _checkSum():GoArray<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _len:GoUInt64 = _d.value._len;
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        _tmp[((0 : GoInt))] = ((128 : GoUInt8));
        if (_len % ((64 : GoUInt64)) < ((56 : GoUInt64))) {
            _d.value.write(_tmp.__slice__(((0 : GoInt)), ((56 : GoUInt64)) - _len % ((64 : GoUInt64))));
        } else {
            _d.value.write(_tmp.__slice__(((0 : GoInt)), ((64 : GoUnTypedInt)) + ((56 : GoUnTypedInt)) - _len % ((64 : GoUInt64))));
        };
        _len = (_len << (((3 : GoUnTypedInt))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_tmp.__slice__(0), _len);
        _d.value.write(_tmp.__slice__(((0 : GoInt)), ((8 : GoInt))));
        if (_d.value._nx != ((0 : GoInt))) {
            throw "d.nx != 0";
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((0 : GoInt))), _d.value._h[((0 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((4 : GoInt))), _d.value._h[((1 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((8 : GoInt))), _d.value._h[((2 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((12 : GoInt))), _d.value._h[((3 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((16 : GoInt))), _d.value._h[((4 : GoInt))]);
        return _digest.copy();
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d0:T_digest = _d.value.__copy__();
        var _hash:GoArray<GoUInt8> = _d0._checkSum().copy();
        return _in.__append__(..._hash.__slice__(0).toArray());
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _nn = _p.length;
        _d.value._len = _d.value._len + (((_nn : GoUInt64)));
        if (_d.value._nx > ((0 : GoInt))) {
            var _n:GoInt = Go.copy(_d.value._x.__slice__(_d.value._nx), _p);
            _d.value._nx = _d.value._nx + (_n);
            if (_d.value._nx == _chunk) {
                _block(_d, _d.value._x.__slice__(0));
                _d.value._nx = ((0 : GoInt));
            };
            _p = _p.__slice__(_n);
        };
        if (_p.length >= _chunk) {
            var _n:GoInt = (_p.length & (_chunk - ((1 : GoUnTypedInt)))) ^ ((-1 : GoUnTypedInt));
            _block(_d, _p.__slice__(0, _n));
            _p = _p.__slice__(_n);
        };
        if (_p.length > ((0 : GoInt))) {
            _d.value._nx = Go.copy(_d.value._x.__slice__(0), _p);
        };
        return { _0 : _nn, _1 : _err };
    }
    public function blockSize():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Sha1.blockSize;
    }
    public function size():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Sha1.size;
    }
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._h[((0 : GoInt))] = _init0;
        _d.value._h[((1 : GoInt))] = _init1;
        _d.value._h[((2 : GoInt))] = _init2;
        _d.value._h[((3 : GoInt))] = _init3;
        _d.value._h[((4 : GoInt))] = _init4;
        _d.value._nx = ((0 : GoInt));
        _d.value._len = ((0 : GoUInt64));
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length < _magic.length || ((_b.__slice__(0, _magic.length) : GoString)) != _magic) {
            return stdgo.errors.Errors.new_("crypto/sha1: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("crypto/sha1: invalid hash state size");
        };
        _b = _b.__slice__(_magic.length);
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((0 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((1 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((2 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((3 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((4 : GoInt))] = __tmp__._1;
        };
        _b = _b.__slice__(Go.copy(_d.value._x.__slice__(0), _b));
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._len = __tmp__._1;
        };
        _d.value._nx = (((_d.value._len % _chunk) : GoInt));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize : GoInt)).toBasic());
        _b = _b.__append__(..._magic.toArray());
        _b = _appendUint32(_b, _d.value._h[((0 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((1 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((2 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((3 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((4 : GoInt))]);
        _b = _b.__append__(..._d.value._x.__slice__(0, _d.value._nx).toArray());
        _b = _b.__slice__(0, _b.length + _d.value._x.length - ((_d.value._nx : GoInt)));
        _b = _appendUint64(_b, _d.value._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public var _h : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 5) ((0 : GoUInt32))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public function new(?_h:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_x) + " " + Go.string(_nx) + " " + Go.string(_len) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._x = __tmp__._x;
        this._nx = __tmp__._nx;
        this._len = __tmp__._len;
        return this;
    }
}
final __K3 : GoInt64 = (("3395469782" : GoUnTypedInt));
final _init3 : GoInt64 = ((271733878 : GoUnTypedInt));
final _chunk : GoInt64 = ((64 : GoUnTypedInt));
final _init4 : GoInt64 = (("3285377520" : GoUnTypedInt));
final _magic : GoString = "sha\\x01";
final size : GoInt64 = ((20 : GoUnTypedInt));
final __K0 : GoInt64 = ((1518500249 : GoUnTypedInt));
final _init0 : GoInt64 = ((1732584193 : GoUnTypedInt));
final blockSize : GoInt64 = ((64 : GoUnTypedInt));
final __K1 : GoInt64 = ((1859775393 : GoUnTypedInt));
final _init1 : GoInt64 = (("4023233417" : GoUnTypedInt));
var _block : (Pointer<T_digest>, Slice<GoUInt8>) -> Void = _blockGeneric;
final __K2 : GoInt64 = (("2400959708" : GoUnTypedInt));
final _marshaledSize : GoInt = _magic.length + ((5 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) + _chunk + ((8 : GoInt));
final _init2 : GoInt64 = (("2562383102" : GoUnTypedInt));
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_a.__slice__(0), _x);
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _appendUint32(_b:Slice<GoByte>, _x:GoUInt32):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_a.__slice__(0), _x);
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _consumeUint64(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; } {
        _b[((7 : GoInt))];
        var _x:GoUInt64 = ((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
        return { _0 : _b.__slice__(((8 : GoInt))), _1 : _x };
    }
function _consumeUint32(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt32; } {
        _b[((3 : GoInt))];
        var _x:GoUInt32 = ((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
        return { _0 : _b.__slice__(((4 : GoInt))), _1 : _x };
    }
/**
    // New returns a new hash.Hash computing the SHA1 checksum. The Hash also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer(new T_digest());
        _d.value.reset();
        return _d.value;
    }
/**
    // Sum returns the SHA-1 checksum of the data.
**/
function sum(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d.reset();
        _d.write(_data);
        return _d._checkSum().copy();
    }
/**
    // blockGeneric is a portable, pure Go version of the SHA-1 block step.
    // It's used by sha1block_generic.go and tests.
**/
function _blockGeneric(_dig:Pointer<T_digest>, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 16) ((0 : GoUInt32))]);
        var _h0:GoUInt32 = _dig.value._h[((0 : GoInt))], _h1:GoUInt32 = _dig.value._h[((1 : GoInt))], _h2:GoUInt32 = _dig.value._h[((2 : GoInt))], _h3:GoUInt32 = _dig.value._h[((3 : GoInt))], _h4:GoUInt32 = _dig.value._h[((4 : GoInt))];
        while (_p.length >= _chunk) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((4 : GoInt));
                    _w[_i] = (((_p[_j] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_p[_j + ((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[_j + ((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_p[_j + ((3 : GoInt))] : GoUInt32));
                });
            };
            var _a:GoUInt32 = _h0, _b:GoUInt32 = _h1, _c:GoUInt32 = _h2, _d:GoUInt32 = _h3, _e:GoUInt32 = _h4;
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _f:GoUInt32 = _b & _c | (-1 ^ _b) & _d;
                var _t:GoUInt32 = stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f + _e + _w[_i & ((15 : GoInt))] + __K0;
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, ((30 : GoInt)));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < ((20 : GoInt)), _i++, {
                var _tmp:GoUInt32 = _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] ^ _w[(_i) & ((15 : GoInt))];
                _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt))));
                var _f:GoUInt32 = _b & _c | (-1 ^ _b) & _d;
                var _t:GoUInt32 = stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f + _e + _w[_i & ((15 : GoInt))] + __K0;
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, ((30 : GoInt)));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < ((40 : GoInt)), _i++, {
                var _tmp:GoUInt32 = _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] ^ _w[(_i) & ((15 : GoInt))];
                _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt))));
                var _f:GoUInt32 = _b ^ _c ^ _d;
                var _t:GoUInt32 = stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f + _e + _w[_i & ((15 : GoInt))] + __K1;
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, ((30 : GoInt)));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < ((60 : GoInt)), _i++, {
                var _tmp:GoUInt32 = _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] ^ _w[(_i) & ((15 : GoInt))];
                _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt))));
                var _f:GoUInt32 = ((_b | _c) & _d) | (_b & _c);
                var _t:GoUInt32 = stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f + _e + _w[_i & ((15 : GoInt))] + __K2;
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, ((30 : GoInt)));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            Go.cfor(_i < ((80 : GoInt)), _i++, {
                var _tmp:GoUInt32 = _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] ^ _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] ^ _w[(_i) & ((15 : GoInt))];
                _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> (((32 : GoUnTypedInt)) - ((1 : GoUnTypedInt))));
                var _f:GoUInt32 = _b ^ _c ^ _d;
                var _t:GoUInt32 = stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f + _e + _w[_i & ((15 : GoInt))] + __K3;
                {
                    final __tmp__0 = _t;
                    final __tmp__1 = _a;
                    final __tmp__2 = stdgo.math.bits.Bits.rotateLeft32(_b, ((30 : GoInt)));
                    final __tmp__3 = _c;
                    final __tmp__4 = _d;
                    _a = __tmp__0;
                    _b = __tmp__1;
                    _c = __tmp__2;
                    _d = __tmp__3;
                    _e = __tmp__4;
                };
            });
            _h0 = _h0 + (_a);
            _h1 = _h1 + (_b);
            _h2 = _h2 + (_c);
            _h3 = _h3 + (_d);
            _h4 = _h4 + (_e);
            _p = _p.__slice__(_chunk);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            _dig.value._h[((0 : GoInt))] = __tmp__0;
            _dig.value._h[((1 : GoInt))] = __tmp__1;
            _dig.value._h[((2 : GoInt))] = __tmp__2;
            _dig.value._h[((3 : GoInt))] = __tmp__3;
            _dig.value._h[((4 : GoInt))] = __tmp__4;
        };
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha1, new_);
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_digest_extension_fields {
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
    public function reset(__tmp__):Void __tmp__.reset();
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function _checkSum(__tmp__):GoArray<GoByte> return __tmp__._checkSum();
    public function constantTimeSum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.constantTimeSum(_in);
    public function _constSum(__tmp__):GoArray<GoByte> return __tmp__._constSum();
}
