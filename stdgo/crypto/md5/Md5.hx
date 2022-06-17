package stdgo.crypto.md5;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit @:using(stdgo.crypto.md5.Md5.T_digest_static_extension) class T_digest {
    public var _s : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 4) ((0 : GoUInt32))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public function new(?_s:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64) {
        if (_s != null) this._s = _s;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_s, _x, _nx, _len);
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
        return { _0 : ((_b.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _1 : stdgo.encoding.binary.Binary.bigEndian.uint64(((_b.__slice__(((0 : GoInt)), ((8 : GoInt))) : Slice<GoUInt8>))) };
    }
function _consumeUint32(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt32; } {
        return { _0 : ((_b.__slice__(((4 : GoInt))) : Slice<GoUInt8>)), _1 : stdgo.encoding.binary.Binary.bigEndian.uint32(((_b.__slice__(((0 : GoInt)), ((4 : GoInt))) : Slice<GoUInt8>))) };
    }
/**
    // New returns a new hash.Hash computing the MD5 checksum. The Hash also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d = new T_digest();
        _d.reset();
        return _d;
    }
/**
    // Sum returns the MD5 checksum of the data.
**/
function sum(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d.reset();
        _d.write(_data);
        return (_d._checkSum() == null ? null : _d._checkSum().__copy__());
    }
function _blockGeneric(_dig:T_digest, _p:Slice<GoByte>):Void {
        var _a:GoUInt32 = (_dig._s != null ? _dig._s[((0 : GoInt))] : ((0 : GoUInt32))), _b:GoUInt32 = (_dig._s != null ? _dig._s[((1 : GoInt))] : ((0 : GoUInt32))), _c:GoUInt32 = (_dig._s != null ? _dig._s[((2 : GoInt))] : ((0 : GoUInt32))), _d:GoUInt32 = (_dig._s != null ? _dig._s[((3 : GoInt))] : ((0 : GoUInt32)));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i <= ((_p != null ? _p.length : ((0 : GoInt))) - ((64 : GoInt))), _i = _i + (((64 : GoInt))), {
                var _q = ((_p.__slice__(_i) : Slice<GoUInt8>));
                _q = ((_q.__slice__(0, ((64 : GoInt))) : Slice<GoUInt8>)).__setCap__(((((64 : GoInt)) : GoInt)) - ((1 : GoInt)));
                var _aa:GoUInt32 = _a, _bb:GoUInt32 = _b, _cc:GoUInt32 = _c, _dd:GoUInt32 = _d;
                var _x0:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((0 : GoInt))) : Slice<GoUInt8>)));
                var _x1:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((4 : GoInt))) : Slice<GoUInt8>)));
                var _x2:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((8 : GoInt))) : Slice<GoUInt8>)));
                var _x3:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((12 : GoInt))) : Slice<GoUInt8>)));
                var _x4:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((16 : GoInt))) : Slice<GoUInt8>)));
                var _x5:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((20 : GoInt))) : Slice<GoUInt8>)));
                var _x6:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((24 : GoInt))) : Slice<GoUInt8>)));
                var _x7:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((28 : GoInt))) : Slice<GoUInt8>)));
                var _x8:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((32 : GoInt))) : Slice<GoUInt8>)));
                var _x9:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((36 : GoInt))) : Slice<GoUInt8>)));
                var _xa:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((40 : GoInt))) : Slice<GoUInt8>)));
                var _xb:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((44 : GoInt))) : Slice<GoUInt8>)));
                var _xc:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((48 : GoInt))) : Slice<GoUInt8>)));
                var _xd:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((52 : GoInt))) : Slice<GoUInt8>)));
                var _xe:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((56 : GoInt))) : Slice<GoUInt8>)));
                var _xf:GoUInt32 = stdgo.encoding.binary.Binary.littleEndian.uint32(((_q.__slice__(((60 : GoInt))) : Slice<GoUInt8>)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _b) ^ _d) + _a) + _x0) + (("3614090360" : GoUInt32)), ((7 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _a) ^ _c) + _d) + _x1) + (("3905402710" : GoUInt32)), ((12 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _d) ^ _b) + _c) + _x2) + ((606105819 : GoUInt32)), ((17 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _c) ^ _a) + _b) + _x3) + (("3250441966" : GoUInt32)), ((22 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _b) ^ _d) + _a) + _x4) + (("4118548399" : GoUInt32)), ((7 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _a) ^ _c) + _d) + _x5) + ((1200080426 : GoUInt32)), ((12 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _d) ^ _b) + _c) + _x6) + (("2821735955" : GoUInt32)), ((17 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _c) ^ _a) + _b) + _x7) + (("4249261313" : GoUInt32)), ((22 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _b) ^ _d) + _a) + _x8) + ((1770035416 : GoUInt32)), ((7 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _a) ^ _c) + _d) + _x9) + (("2336552879" : GoUInt32)), ((12 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _d) ^ _b) + _c) + _xa) + (("4294925233" : GoUInt32)), ((17 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _c) ^ _a) + _b) + _xb) + (("2304563134" : GoUInt32)), ((22 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _b) ^ _d) + _a) + _xc) + ((1804603682 : GoUInt32)), ((7 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _a) ^ _c) + _d) + _xd) + (("4254626195" : GoUInt32)), ((12 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _d) ^ _b) + _c) + _xe) + (("2792965006" : GoUInt32)), ((17 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _c) ^ _a) + _b) + _xf) + ((1236535329 : GoUInt32)), ((22 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _d) ^ _c) + _a) + _x1) + (("4129170786" : GoUInt32)), ((5 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _c) ^ _b) + _d) + _x6) + (("3225465664" : GoUInt32)), ((9 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _b) ^ _a) + _c) + _xb) + ((643717713 : GoUInt32)), ((14 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _a) ^ _d) + _b) + _x0) + (("3921069994" : GoUInt32)), ((20 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _d) ^ _c) + _a) + _x5) + (("3593408605" : GoUInt32)), ((5 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _c) ^ _b) + _d) + _xa) + ((38016083 : GoUInt32)), ((9 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _b) ^ _a) + _c) + _xf) + (("3634488961" : GoUInt32)), ((14 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _a) ^ _d) + _b) + _x4) + (("3889429448" : GoUInt32)), ((20 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _d) ^ _c) + _a) + _x9) + ((568446438 : GoUInt32)), ((5 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _c) ^ _b) + _d) + _xe) + (("3275163606" : GoUInt32)), ((9 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _b) ^ _a) + _c) + _x3) + (("4107603335" : GoUInt32)), ((14 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _a) ^ _d) + _b) + _x8) + ((1163531501 : GoUInt32)), ((20 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((((_b ^ _c) & _d) ^ _c) + _a) + _xd) + (("2850285829" : GoUInt32)), ((5 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((((_a ^ _b) & _c) ^ _b) + _d) + _x2) + (("4243563512" : GoUInt32)), ((9 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((((_d ^ _a) & _b) ^ _a) + _c) + _x7) + ((1735328473 : GoUInt32)), ((14 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((((_c ^ _d) & _a) ^ _d) + _b) + _xc) + (("2368359562" : GoUInt32)), ((20 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32(((((_b ^ _c) ^ _d) + _a) + _x5) + (("4294588738" : GoUInt32)), ((4 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32(((((_a ^ _b) ^ _c) + _d) + _x8) + (("2272392833" : GoUInt32)), ((11 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32(((((_d ^ _a) ^ _b) + _c) + _xb) + ((1839030562 : GoUInt32)), ((16 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32(((((_c ^ _d) ^ _a) + _b) + _xe) + (("4259657740" : GoUInt32)), ((23 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32(((((_b ^ _c) ^ _d) + _a) + _x1) + (("2763975236" : GoUInt32)), ((4 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32(((((_a ^ _b) ^ _c) + _d) + _x4) + ((1272893353 : GoUInt32)), ((11 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32(((((_d ^ _a) ^ _b) + _c) + _x7) + (("4139469664" : GoUInt32)), ((16 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32(((((_c ^ _d) ^ _a) + _b) + _xa) + (("3200236656" : GoUInt32)), ((23 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32(((((_b ^ _c) ^ _d) + _a) + _xd) + ((681279174 : GoUInt32)), ((4 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32(((((_a ^ _b) ^ _c) + _d) + _x0) + (("3936430074" : GoUInt32)), ((11 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32(((((_d ^ _a) ^ _b) + _c) + _x3) + (("3572445317" : GoUInt32)), ((16 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32(((((_c ^ _d) ^ _a) + _b) + _x6) + ((76029189 : GoUInt32)), ((23 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32(((((_b ^ _c) ^ _d) + _a) + _x9) + (("3654602809" : GoUInt32)), ((4 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32(((((_a ^ _b) ^ _c) + _d) + _xc) + (("3873151461" : GoUInt32)), ((11 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32(((((_d ^ _a) ^ _b) + _c) + _xf) + ((530742520 : GoUInt32)), ((16 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32(((((_c ^ _d) ^ _a) + _b) + _x2) + (("3299628645" : GoUInt32)), ((23 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ (_b | (-1 ^ _d))) + _a) + _x0) + (("4096336452" : GoUInt32)), ((6 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ (_a | (-1 ^ _c))) + _d) + _x7) + ((1126891415 : GoUInt32)), ((10 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ (_d | (-1 ^ _b))) + _c) + _xe) + (("2878612391" : GoUInt32)), ((15 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ (_c | (-1 ^ _a))) + _b) + _x5) + (("4237533241" : GoUInt32)), ((21 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ (_b | (-1 ^ _d))) + _a) + _xc) + ((1700485571 : GoUInt32)), ((6 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ (_a | (-1 ^ _c))) + _d) + _x3) + (("2399980690" : GoUInt32)), ((10 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ (_d | (-1 ^ _b))) + _c) + _xa) + (("4293915773" : GoUInt32)), ((15 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ (_c | (-1 ^ _a))) + _b) + _x1) + (("2240044497" : GoUInt32)), ((21 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ (_b | (-1 ^ _d))) + _a) + _x8) + ((1873313359 : GoUInt32)), ((6 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ (_a | (-1 ^ _c))) + _d) + _xf) + (("4264355552" : GoUInt32)), ((10 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ (_d | (-1 ^ _b))) + _c) + _x6) + (("2734768916" : GoUInt32)), ((15 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ (_c | (-1 ^ _a))) + _b) + _xd) + ((1309151649 : GoUInt32)), ((21 : GoInt)));
                _a = _b + stdgo.math.bits.Bits.rotateLeft32((((_c ^ (_b | (-1 ^ _d))) + _a) + _x4) + (("4149444226" : GoUInt32)), ((6 : GoInt)));
                _d = _a + stdgo.math.bits.Bits.rotateLeft32((((_b ^ (_a | (-1 ^ _c))) + _d) + _xb) + (("3174756917" : GoUInt32)), ((10 : GoInt)));
                _c = _d + stdgo.math.bits.Bits.rotateLeft32((((_a ^ (_d | (-1 ^ _b))) + _c) + _x2) + ((718787259 : GoUInt32)), ((15 : GoInt)));
                _b = _c + stdgo.math.bits.Bits.rotateLeft32((((_d ^ (_c | (-1 ^ _a))) + _b) + _x9) + (("3951481745" : GoUInt32)), ((21 : GoInt)));
                _a = _a + (_aa);
                _b = _b + (_bb);
                _c = _c + (_cc);
                _d = _d + (_dd);
            });
        };
        {
            final __tmp__0 = _a;
            final __tmp__1 = _b;
            final __tmp__2 = _c;
            final __tmp__3 = _d;
            if (_dig._s != null) _dig._s[((0 : GoInt))] = __tmp__0;
            if (_dig._s != null) _dig._s[((1 : GoInt))] = __tmp__1;
            if (_dig._s != null) _dig._s[((2 : GoInt))] = __tmp__2;
            if (_dig._s != null) _dig._s[((3 : GoInt))] = __tmp__3;
        };
    }
function _block(_dig:T_digest, _p:Slice<GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(((2 : GoUInt)), new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_digest_static_extension {
    @:keep
    public static function _checkSum( _d:T_digest):GoArray<GoByte> {
        var _tmp = ((new GoArray<GoUInt8>(...([((128 : GoUInt8))].concat([for (i in 0 ... 71) ((0 : GoUInt8))]))) : GoArray<GoByte>));
        var _pad:GoUInt64 = (((55 : GoUInt64)) - _d._len) % ((64 : GoUInt64));
        stdgo.encoding.binary.Binary.littleEndian.putUint64(((_tmp.__slice__(((1 : GoUInt64)) + _pad) : Slice<GoUInt8>)), _d._len << ((3 : GoUnTypedInt)));
        _d.write(((_tmp.__slice__(0, (((1 : GoUInt64)) + _pad) + ((8 : GoUInt64))) : Slice<GoUInt8>)));
        if (_d._nx != ((0 : GoInt))) {
            throw Go.toInterface(((("d.nx != 0" : GoString))));
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_digest.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), (_d._s != null ? _d._s[((0 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_digest.__slice__(((4 : GoInt))) : Slice<GoUInt8>)), (_d._s != null ? _d._s[((1 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_digest.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), (_d._s != null ? _d._s[((2 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.littleEndian.putUint32(((_digest.__slice__(((12 : GoInt))) : Slice<GoUInt8>)), (_d._s != null ? _d._s[((3 : GoInt))] : ((0 : GoUInt32))));
        return (_digest == null ? null : _digest.__copy__());
    }
    @:keep
    public static function sum( _d:T_digest, _in:Slice<GoByte>):Slice<GoByte> {
        var _d0:T_digest = (_d == null ? null : _d.__copy__());
        var _hash = (_d0._checkSum() == null ? null : _d0._checkSum().__copy__());
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
                if (false) {
                    _block(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
                } else {
                    _blockGeneric(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
                };
                _d._nx = ((0 : GoInt));
            };
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
        };
        if ((_p != null ? _p.length : ((0 : GoInt))) >= ((64 : GoInt))) {
            var _n:GoInt = (_p != null ? _p.length : ((0 : GoInt))) & (((63 : GoInt)) ^ ((-1 : GoUnTypedInt)));
            if (false) {
                _block(_d, ((_p.__slice__(0, _n) : Slice<GoUInt8>)));
            } else {
                _blockGeneric(_d, ((_p.__slice__(0, _n) : Slice<GoUInt8>)));
            };
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
        return ((16 : GoInt));
    }
    @:keep
    public static function unmarshalBinary( _d:T_digest, _b:Slice<GoByte>):Error {
        if (((_b != null ? _b.length : ((0 : GoInt))) < (((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) || (((((_b.__slice__(0, (((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) != ((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))))) {
            return stdgo.errors.Errors.new_(((("crypto/md5: invalid hash state identifier" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) != ((92 : GoInt))) {
            return stdgo.errors.Errors.new_(((("crypto/md5: invalid hash state size" : GoString))));
        };
        _b = ((_b.__slice__((((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>));
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._s != null) _d._s[((0 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._s != null) _d._s[((1 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._s != null) _d._s[((2 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint32(_b);
            _b = __tmp__._0;
            if (_d._s != null) _d._s[((3 : GoInt))] = __tmp__._1;
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
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((92 : GoInt)) : GoInt)).toBasic());
        _b = (_b != null ? _b.__append__(...((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("md5" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).__toArray__()));
        _b = _appendUint32(_b, (_d._s != null ? _d._s[((0 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._s != null ? _d._s[((1 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._s != null ? _d._s[((2 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._s != null ? _d._s[((3 : GoInt))] : ((0 : GoUInt32))));
        _b = (_b != null ? _b.__append__(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()));
        _b = ((_b.__slice__(0, ((_b != null ? _b.length : ((0 : GoInt))) + (_d._x != null ? _d._x.length : ((0 : GoInt)))) - _d._nx) : Slice<GoUInt8>));
        _b = _appendUint64(_b, _d._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function reset( _d:T_digest):Void {
        if (_d._s != null) _d._s[((0 : GoInt))] = ((1732584193 : GoUInt32));
        if (_d._s != null) _d._s[((1 : GoInt))] = (("4023233417" : GoUInt32));
        if (_d._s != null) _d._s[((2 : GoInt))] = (("2562383102" : GoUInt32));
        if (_d._s != null) _d._s[((3 : GoInt))] = ((271733878 : GoUInt32));
        _d._nx = ((0 : GoInt));
        _d._len = ((0 : GoUInt64));
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
    public var unmarshalBinary : Slice<GoByte> -> Error = null;
    @:keep
    public var marshalBinary : () -> { var _0 : Slice<GoByte>; var _1 : Error; } = null;
    @:keep
    public var reset : () -> Void = null;
    public function new(__self__) this.__self__ = __self__;
    public function __underlying__() return Go.toInterface(__self__);
    var __self__ : T_digest;
}
