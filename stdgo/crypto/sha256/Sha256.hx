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
var __K : Slice<GoUInt32> = ((new Slice<GoUInt32>(
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
(("3329325298" : GoUInt32))) : Slice<GoUInt32>));
@:structInit @:using(stdgo.crypto.sha256.Sha256.T_digest_static_extension) class T_digest {
    public var _h : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 8) ((0 : GoUInt32))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public var _is224 : Bool = false;
    public function new(?_h:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64, ?_is224:Bool) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
        if (_is224 != null) this._is224 = _is224;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len, _is224);
    }
}
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_a.__slice__(0) : Slice<GoUInt8>)), _x);
        return (_b != null ? _b.__append__(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
    }
function _appendUint32(_b:Slice<GoByte>, _x:GoUInt32):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_a.__slice__(0) : Slice<GoUInt8>)), _x);
        return (_b != null ? _b.__append__(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
    }
function _consumeUint64(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; } {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        var _x:GoUInt64 = (((((((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        return { _0 : ((_b.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _1 : _x };
    }
function _consumeUint32(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt32; } {
        (_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8)));
        var _x:GoUInt32 = (((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt)));
        return { _0 : ((_b.__slice__(((4 : GoInt))) : Slice<GoUInt8>)), _1 : _x };
    }
/**
    // New returns a new hash.Hash computing the SHA256 checksum. The Hash
    // also implements encoding.BinaryMarshaler and
    // encoding.BinaryUnmarshaler to marshal and unmarshal the internal
    // state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d = new T_digest();
        _d.reset();
        return _d;
    }
/**
    // New224 returns a new hash.Hash computing the SHA224 checksum.
**/
function new224():stdgo.hash.Hash.Hash {
        var _d = new T_digest();
        _d._is224 = true;
        _d.reset();
        return _d;
    }
/**
    // Sum256 returns the SHA256 checksum of the data.
**/
function sum256(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d.reset();
        _d.write(_data);
        return (_d._checkSum() == null ? null : _d._checkSum().__copy__());
    }
/**
    // Sum224 returns the SHA224 checksum of the data.
**/
function sum224(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d._is224 = true;
        _d.reset();
        _d.write(_data);
        var _sum = (_d._checkSum() == null ? null : _d._checkSum().__copy__());
        var _ap = ((((_sum.__slice__(0) : Slice<GoUInt8>)) : GoArray<GoByte>));
        return (_ap == null ? null : _ap.__copy__());
    }
function _blockGeneric(_dig:T_digest, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 64) ((0 : GoUInt32))]);
        var _h0:GoUInt32 = (_dig._h != null ? _dig._h[((0 : GoInt))] : ((0 : GoUInt32))), _h1:GoUInt32 = (_dig._h != null ? _dig._h[((1 : GoInt))] : ((0 : GoUInt32))), _h2:GoUInt32 = (_dig._h != null ? _dig._h[((2 : GoInt))] : ((0 : GoUInt32))), _h3:GoUInt32 = (_dig._h != null ? _dig._h[((3 : GoInt))] : ((0 : GoUInt32))), _h4:GoUInt32 = (_dig._h != null ? _dig._h[((4 : GoInt))] : ((0 : GoUInt32))), _h5:GoUInt32 = (_dig._h != null ? _dig._h[((5 : GoInt))] : ((0 : GoUInt32))), _h6:GoUInt32 = (_dig._h != null ? _dig._h[((6 : GoInt))] : ((0 : GoUInt32))), _h7:GoUInt32 = (_dig._h != null ? _dig._h[((7 : GoInt))] : ((0 : GoUInt32)));
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((64 : GoInt))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((4 : GoInt));
                    if (_w != null) _w[_i] = ((((((_p != null ? _p[_j] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))) | ((((_p != null ? _p[_j + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_p != null ? _p[_j + ((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
                });
            };
            {
                var _i:GoInt = ((16 : GoInt));
                Go.cfor(_i < ((64 : GoInt)), _i++, {
                    var _v1:GoUInt32 = (_w != null ? _w[_i - ((2 : GoInt))] : ((0 : GoUInt32)));
                    var _t1:GoUInt32 = ((stdgo.math.bits.Bits.rotateLeft32(_v1, ((-17 : GoInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_v1, ((-19 : GoInt))))) ^ (_v1 >> ((10 : GoUnTypedInt)));
                    var _v2:GoUInt32 = (_w != null ? _w[_i - ((15 : GoInt))] : ((0 : GoUInt32)));
                    var _t2:GoUInt32 = ((stdgo.math.bits.Bits.rotateLeft32(_v2, ((-7 : GoInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_v2, ((-18 : GoInt))))) ^ (_v2 >> ((3 : GoUnTypedInt)));
                    if (_w != null) _w[_i] = ((_t1 + (_w != null ? _w[_i - ((7 : GoInt))] : ((0 : GoUInt32)))) + _t2) + (_w != null ? _w[_i - ((16 : GoInt))] : ((0 : GoUInt32)));
                });
            };
            var _a:GoUInt32 = _h0, _b:GoUInt32 = _h1, _c:GoUInt32 = _h2, _d:GoUInt32 = _h3, _e:GoUInt32 = _h4, _f:GoUInt32 = _h5, _g:GoUInt32 = _h6, _h:GoUInt32 = _h7;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((64 : GoInt)), _i++, {
                    var _t1:GoUInt32 = (((_h + (((stdgo.math.bits.Bits.rotateLeft32(_e, ((-6 : GoInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_e, ((-11 : GoInt))))) ^ (stdgo.math.bits.Bits.rotateLeft32(_e, ((-25 : GoInt)))))) + ((_e & _f) ^ ((-1 ^ _e) & _g))) + (__K != null ? __K[_i] : ((0 : GoUInt32)))) + (_w != null ? _w[_i] : ((0 : GoUInt32)));
                    var _t2:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((-2 : GoInt)))) ^ (stdgo.math.bits.Bits.rotateLeft32(_a, ((-13 : GoInt))))) ^ (stdgo.math.bits.Bits.rotateLeft32(_a, ((-22 : GoInt))))) + (((_a & _b) ^ (_a & _c)) ^ (_b & _c));
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
            _p = ((_p.__slice__(((64 : GoInt))) : Slice<GoUInt8>));
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
            if (_dig._h != null) _dig._h[((0 : GoInt))] = __tmp__0;
            if (_dig._h != null) _dig._h[((1 : GoInt))] = __tmp__1;
            if (_dig._h != null) _dig._h[((2 : GoInt))] = __tmp__2;
            if (_dig._h != null) _dig._h[((3 : GoInt))] = __tmp__3;
            if (_dig._h != null) _dig._h[((4 : GoInt))] = __tmp__4;
            if (_dig._h != null) _dig._h[((5 : GoInt))] = __tmp__5;
            if (_dig._h != null) _dig._h[((6 : GoInt))] = __tmp__6;
            if (_dig._h != null) _dig._h[((7 : GoInt))] = __tmp__7;
        };
    }
function _block(_dig:T_digest, _p:Slice<GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(((4 : GoUInt)), new224);
            stdgo.crypto.Crypto.registerHash(((5 : GoUInt)), new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_digest_static_extension {
    @:keep
    public static function _checkSum( _d:T_digest):GoArray<GoByte> {
        var _len:GoUInt64 = _d._len;
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        if (_tmp != null) _tmp[((0 : GoInt))] = ((128 : GoUInt8));
        if ((_len % ((64 : GoUInt64))) < ((56 : GoUInt64))) {
            _d.write(((_tmp.__slice__(((0 : GoInt)), ((56 : GoUInt64)) - (_len % ((64 : GoUInt64)))) : Slice<GoUInt8>)));
        } else {
            _d.write(((_tmp.__slice__(((0 : GoInt)), ((120 : GoUInt64)) - (_len % ((64 : GoUInt64)))) : Slice<GoUInt8>)));
        };
        _len = _len << (((3 : GoUnTypedInt)));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_tmp.__slice__(0) : Slice<GoUInt8>)), _len);
        _d.write(((_tmp.__slice__(((0 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>)));
        if (_d._nx != ((0 : GoInt))) {
            throw Go.toInterface(((("d.nx != 0" : GoString))));
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((4 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((12 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((20 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((5 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((24 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((6 : GoInt))] : ((0 : GoUInt32))));
        if (!_d._is224) {
            stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((28 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((7 : GoInt))] : ((0 : GoUInt32))));
        };
        return (_digest == null ? null : _digest.__copy__());
    }
    @:keep
    public static function sum( _d:T_digest, _in:Slice<GoByte>):Slice<GoByte> {
        var _d0:T_digest = (_d == null ? null : _d.__copy__());
        var _hash = (_d0._checkSum() == null ? null : _d0._checkSum().__copy__());
        if (_d0._is224) {
            return (_in != null ? _in.__append__(...((_hash.__slice__(0, ((28 : GoInt))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0, ((28 : GoInt))) : Slice<GoUInt8>)).__toArray__()));
        };
        return (_in != null ? _in.__append__(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
    }
    @:keep
    public static function write( _d:T_digest, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _nn = (_p != null ? _p.length : ((0 : GoInt)));
        _d._len = _d._len + (((_nn : GoUInt64)));
        if (_d._nx > ((0 : GoInt))) {
            var _n:GoInt = Go.copySlice(((_d._x.__slice__(_d._nx) : Slice<GoUInt8>)), _p);
            _d._nx = _d._nx + (_n);
            if (_d._nx == ((64 : GoInt))) {
                _block(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
                _d._nx = ((0 : GoInt));
            };
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
        };
        if ((_p != null ? _p.length : ((0 : GoInt))) >= ((64 : GoInt))) {
            var _n:GoInt = (_p != null ? _p.length : ((0 : GoInt))) & (((63 : GoInt)) ^ ((-1 : GoUnTypedInt)));
            _block(_d, ((_p.__slice__(0, _n) : Slice<GoUInt8>)));
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
        };
        if ((_p != null ? _p.length : ((0 : GoInt))) > ((0 : GoInt))) {
            _d._nx = Go.copySlice(((_d._x.__slice__(0) : Slice<GoUInt8>)), _p);
        };
        return { _0 : _nn, _1 : _err };
    }
    @:keep
    public static function blockSize( _d:T_digest):GoInt {
        return ((64 : GoInt));
    }
    @:keep
    public static function size( _d:T_digest):GoInt {
        if (!_d._is224) {
            return ((32 : GoInt));
        };
        return ((28 : GoInt));
    }
    @:keep
    public static function reset( _d:T_digest):Void {
        if (!_d._is224) {
            if (_d._h != null) _d._h[((0 : GoInt))] = ((1779033703 : GoUInt32));
            if (_d._h != null) _d._h[((1 : GoInt))] = (("3144134277" : GoUInt32));
            if (_d._h != null) _d._h[((2 : GoInt))] = ((1013904242 : GoUInt32));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("2773480762" : GoUInt32));
            if (_d._h != null) _d._h[((4 : GoInt))] = ((1359893119 : GoUInt32));
            if (_d._h != null) _d._h[((5 : GoInt))] = (("2600822924" : GoUInt32));
            if (_d._h != null) _d._h[((6 : GoInt))] = ((528734635 : GoUInt32));
            if (_d._h != null) _d._h[((7 : GoInt))] = ((1541459225 : GoUInt32));
        } else {
            if (_d._h != null) _d._h[((0 : GoInt))] = (("3238371032" : GoUInt32));
            if (_d._h != null) _d._h[((1 : GoInt))] = ((914150663 : GoUInt32));
            if (_d._h != null) _d._h[((2 : GoInt))] = ((812702999 : GoUInt32));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("4144912697" : GoUInt32));
            if (_d._h != null) _d._h[((4 : GoInt))] = (("4290775857" : GoUInt32));
            if (_d._h != null) _d._h[((5 : GoInt))] = ((1750603025 : GoUInt32));
            if (_d._h != null) _d._h[((6 : GoInt))] = ((1694076839 : GoUInt32));
            if (_d._h != null) _d._h[((7 : GoInt))] = (("3204075428" : GoUInt32));
        };
        _d._nx = ((0 : GoInt));
        _d._len = ((0 : GoUInt64));
    }
    @:keep
    public static function unmarshalBinary( _d:T_digest, _b:Slice<GoByte>):Error {
        if ((((_b != null ? _b.length : ((0 : GoInt))) < (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))).length : ((0 : GoInt)))) || (_d._is224 && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) != ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString)))))) || (!_d._is224 && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) != ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString)))))) {
            return stdgo.errors.Errors.new_(((("crypto/sha256: invalid hash state identifier" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) != ((108 : GoInt))) {
            return stdgo.errors.Errors.new_(((("crypto/sha256: invalid hash state size" : GoString))));
        };
        _b = ((_b.__slice__((((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>));
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((0 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((1 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((2 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((3 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((4 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((5 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((6 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((7 : GoInt))] = __tmp__._1;
        };
        _b = ((_b.__slice__(Go.copySlice(((_d._x.__slice__(0) : Slice<GoUInt8>)), _b)) : Slice<GoUInt8>));
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d._len = __tmp__._1;
        };
        _d._nx = (((_d._len % ((64 : GoUInt64))) : GoInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function marshalBinary( _d:T_digest):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((108 : GoInt)) : GoInt)).toBasic());
        if (_d._is224) {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("02") : GoString))).__toArray__()));
        } else {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("03") : GoString))).__toArray__()));
        };
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((5 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((6 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((7 : GoInt))] : ((0 : GoUInt32))));
        _b = (_b != null ? _b.__append__(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()));
        _b = ((_b.__slice__(0, ((_b != null ? _b.length : ((0 : GoInt))) + (_d._x != null ? _d._x.length : ((0 : GoInt)))) - ((_d._nx : GoInt))) : Slice<GoUInt8>));
        _b = _appendUint64(_b, _d._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
}
class T_digest_wrapper {
    @:keep
    public var _checkSum : () -> GoArray<GoByte> = null;
    @:keep
    public var sum : Slice<GoByte> -> Slice<GoByte> = null;
    @:keep
    public var write : Slice<GoByte> -> { var _0 : GoInt; var _1 : Error; } = null;
    @:keep
    public var blockSize : () -> GoInt = null;
    @:keep
    public var size : () -> GoInt = null;
    @:keep
    public var reset : () -> Void = null;
    @:keep
    public var unmarshalBinary : Slice<GoByte> -> Error = null;
    @:keep
    public var marshalBinary : () -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_digest;
}
