package stdgo.hash.crc64;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class Table {
    public var __t__ : GoArray<GoUInt64>;
    public function new(?t:GoArray<GoUInt64>) {
        __t__ = t == null ? new GoArray<GoUInt64>(...[for (i in 0 ... 256) ((0 : GoUInt64))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Table(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:structInit class T_digest {
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _s:GoUInt64 = _d.value.sum64();
        return _in.__append__((((_s >> ((56 : GoUnTypedInt))) : GoByte)), (((_s >> ((48 : GoUnTypedInt))) : GoByte)), (((_s >> ((40 : GoUnTypedInt))) : GoByte)), (((_s >> ((32 : GoUnTypedInt))) : GoByte)), (((_s >> ((24 : GoUnTypedInt))) : GoByte)), (((_s >> ((16 : GoUnTypedInt))) : GoByte)), (((_s >> ((8 : GoUnTypedInt))) : GoByte)), ((_s : GoByte)));
    }
    public function sum64():GoUInt64 {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._crc;
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _d.value._crc = _update(_d.value._crc, _d.value._tab, _p);
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length < _magic.length || ((_b.__slice__(0, _magic.length) : GoString)) != _magic) {
            return stdgo.errors.Errors.new_("hash/crc64: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("hash/crc64: invalid hash state size");
        };
        if (_tableSum(_d.value._tab) != _readUint64(_b.__slice__(((4 : GoInt))))) {
            return stdgo.errors.Errors.new_("hash/crc64: tables do not match");
        };
        _d.value._crc = _readUint64(_b.__slice__(((12 : GoInt))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize : GoInt)).toBasic());
        _b = _b.__append__(..._magic.toArray());
        _b = _appendUint64(_b, _tableSum(_d.value._tab));
        _b = _appendUint64(_b, _d.value._crc);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._crc = ((0 : GoUInt64));
    }
    public function blockSize():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Crc64.size;
    }
    public var _crc : GoUInt64 = ((0 : GoUInt64));
    public var _tab : Pointer<Table> = new Pointer<Table>().nil();
    public function new(?_crc:GoUInt64, ?_tab:Pointer<Table>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_crc) + " " + Go.string(_tab) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_digest(_crc, _tab);
    }
    public function __set__(__tmp__) {
        this._crc = __tmp__._crc;
        this._tab = __tmp__._tab;
        return this;
    }
}
var _slicing8TableISO : Pointer<GoArray<Table>> = new Pointer<GoArray<Table>>().nil();
var _slicing8TablesBuildOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
final _magic : GoString = "crc\\x02";
final iso : GoInt64 = (("15564440312192434176" : GoUnTypedInt));
final size : GoInt64 = ((8 : GoUnTypedInt));
final _marshaledSize : GoInt = _magic.length + ((8 : GoInt)) + ((8 : GoInt));
var _slicing8TableECMA : Pointer<GoArray<Table>> = new Pointer<GoArray<Table>>().nil();
final ecma : GoInt64 = (("14514072000185962306" : GoUnTypedInt));
function _buildSlicing8TablesOnce():Void {
        _slicing8TablesBuildOnce.do_(_buildSlicing8Tables);
    }
function _buildSlicing8Tables():Void {
        _slicing8TableISO = _makeSlicingBy8Table(_makeTable(iso));
        _slicing8TableECMA = _makeSlicingBy8Table(_makeTable(ecma));
    }
/**
    // MakeTable returns a Table constructed from the specified polynomial.
    // The contents of this Table must not be modified.
**/
function makeTable(_poly:GoUInt64):Pointer<Table> {
        _buildSlicing8TablesOnce();
        if (_poly == iso) {
            return Go.pointer(_slicing8TableISO.value[((0 : GoInt))]);
        } else if (_poly == ecma) {
            return Go.pointer(_slicing8TableECMA.value[((0 : GoInt))]);
        } else {
            return _makeTable(_poly);
        };
    }
function _makeTable(_poly:GoUInt64):Pointer<Table> {
        var _t:Pointer<Table> = Go.pointer(new Table());
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                var _crc:GoUInt64 = ((_i : GoUInt64));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        if (_crc & ((1 : GoUInt64)) == ((1 : GoUInt64))) {
                            _crc = ((_crc >> ((1 : GoUnTypedInt)))) ^ _poly;
                        } else {
                            _crc = (_crc >> (((1 : GoUnTypedInt))));
                        };
                    });
                };
                _t.value.__t__[_i] = _crc;
            });
        };
        return _t;
    }
function _makeSlicingBy8Table(_t:Pointer<Table>):Pointer<GoArray<Table>> {
        var _helperTable:GoArray<Table> = new GoArray<Table>(...[for (i in 0 ... 8) new Table()]);
        _helperTable[((0 : GoInt))] = _t.value.__copy__();
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                var _crc:GoUInt64 = _t.value.__t__[_i];
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        _crc = _t.value.__t__[_crc & ((255 : GoUInt64))] ^ ((_crc >> ((8 : GoUnTypedInt))));
                        _helperTable[_j].__t__[_i] = _crc;
                    });
                };
            });
        };
        return Go.pointer(_helperTable);
    }
