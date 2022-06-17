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
@:structInit @:using(stdgo.crypto.sha1.Sha1.T_digest_static_extension) class T_digest {
    public var _h : GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 5) ((0 : GoUInt32))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public function new(?_h:GoArray<GoUInt32>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len);
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
    // New returns a new hash.Hash computing the SHA1 checksum. The Hash also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d = new T_digest();
        _d.reset();
        return _d;
    }
/**
    // Sum returns the SHA-1 checksum of the data.
**/
function sum(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = new T_digest();
        _d.reset();
        _d.write(_data);
        return (_d._checkSum() == null ? null : _d._checkSum().__copy__());
    }
/**
    // blockGeneric is a portable, pure Go version of the SHA-1 block step.
    // It's used by sha1block_generic.go and tests.
**/
function _blockGeneric(_dig:T_digest, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt32> = new GoArray<GoUInt32>(...[for (i in 0 ... 16) ((0 : GoUInt32))]);
        var _h0:GoUInt32 = (_dig._h != null ? _dig._h[((0 : GoInt))] : ((0 : GoUInt32))), _h1:GoUInt32 = (_dig._h != null ? _dig._h[((1 : GoInt))] : ((0 : GoUInt32))), _h2:GoUInt32 = (_dig._h != null ? _dig._h[((2 : GoInt))] : ((0 : GoUInt32))), _h3:GoUInt32 = (_dig._h != null ? _dig._h[((3 : GoInt))] : ((0 : GoUInt32))), _h4:GoUInt32 = (_dig._h != null ? _dig._h[((4 : GoInt))] : ((0 : GoUInt32)));
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((64 : GoInt))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((4 : GoInt));
                    if (_w != null) _w[_i] = ((((((_p != null ? _p[_j] : ((0 : GoUInt8))) : GoUInt32)) << ((24 : GoUnTypedInt))) | ((((_p != null ? _p[_j + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((16 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt32)) << ((8 : GoUnTypedInt)))) | (((_p != null ? _p[_j + ((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt32));
                });
            };
            var _a:GoUInt32 = _h0, _b:GoUInt32 = _h1, _c:GoUInt32 = _h2, _d:GoUInt32 = _h3, _e:GoUInt32 = _h4;
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((16 : GoInt)), _i++, {
                var _f:GoUInt32 = (_b & _c) | (((-1 ^ _b)) & _d);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f) + _e) + (_w != null ? _w[_i & ((15 : GoInt))] : ((0 : GoUInt32)))) + ((1518500249 : GoUInt32));
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
                var _tmp:GoUInt32 = (((_w != null ? _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32))) ^ (_w != null ? _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i) & ((15 : GoInt))] : ((0 : GoUInt32)));
                if (_w != null) _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> ((31 : GoUnTypedInt)));
                var _f:GoUInt32 = (_b & _c) | (((-1 ^ _b)) & _d);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f) + _e) + (_w != null ? _w[_i & ((15 : GoInt))] : ((0 : GoUInt32)))) + ((1518500249 : GoUInt32));
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
                var _tmp:GoUInt32 = (((_w != null ? _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32))) ^ (_w != null ? _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i) & ((15 : GoInt))] : ((0 : GoUInt32)));
                if (_w != null) _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> ((31 : GoUnTypedInt)));
                var _f:GoUInt32 = (_b ^ _c) ^ _d;
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f) + _e) + (_w != null ? _w[_i & ((15 : GoInt))] : ((0 : GoUInt32)))) + ((1859775393 : GoUInt32));
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
                var _tmp:GoUInt32 = (((_w != null ? _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32))) ^ (_w != null ? _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i) & ((15 : GoInt))] : ((0 : GoUInt32)));
                if (_w != null) _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> ((31 : GoUnTypedInt)));
                var _f:GoUInt32 = ((_b | _c) & _d) | (_b & _c);
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f) + _e) + (_w != null ? _w[_i & ((15 : GoInt))] : ((0 : GoUInt32)))) + (("2400959708" : GoUInt32));
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
                var _tmp:GoUInt32 = (((_w != null ? _w[(_i - ((3 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32))) ^ (_w != null ? _w[(_i - ((8 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i - ((14 : GoInt))) & ((15 : GoInt))] : ((0 : GoUInt32)))) ^ (_w != null ? _w[(_i) & ((15 : GoInt))] : ((0 : GoUInt32)));
                if (_w != null) _w[_i & ((15 : GoInt))] = (_tmp << ((1 : GoUnTypedInt))) | (_tmp >> ((31 : GoUnTypedInt)));
                var _f:GoUInt32 = (_b ^ _c) ^ _d;
                var _t:GoUInt32 = (((stdgo.math.bits.Bits.rotateLeft32(_a, ((5 : GoInt))) + _f) + _e) + (_w != null ? _w[_i & ((15 : GoInt))] : ((0 : GoUInt32)))) + (("3395469782" : GoUInt32));
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
            _p = ((_p.__slice__(((64 : GoInt))) : Slice<GoUInt8>));
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            final __tmp__3 = _h3;
            final __tmp__4 = _h4;
            if (_dig._h != null) _dig._h[((0 : GoInt))] = __tmp__0;
            if (_dig._h != null) _dig._h[((1 : GoInt))] = __tmp__1;
            if (_dig._h != null) _dig._h[((2 : GoInt))] = __tmp__2;
            if (_dig._h != null) _dig._h[((3 : GoInt))] = __tmp__3;
            if (_dig._h != null) _dig._h[((4 : GoInt))] = __tmp__4;
        };
    }
function _block(_dig:T_digest, _p:Slice<GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(((3 : GoUInt)), new_);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_digest_static_extension {
    @:keep
    public static function _constSum( _d:T_digest):GoArray<GoByte> {
        var _length:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        var _l:GoUInt64 = _d._len << ((3 : GoUnTypedInt));
        {
            var _i:GoUInt = ((((0 : GoUInt)) : GoUInt));
            Go.cfor(_i < ((8 : GoUInt)), _i++, {
                if (_length != null) _length[_i] = (((_l >> (((56 : GoUInt)) - (((8 : GoUInt)) * _i))) : GoByte));
            });
        };
        var _nx:GoUInt8 = ((_d._nx : GoByte));
        var _t:GoUInt8 = _nx - ((56 : GoUInt8));
        var _mask1b:GoUInt8 = (((((_t : GoInt8)) >> ((7 : GoUnTypedInt))) : GoByte));
        var _separator:GoUInt8 = ((((128 : GoUInt8)) : GoByte));
        {
            var _i:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
            Go.cfor(_i < ((64 : GoUInt8)), _i++, {
                var _mask:GoUInt8 = ((((((_i - _nx) : GoInt8)) >> ((7 : GoUnTypedInt))) : GoByte));
                if (_d._x != null) _d._x[_i] = ((-1 ^ _mask) & _separator) | (_mask & (_d._x != null ? _d._x[_i] : ((0 : GoUInt8))));
                _separator = _separator & (_mask);
                if (_i >= ((56 : GoUInt8))) {
                    if (_d._x != null) (_d._x != null ? _d._x[_i] : ((0 : GoUInt8))) | (_mask1b & (_length != null ? _length[_i - ((56 : GoUInt8))] : ((0 : GoUInt8))));
                };
            });
        };
        _block(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        for (_i => _s in _d._h) {
            if (_digest != null) _digest[_i * ((4 : GoInt))] = _mask1b & (((_s >> ((24 : GoUnTypedInt))) : GoByte));
            if (_digest != null) _digest[(_i * ((4 : GoInt))) + ((1 : GoInt))] = _mask1b & (((_s >> ((16 : GoUnTypedInt))) : GoByte));
            if (_digest != null) _digest[(_i * ((4 : GoInt))) + ((2 : GoInt))] = _mask1b & (((_s >> ((8 : GoUnTypedInt))) : GoByte));
            if (_digest != null) _digest[(_i * ((4 : GoInt))) + ((3 : GoInt))] = _mask1b & ((_s : GoByte));
        };
        {
            var _i:GoUInt8 = ((((0 : GoUInt8)) : GoByte));
            Go.cfor(_i < ((64 : GoUInt8)), _i++, {
                if (_i < ((56 : GoUInt8))) {
                    if (_d._x != null) _d._x[_i] = _separator;
                    _separator = ((0 : GoUInt8));
                } else {
                    if (_d._x != null) _d._x[_i] = (_length != null ? _length[_i - ((56 : GoUInt8))] : ((0 : GoUInt8)));
                };
            });
        };
        _block(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
        for (_i => _s in _d._h) {
            if (_digest != null) (_digest != null ? _digest[_i * ((4 : GoInt))] : ((0 : GoUInt8))) | ((-1 ^ _mask1b) & (((_s >> ((24 : GoUnTypedInt))) : GoByte)));
            if (_digest != null) (_digest != null ? _digest[(_i * ((4 : GoInt))) + ((1 : GoInt))] : ((0 : GoUInt8))) | ((-1 ^ _mask1b) & (((_s >> ((16 : GoUnTypedInt))) : GoByte)));
            if (_digest != null) (_digest != null ? _digest[(_i * ((4 : GoInt))) + ((2 : GoInt))] : ((0 : GoUInt8))) | ((-1 ^ _mask1b) & (((_s >> ((8 : GoUnTypedInt))) : GoByte)));
            if (_digest != null) (_digest != null ? _digest[(_i * ((4 : GoInt))) + ((3 : GoInt))] : ((0 : GoUInt8))) | ((-1 ^ _mask1b) & ((_s : GoByte)));
        };
        return (_digest == null ? null : _digest.__copy__());
    }
    /**
        // ConstantTimeSum computes the same result of Sum() but in constant time
    **/
    @:keep
    public static function constantTimeSum( _d:T_digest, _in:Slice<GoByte>):Slice<GoByte> {
        var _d0:T_digest = (_d == null ? null : _d.__copy__());
        var _hash = (_d0._constSum() == null ? null : _d0._constSum().__copy__());
        return (_in != null ? _in.__append__(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
    }
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
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 20) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((4 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((12 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt32))));
        stdgo.encoding.binary.Binary.bigEndian.putUint32(((_digest.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt32))));
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
        return ((20 : GoInt));
    }
    @:keep
    public static function reset( _d:T_digest):Void {
        if (_d._h != null) _d._h[((0 : GoInt))] = ((1732584193 : GoUInt32));
        if (_d._h != null) _d._h[((1 : GoInt))] = (("4023233417" : GoUInt32));
        if (_d._h != null) _d._h[((2 : GoInt))] = (("2562383102" : GoUInt32));
        if (_d._h != null) _d._h[((3 : GoInt))] = ((271733878 : GoUInt32));
        if (_d._h != null) _d._h[((4 : GoInt))] = (("3285377520" : GoUInt32));
        _d._nx = ((0 : GoInt));
        _d._len = ((0 : GoUInt64));
    }
    @:keep
    public static function unmarshalBinary( _d:T_digest, _b:Slice<GoByte>):Error {
        if (((_b != null ? _b.length : ((0 : GoInt))) < (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) || (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) != ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))))) {
            return stdgo.errors.Errors.new_(((("crypto/sha1: invalid hash state identifier" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) != ((96 : GoInt))) {
            return stdgo.errors.Errors.new_(((("crypto/sha1: invalid hash state size" : GoString))));
        };
        _b = ((_b.__slice__((((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>));
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
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((96 : GoInt)) : GoInt)).toBasic());
        _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("01") : GoString))).__toArray__()));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt32))));
        _b = _appendUint32(_b, (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt32))));
        _b = (_b != null ? _b.__append__(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()));
        _b = ((_b.__slice__(0, ((_b != null ? _b.length : ((0 : GoInt))) + (_d._x != null ? _d._x.length : ((0 : GoInt)))) - ((_d._nx : GoInt))) : Slice<GoUInt8>));
        _b = _appendUint64(_b, _d._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
}
class T_digest_wrapper {
    @:keep
    public var _constSum : () -> GoArray<GoByte> = null;
    /**
        // ConstantTimeSum computes the same result of Sum() but in constant time
    **/
    @:keep
    public var constantTimeSum : Slice<GoByte> -> Slice<GoByte> = null;
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
