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
@:structInit class T_digest {
    public function _checkSum():GoArray<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _len:GoUInt64 = _d.value._len;
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]);
        _tmp[((0 : GoInt))] = ((128 : GoUInt8));
        if (_len % ((128 : GoUInt64)) < ((112 : GoUInt64))) {
            _d.value.write(_tmp.__slice__(((0 : GoInt)), ((112 : GoUInt64)) - _len % ((128 : GoUInt64))));
        } else {
            _d.value.write(_tmp.__slice__(((0 : GoInt)), ((128 : GoUnTypedInt)) + ((112 : GoUnTypedInt)) - _len % ((128 : GoUInt64))));
        };
        _len = (_len << (((3 : GoUnTypedInt))));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_tmp.__slice__(((0 : GoInt))), ((0 : GoUInt64)));
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_tmp.__slice__(((8 : GoInt))), _len);
        _d.value.write(_tmp.__slice__(((0 : GoInt)), ((16 : GoInt))));
        if (_d.value._nx != ((0 : GoInt))) {
            throw "d.nx != 0";
        };
        var _digest:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 64) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((0 : GoInt))), _d.value._h[((0 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((8 : GoInt))), _d.value._h[((1 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((16 : GoInt))), _d.value._h[((2 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((24 : GoInt))), _d.value._h[((3 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((32 : GoInt))), _d.value._h[((4 : GoInt))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((40 : GoInt))), _d.value._h[((5 : GoInt))]);
        if (_d.value._function.__t__ != stdgo.crypto.Crypto.sha384.__t__) {
            stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((48 : GoInt))), _d.value._h[((6 : GoInt))]);
            stdgo.encoding.binary.Binary.bigEndian.putUint64(_digest.__slice__(((56 : GoInt))), _d.value._h[((7 : GoInt))]);
        };
        return _digest.copy();
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _d0:Pointer<T_digest> = Go.pointer(new T_digest());
        _d0.value = _d.value.__copy__();
        var _hash:GoArray<GoUInt8> = _d0.value._checkSum().copy();
        if (_d0.value._function.__t__ == stdgo.crypto.Crypto.sha384.__t__) {
            return _in.__append__(..._hash.__slice__(0, size384).toArray());
        } else if (_d0.value._function.__t__ == stdgo.crypto.Crypto.sha512_224.__t__) {
            return _in.__append__(..._hash.__slice__(0, size224).toArray());
        } else if (_d0.value._function.__t__ == stdgo.crypto.Crypto.sha512_256.__t__) {
            return _in.__append__(..._hash.__slice__(0, size256).toArray());
        } else {
            return _in.__append__(..._hash.__slice__(0).toArray());
        };
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
        return Sha512.blockSize;
    }
    public function size():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_224.__t__) {
            return size224;
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_256.__t__) {
            return size256;
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha384.__t__) {
            return size384;
        } else {
            return Sha512.size;
        };
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length < _magic512.length) {
            return stdgo.errors.Errors.new_("crypto/sha512: invalid hash state identifier");
        };
        if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha384.__t__ && ((_b.__slice__(0, _magic384.length) : GoString)) == _magic384) {} else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_224.__t__ && ((_b.__slice__(0, _magic512_224.length) : GoString)) == _magic512_224) {} else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_256.__t__ && ((_b.__slice__(0, _magic512_256.length) : GoString)) == _magic512_256) {} else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512.__t__ && ((_b.__slice__(0, _magic512.length) : GoString)) == _magic512) {} else {
            return stdgo.errors.Errors.new_("crypto/sha512: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("crypto/sha512: invalid hash state size");
        };
        _b = _b.__slice__(_magic512.length);
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((0 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((1 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((2 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((3 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((4 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((5 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
            _b = __tmp__._0;
            _d.value._h[((6 : GoInt))] = __tmp__._1;
        };
        {
            var __tmp__ = _consumeUint64(_b);
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
        if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha384.__t__) {
            _b = _b.__append__(..._magic384.toArray());
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_224.__t__) {
            _b = _b.__append__(..._magic512_224.toArray());
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_256.__t__) {
            _b = _b.__append__(..._magic512_256.toArray());
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512.__t__) {
            _b = _b.__append__(..._magic512.toArray());
        } else {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : stdgo.errors.Errors.new_("crypto/sha512: invalid hash function") };
        };
        _b = _appendUint64(_b, _d.value._h[((0 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((1 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((2 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((3 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((4 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((5 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((6 : GoInt))]);
        _b = _appendUint64(_b, _d.value._h[((7 : GoInt))]);
        _b = _b.__append__(..._d.value._x.__slice__(0, _d.value._nx).toArray());
        _b = _b.__slice__(0, _b.length + _d.value._x.length - ((_d.value._nx : GoInt)));
        _b = _appendUint64(_b, _d.value._len);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha384.__t__) {
            _d.value._h[((0 : GoInt))] = _init0_384;
            _d.value._h[((1 : GoInt))] = _init1_384;
            _d.value._h[((2 : GoInt))] = _init2_384;
            _d.value._h[((3 : GoInt))] = _init3_384;
            _d.value._h[((4 : GoInt))] = _init4_384;
            _d.value._h[((5 : GoInt))] = _init5_384;
            _d.value._h[((6 : GoInt))] = _init6_384;
            _d.value._h[((7 : GoInt))] = _init7_384;
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_224.__t__) {
            _d.value._h[((0 : GoInt))] = _init0_224;
            _d.value._h[((1 : GoInt))] = _init1_224;
            _d.value._h[((2 : GoInt))] = _init2_224;
            _d.value._h[((3 : GoInt))] = _init3_224;
            _d.value._h[((4 : GoInt))] = _init4_224;
            _d.value._h[((5 : GoInt))] = _init5_224;
            _d.value._h[((6 : GoInt))] = _init6_224;
            _d.value._h[((7 : GoInt))] = _init7_224;
        } else if (_d.value._function.__t__ == stdgo.crypto.Crypto.sha512_256.__t__) {
            _d.value._h[((0 : GoInt))] = _init0_256;
            _d.value._h[((1 : GoInt))] = _init1_256;
            _d.value._h[((2 : GoInt))] = _init2_256;
            _d.value._h[((3 : GoInt))] = _init3_256;
            _d.value._h[((4 : GoInt))] = _init4_256;
            _d.value._h[((5 : GoInt))] = _init5_256;
            _d.value._h[((6 : GoInt))] = _init6_256;
            _d.value._h[((7 : GoInt))] = _init7_256;
        } else {
            _d.value._h[((0 : GoInt))] = _init0;
            _d.value._h[((1 : GoInt))] = _init1;
            _d.value._h[((2 : GoInt))] = _init2;
            _d.value._h[((3 : GoInt))] = _init3;
            _d.value._h[((4 : GoInt))] = _init4;
            _d.value._h[((5 : GoInt))] = _init5;
            _d.value._h[((6 : GoInt))] = _init6;
            _d.value._h[((7 : GoInt))] = _init7;
        };
        _d.value._nx = ((0 : GoInt));
        _d.value._len = ((0 : GoUInt64));
    }
    public var _h : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]);
    public var _x : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]);
    public var _nx : GoInt = ((0 : GoInt));
    public var _len : GoUInt64 = ((0 : GoUInt64));
    public var _function : stdgo.crypto.Crypto.Hash = new stdgo.crypto.Crypto.Hash();
    public function new(?_h:GoArray<GoUInt64>, ?_x:GoArray<GoUInt8>, ?_nx:GoInt, ?_len:GoUInt64, ?_function:stdgo.crypto.Crypto.Hash) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_x) + " " + Go.string(_nx) + " " + Go.string(_len) + " " + Go.string(_function) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_h, _x, _nx, _len, _function);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._x = __tmp__._x;
        this._nx = __tmp__._nx;
        this._len = __tmp__._len;
        this._function = __tmp__._function;
        return this;
    }
}
final _init5_384 : GoInt64 = (("10282925794625328401" : GoUnTypedInt));
final size : GoInt64 = ((64 : GoUnTypedInt));
final _init6 : GoInt64 = (("2270897969802886507" : GoUnTypedInt));
final _init4_224 : GoInt64 = (("1111592415079452072" : GoUnTypedInt));
final _init7 : GoInt64 = (("6620516959819538809" : GoUnTypedInt));
final _init5_224 : GoInt64 = (("8638871050018654530" : GoUnTypedInt));
final _magic512 : GoString = "sha\\x07";
final _chunk : GoInt64 = ((128 : GoUnTypedInt));
final _marshaledSize : GoInt = _magic512.length + ((8 : GoUnTypedInt)) * ((8 : GoUnTypedInt)) + _chunk + ((8 : GoInt));
final _init1_384 : GoInt64 = (("7105036623409894663" : GoUnTypedInt));
final _magic512_224 : GoString = "sha\\x05";
final _init2_384 : GoInt64 = (("10473403895298186519" : GoUnTypedInt));
final _init1_224 : GoInt64 = (("8350123849800275158" : GoUnTypedInt));
final _init3_384 : GoInt64 = (("1526699215303891257" : GoUnTypedInt));
final _init6_256 : GoInt64 = (("3098927326965381290" : GoUnTypedInt));
final _init2_224 : GoInt64 = (("2160240930085379202" : GoUnTypedInt));
final _init7_256 : GoInt64 = (("1060366662362279074" : GoUnTypedInt));
final _init3_224 : GoInt64 = (("7466358040605728719" : GoUnTypedInt));
final _magic384 : GoString = "sha\\x04";
final _init0_384 : GoInt64 = (("14680500436340154072" : GoUnTypedInt));
final size384 : GoInt64 = ((48 : GoUnTypedInt));
final _init0_224 : GoInt64 = (("10105294471447203234" : GoUnTypedInt));
final size224 : GoInt64 = ((28 : GoUnTypedInt));
final _init4_256 : GoInt64 = (("10819967247969091555" : GoUnTypedInt));
final _init5_256 : GoInt64 = (("13717434660681038226" : GoUnTypedInt));
final blockSize : GoInt64 = ((128 : GoUnTypedInt));
final _magic512_256 : GoString = "sha\\x06";
final _init0 : GoInt64 = (("7640891576956012808" : GoUnTypedInt));
final _init1_256 : GoInt64 = (("11481187982095705282" : GoUnTypedInt));
final _init6_384 : GoInt64 = (("15784041429090275239" : GoUnTypedInt));
final _init2_256 : GoInt64 = (("2563595384472711505" : GoUnTypedInt));
final _init1 : GoInt64 = (("13503953896175478587" : GoUnTypedInt));
final _init7_384 : GoInt64 = (("5167115440072839076" : GoUnTypedInt));
final _init2 : GoInt64 = (("4354685564936845355" : GoUnTypedInt));
final _init6_224 : GoInt64 = (("4583966954114332360" : GoUnTypedInt));
final _init3_256 : GoInt64 = (("10824532655140301501" : GoUnTypedInt));
final _init7_224 : GoInt64 = (("1230299281376055969" : GoUnTypedInt));
final _init3 : GoInt64 = (("11912009170470909681" : GoUnTypedInt));
final _init4 : GoInt64 = (("5840696475078001361" : GoUnTypedInt));
var __K : Slice<GoUInt64> = new Slice<GoUInt64>(
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
(("7801388544844847127" : GoUInt64)));
final _init4_384 : GoInt64 = (("7436329637833083697" : GoUnTypedInt));
final _init0_256 : GoInt64 = (("2463787394917988140" : GoUnTypedInt));
final _init5 : GoInt64 = (("11170449401992604703" : GoUnTypedInt));
final size256 : GoInt64 = ((32 : GoUnTypedInt));
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
        stdgo.encoding.binary.Binary.bigEndian.putUint64(_a.__slice__(0), _x);
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _consumeUint64(_b:Slice<GoByte>):{ var _0 : Slice<GoByte>; var _1 : GoUInt64; } {
        _b[((7 : GoInt))];
        var _x:GoUInt64 = ((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
        return { _0 : _b.__slice__(((8 : GoInt))), _1 : _x };
    }
/**
    // New returns a new hash.Hash computing the SHA-512 checksum.
**/
function new_():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer((({ _function : stdgo.crypto.Crypto.sha512, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)));
        _d.value.reset();
        return _d.value;
    }
/**
    // New512_224 returns a new hash.Hash computing the SHA-512/224 checksum.
**/
function new512_224():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer((({ _function : stdgo.crypto.Crypto.sha512_224, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)));
        _d.value.reset();
        return _d.value;
    }
/**
    // New512_256 returns a new hash.Hash computing the SHA-512/256 checksum.
**/
function new512_256():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer((({ _function : stdgo.crypto.Crypto.sha512_256, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)));
        _d.value.reset();
        return _d.value;
    }
/**
    // New384 returns a new hash.Hash computing the SHA-384 checksum.
**/
function new384():stdgo.hash.Hash.Hash {
        var _d:Pointer<T_digest> = Go.pointer((({ _function : stdgo.crypto.Crypto.sha384, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)));
        _d.value.reset();
        return _d.value;
    }
/**
    // Sum512 returns the SHA512 checksum of the data.
**/
function sum512(_data:Slice<GoByte>):GoArray<GoByte> {
        var _d:T_digest = (({ _function : stdgo.crypto.Crypto.sha512, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)).__copy__();
        _d.reset();
        _d.write(_data);
        return _d._checkSum().copy();
    }
/**
    // Sum384 returns the SHA384 checksum of the data.
**/
function sum384(_data:Slice<GoByte>):GoArray<GoByte> {
        var _sum384:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 48) ((0 : GoUInt8))]);
        var _d:T_digest = (({ _function : stdgo.crypto.Crypto.sha384, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)).__copy__();
        _d.reset();
        _d.write(_data);
        var _sum:GoArray<GoUInt8> = _d._checkSum().copy();
        Go.copy(_sum384.__slice__(0), _sum.__slice__(0, size384));
        return _sum384;
    }
/**
    // Sum512_224 returns the Sum512/224 checksum of the data.
**/
function sum512_224(_data:Slice<GoByte>):GoArray<GoByte> {
        var _sum224:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 28) ((0 : GoUInt8))]);
        var _d:T_digest = (({ _function : stdgo.crypto.Crypto.sha512_224, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)).__copy__();
        _d.reset();
        _d.write(_data);
        var _sum:GoArray<GoUInt8> = _d._checkSum().copy();
        Go.copy(_sum224.__slice__(0), _sum.__slice__(0, size224));
        return _sum224;
    }
/**
    // Sum512_256 returns the Sum512/256 checksum of the data.
**/
function sum512_256(_data:Slice<GoByte>):GoArray<GoByte> {
        var _sum256:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 32) ((0 : GoUInt8))]);
        var _d:T_digest = (({ _function : stdgo.crypto.Crypto.sha512_256, _h : new GoArray<GoUInt64>(...[for (i in 0 ... 8) ((0 : GoUInt64))]), _x : new GoArray<GoUInt8>(...[for (i in 0 ... 128) ((0 : GoUInt8))]), _nx : 0, _len : 0 } : T_digest)).__copy__();
        _d.reset();
        _d.write(_data);
        var _sum:GoArray<GoUInt8> = _d._checkSum().copy();
        Go.copy(_sum256.__slice__(0), _sum.__slice__(0, size256));
        return _sum256;
    }
function _blockGeneric(_dig:Pointer<T_digest>, _p:Slice<GoByte>):Void {
        var _w:GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 80) ((0 : GoUInt64))]);
        var _h0:GoUInt64 = _dig.value._h[((0 : GoInt))], _h1:GoUInt64 = _dig.value._h[((1 : GoInt))], _h2:GoUInt64 = _dig.value._h[((2 : GoInt))], _h3:GoUInt64 = _dig.value._h[((3 : GoInt))], _h4:GoUInt64 = _dig.value._h[((4 : GoInt))], _h5:GoUInt64 = _dig.value._h[((5 : GoInt))], _h6:GoUInt64 = _dig.value._h[((6 : GoInt))], _h7:GoUInt64 = _dig.value._h[((7 : GoInt))];
        while (_p.length >= _chunk) {
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((16 : GoInt)), _i++, {
                    var _j:GoInt = _i * ((8 : GoInt));
                    _w[_i] = (((_p[_j] : GoUInt64)) << ((56 : GoUnTypedInt))) | (((_p[_j + ((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_p[_j + ((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_p[_j + ((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_p[_j + ((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_p[_j + ((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_p[_j + ((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | ((_p[_j + ((7 : GoInt))] : GoUInt64));
                });
            };
            {
                var _i:GoInt = ((16 : GoInt));
                Go.cfor(_i < ((80 : GoInt)), _i++, {
                    var _v1:GoUInt64 = _w[_i - ((2 : GoInt))];
                    var _t1:GoUInt64 = stdgo.math.bits.Bits.rotateLeft64(_v1, -((19 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_v1, -((61 : GoUnTypedInt))) ^ ((_v1 >> ((6 : GoUnTypedInt))));
                    var _v2:GoUInt64 = _w[_i - ((15 : GoInt))];
                    var _t2:GoUInt64 = stdgo.math.bits.Bits.rotateLeft64(_v2, -((1 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_v2, -((8 : GoUnTypedInt))) ^ ((_v2 >> ((7 : GoUnTypedInt))));
                    _w[_i] = _t1 + _w[_i - ((7 : GoInt))] + _t2 + _w[_i - ((16 : GoInt))];
                });
            };
            var _a:GoUInt64 = _h0, _b:GoUInt64 = _h1, _c:GoUInt64 = _h2, _d:GoUInt64 = _h3, _e:GoUInt64 = _h4, _f:GoUInt64 = _h5, _g:GoUInt64 = _h6, _h:GoUInt64 = _h7;
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < ((80 : GoInt)), _i++, {
                    var _t1:GoUInt64 = _h + (stdgo.math.bits.Bits.rotateLeft64(_e, -((14 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_e, -((18 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_e, -((41 : GoUnTypedInt)))) + ((_e & _f) ^ (-1 ^ _e & _g)) + __K[_i] + _w[_i];
                    var _t2:GoUInt64 = (stdgo.math.bits.Bits.rotateLeft64(_a, -((28 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_a, -((34 : GoUnTypedInt))) ^ stdgo.math.bits.Bits.rotateLeft64(_a, -((39 : GoUnTypedInt)))) + ((_a & _b) ^ (_a & _c) ^ (_b & _c));
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
function _block(_dig:Pointer<T_digest>, _p:Slice<GoByte>):Void {
        _blockGeneric(_dig, _p);
    }
@:keep var _ = {
        try {
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha384, new384);
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha512, new_);
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha512_224, new512_224);
            stdgo.crypto.Crypto.registerHash(stdgo.crypto.Crypto.sha512_256, new512_256);
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class T_digest_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function _checkSum(__tmp__):GoArray<GoByte> return __tmp__._checkSum();
}