/**
    // New creates a new hash.Hash64 computing the CRC-64 checksum using the
    // polynomial represented by the Table. Its Sum method will lay the
    // value out in big-endian byte order. The returned Hash64 also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_(_tab:Pointer<Table>):stdgo.hash.Hash.Hash64 {
        return Go.pointer(new T_digest(((0 : GoUInt64)), _tab)).value;
    }
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoUInt8> = new GoArray<GoUInt8>((((_x >> ((56 : GoUnTypedInt))) : GoByte)), (((_x >> ((48 : GoUnTypedInt))) : GoByte)), (((_x >> ((40 : GoUnTypedInt))) : GoByte)), (((_x >> ((32 : GoUnTypedInt))) : GoByte)), (((_x >> ((24 : GoUnTypedInt))) : GoByte)), (((_x >> ((16 : GoUnTypedInt))) : GoByte)), (((_x >> ((8 : GoUnTypedInt))) : GoByte)), ((_x : GoByte))).copy();
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _readUint64(_b:Slice<GoByte>):GoUInt64 {
        _b[((7 : GoInt))];
        return ((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
function _update(_crc:GoUInt64, _tab:Pointer<Table>, _p:Slice<GoByte>):GoUInt64 {
        _buildSlicing8TablesOnce();
        _crc = -1 ^ _crc;
        while (_p.length >= ((64 : GoInt))) {
            var _helperTable:Pointer<GoArray<Table>> = new Pointer<GoArray<Table>>().nil();
            if ({
                var bool = true;
                for (i in 0 ... _tab.value.__t__.length.toBasic()) {
                    if (Go.toInterface(_tab.value.__t__[i]) != Go.toInterface(_slicing8TableECMA.value[((0 : GoInt))].__t__[i])) {
                        bool = false;
                        break;
                    };
                };
                bool;
            }) {
                _helperTable = _slicing8TableECMA;
            } else if ({
                var bool = true;
                for (i in 0 ... _tab.value.__t__.length.toBasic()) {
                    if (Go.toInterface(_tab.value.__t__[i]) != Go.toInterface(_slicing8TableISO.value[((0 : GoInt))].__t__[i])) {
                        bool = false;
                        break;
                    };
                };
                bool;
            }) {
                _helperTable = _slicing8TableISO;
            } else if (_p.length > ((16384 : GoInt))) {
                _helperTable = _makeSlicingBy8Table(_tab);
            } else {
                break;
            };
            while (_p.length > ((8 : GoInt))) {
                _crc = _crc ^ (((_p[((0 : GoInt))] : GoUInt64)) | (((_p[((1 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_p[((2 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_p[((3 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_p[((4 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_p[((5 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_p[((6 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_p[((7 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt))));
                _crc = _helperTable.value[((7 : GoInt))].__t__[_crc & ((255 : GoUInt64))] ^ _helperTable.value[((6 : GoInt))].__t__[((_crc >> ((8 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((5 : GoInt))].__t__[((_crc >> ((16 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((4 : GoInt))].__t__[((_crc >> ((24 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((3 : GoInt))].__t__[((_crc >> ((32 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((2 : GoInt))].__t__[((_crc >> ((40 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((1 : GoInt))].__t__[((_crc >> ((48 : GoUnTypedInt)))) & ((255 : GoUInt64))] ^ _helperTable.value[((0 : GoInt))].__t__[(_crc >> ((56 : GoUnTypedInt)))];
                _p = _p.__slice__(((8 : GoInt)));
            };
        };
        for (_ => _v in _p) {
            _crc = _tab.value.__t__[((_crc : GoByte)) ^ _v] ^ ((_crc >> ((8 : GoUnTypedInt))));
        };
        return -1 ^ _crc;
    }
/**
    // Update returns the result of adding the bytes in p to the crc.
**/
function update(_crc:GoUInt64, _tab:Pointer<Table>, _p:Slice<GoByte>):GoUInt64 {
        return _update(_crc, _tab, _p);
    }
/**
    // Checksum returns the CRC-64 checksum of data
    // using the polynomial represented by the Table.
**/
function checksum(_data:Slice<GoByte>, _tab:Pointer<Table>):GoUInt64 {
        return _update(((0 : GoUInt64)), _tab, _data);
    }
/**
    // tableSum returns the ISO checksum of table t.
**/
function _tableSum(_t:Pointer<Table>):GoUInt64 {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 2048) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = _a.__slice__(0, ((0 : GoInt)));
        if ((_t != null && !_t.isNil())) {
            for (_ => _x in _t.value.__t__) {
                _b = _appendUint64(_b, _x);
            };
        };
        return checksum(_b, makeTable(iso));
    }
class T_digest_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function reset(__tmp__):Void __tmp__.reset();
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum64(__tmp__):GoUInt64 return __tmp__.sum64();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
}
