package stdgo.hash.crc32;
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
    public var __t__ : GoArray<GoUInt32>;
    public function new(?t:GoArray<GoUInt32>) {
        __t__ = t == null ? new GoArray<GoUInt32>(...[for (i in 0 ... 256) ((0 : GoUInt32))]) : t;
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
        var _s:GoUInt32 = _d.value.sum32();
        return _in.__append__((((_s >> ((24 : GoUnTypedInt))) : GoByte)), (((_s >> ((16 : GoUnTypedInt))) : GoByte)), (((_s >> ((8 : GoUnTypedInt))) : GoByte)), ((_s : GoByte)));
    }
    public function sum32():GoUInt32 {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _d.value._crc;
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_haveCastagnoli)) != ((0 : GoUInt32)) && _d.value._tab == _castagnoliTable) {
            _d.value._crc = _updateCastagnoli(_d.value._crc, _p);
        } else if (_d.value._tab == ieeetable) {
            _d.value._crc = _updateIEEE(_d.value._crc, _p);
        } else {
            _d.value._crc = _simpleUpdate(_d.value._crc, _d.value._tab, _p);
        };
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_b.length < _magic.length || ((_b.__slice__(0, _magic.length) : GoString)) != _magic) {
            return stdgo.errors.Errors.new_("hash/crc32: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("hash/crc32: invalid hash state size");
        };
        if (_tableSum(_d.value._tab) != _readUint32(_b.__slice__(((4 : GoInt))))) {
            return stdgo.errors.Errors.new_("hash/crc32: tables do not match");
        };
        _d.value._crc = _readUint32(_b.__slice__(((8 : GoInt))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize : GoInt)).toBasic());
        _b = _b.__append__(..._magic.toArray());
        _b = _appendUint32(_b, _tableSum(_d.value._tab));
        _b = _appendUint32(_b, _d.value._crc);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function reset():Void {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _d.value._crc = ((0 : GoUInt32));
    }
    public function blockSize():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _d = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return Crc32.size;
    }
    public var _crc : GoUInt32 = ((0 : GoUInt32));
    public var _tab : Pointer<Table> = new Pointer<Table>().nil();
    public function new(?_crc:GoUInt32, ?_tab:Pointer<Table>) stdgo.internal.Macro.initLocals();
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
@:named class T_slicing8Table {
    public var __t__ : GoArray<Table>;
    public function new(?t:GoArray<Table>) {
        __t__ = t == null ? new GoArray<Table>(...[for (i in 0 ... 8) new Table()]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_slicing8Table(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
final koopman : GoInt64 = (("3945912366" : GoUnTypedInt));
var _ieeeOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _updateIEEE : (_crc:GoUInt32, _p:Slice<GoByte>) -> GoUInt32 = null;
var _castagnoliOnce : stdgo.sync.Sync.Once = new stdgo.sync.Sync.Once();
var _castagnoliTable : Pointer<Table> = new Pointer<Table>().nil();
final _magic : GoString = "crc\\x01";
var _ieeeTable8 : Pointer<T_slicing8Table> = new Pointer<T_slicing8Table>().nil();
final ieee : GoInt64 = (("3988292384" : GoUnTypedInt));
final size : GoInt64 = ((4 : GoUnTypedInt));
var _ieeeArchImpl : Bool = false;
var ieeetable : Pointer<Table> = _simpleMakeTable(ieee);
var _updateCastagnoli : (_crc:GoUInt32, _p:Slice<GoByte>) -> GoUInt32 = null;
final castagnoli : GoInt64 = (("2197175160" : GoUnTypedInt));
var _castagnoliTable8 : Pointer<T_slicing8Table> = new Pointer<T_slicing8Table>().nil();
final _slicing8Cutoff : GoInt64 = ((16 : GoUnTypedInt));
final _marshaledSize : GoInt = _magic.length + ((4 : GoInt)) + ((4 : GoInt));
var _haveCastagnoli : GoUInt32 = ((0 : GoUInt32));
var _castagnoliArchImpl : Bool = false;
function _castagnoliInit():Void {
        _castagnoliTable = _simpleMakeTable(castagnoli);
        _castagnoliArchImpl = _archAvailableCastagnoli();
        if (_castagnoliArchImpl) {
            _archInitCastagnoli();
            _updateCastagnoli = _archUpdateCastagnoli;
        } else {
            _castagnoliTable8 = _slicingMakeTable(castagnoli);
            _updateCastagnoli = function(_crc:GoUInt32, _p:Slice<GoByte>):GoUInt32 {
                return _slicingUpdate(_crc, _castagnoliTable8, _p);
            };
        };
        stdgo.sync.atomic.Atomic.storeUint32(Go.pointer(_haveCastagnoli), ((1 : GoUInt32)));
    }
function _ieeeInit():Void {
        _ieeeArchImpl = _archAvailableIEEE();
        if (_ieeeArchImpl) {
            _archInitIEEE();
            _updateIEEE = _archUpdateIEEE;
        } else {
            _ieeeTable8 = _slicingMakeTable(ieee);
            _updateIEEE = function(_crc:GoUInt32, _p:Slice<GoByte>):GoUInt32 {
                return _slicingUpdate(_crc, _ieeeTable8, _p);
            };
        };
    }
/**
    // MakeTable returns a Table constructed from the specified polynomial.
    // The contents of this Table must not be modified.
**/
function makeTable(_poly:GoUInt32):Pointer<Table> {
        if (_poly == ieee) {
            _ieeeOnce.do_(_ieeeInit);
            return ieeetable;
        } else if (_poly == castagnoli) {
            _castagnoliOnce.do_(_castagnoliInit);
            return _castagnoliTable;
        };
        return _simpleMakeTable(_poly);
    }
/**
    // New creates a new hash.Hash32 computing the CRC-32 checksum using the
    // polynomial represented by the Table. Its Sum method will lay the
    // value out in big-endian byte order. The returned Hash32 also
    // implements encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to
    // marshal and unmarshal the internal state of the hash.
**/
function new_(_tab:Pointer<Table>):stdgo.hash.Hash.Hash32 {
        if (_tab == ieeetable) {
            _ieeeOnce.do_(_ieeeInit);
        };
        return Go.pointer(new T_digest(((0 : GoUInt32)), _tab)).value;
    }
/**
    // NewIEEE creates a new hash.Hash32 computing the CRC-32 checksum using
    // the IEEE polynomial. Its Sum method will lay the value out in
    // big-endian byte order. The returned Hash32 also implements
    // encoding.BinaryMarshaler and encoding.BinaryUnmarshaler to marshal
    // and unmarshal the internal state of the hash.
**/
function newIEEE():stdgo.hash.Hash.Hash32 {
        return new_(ieeetable);
    }
function _appendUint32(_b:Slice<GoByte>, _x:GoUInt32):Slice<GoByte> {
        var _a:GoArray<GoUInt8> = new GoArray<GoUInt8>((((_x >> ((24 : GoUnTypedInt))) : GoByte)), (((_x >> ((16 : GoUnTypedInt))) : GoByte)), (((_x >> ((8 : GoUnTypedInt))) : GoByte)), ((_x : GoByte))).copy();
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _readUint32(_b:Slice<GoByte>):GoUInt32 {
        _b[((3 : GoInt))];
        return ((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
/**
    // Update returns the result of adding the bytes in p to the crc.
**/
function update(_crc:GoUInt32, _tab:Pointer<Table>, _p:Slice<GoByte>):GoUInt32 {
        if (stdgo.sync.atomic.Atomic.loadUint32(Go.pointer(_haveCastagnoli)) != ((0 : GoUInt32)) && _tab == _castagnoliTable) {
            return _updateCastagnoli(_crc, _p);
        } else if (_tab == ieeetable) {
            _ieeeOnce.do_(_ieeeInit);
            return _updateIEEE(_crc, _p);
        } else {
            return _simpleUpdate(_crc, _tab, _p);
        };
    }
/**
    // Checksum returns the CRC-32 checksum of data
    // using the polynomial represented by the Table.
**/
function checksum(_data:Slice<GoByte>, _tab:Pointer<Table>):GoUInt32 {
        return update(((0 : GoUInt32)), _tab, _data);
    }
/**
    // ChecksumIEEE returns the CRC-32 checksum of data
    // using the IEEE polynomial.
**/
function checksumIEEE(_data:Slice<GoByte>):GoUInt32 {
        _ieeeOnce.do_(_ieeeInit);
        return _updateIEEE(((0 : GoUInt32)), _data);
    }
/**
    // tableSum returns the IEEE checksum of table t.
**/
function _tableSum(_t:Pointer<Table>):GoUInt32 {
        var _a:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 1024) ((0 : GoUInt8))]);
        var _b:Slice<GoUInt8> = _a.__slice__(0, ((0 : GoInt)));
        if ((_t != null && !_t.isNil())) {
            for (_ => _x in _t.value.__t__) {
                _b = _appendUint32(_b, _x);
            };
        };
        return checksumIEEE(_b);
    }
/**
    // simpleMakeTable allocates and constructs a Table for the specified
    // polynomial. The table is suitable for use with the simple algorithm
    // (simpleUpdate).
**/
function _simpleMakeTable(_poly:GoUInt32):Pointer<Table> {
        var _t:Pointer<Table> = Go.pointer(new Table());
        _simplePopulateTable(_poly, _t);
        return _t;
    }
/**
    // simplePopulateTable constructs a Table for the specified polynomial, suitable
    // for use with simpleUpdate.
**/
function _simplePopulateTable(_poly:GoUInt32, _t:Pointer<Table>):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                var _crc:GoUInt32 = ((_i : GoUInt32));
                {
                    var _j:GoInt = ((0 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        if (_crc & ((1 : GoUInt32)) == ((1 : GoUInt32))) {
                            _crc = ((_crc >> ((1 : GoUnTypedInt)))) ^ _poly;
                        } else {
                            _crc = (_crc >> (((1 : GoUnTypedInt))));
                        };
                    });
                };
                _t.value.__t__[_i] = _crc;
            });
        };
    }
/**
    // simpleUpdate uses the simple algorithm to update the CRC, given a table that
    // was previously computed using simpleMakeTable.
**/
function _simpleUpdate(_crc:GoUInt32, _tab:Pointer<Table>, _p:Slice<GoByte>):GoUInt32 {
        _crc = -1 ^ _crc;
        for (_ => _v in _p) {
            _crc = _tab.value.__t__[((_crc : GoByte)) ^ _v] ^ ((_crc >> ((8 : GoUnTypedInt))));
        };
        return -1 ^ _crc;
    }
/**
    // slicingMakeTable constructs a slicing8Table for the specified polynomial. The
    // table is suitable for use with the slicing-by-8 algorithm (slicingUpdate).
**/
function _slicingMakeTable(_poly:GoUInt32):Pointer<T_slicing8Table> {
        var _t:Pointer<T_slicing8Table> = Go.pointer(new T_slicing8Table());
        _simplePopulateTable(_poly, Go.pointer(_t.value.__t__[((0 : GoInt))]));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < ((256 : GoInt)), _i++, {
                var _crc:GoUInt32 = _t.value.__t__[((0 : GoInt))].__t__[_i];
                {
                    var _j:GoInt = ((1 : GoInt));
                    Go.cfor(_j < ((8 : GoInt)), _j++, {
                        _crc = _t.value.__t__[((0 : GoInt))].__t__[_crc & ((255 : GoUInt32))] ^ ((_crc >> ((8 : GoUnTypedInt))));
                        _t.value.__t__[_j].__t__[_i] = _crc;
                    });
                };
            });
        };
        return _t;
    }
