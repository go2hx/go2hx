package stdgo.crypto.sha512;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var __K : Slice<GoUInt64> = ((new Slice<GoUInt64>(
(("4794697086780616226" : GoUInt64)),
(("8158064640168781261" : GoUInt64)),
(("13096744586834688815" : GoUInt64)),
(("16840607885511220156" : GoUInt64)),
(("4131703408338449720" : GoUInt64)),
(("6480981068601479193" : GoUInt64)),
(("10538285296894168987" : GoUInt64)),
(("12329834152419229976" : GoUInt64)),
(("15566598209576043074" : GoUInt64)),
(("1334009975649890238" : GoUInt64)),
(("2608012711638119052" : GoUInt64)),
(("6128411473006802146" : GoUInt64)),
(("8268148722764581231" : GoUInt64)),
(("9286055187155687089" : GoUInt64)),
(("11230858885718282805" : GoUInt64)),
(("13951009754708518548" : GoUInt64)),
(("16472876342353939154" : GoUInt64)),
(("17275323862435702243" : GoUInt64)),
(("1135362057144423861" : GoUInt64)),
(("2597628984639134821" : GoUInt64)),
(("3308224258029322869" : GoUInt64)),
(("5365058923640841347" : GoUInt64)),
(("6679025012923562964" : GoUInt64)),
(("8573033837759648693" : GoUInt64)),
(("10970295158949994411" : GoUInt64)),
(("12119686244451234320" : GoUInt64)),
(("12683024718118986047" : GoUInt64)),
(("13788192230050041572" : GoUInt64)),
(("14330467153632333762" : GoUInt64)),
(("15395433587784984357" : GoUInt64)),
(("489312712824947311" : GoUInt64)),
(("1452737877330783856" : GoUInt64)),
(("2861767655752347644" : GoUInt64)),
(("3322285676063803686" : GoUInt64)),
(("5560940570517711597" : GoUInt64)),
(("5996557281743188959" : GoUInt64)),
(("7280758554555802590" : GoUInt64)),
(("8532644243296465576" : GoUInt64)),
(("9350256976987008742" : GoUInt64)),
(("10552545826968843579" : GoUInt64)),
(("11727347734174303076" : GoUInt64)),
(("12113106623233404929" : GoUInt64)),
(("14000437183269869457" : GoUInt64)),
(("14369950271660146224" : GoUInt64)),
(("15101387698204529176" : GoUInt64)),
(("15463397548674623760" : GoUInt64)),
(("17586052441742319658" : GoUInt64)),
(("1182934255886127544" : GoUInt64)),
(("1847814050463011016" : GoUInt64)),
(("2177327727835720531" : GoUInt64)),
(("2830643537854262169" : GoUInt64)),
(("3796741975233480872" : GoUInt64)),
(("4115178125766777443" : GoUInt64)),
(("5681478168544905931" : GoUInt64)),
(("6601373596472566643" : GoUInt64)),
(("7507060721942968483" : GoUInt64)),
(("8399075790359081724" : GoUInt64)),
(("8693463985226723168" : GoUInt64)),
(("9568029438360202098" : GoUInt64)),
(("10144078919501101548" : GoUInt64)),
(("10430055236837252648" : GoUInt64)),
(("11840083180663258601" : GoUInt64)),
(("13761210420658862357" : GoUInt64)),
(("14299343276471374635" : GoUInt64)),
(("14566680578165727644" : GoUInt64)),
(("15097957966210449927" : GoUInt64)),
(("16922976911328602910" : GoUInt64)),
(("17689382322260857208" : GoUInt64)),
(("500013540394364858" : GoUInt64)),
(("748580250866718886" : GoUInt64)),
(("1242879168328830382" : GoUInt64)),
(("1977374033974150939" : GoUInt64)),
(("2944078676154940804" : GoUInt64)),
(("3659926193048069267" : GoUInt64)),
(("4368137639120453308" : GoUInt64)),
(("4836135668995329356" : GoUInt64)),
(("5532061633213252278" : GoUInt64)),
(("6448918945643986474" : GoUInt64)),
(("6902733635092675308" : GoUInt64)),
(("7801388544844847127" : GoUInt64))) : Slice<GoUInt64>));
@:structInit @:using(stdgo.crypto.sha512.Sha512.T_digest_static_extension) class T_digest {
    public var _h : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public var _function : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
    public function new(?_h:GoArray<GoUInt64>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64, ?_function:stdgo.crypto.Crypto.Hash) {
        if (_h != null) this._h = _h;
        if (_x != null) this._x = _x;
        if (_nx != null) this._nx = _nx;
        if (_len != null) this._len = _len;
        if (_function != null) this._function = _function;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len, _function);
    }
}
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_a.__slice__(0) : Slice<GoUInt8>)), _x);
        return (_b != null ? _b.__append__(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_a.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
    }
function _consumeUint64(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; } {
        (_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8)));
        var _x:GoUInt64 = (((((((((_b != null ? _b[((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) | ((((_b != null ? _b[((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | ((((_b != null ? _b[((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_b != null ? _b[((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_b != null ? _b[((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_b != null ? _b[((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_b != null ? _b[((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_b != null ? _b[((0 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt)));
        return { _0 : ((_b.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _1 : _x };
    }
/**
    // New returns a new hash.Hash computing the SHA-512 checksum.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d = (({ _function : ((7 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        return _d;
    }
/**
    // New512_224 returns a new hash.Hash computing the SHA-512/224 checksum.
**/
function new512_224():stdgo.hash.Hash.Hash {
        var _d = (({ _function : ((14 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        return _d;
    }
/**
    // New512_256 returns a new hash.Hash computing the SHA-512/256 checksum.
**/
function new512_256():stdgo.hash.Hash.Hash {
        var _d = (({ _function : ((15 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        return _d;
    }
/**
    // New384 returns a new hash.Hash computing the SHA-384 checksum.
**/
function new384():stdgo.hash.Hash.Hash {
        var _d = (({ _function : ((6 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        return _d;
    }
/**
    // Sum512 returns the SHA512 checksum of the data.
**/
function sum512(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = (({ _function : ((7 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        _d.write(_data);
        return (_d._checkSum() == null ? null : _d._checkSum().__copy__());
    }
/**
    // Sum384 returns the SHA384 checksum of the data.
**/
function sum384(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = (({ _function : ((6 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        _d.write(_data);
        var _sum = (_d._checkSum() == null ? null : _d._checkSum().__copy__());
        var _ap = ((((_sum.__slice__(0) : Slice<GoUInt8>)) : GoArray<GoByte>));
        return (_ap == null ? null : _ap.__copy__());
    }
/**
    // Sum512_224 returns the Sum512/224 checksum of the data.
**/
function sum512_224(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = (({ _function : ((14 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        _d.write(_data);
        var _sum = (_d._checkSum() == null ? null : _d._checkSum().__copy__());
        var _ap = ((((_sum.__slice__(0) : Slice<GoUInt8>)) : GoArray<GoByte>));
        return (_ap == null ? null : _ap.__copy__());
    }
/**
    // Sum512_256 returns the Sum512/256 checksum of the data.
**/
function sum512_256(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = (({ _function : ((15 : GoUInt)), _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest));
        _d.reset();
        _d.write(_data);
        var _sum = (_d._checkSum() == null ? null : _d._checkSum().__copy__());
        var _ap = ((((_sum.__slice__(0) : Slice<GoUInt8>)) : GoArray<GoByte>));
        return (_ap == null ? null : _ap.__copy__());
    }
function _blockGeneric(_dig:T_digest, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 80) ((0 : GoUInt64))]);
        var _h0:GoUInt64 = (_dig._h != null ? _dig._h[((0 : GoInt))] : ((0 : GoUInt64))), _h1:GoUInt64 = (_dig._h != null ? _dig._h[((1 : GoInt))] : ((0 : GoUInt64))), _h2:GoUInt64 = (_dig._h != null ? _dig._h[((2 : GoInt))] : ((0 : GoUInt64))), _h3:GoUInt64 = (_dig._h != null ? _dig._h[((3 : GoInt))] : ((0 : GoUInt64))), _h4:GoUInt64 = (_dig._h != null ? _dig._h[((4 : GoInt))] : ((0 : GoUInt64))), _h5:GoUInt64 = (_dig._h != null ? _dig._h[((5 : GoInt))] : ((0 : GoUInt64))), _h6:GoUInt64 = (_dig._h != null ? _dig._h[((6 : GoInt))] : ((0 : GoUInt64))), _h7:GoUInt64 = (_dig._h != null ? _dig._h[((7 : GoInt))] : ((0 : GoUInt64)));
        while ((_p != null ? _p.length : ((0 : GoInt))) >= ((128 : GoInt))) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((8 : GoInt));
                    if (_w != null) _w[_i] = ((((((((((_p != null ? _p[_j] : ((0 : GoUInt8))) : GoUInt64)) << ((56 : GoUnTypedInt))) | ((((_p != null ? _p[_j + ((1 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((48 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((2 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((40 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((3 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((32 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((4 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((24 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((5 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((16 : GoUnTypedInt)))) | ((((_p != null ? _p[_j + ((6 : GoInt))] : ((0 : GoUInt8))) : GoUInt64)) << ((8 : GoUnTypedInt)))) | (((_p != null ? _p[_j + ((7 : GoInt))] : ((0 : GoUInt8))) : GoUInt64));
                });
            };
            {
                var _i:GoInt = ((16 : GoInt));
                Go.cfor(_i < ((80 : GoInt)), _i++, {
                    var _v1:GoUInt64 = (_w != null ? _w[_i - ((2 : GoInt))] : ((0 : GoUInt64)));
                    var _t1:GoUInt64 = (stdgo.math.bits.Bits.rotateLeft64(_v1, ((-19 : GoInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_v1, ((-61 : GoInt)))) ^ (_v1 >> ((6 : GoUnTypedInt)));
                    var _v2:GoUInt64 = (_w != null ? _w[_i - ((15 : GoInt))] : ((0 : GoUInt64)));
                    var _t2:GoUInt64 = (stdgo.math.bits.Bits.rotateLeft64(_v2, ((-1 : GoInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_v2, ((-8 : GoInt)))) ^ (_v2 >> ((7 : GoUnTypedInt)));
                    if (_w != null) _w[_i] = ((_t1 + (_w != null ? _w[_i - ((7 : GoInt))] : ((0 : GoUInt64)))) + _t2) + (_w != null ? _w[_i - ((16 : GoInt))] : ((0 : GoUInt64)));
                });
            };
            var _a:GoUInt64 = _h0, _b:GoUInt64 = _h1, _c:GoUInt64 = _h2, _d:GoUInt64 = _h3, _e:GoUInt64 = _h4, _f:GoUInt64 = _h5, _g:GoUInt64 = _h6, _h:GoUInt64 = _h7;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((80 : GoInt)), _i++, {
                    var _t1:GoUInt64 = (((_h + ((stdgo.math.bits.Bits.rotateLeft64(_e, ((-14 : GoInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_e, ((-18 : GoInt)))) ^ stdgo.math.bits.Bits.rotateLeft64(_e, ((-41 : GoInt))))) + ((_e & _f) ^ ((-1 ^ _e) & _g))) + (__K != null ? __K[_i] : ((0 : GoUInt64)))) + (_w != null ? _w[_i] : ((0 : GoUInt64)));
                    var _t2:GoUInt64 = ((stdgo.math.bits.Bits.rotateLeft64(_a, ((-28 : GoInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_a, ((-34 : GoInt)))) ^ stdgo.math.bits.Bits.rotateLeft64(_a, ((-39 : GoInt)))) + (((_a & _b) ^ (_a & _c)) ^ (_b & _c));
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
            _p = ((_p.__slice__(((128 : GoInt))) : Slice<GoUInt8>));
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
            stdgo.crypto.Crypto.registerHash(((6 : GoUInt)), new384);
            stdgo.crypto.Crypto.registerHash(((7 : GoUInt)), new_);
            stdgo.crypto.Crypto.registerHash(((14 : GoUInt)), new512_224);
            stdgo.crypto.Crypto.registerHash(((15 : GoUInt)), new512_256);
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
@:keep class T_digest_static_extension {
    @:keep
    public static function _checkSum( _d:T_digest):GoArray<GoByte> {
        var _len:GoUInt64 = _d._len;
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]);
        if (_tmp != null) _tmp[((0 : GoInt))] = ((128 : GoUInt8));
        if ((_len % ((128 : GoUInt64))) < ((112 : GoUInt64))) {
            _d.write(((_tmp.__slice__(((0 : GoInt)), ((112 : GoUInt64)) - (_len % ((128 : GoUInt64)))) : Slice<GoUInt8>)));
        } else {
            _d.write(((_tmp.__slice__(((0 : GoInt)), ((240 : GoUInt64)) - (_len % ((128 : GoUInt64)))) : Slice<GoUInt8>)));
        };
        _len = _len << (((3 : GoUnTypedInt)));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_tmp.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), ((0 : GoUInt64)));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_tmp.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), _len);
        _d.write(((_tmp.__slice__(((0 : GoInt)), ((16 : GoInt))) : Slice<GoUInt8>)));
        if (_d._nx != ((0 : GoInt))) {
            throw Go.toInterface(((("d.nx != 0" : GoString))));
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((0 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt64))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((8 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt64))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((16 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt64))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((24 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt64))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((32 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt64))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((40 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((5 : GoInt))] : ((0 : GoUInt64))));
        if (_d._function != ((6 : GoUInt))) {
            stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((48 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((6 : GoInt))] : ((0 : GoUInt64))));
            stdgo.encoding.binary.Binary.bigEndian.putUint64(((_digest.__slice__(((56 : GoInt))) : Slice<GoUInt8>)), (_d._h != null ? _d._h[((7 : GoInt))] : ((0 : GoUInt64))));
        };
        return (_digest == null ? null : _digest.__copy__());
    }
    @:keep
    public static function sum( _d:T_digest, _in:Slice<GoByte>):Slice<GoByte> {
        var _d0 = new T_digest();
        {
            var __tmp__ = (_d == null ? null : _d.__copy__());
            _d0._h = __tmp__._h;
            _d0._x = __tmp__._x;
            _d0._nx = __tmp__._nx;
            _d0._len = __tmp__._len;
            _d0._function = __tmp__._function;
        };
        var _hash = (_d0._checkSum() == null ? null : _d0._checkSum().__copy__());
        if (_d0._function == ((6 : GoUInt))) {
            return (_in != null ? _in.__append__(...((_hash.__slice__(0, ((48 : GoInt))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0, ((48 : GoInt))) : Slice<GoUInt8>)).__toArray__()));
        } else if (_d0._function == ((14 : GoUInt))) {
            return (_in != null ? _in.__append__(...((_hash.__slice__(0, ((28 : GoInt))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0, ((28 : GoInt))) : Slice<GoUInt8>)).__toArray__()));
        } else if (_d0._function == ((15 : GoUInt))) {
            return (_in != null ? _in.__append__(...((_hash.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0, ((32 : GoInt))) : Slice<GoUInt8>)).__toArray__()));
        } else {
            return (_in != null ? _in.__append__(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_hash.__slice__(0) : Slice<GoUInt8>)).__toArray__()));
        };
    }
    @:keep
    public static function write( _d:T_digest, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _nn = (_p != null ? _p.length : ((0 : GoInt)));
        _d._len = _d._len + (((_nn : GoUInt64)));
        if (_d._nx > ((0 : GoInt))) {
            var _n:GoInt = Go.copySlice(((_d._x.__slice__(_d._nx) : Slice<GoUInt8>)), _p);
            _d._nx = _d._nx + (_n);
            if (_d._nx == ((128 : GoInt))) {
                _block(_d, ((_d._x.__slice__(0) : Slice<GoUInt8>)));
                _d._nx = ((0 : GoInt));
            };
            _p = ((_p.__slice__(_n) : Slice<GoUInt8>));
        };
        if ((_p != null ? _p.length : ((0 : GoInt))) >= ((128 : GoInt))) {
            var _n:GoInt = (_p != null ? _p.length : ((0 : GoInt))) & (((127 : GoInt)) ^ ((-1 : GoUnTypedInt)));
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
        return ((128 : GoInt));
    }
    @:keep
    public static function size( _d:T_digest):GoInt {
        if (_d._function == ((14 : GoUInt))) {
            return ((28 : GoInt));
        } else if (_d._function == ((15 : GoUInt))) {
            return ((32 : GoInt));
        } else if (_d._function == ((6 : GoUInt))) {
            return ((48 : GoInt));
        } else {
            return ((64 : GoInt));
        };
    }
    @:keep
    public static function unmarshalBinary( _d:T_digest, _b:Slice<GoByte>):Error {
        if ((_b != null ? _b.length : ((0 : GoInt))) < (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))).length : ((0 : GoInt)))) {
            return stdgo.errors.Errors.new_(((("crypto/sha512: invalid hash state identifier" : GoString))));
        };
        if ((_d._function == ((6 : GoUInt))) && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) == ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString))))) {} else if ((_d._function == ((14 : GoUInt))) && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) == ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString))))) {} else if ((_d._function == ((15 : GoUInt))) && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) == ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString))))) {} else if ((_d._function == ((7 : GoUInt))) && (((((_b.__slice__(0, (((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>)) : GoString)) == ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))))) {} else {
            return stdgo.errors.Errors.new_(((("crypto/sha512: invalid hash state identifier" : GoString))));
        };
        if ((_b != null ? _b.length : ((0 : GoInt))) != ((204 : GoInt))) {
            return stdgo.errors.Errors.new_(((("crypto/sha512: invalid hash state size" : GoString))));
        };
        _b = ((_b.__slice__((((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))) != null ? ((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))).length : ((0 : GoInt)))) : Slice<GoUInt8>));
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((0 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((1 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((2 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((3 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((4 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((5 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((6 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            if (_d._h != null) _d._h[((7 : GoInt))] = __tmp__._1;
        };
        _b = ((_b.__slice__(Go.copySlice(((_d._x.__slice__(0) : Slice<GoUInt8>)), _b)) : Slice<GoUInt8>));
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d._len = __tmp__._1;
        };
        _d._nx = (((_d._len % ((128 : GoUInt64))) : GoInt));
        return ((null : stdgo.Error));
    }
    @:keep
    public static function marshalBinary( _d:T_digest):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _b = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).__setCap__(((((204 : GoInt)) : GoInt)).toBasic());
        if (_d._function == ((6 : GoUInt))) {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("04") : GoString))).__toArray__()));
        } else if (_d._function == ((14 : GoUInt))) {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("05") : GoString))).__toArray__()));
        } else if (_d._function == ((15 : GoUInt))) {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("06") : GoString))).__toArray__()));
        } else if (_d._function == ((7 : GoUInt))) {
            _b = (_b != null ? _b.__append__(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))).__toArray__()) : new Slice<GoUInt8>(...((("sha" : GoString)) + ((haxe.io.Bytes.ofHex("07") : GoString))).__toArray__()));
        } else {
            return { _0 : ((null : Slice<GoUInt8>)), _1 : stdgo.errors.Errors.new_(((("crypto/sha512: invalid hash function" : GoString)))) };
        };
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((0 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((1 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((2 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((3 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((4 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((5 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((6 : GoInt))] : ((0 : GoUInt64))));
        _b = _appendUint64(_b, (_d._h != null ? _d._h[((7 : GoInt))] : ((0 : GoUInt64))));
        _b = (_b != null ? _b.__append__(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()) : new Slice<GoUInt8>(...((_d._x.__slice__(0, _d._nx) : Slice<GoUInt8>)).__toArray__()));
        _b = ((_b.__slice__(0, ((_b != null ? _b.length : ((0 : GoInt))) + (_d._x != null ? _d._x.length : ((0 : GoInt)))) - ((_d._nx : GoInt))) : Slice<GoUInt8>));
        _b = _appendUint64(_b, _d._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    @:keep
    public static function reset( _d:T_digest):Void {
        if (_d._function == ((6 : GoUInt))) {
            if (_d._h != null) _d._h[((0 : GoInt))] = (("14680500436340154072" : GoUInt64));
            if (_d._h != null) _d._h[((1 : GoInt))] = (("7105036623409894663" : GoUInt64));
            if (_d._h != null) _d._h[((2 : GoInt))] = (("10473403895298186519" : GoUInt64));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("1526699215303891257" : GoUInt64));
            if (_d._h != null) _d._h[((4 : GoInt))] = (("7436329637833083697" : GoUInt64));
            if (_d._h != null) _d._h[((5 : GoInt))] = (("10282925794625328401" : GoUInt64));
            if (_d._h != null) _d._h[((6 : GoInt))] = (("15784041429090275239" : GoUInt64));
            if (_d._h != null) _d._h[((7 : GoInt))] = (("5167115440072839076" : GoUInt64));
        } else if (_d._function == ((14 : GoUInt))) {
            if (_d._h != null) _d._h[((0 : GoInt))] = (("10105294471447203234" : GoUInt64));
            if (_d._h != null) _d._h[((1 : GoInt))] = (("8350123849800275158" : GoUInt64));
            if (_d._h != null) _d._h[((2 : GoInt))] = (("2160240930085379202" : GoUInt64));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("7466358040605728719" : GoUInt64));
            if (_d._h != null) _d._h[((4 : GoInt))] = (("1111592415079452072" : GoUInt64));
            if (_d._h != null) _d._h[((5 : GoInt))] = (("8638871050018654530" : GoUInt64));
            if (_d._h != null) _d._h[((6 : GoInt))] = (("4583966954114332360" : GoUInt64));
            if (_d._h != null) _d._h[((7 : GoInt))] = (("1230299281376055969" : GoUInt64));
        } else if (_d._function == ((15 : GoUInt))) {
            if (_d._h != null) _d._h[((0 : GoInt))] = (("2463787394917988140" : GoUInt64));
            if (_d._h != null) _d._h[((1 : GoInt))] = (("11481187982095705282" : GoUInt64));
            if (_d._h != null) _d._h[((2 : GoInt))] = (("2563595384472711505" : GoUInt64));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("10824532655140301501" : GoUInt64));
            if (_d._h != null) _d._h[((4 : GoInt))] = (("10819967247969091555" : GoUInt64));
            if (_d._h != null) _d._h[((5 : GoInt))] = (("13717434660681038226" : GoUInt64));
            if (_d._h != null) _d._h[((6 : GoInt))] = (("3098927326965381290" : GoUInt64));
            if (_d._h != null) _d._h[((7 : GoInt))] = (("1060366662362279074" : GoUInt64));
        } else {
            if (_d._h != null) _d._h[((0 : GoInt))] = (("7640891576956012808" : GoUInt64));
            if (_d._h != null) _d._h[((1 : GoInt))] = (("13503953896175478587" : GoUInt64));
            if (_d._h != null) _d._h[((2 : GoInt))] = (("4354685564936845355" : GoUInt64));
            if (_d._h != null) _d._h[((3 : GoInt))] = (("11912009170470909681" : GoUInt64));
            if (_d._h != null) _d._h[((4 : GoInt))] = (("5840696475078001361" : GoUInt64));
            if (_d._h != null) _d._h[((5 : GoInt))] = (("11170449401992604703" : GoUInt64));
            if (_d._h != null) _d._h[((6 : GoInt))] = (("2270897969802886507" : GoUInt64));
            if (_d._h != null) _d._h[((7 : GoInt))] = (("6620516959819538809" : GoUInt64));
        };
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
