package stdgo.crypto.sha256;
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
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((0 : GoInt))), _d.value._h[((0 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((4 : GoInt))), _d.value._h[((1 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((8 : GoInt))), _d.value._h[((2 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((12 : GoInt))), _d.value._h[((3 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((16 : GoInt))), _d.value._h[((4 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((20 : GoInt))), _d.value._h[((5 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((24 : GoInt))), _d.value._h[((6 : GoInt))]);
        if (!_d.value._is224) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32(_digest.__slice__(((28 : GoInt))), _d.value._h[((7 : GoInt))]);
        };
        return _digest.copy();
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d0:T_digest = _d.value.__copy__();
        var _hash:GoArray<GoUInt8> = _d0._checkSum().copy();
        if (_d0._is224) {
            return _in.__append__(..._hash.__slice__(0, size224).toArray());
        };
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
        return Sha256.blockSize;
    }
    public function size():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_d.value._is224) {
            return Sha256.size;
        };
        return size224;
    }
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (!_d.value._is224) {
            _d.value._h[((0 : GoInt))] = _init0;
            _d.value._h[((1 : GoInt))] = _init1;
            _d.value._h[((2 : GoInt))] = _init2;
            _d.value._h[((3 : GoInt))] = _init3;
            _d.value._h[((4 : GoInt))] = _init4;
            _d.value._h[((5 : GoInt))] = _init5;
            _d.value._h[((6 : GoInt))] = _init6;
            _d.value._h[((7 : GoInt))] = _init7;
        } else {
            _d.value._h[((0 : GoInt))] = _init0_224;
            _d.value._h[((1 : GoInt))] = _init1_224;
            _d.value._h[((2 : GoInt))] = _init2_224;
            _d.value._h[((3 : GoInt))] = _init3_224;
            _d.value._h[((4 : GoInt))] = _init4_224;
            _d.value._h[((5 : GoInt))] = _init5_224;
            _d.value._h[((6 : GoInt))] = _init6_224;
            _d.value._h[((7 : GoInt))] = _init7_224;
        };
        _d.value._nx = ((0 : GoInt));
        _d.value._len = ((0 : GoUInt64));
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length < _magic224.length || (_d.value._is224 && ((_b.__slice__(0, _magic224.length) : GoString)) != _magic224) || (!_d.value._is224 && ((_b.__slice__(0, _magic256.length) : GoString)) != _magic256)) {
            return stdgo.errors.Errors.new_("crypto/sha256: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("crypto/sha256: invalid hash state size");
        };
        _b = _b.__slice__(_magic224.length);
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
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((5 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((6 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            _d.value._h[((7 : GoInt))] = __tmp__._1;
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
        if (_d.value._is224) {
            _b = _b.__append__(..._magic224.toArray());
        } else {
            _b = _b.__append__(..._magic256.toArray());
        };
        _b = _appendUint32(_b, _d.value._h[((0 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((1 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((2 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((3 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((4 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((5 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((6 : GoInt))]);
        _b = _appendUint32(_b, _d.value._h[((7 : GoInt))]);
        _b = _b.__append__(..._d.value._x.__slice__(0, _d.value._nx).toArray());
        _b = _b.__slice__(0, _b.length + _d.value._x.length - ((_d.value._nx : GoInt)));
        _b = _appendUint64(_b, _d.value._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public var _h : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 8) ((0 : GoUInt32))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public var _is224 : Bool = false;
    public function new(?_h:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64, ?_is224:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_x) + " " + Go.string(_nx) + " " + Go.string(_len) + " " + Go.string(_is224) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len, _is224);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._x = __tmp__._x;
        this._nx = __tmp__._nx;
        this._len = __tmp__._len;
        this._is224 = __tmp__._is224;
        return this;
    }
}
final _init2_224 : GoInt64 = ((812702999 : GoUnTypedInt));
final _init3 : GoInt64 = (("2773480762" : GoUnTypedInt));
final _chunk : GoInt64 = ((64 : GoUnTypedInt));
final _init4_224 : GoInt64 = (("4290775857" : GoUnTypedInt));
final _init4 : GoInt64 = ((1359893119 : GoUnTypedInt));
final _init6_224 : GoInt64 = ((1694076839 : GoUnTypedInt));
final _init3_224 : GoInt64 = (("4144912697" : GoUnTypedInt));
final _init5 : GoInt64 = (("2600822924" : GoUnTypedInt));
final size224 : GoInt64 = ((28 : GoUnTypedInt));
final _magic256 : GoString = "sha\\x03";
final _init5_224 : GoInt64 = ((1750603025 : GoUnTypedInt));
final _init6 : GoInt64 = ((528734635 : GoUnTypedInt));
final size : GoInt64 = ((32 : GoUnTypedInt));
final _magic224 : GoString = "sha\\x02";
final _init7_224 : GoInt64 = (("3204075428" : GoUnTypedInt));
final _init7 : GoInt64 = ((1541459225 : GoUnTypedInt));
final _init0 : GoInt64 = ((1779033703 : GoUnTypedInt));
final blockSize : GoInt64 = ((64 : GoUnTypedInt));
var __K : Slice<GoUInt32> = new Slice<GoUInt32>(
((1116352408 : GoUInt32)),
((1899447441 : GoUInt32)),
(("3049323471" : GoUInt32)),
(("3921009573" : GoUInt32)),
((961987163 : GoUInt32)),
((1508970993 : GoUInt32)),
(("2453635748" : GoUInt32)),
(("2870763221" : GoUInt32)),
(("3624381080" : GoUInt32)),
((310598401 : GoUInt32)),
((607225278 : GoUInt32)),
((1426881987 : GoUInt32)),
((1925078388 : GoUInt32)),
(("2162078206" : GoUInt32)),
(("2614888103" : GoUInt32)),
(("3248222580" : GoUInt32)),
(("3835390401" : GoUInt32)),
(("4022224774" : GoUInt32)),
((264347078 : GoUInt32)),
((604807628 : GoUInt32)),
((770255983 : GoUInt32)),
((1249150122 : GoUInt32)),
((1555081692 : GoUInt32)),
((1996064986 : GoUInt32)),
(("2554220882" : GoUInt32)),
(("2821834349" : GoUInt32)),
(("2952996808" : GoUInt32)),
(("3210313671" : GoUInt32)),
(("3336571891" : GoUInt32)),
(("3584528711" : GoUInt32)),
((113926993 : GoUInt32)),
((338241895 : GoUInt32)),
((666307205 : GoUInt32)),
((773529912 : GoUInt32)),
((1294757372 : GoUInt32)),
((1396182291 : GoUInt32)),
((1695183700 : GoUInt32)),
((1986661051 : GoUInt32)),
(("2177026350" : GoUInt32)),
(("2456956037" : GoUInt32)),
(("2730485921" : GoUInt32)),
(("2820302411" : GoUInt32)),
(("3259730800" : GoUInt32)),
(("3345764771" : GoUInt32)),
(("3516065817" : GoUInt32)),
(("3600352804" : GoUInt32)),
(("4094571909" : GoUInt32)),
((275423344 : GoUInt32)),
((430227734 : GoUInt32)),
((506948616 : GoUInt32)),
((659060556 : GoUInt32)),
((883997877 : GoUInt32)),
((958139571 : GoUInt32)),
((1322822218 : GoUInt32)),
((1537002063 : GoUInt32)),
((1747873779 : GoUInt32)),
((1955562222 : GoUInt32)),
((2024104815 : GoUInt32)),
(("2227730452" : GoUInt32)),
(("2361852424" : GoUInt32)),
(("2428436474" : GoUInt32)),
(("2756734187" : GoUInt32)),
(("3204031479" : GoUInt32)),
(("3329325298" : GoUInt32)));
final _init1_224 : GoInt64 = ((914150663 : GoUnTypedInt));
final _init1 : GoInt64 = (("3144134277" : GoUnTypedInt));
var _block : (Pointer<T_digest>, Slice<GoUInt8>) -> Void = _blockGeneric;
final _marshaledSize : GoInt = _magic256.length + ((8 : GoUnTypedInt)) * ((4 : GoUnTypedInt)) + _chunk + ((8 : GoInt));
final _init0_224 : GoInt64 = (("3238371032" : GoUnTypedInt));
final _init2 : GoInt64 = ((1013904242 : GoUnTypedInt));
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
    // New returns a new hash.Hash computing the SHA256 checksum. The Hash
    // also implements encoding.BinaryMarshaler and
    // encoding.BinaryUnmarshaler to marshal and unmarshal the internal
    // state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer(new T_digest());
        _d.value.reset();
        return _d.value;
    }
/**
    // New224 returns a new hash.Hash computing the SHA224 checksum.
**/
function new224():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer(new T_digest());
        _d.value._is224 = true;
        _d.value.reset();
        return _d.value;
    }
/**
    // Sum256 returns the SHA256 checksum of the data.
**/
function sum256(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d.reset();
        _d.write(_data);
        return _d._checkSum().copy();
    }
/**
    // Sum224 returns the SHA224 checksum of the data.
**/
function sum224(_data:Slice<GoByte>):GoArray<GoByte> {
        var _sum224:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
        var _d:T_digest = new T_digest();
        _d._is224 = true;
        _d.reset();
        _d.write(_data);
        var _sum:GoArray<GoUInt8> = _d._checkSum().copy();
        Go.copy(_sum224.__slice__(0), _sum.__slice__(0, size224));
        return _sum224;
    }
function _blockGeneric(_dig:Pointer<T_digest>, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]);
        var _h0:GoUInt32 = _dig.value._h[((0 : GoInt))], _h1:GoUInt32 = _dig.value._h[((1 : GoInt))], _h2:GoUInt32 = _dig.value._h[((2 : GoInt))], _h3:GoUInt32 = _dig.value._h[((3 : GoInt))], _h4:GoUInt32 = _dig.value._h[((4 : GoInt))], _h5:GoUInt32 = _dig.value._h[((5 : GoInt))], _h6:GoUInt32 = _dig.value._h[((6 : GoInt))], _h7:GoUInt32 = _dig.value._h[((7 : GoInt))];
        while (_p.length >= _chunk) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((4 : GoInt));
                    _w[_i] = (((_p[_j] : GoUInt32)) << ((24 : GoUnTypedInt))) | (((_p[_j + ((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[_j + ((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | ((_p[_j + ((3 : GoInt))] : GoUInt32));
                });
            };
            {
                var _i:GoInt = ((16 : GoInt));
                Go.cfor(_i < ((64 : GoInt)), _i++, {
                    var _v1:GoUInt32 = _w[_i - ((2 : GoInt))];
                    var _t1:GoUInt32 = (stdgo.math.bits.Bits.rotateLeft32(_v1, -((17 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_v1, -((19 : GoUnTypedInt)))) ^ ((_v1 >> ((10 : GoUnTypedInt))));
                    var _v2:GoUInt32 = _w[_i - ((15 : GoInt))];
                    var _t2:GoUInt32 = (stdgo.math.bits.Bits.rotateLeft32(_v2, -((7 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_v2, -((18 : GoUnTypedInt)))) ^ ((_v2 >> ((3 : GoUnTypedInt))));
                    _w[_i] = _t1 + _w[_i - ((7 : GoInt))] + _t2 + _w[_i - ((16 : GoInt))];
                });
            };
            var _a:GoUInt32 = _h0, _b:GoUInt32 = _h1, _c:GoUInt32 = _h2, _d:GoUInt32 = _h3, _e:GoUInt32 = _h4, _f:GoUInt32 = _h5, _g:GoUInt32 = _h6, _h:GoUInt32 = _h7;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((64 : GoInt)), _i++, {
                    var _t1:GoUInt32 = _h + ((stdgo.math.bits.Bits.rotateLeft32(_e, -((6 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_e, -((11 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_e, -((25 : GoUnTypedInt))))) + ((_e & _f) ^ (-1 ^ _e & _g)) + __K[_i] + _w[_i];
                    var _t2:GoUInt32 = ((stdgo.math.bits.Bits.rotateLeft32(_a, -((2 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_a, -((13 : GoUnTypedInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_a, -((22 : GoUnTypedInt))))) + ((_a & _b) ^ (_a & _c) ^ (_b & _c));
                    _h = _g;
                    _g = _f;
                    _f = _e;
                    _e = _d + _t1;
                    _d = _c;
                    _c = _b;
                    _b = _a;
                    _a = _t1 + _t2;
                });
            };
            _h0 = _h0 + (_a);
            _h1 = _h1 + (_b);
            _h2 = _h2 + (_c);
            _h3 = _h3 + (_d);
            _h4 = _h4 + (_e);
            _h5 = _h5 + (_f);
            _h6 = _h6 + (_g);
            _h7 = _h7 + (_h);
            _p = _p.__slice__(_chunk);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            final __tmp__5 = _h5;
            final __tmp__6 = _h6;
            final __tmp__7 = _h7;
            _dig.value._h[((0 : GoInt))] = __tmp__0;
            _dig.value._h[((1 : GoInt))] = __tmp__1;
            _dig.value._h[((2 : GoInt))] = __tmp__2;
            _dig.value._h[((3 : GoInt))] = __tmp__3;
            _dig.value._h[((4 : GoInt))] = __tmp__4;
            _dig.value._h[((5 : GoInt))] = __tmp__5;
            _dig.value._h[((6 : GoInt))] = __tmp__6;
            _dig.value._h[((7 : GoInt))] = __tmp__7;
        };
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha224, new224);
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha256, new_);
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
}