/**
    // slicingUpdate uses the slicing-by-8 algorithm to update the CRC, given a
    // table that was previously computed using slicingMakeTable.
**/
function _slicingUpdate(_crc:GoUInt32, _tab:Pointer<T_slicing8Table>, _p:Slice<GoByte>):GoUInt32 {
        if (_p.length >= _slicing8Cutoff) {
            _crc = -1 ^ _crc;
            while (_p.length > ((8 : GoInt))) {
                _crc = _crc ^ (((_p[((0 : GoInt))] : GoUInt32)) | (((_p[((1 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_p[((2 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_p[((3 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt))));
                _crc = _tab.value.__t__[((0 : GoInt))].__t__[_p[((7 : GoInt))]] ^ _tab.value.__t__[((1 : GoInt))].__t__[_p[((6 : GoInt))]] ^ _tab.value.__t__[((2 : GoInt))].__t__[_p[((5 : GoInt))]] ^ _tab.value.__t__[((3 : GoInt))].__t__[_p[((4 : GoInt))]] ^ _tab.value.__t__[((4 : GoInt))].__t__[(_crc >> ((24 : GoUnTypedInt)))] ^ _tab.value.__t__[((5 : GoInt))].__t__[((_crc >> ((16 : GoUnTypedInt)))) & ((255 : GoUInt32))] ^ _tab.value.__t__[((6 : GoInt))].__t__[((_crc >> ((8 : GoUnTypedInt)))) & ((255 : GoUInt32))] ^ _tab.value.__t__[((7 : GoInt))].__t__[_crc & ((255 : GoUInt32))];
                _p = _p.__slice__(((8 : GoInt)));
            };
            _crc = -1 ^ _crc;
        };
        if (_p.length == ((0 : GoInt))) {
            return _crc;
        };
        return _simpleUpdate(_crc, Go.pointer(_tab.value.__t__[((0 : GoInt))]), _p);
    }
function _archAvailableIEEE():Bool {
        return false;
    }
function _archInitIEEE():Void {
        throw "not available";
    }
function _archUpdateIEEE(_crc:GoUInt32, _p:Slice<GoByte>):GoUInt32 {
        throw "not available";
    }
function _archAvailableCastagnoli():Bool {
        return false;
    }
function _archInitCastagnoli():Void {
        throw "not available";
    }
function _archUpdateCastagnoli(_crc:GoUInt32, _p:Slice<GoByte>):GoUInt32 {
        throw "not available";
    }
class T_digest_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function reset(__tmp__):Void __tmp__.reset();
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum32(__tmp__):GoUInt32 return __tmp__.sum32();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
}
