package stdgo.encoding.asn1;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
typedef T_encoder = StructType & {
    public function len():GoInt;
    public function encode(_dst:Slice<GoByte>):Void;
};
@:structInit class StructuralError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("asn1: structure error: " : GoString)) + _e.msg;
    }
    public var msg : GoString = (("" : GoString));
    public function new(?msg:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(msg) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new StructuralError(msg);
    }
    public function __set__(__tmp__) {
        this.msg = __tmp__.msg;
        return this;
    }
}
@:structInit class SyntaxError {
    public function error():GoString {
        var _e = this.__copy__();
        return (("asn1: syntax error: " : GoString)) + _e.msg;
    }
    public var msg : GoString = (("" : GoString));
    public function new(?msg:GoString) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(msg) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(msg);
    }
    public function __set__(__tmp__) {
        this.msg = __tmp__.msg;
        return this;
    }
}
@:structInit class BitString {
    public function rightAlign():Slice<GoByte> {
        var _b = this.__copy__();
        var _shift:GoUInt = (((((8 : GoInt)) - (_b.bitLength % ((8 : GoInt)))) : GoUInt));
        if (_shift == ((8 : GoUInt)) || _b.bytes.length == ((0 : GoInt))) {
            return _b.bytes;
        };
        var _a:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_b.bytes.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _a[((0 : GoInt))] = (_b.bytes[((0 : GoInt))] >> _shift);
        {
            var _i:GoInt = ((1 : GoInt));
            Go.cfor(_i < _b.bytes.length, _i++, {
                _a[_i] = (_b.bytes[_i - ((1 : GoInt))] << (((8 : GoUInt)) - _shift));
                _a[_i] = _a[_i] | ((_b.bytes[_i] >> _shift));
            });
        };
        return _a;
    }
    public function at(_i:GoInt):GoInt {
        var _b = this.__copy__();
        if (_i < ((0 : GoInt)) || _i >= _b.bitLength) {
            return ((0 : GoInt));
        };
        var _x:GoInt = _i / ((8 : GoInt));
        var _y:GoUInt = ((7 : GoUInt)) - (((_i % ((8 : GoInt))) : GoUInt));
        return (((_b.bytes[_x] >> _y) : GoInt)) & ((1 : GoInt));
    }
    public var bytes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var bitLength : GoInt = ((0 : GoInt));
    public function new(?bytes:Slice<GoUInt8>, ?bitLength:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(bytes) + " " + Go.string(bitLength) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new BitString(bytes, bitLength);
    }
    public function __set__(__tmp__) {
        this.bytes = __tmp__.bytes;
        this.bitLength = __tmp__.bitLength;
        return this;
    }
}
@:named class ObjectIdentifier {
    public function toString():GoString {
        var _oi = this.__copy__();
        var _s:GoString = (("" : GoString));
        {
            var _i;
            var _v;
            for (_obj in _oi.__t__.keyValueIterator()) {
                _i = _obj.key;
                _v = _obj.value;
                if (_i > ((0 : GoInt))) {
                    _s = _s + (".");
                };
                _s = _s + (stdgo.strconv.Strconv.itoa(_v));
            };
        };
        return _s;
    }
    public function equal(_other:ObjectIdentifier):Bool {
        var _oi = this.__copy__();
        if (_oi.__t__.length != _other.__t__.length) {
            return false;
        };
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _oi.__t__.length, _i++, {
                if (_oi.__t__[_i] != _other.__t__[_i]) {
                    return false;
                };
            });
        };
        return true;
    }
    public var __t__ : Slice<GoInt>;
    public function new(?t:Slice<GoInt>) {
        __t__ = t == null ? new Slice<GoInt>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() return new ObjectIdentifier(__t__);
    public function __append__(args:haxe.Rest<GoInt>) return new ObjectIdentifier(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new ObjectIdentifier(this.__t__.__slice__(low, high));
}
@:named class Enumerated {
    public var __t__ : GoInt;
    public function new(?t:GoInt) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Enumerated(__t__);
}
@:named class Flag {
    public var __t__ : Bool;
    public function new(?t:Bool) {
        __t__ = t == null ? false : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new Flag(__t__);
}
@:named class T_asteriskFlag {
    public var __t__ : Bool;
    public function new(?t:Bool) {
        __t__ = t == null ? false : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_asteriskFlag(__t__);
}
@:named class T_ampersandFlag {
    public var __t__ : Bool;
    public function new(?t:Bool) {
        __t__ = t == null ? false : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_ampersandFlag(__t__);
}
@:structInit class RawValue {
    public var class_ : GoInt = ((0 : GoInt));
    public var tag : GoInt = ((0 : GoInt));
    public var isCompound : Bool = false;
    public var bytes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public var fullBytes : Slice<GoUInt8> = new Slice<GoUInt8>().nil();
    public function new(?class_:GoInt, ?tag:GoInt, ?isCompound:Bool, ?bytes:Slice<GoUInt8>, ?fullBytes:Slice<GoUInt8>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(class_) + " " + Go.string(tag) + " " + Go.string(isCompound) + " " + Go.string(bytes) + " " + Go.string(fullBytes) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new RawValue(class_, tag, isCompound, bytes, fullBytes);
    }
    public function __set__(__tmp__) {
        this.class_ = __tmp__.class_;
        this.tag = __tmp__.tag;
        this.isCompound = __tmp__.isCompound;
        this.bytes = __tmp__.bytes;
        this.fullBytes = __tmp__.fullBytes;
        return this;
    }
}
@:named class RawContent {
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new RawContent(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new RawContent(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new RawContent(this.__t__.__slice__(low, high));
}
@:structInit class T_invalidUnmarshalError {
    public function error():GoString {
        var _e = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        if (_e.value.type.toString() == null.toString()) {
            return "asn1: Unmarshal recipient value is nil";
        };
        if (_e.value.type.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__) {
            return (("asn1: Unmarshal recipient value is non-pointer " : GoString)) + _e.value.type.toString();
        };
        return (("asn1: Unmarshal recipient value is nil " : GoString)) + _e.value.type.toString();
    }
    public var type : stdgo.reflect.Reflect.Type = ((null : stdgo.reflect.Reflect.Type));
    public function new(?type:stdgo.reflect.Reflect.Type) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(type) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_invalidUnmarshalError(type);
    }
    public function __set__(__tmp__) {
        this.type = __tmp__.type;
        return this;
    }
}
@:structInit class T_tagAndLength {
    public var _class : GoInt = ((0 : GoInt));
    public var _tag : GoInt = ((0 : GoInt));
    public var _length : GoInt = ((0 : GoInt));
    public var _isCompound : Bool = false;
    public function new(?_class:GoInt, ?_tag:GoInt, ?_length:GoInt, ?_isCompound:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_class) + " " + Go.string(_tag) + " " + Go.string(_length) + " " + Go.string(_isCompound) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_tagAndLength(_class, _tag, _length, _isCompound);
    }
    public function __set__(__tmp__) {
        this._class = __tmp__._class;
        this._tag = __tmp__._tag;
        this._length = __tmp__._length;
        this._isCompound = __tmp__._isCompound;
        return this;
    }
}
@:structInit class T_fieldParameters {
    public var _optional : Bool = false;
    public var _explicit : Bool = false;
    public var _application : Bool = false;
    public var _private : Bool = false;
    public var _defaultValue : Pointer<GoInt64> = new Pointer<GoInt64>().nil();
    public var _tag : Pointer<GoInt> = new Pointer<GoInt>().nil();
    public var _stringType : GoInt = ((0 : GoInt));
    public var _timeType : GoInt = ((0 : GoInt));
    public var _set : Bool = false;
    public var _omitEmpty : Bool = false;
    public function new(?_optional:Bool, ?_explicit:Bool, ?_application:Bool, ?_private:Bool, ?_defaultValue:Pointer<GoInt64>, ?_tag:Pointer<GoInt>, ?_stringType:GoInt, ?_timeType:GoInt, ?_set:Bool, ?_omitEmpty:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_optional) + " " + Go.string(_explicit) + " " + Go.string(_application) + " " + Go.string(_private) + " " + Go.string(_defaultValue) + " " + Go.string(_tag) + " " + Go.string(_stringType) + " " + Go.string(_timeType) + " " + Go.string(_set) + " " + Go.string(_omitEmpty) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_fieldParameters(_optional, _explicit, _application, _private, _defaultValue, _tag, _stringType, _timeType, _set, _omitEmpty);
    }
    public function __set__(__tmp__) {
        this._optional = __tmp__._optional;
        this._explicit = __tmp__._explicit;
        this._application = __tmp__._application;
        this._private = __tmp__._private;
        this._defaultValue = __tmp__._defaultValue;
        this._tag = __tmp__._tag;
        this._stringType = __tmp__._stringType;
        this._timeType = __tmp__._timeType;
        this._set = __tmp__._set;
        this._omitEmpty = __tmp__._omitEmpty;
        return this;
    }
}
@:named class T_byteEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _c = this.__copy__();
        _dst[((0 : GoInt))] = _c.__t__;
    }
    public function len():GoInt {
        var _c = this.__copy__();
        return ((1 : GoInt));
    }
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_byteEncoder(__t__);
}
@:named class T_bytesEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _b = this.__copy__();
        if (Go.copy(_dst, _b) != _b.__t__.length) {
            throw "internal error";
        };
    }
    public function len():GoInt {
        var _b = this.__copy__();
        return _b.__t__.length;
    }
    public var __t__ : Slice<GoUInt8>;
    public function new(?t:Slice<GoUInt8>) {
        __t__ = t == null ? new Slice<GoUInt8>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_bytesEncoder(__t__);
    public function __append__(args:haxe.Rest<GoUInt8>) return new T_bytesEncoder(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_bytesEncoder(this.__t__.__slice__(low, high));
}
@:named class T_stringEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _s = this.__copy__();
        if (Go.copy(_dst, _s) != _s.__t__.length) {
            throw "internal error";
        };
    }
    public function len():GoInt {
        var _s = this.__copy__();
        return _s.__t__.length;
    }
    public var __t__ : GoString;
    public function new(?t:GoString) {
        __t__ = t == null ? "" : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_stringEncoder(__t__);
}
@:named class T_multiEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _m = this.__copy__();
        var _off:GoInt = ((0 : GoInt));
        for (_e in _m.__t__) {
            _e.encode(_dst.__slice__(_off));
            _off = _off + (_e.len());
        };
    }
    public function len():GoInt {
        var _m = this.__copy__();
        var _size:GoInt = ((0 : GoInt));
        for (_e in _m.__t__) {
            _size = _size + (_e.len());
        };
        return _size;
    }
    public var __t__ : Slice<T_encoder>;
    public function new(?t:Slice<T_encoder>) {
        __t__ = t == null ? new Slice<T_encoder>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_multiEncoder(__t__);
    public function __append__(args:haxe.Rest<T_encoder>) return new T_multiEncoder(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_multiEncoder(this.__t__.__slice__(low, high));
}
@:named class T_setEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _s = this.__copy__();
        var _l:Slice<Slice<GoUInt8>> = new Slice<Slice<GoUInt8>>(...[for (i in 0 ... ((_s.__t__.length : GoInt)).toBasic()) new Slice<GoUInt8>().nil()]);
        {
            var _i;
            var _e;
            for (_obj in _s.__t__.keyValueIterator()) {
                _i = _obj.key;
                _e = _obj.value;
                _l[_i] = new Slice<GoUInt8>(...[for (i in 0 ... ((_e.len() : GoInt)).toBasic()) ((0 : GoUInt8))]);
                _e.encode(_l[_i]);
            };
        };
        stdgo.sort.Sort.slice(Go.toInterface(_l), function(_i:GoInt, _j:GoInt):Bool {
            return stdgo.bytes.Bytes.compare(_l[_i], _l[_j]) < ((0 : GoInt));
        });
        var _off:GoInt = ((0 : GoInt));
        for (_b in _l) {
            Go.copy(_dst.__slice__(_off), _b);
            _off = _off + (_b.length);
        };
    }
    public function len():GoInt {
        var _s = this.__copy__();
        var _size:GoInt = ((0 : GoInt));
        for (_e in _s.__t__) {
            _size = _size + (_e.len());
        };
        return _size;
    }
    public var __t__ : Slice<T_encoder>;
    public function new(?t:Slice<T_encoder>) {
        __t__ = t == null ? new Slice<T_encoder>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_setEncoder(__t__);
    public function __append__(args:haxe.Rest<T_encoder>) return new T_setEncoder(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_setEncoder(this.__t__.__slice__(low, high));
}
@:structInit class T_taggedEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value._tag.encode(_dst);
        _t.value._body.encode(_dst.__slice__(_t.value._tag.len()));
    }
    public function len():GoInt {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._tag.len() + _t.value._body.len();
    }
    public var _scratch : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) ((0 : GoUInt8))]);
    public var _tag : T_encoder = ((null : T_encoder));
    public var _body : T_encoder = ((null : T_encoder));
    public function new(?_scratch:GoArray<GoUInt8>, ?_tag:T_encoder, ?_body:T_encoder) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_scratch) + " " + Go.string(_tag) + " " + Go.string(_body) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_taggedEncoder(_scratch, _tag, _body);
    }
    public function __set__(__tmp__) {
        this._scratch = __tmp__._scratch;
        this._tag = __tmp__._tag;
        this._body = __tmp__._body;
        return this;
    }
}
@:named class T_int64Encoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _i = this.__copy__();
        var _n:GoInt = _i.len();
        {
            var _j:GoInt = ((0 : GoInt));
            Go.cfor(_j < _n, _j++, {
                _dst[_j] = (new T_int64Encoder(_i.__t__ >> ((((_n - ((1 : GoInt)) - _j) * ((8 : GoInt))) : GoUInt)))).__t__;
            });
        };
    }
    public function len():GoInt {
        var _i = this.__copy__();
        var _n:GoInt = ((1 : GoInt));
        while (_i.__t__ > ((127 : GoInt64))) {
            _n++;
            _i = (new T_int64Encoder(_i.__t__ >> (((8 : GoUnTypedInt)))));
        };
        while (_i.__t__ < -((128 : GoUnTypedInt))) {
            _n++;
            _i = (new T_int64Encoder(_i.__t__ >> (((8 : GoUnTypedInt)))));
        };
        return _n;
    }
    public var __t__ : GoInt64;
    public function new(?t:GoInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_int64Encoder(__t__);
}
@:named @:structInit class T_bitStringEncoder extends BitString {
    public function encode(_dst:Slice<GoByte>):Void {
        var _b = this.__copy__();
        _dst[((0 : GoInt))] = ((((((8 : GoInt)) - _b.bitLength % ((8 : GoInt))) % ((8 : GoInt))) : GoByte));
        if (Go.copy(_dst.__slice__(((1 : GoInt))), _b.bytes) != _b.bytes.length) {
            throw "internal error";
        };
    }
    public function len():GoInt {
        var _b = this.__copy__();
        return _b.bytes.length + ((1 : GoInt));
    }
    public function new(?bytes, ?bitLength) super(bytes, bitLength);
    public override function __copy__() return new T_bitStringEncoder(bytes, bitLength);
}
@:named class T_oidEncoder {
    public function encode(_dst:Slice<GoByte>):Void {
        var _oid = this.__copy__();
        _dst = _appendBase128Int(_dst.__slice__(0, ((0 : GoInt))), (((_oid.__t__[((0 : GoInt))] * ((40 : GoInt)) + _oid.__t__[((1 : GoInt))]) : GoInt64)));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < _oid.__t__.length, _i++, {
                _dst = _appendBase128Int(_dst, ((_oid.__t__[_i] : GoInt64)));
            });
        };
    }
    public function len():GoInt {
        var _oid = this.__copy__();
        var _l:GoInt = _base128IntLength((((_oid.__t__[((0 : GoInt))] * ((40 : GoInt)) + _oid.__t__[((1 : GoInt))]) : GoInt64)));
        {
            var _i:GoInt = ((2 : GoInt));
            Go.cfor(_i < _oid.__t__.length, _i++, {
                _l = _l + (_base128IntLength(((_oid.__t__[_i] : GoInt64))));
            });
        };
        return _l;
    }
    public var __t__ : Slice<GoInt>;
    public function new(?t:Slice<GoInt>) {
        __t__ = t == null ? new Slice<GoInt>().nil() : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_oidEncoder(__t__);
    public function __append__(args:haxe.Rest<GoInt>) return new T_oidEncoder(this.__t__.__append__(...args));
    public function __slice__(low:GoInt, high:GoInt = -1) return new T_oidEncoder(this.__t__.__slice__(low, high));
}
final classPrivate : GoInt64 = ((3 : GoUnTypedInt));
final tagUTCTime : GoInt64 = ((23 : GoUnTypedInt));
var _flagType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new Flag(false)));
final tagUTF8String : GoInt64 = ((12 : GoUnTypedInt));
final _allowAmpersand : T_ampersandFlag = new T_ampersandFlag(true);
var _timeType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new stdgo.time.Time.Time().__copy__()));
final tagInteger : GoInt64 = ((2 : GoUnTypedInt));
var _byte00Encoder : T_encoder = new T_byteEncoder(((0 : GoUInt8)));
final tagIA5String : GoInt64 = ((22 : GoUnTypedInt));
final tagNull : GoInt64 = ((5 : GoUnTypedInt));
final tagBMPString : GoInt64 = ((30 : GoUnTypedInt));
var _bigOne : Pointer<stdgo.math.big.Big.Int_> = stdgo.math.big.Big.newInt(((1 : GoInt64)));
final tagGeneralString : GoInt64 = ((27 : GoUnTypedInt));
final tagT61String : GoInt64 = ((20 : GoUnTypedInt));
final classApplication : GoInt64 = ((1 : GoUnTypedInt));
var _bitStringType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new BitString().__copy__()));
var _enumeratedType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new Enumerated(((0 : GoInt)))));
final tagSequence : GoInt64 = ((16 : GoUnTypedInt));
final tagGeneralizedTime : GoInt64 = ((24 : GoUnTypedInt));
final tagBitString : GoInt64 = ((3 : GoUnTypedInt));
final tagEnum : GoInt64 = ((10 : GoUnTypedInt));
var _rawValueType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new RawValue().__copy__()));
var _objectIdentifierType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(new ObjectIdentifier(new Slice<GoInt>()).__copy__()));
final classContextSpecific : GoInt64 = ((2 : GoUnTypedInt));
final _rejectAmpersand : T_ampersandFlag = new T_ampersandFlag(false);
var nullRawValue : RawValue = (({ tag : tagNull, class_ : 0, isCompound : false, bytes : new Slice<GoUInt8>().nil(), fullBytes : new Slice<GoUInt8>().nil() } : RawValue)).__copy__();
final _rejectAsterisk : T_asteriskFlag = new T_asteriskFlag(false);
final _allowAsterisk : T_asteriskFlag = new T_asteriskFlag(true);
final tagPrintableString : GoInt64 = ((19 : GoUnTypedInt));
final tagBoolean : GoInt64 = ((1 : GoUnTypedInt));
var _byteFFEncoder : T_encoder = new T_byteEncoder(((255 : GoUInt8)));
final tagOID : GoInt64 = ((6 : GoUnTypedInt));
final tagSet : GoInt64 = ((17 : GoUnTypedInt));
final classUniversal : GoInt64 = ((0 : GoUnTypedInt));
var nullBytes : Slice<GoUInt8> = new Slice<GoUInt8>(tagNull, ((0 : GoUInt8)));
var _rawContentsType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(((new RawContent() : RawContent)).__copy__()));
final tagOctetString : GoInt64 = ((4 : GoUnTypedInt));
final tagNumericString : GoInt64 = ((18 : GoUnTypedInt));
var _bigIntType : stdgo.reflect.Reflect.Type = stdgo.reflect.Reflect.typeOf(Go.toInterface(Go.pointer(new stdgo.math.big.Big.Int_())));
function _parseBool(_bytes:Slice<GoByte>):{ var _0 : Bool; var _1 : Error; } {
        var _ret:Bool = false, _err:Error = ((null : stdgo.Error));
        if (_bytes.length != ((1 : GoInt))) {
            _err = new SyntaxError("invalid boolean").__copy__();
            return { _0 : _ret, _1 : _err };
        };
        if (_bytes[((0 : GoInt))] == ((0 : GoUInt8))) {
            _ret = false;
        } else if (_bytes[((0 : GoInt))] == ((255 : GoUInt8))) {
            _ret = true;
        } else {
            _err = new SyntaxError("invalid boolean").__copy__();
        };
        return { _0 : _ret, _1 : _err };
    }
/**
    // checkInteger returns nil if the given bytes are a valid DER-encoded
    // INTEGER and an error otherwise.
**/
function _checkInteger(_bytes:Slice<GoByte>):Error {
        if (_bytes.length == ((0 : GoInt))) {
            return new StructuralError("empty integer").__copy__();
        };
        if (_bytes.length == ((1 : GoInt))) {
            return ((null : stdgo.Error));
        };
        if ((_bytes[((0 : GoInt))] == ((0 : GoUInt8)) && _bytes[((1 : GoInt))] & ((128 : GoUInt8)) == ((0 : GoUInt8))) || (_bytes[((0 : GoInt))] == ((255 : GoUInt8)) && _bytes[((1 : GoInt))] & ((128 : GoUInt8)) == ((128 : GoUInt8)))) {
            return new StructuralError("integer not minimally-encoded").__copy__();
        };
        return ((null : stdgo.Error));
    }
/**
    // parseInt64 treats the given bytes as a big-endian, signed integer and
    // returns the result.
**/
function _parseInt64(_bytes:Slice<GoByte>):{ var _0 : GoInt64; var _1 : Error; } {
        var _ret:GoInt64 = ((0 : GoInt64)), _err:Error = ((null : stdgo.Error));
        _err = _checkInteger(_bytes);
        if (_err != null) {
            return { _0 : _ret, _1 : _err };
        };
        if (_bytes.length > ((8 : GoInt))) {
            _err = new StructuralError("integer too large").__copy__();
            return { _0 : _ret, _1 : _err };
        };
        {
            var _bytesRead:GoInt = ((0 : GoInt));
            Go.cfor(_bytesRead < _bytes.length, _bytesRead++, {
                _ret = (_ret << (((8 : GoUnTypedInt))));
                _ret = _ret | (((_bytes[_bytesRead] : GoInt64)));
            });
        };
        _ret = (_ret << (((64 : GoUInt8)) - ((_bytes.length : GoUInt8)) * ((8 : GoUInt8))));
        _ret = (_ret >> (((64 : GoUInt8)) - ((_bytes.length : GoUInt8)) * ((8 : GoUInt8))));
        return { _0 : _ret, _1 : _err };
    }
/**
    // parseInt treats the given bytes as a big-endian, signed integer and returns
    // the result.
**/
function _parseInt32(_bytes:Slice<GoByte>):{ var _0 : GoInt32; var _1 : Error; } {
        {
            var _err:stdgo.Error = _checkInteger(_bytes);
            if (_err != null) {
                return { _0 : ((0 : GoInt32)), _1 : _err };
            };
        };
        var __tmp__ = _parseInt64(_bytes), _ret64:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : ((0 : GoInt32)), _1 : _err };
        };
        if (_ret64 != ((((_ret64 : GoInt32)) : GoInt64))) {
            return { _0 : ((0 : GoInt32)), _1 : new StructuralError("integer too large").__copy__() };
        };
        return { _0 : ((_ret64 : GoInt32)), _1 : ((null : stdgo.Error)) };
    }
/**
    // parseBigInt treats the given bytes as a big-endian, signed integer and returns
    // the result.
**/
function _parseBigInt(_bytes:Slice<GoByte>):{ var _0 : Pointer<stdgo.math.big.Big.Int_>; var _1 : Error; } {
        {
            var _err:stdgo.Error = _checkInteger(_bytes);
            if (_err != null) {
                return { _0 : new Pointer<stdgo.math.big.Big.Int_>().nil(), _1 : _err };
            };
        };
        var _ret:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_());
        if (_bytes.length > ((0 : GoInt)) && _bytes[((0 : GoInt))] & ((128 : GoUInt8)) == ((128 : GoUInt8))) {
            var _notBytes:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_bytes.length : GoInt)).toBasic()) ((0 : GoUInt8))]);
            {
                var _i;
                for (_obj in _notBytes.keyValueIterator()) {
                    _i = _obj.key;
                    _notBytes[_i] = -1 ^ _bytes[_i];
                };
            };
            _ret.value.setBytes(_notBytes);
            _ret.value.add(_ret, _bigOne);
            _ret.value.neg(_ret);
            return { _0 : _ret, _1 : ((null : stdgo.Error)) };
        };
        _ret.value.setBytes(_bytes);
        return { _0 : _ret, _1 : ((null : stdgo.Error)) };
    }
/**
    // parseBitString parses an ASN.1 bit string from the given byte slice and returns it.
**/
function _parseBitString(_bytes:Slice<GoByte>):{ var _0 : BitString; var _1 : Error; } {
        var _ret:BitString = new BitString(), _err:Error = ((null : stdgo.Error));
        if (_bytes.length == ((0 : GoInt))) {
            _err = new SyntaxError("zero length BIT STRING").__copy__();
            return { _0 : _ret, _1 : _err };
        };
        var _paddingBits:GoInt = ((_bytes[((0 : GoInt))] : GoInt));
        if (_paddingBits > ((7 : GoInt)) || _bytes.length == ((1 : GoInt)) && _paddingBits > ((0 : GoInt)) || _bytes[_bytes.length - ((1 : GoInt))] & (((((1 : GoUInt8)) << _bytes[((0 : GoInt))])) - ((1 : GoUInt8))) != ((0 : GoUInt8))) {
            _err = new SyntaxError("invalid padding bits in BIT STRING").__copy__();
            return { _0 : _ret, _1 : _err };
        };
        _ret.bitLength = (_bytes.length - ((1 : GoInt))) * ((8 : GoInt)) - _paddingBits;
        _ret.bytes = _bytes.__slice__(((1 : GoInt)));
        return { _0 : _ret, _1 : _err };
    }
/**
    // parseObjectIdentifier parses an OBJECT IDENTIFIER from the given bytes and
    // returns it. An object identifier is a sequence of variable length integers
    // that are assigned in a hierarchy.
**/
function _parseObjectIdentifier(_bytes:Slice<GoByte>):{ var _0 : ObjectIdentifier; var _1 : Error; } {
        var _s:ObjectIdentifier = new ObjectIdentifier(), _err:Error = ((null : stdgo.Error));
        if (_bytes.length == ((0 : GoInt))) {
            _err = new SyntaxError("zero length OBJECT IDENTIFIER").__copy__();
            return { _0 : _s, _1 : _err };
        };
        _s = new ObjectIdentifier(new Slice<GoInt>(...[for (i in 0 ... ((_bytes.length + ((1 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt))]));
        var __tmp__ = _parseBase128Int(_bytes, ((0 : GoInt))), _v:GoInt = __tmp__._0, _offset:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _s, _1 : _err };
        };
        if (_v < ((80 : GoInt))) {
            _s.__t__[((0 : GoInt))] = _v / ((40 : GoInt));
            _s.__t__[((1 : GoInt))] = _v % ((40 : GoInt));
        } else {
            _s.__t__[((0 : GoInt))] = ((2 : GoInt));
            _s.__t__[((1 : GoInt))] = _v - ((80 : GoInt));
        };
        var _i:GoInt = ((2 : GoInt));
        Go.cfor(_offset < _bytes.length, _i++, {
            {
                var __tmp__ = _parseBase128Int(_bytes, _offset);
                _v = __tmp__._0;
                _offset = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _s, _1 : _err };
            };
            _s.__t__[_i] = _v;
        });
        _s = _s.__slice__(((0 : GoInt)), _i).__copy__();
        return { _0 : _s, _1 : _err };
    }
/**
    // parseBase128Int parses a base-128 encoded int from the given offset in the
    // given byte slice. It returns the value and the new offset.
**/
function _parseBase128Int(_bytes:Slice<GoByte>, _initOffset:GoInt):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _ret:GoInt = ((0 : GoInt)), _offset:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _offset = _initOffset;
        var _ret64:GoInt64 = ((0 : GoInt64));
        {
            var _shifted:GoInt = ((0 : GoInt));
            Go.cfor(_offset < _bytes.length, _shifted++, {
                if (_shifted == ((5 : GoInt))) {
                    _err = new StructuralError("base 128 integer too large").__copy__();
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
                _ret64 = (_ret64 << (((7 : GoUnTypedInt))));
                var _b:GoUInt8 = _bytes[_offset];
                if (_shifted == ((0 : GoInt)) && _b == ((128 : GoUInt8))) {
                    _err = new SyntaxError("integer is not minimally encoded").__copy__();
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
                _ret64 = _ret64 | ((((_b & ((127 : GoUInt8))) : GoInt64)));
                _offset++;
                if (_b & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                    _ret = ((_ret64 : GoInt));
                    if (_ret64 > stdgo.math.Math.maxInt32) {
                        _err = new StructuralError("base 128 integer too large").__copy__();
                    };
                    return { _0 : _ret, _1 : _offset, _2 : _err };
                };
            });
        };
        _err = new SyntaxError("truncated base 128 integer").__copy__();
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
function _parseUTCTime(_bytes:Slice<GoByte>):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        var _ret:stdgo.time.Time.Time = new stdgo.time.Time.Time(), _err:Error = ((null : stdgo.Error));
        var _s:GoString = ((_bytes : GoString));
        var _formatStr:GoString = "0601021504Z0700";
        {
            var __tmp__ = stdgo.time.Time.parse(_formatStr, _s);
            _ret = __tmp__._0.__copy__();
            _err = __tmp__._1;
        };
        if (_err != null) {
            _formatStr = "060102150405Z0700";
            {
                var __tmp__ = stdgo.time.Time.parse(_formatStr, _s);
                _ret = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
        };
        if (_err != null) {
            return { _0 : _ret, _1 : _err };
        };
        {
            var _serialized:GoString = _ret.format(_formatStr);
            if (_serialized != _s) {
                _err = stdgo.fmt.Fmt.errorf("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q", Go.toInterface(_s), Go.toInterface(_serialized));
                return { _0 : _ret, _1 : _err };
            };
        };
        if (_ret.year() >= ((2050 : GoInt))) {
            _ret = _ret.addDate(-((100 : GoUnTypedInt)), ((0 : GoInt)), ((0 : GoInt))).__copy__();
        };
        return { _0 : _ret, _1 : _err };
    }
/**
    // parseGeneralizedTime parses the GeneralizedTime from the given byte slice
    // and returns the resulting time.
**/
function _parseGeneralizedTime(_bytes:Slice<GoByte>):{ var _0 : stdgo.time.Time.Time; var _1 : Error; } {
        var _ret:stdgo.time.Time.Time = new stdgo.time.Time.Time(), _err:Error = ((null : stdgo.Error));
        final _formatStr:GoString = "20060102150405Z0700";
        var _s:GoString = ((_bytes : GoString));
        {
            {
                var __tmp__ = stdgo.time.Time.parse(_formatStr, _s);
                _ret = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _err };
            };
        };
        {
            var _serialized:GoString = _ret.format(_formatStr);
            if (_serialized != _s) {
                _err = stdgo.fmt.Fmt.errorf("asn1: time did not serialize back to the original value and may be invalid: given %q, but serialized as %q", Go.toInterface(_s), Go.toInterface(_serialized));
            };
        };
        return { _0 : _ret, _1 : _err };
    }
/**
    // parseNumericString parses an ASN.1 NumericString from the given byte array
    // and returns it.
**/
function _parseNumericString(_bytes:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        var _ret:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        for (_b in _bytes) {
            if (!_isNumeric(_b)) {
                return { _0 : "", _1 : new SyntaxError("NumericString contains invalid character").__copy__() };
            };
        };
        return { _0 : ((_bytes : GoString)), _1 : ((null : stdgo.Error)) };
    }
/**
    // isNumeric reports whether the given b is in the ASN.1 NumericString set.
**/
function _isNumeric(_b:GoByte):Bool {
        return (("0".code : GoRune)) <= _b && _b <= (("9".code : GoRune)) || _b == ((" ".code : GoRune));
    }
/**
    // parsePrintableString parses an ASN.1 PrintableString from the given byte
    // array and returns it.
**/
function _parsePrintableString(_bytes:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        var _ret:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        for (_b in _bytes) {
            if (!_isPrintable(_b, _allowAsterisk, _allowAmpersand)) {
                _err = new SyntaxError("PrintableString contains invalid character").__copy__();
                return { _0 : _ret, _1 : _err };
            };
        };
        _ret = ((_bytes : GoString));
        return { _0 : _ret, _1 : _err };
    }
/**
    // isPrintable reports whether the given b is in the ASN.1 PrintableString set.
    // If asterisk is allowAsterisk then '*' is also allowed, reflecting existing
    // practice. If ampersand is allowAmpersand then '&' is allowed as well.
**/
function _isPrintable(_b:GoByte, _asterisk:T_asteriskFlag, _ampersand:T_ampersandFlag):Bool {
        return (("a".code : GoRune)) <= _b && _b <= (("z".code : GoRune)) || (("A".code : GoRune)) <= _b && _b <= (("Z".code : GoRune)) || (("0".code : GoRune)) <= _b && _b <= (("9".code : GoRune)) || (("\'".code : GoRune)) <= _b && _b <= ((")".code : GoRune)) || (("+".code : GoRune)) <= _b && _b <= (("/".code : GoRune)) || _b == ((" ".code : GoRune)) || _b == ((":".code : GoRune)) || _b == (("=".code : GoRune)) || _b == (("?".code : GoRune)) || (_asterisk.__t__ && _b == (("*".code : GoRune))) || (_ampersand.__t__ && _b == (("&".code : GoRune)));
    }
/**
    // parseIA5String parses an ASN.1 IA5String (ASCII string) from the given
    // byte slice and returns it.
**/
function _parseIA5String(_bytes:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        var _ret:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        for (_b in _bytes) {
            if (_b >= stdgo.unicode.utf8.Utf8.runeSelf) {
                _err = new SyntaxError("IA5String contains invalid character").__copy__();
                return { _0 : _ret, _1 : _err };
            };
        };
        _ret = ((_bytes : GoString));
        return { _0 : _ret, _1 : _err };
    }
/**
    // parseT61String parses an ASN.1 T61String (8-bit clean string) from the given
    // byte slice and returns it.
**/
function _parseT61String(_bytes:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        var _ret:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        return { _0 : ((_bytes : GoString)), _1 : ((null : stdgo.Error)) };
    }
/**
    // parseUTF8String parses an ASN.1 UTF8String (raw UTF-8) from the given byte
    // array and returns it.
**/
function _parseUTF8String(_bytes:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        var _ret:GoString = (("" : GoString)), _err:Error = ((null : stdgo.Error));
        if (!stdgo.unicode.utf8.Utf8.valid(_bytes)) {
            return { _0 : "", _1 : stdgo.errors.Errors.new_("asn1: invalid UTF-8 string") };
        };
        return { _0 : ((_bytes : GoString)), _1 : ((null : stdgo.Error)) };
    }
/**
    // parseBMPString parses an ASN.1 BMPString (Basic Multilingual Plane of
    // ISO/IEC/ITU 10646-1) from the given byte slice and returns it.
**/
function _parseBMPString(_bmpString:Slice<GoByte>):{ var _0 : GoString; var _1 : Error; } {
        if (_bmpString.length % ((2 : GoInt)) != ((0 : GoInt))) {
            return { _0 : "", _1 : stdgo.errors.Errors.new_("pkcs12: odd-length BMP string") };
        };
        {
            var _l:GoInt = _bmpString.length;
            if (_l >= ((2 : GoInt)) && _bmpString[_l - ((1 : GoInt))] == ((0 : GoUInt8)) && _bmpString[_l - ((2 : GoInt))] == ((0 : GoUInt8))) {
                _bmpString = _bmpString.__slice__(0, _l - ((2 : GoInt)));
            };
        };
        var _s:Slice<GoUInt16> = new Slice<GoUInt16>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt16))]).setCap(((_bmpString.length / ((2 : GoInt)) : GoInt)).toBasic());
        while (_bmpString.length > ((0 : GoInt))) {
            _s = _s.__append__((((_bmpString[((0 : GoInt))] : GoUInt16)) << ((8 : GoUnTypedInt))) + ((_bmpString[((1 : GoInt))] : GoUInt16)));
            _bmpString = _bmpString.__slice__(((2 : GoInt)));
        };
        return { _0 : ((stdgo.unicode.utf16.Utf16.decode(_s) : GoString)), _1 : ((null : stdgo.Error)) };
    }
/**
    // parseTagAndLength parses an ASN.1 tag and length pair from the given offset
    // into a byte slice. It returns the parsed data and the new offset. SET and
    // SET OF (tag 17) are mapped to SEQUENCE and SEQUENCE OF (tag 16) since we
    // don't distinguish between ordered and unordered objects in this code.
**/
function _parseTagAndLength(_bytes:Slice<GoByte>, _initOffset:GoInt):{ var _0 : T_tagAndLength; var _1 : GoInt; var _2 : Error; } {
        var _ret:T_tagAndLength = new T_tagAndLength(), _offset:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _offset = _initOffset;
        if (_offset >= _bytes.length) {
            _err = stdgo.errors.Errors.new_("asn1: internal error in parseTagAndLength");
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        var _b:GoUInt8 = _bytes[_offset];
        _offset++;
        _ret._class = (((_b >> ((6 : GoUnTypedInt))) : GoInt));
        _ret._isCompound = _b & ((32 : GoUInt8)) == ((32 : GoUInt8));
        _ret._tag = (((_b & ((31 : GoUInt8))) : GoInt));
        if (_ret._tag == ((31 : GoInt))) {
            {
                var __tmp__ = _parseBase128Int(_bytes, _offset);
                _ret._tag = __tmp__._0;
                _offset = __tmp__._1;
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            if (_ret._tag < ((31 : GoInt))) {
                _err = new SyntaxError("non-minimal tag").__copy__();
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        if (_offset >= _bytes.length) {
            _err = new SyntaxError("truncated tag or length").__copy__();
            return { _0 : _ret, _1 : _offset, _2 : _err };
        };
        _b = _bytes[_offset];
        _offset++;
        if (_b & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
            _ret._length = (((_b & ((127 : GoUInt8))) : GoInt));
        } else {
            var _numBytes:GoInt = (((_b & ((127 : GoUInt8))) : GoInt));
            if (_numBytes == ((0 : GoInt))) {
                _err = new SyntaxError("indefinite length found (not DER)").__copy__();
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
            _ret._length = ((0 : GoInt));
            {
                var _i:GoInt = ((0 : GoInt));
                Go.cfor(_i < _numBytes, _i++, {
                    if (_offset >= _bytes.length) {
                        _err = new SyntaxError("truncated tag or length").__copy__();
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
                    _b = _bytes[_offset];
                    _offset++;
                    if (_ret._length >= (((1 : GoUnTypedInt)) << ((23 : GoUnTypedInt)))) {
                        _err = new StructuralError("length too large").__copy__();
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
                    _ret._length = (_ret._length << (((8 : GoUnTypedInt))));
                    _ret._length = _ret._length | (((_b : GoInt)));
                    if (_ret._length == ((0 : GoInt))) {
                        _err = new StructuralError("superfluous leading zeros in length").__copy__();
                        return { _0 : _ret, _1 : _offset, _2 : _err };
                    };
                });
            };
            if (_ret._length < ((128 : GoInt))) {
                _err = new StructuralError("non-minimal length").__copy__();
                return { _0 : _ret, _1 : _offset, _2 : _err };
            };
        };
        return { _0 : _ret, _1 : _offset, _2 : _err };
    }
/**
    // parseSequenceOf is used for SEQUENCE OF and SET OF values. It tries to parse
    // a number of ASN.1 values from the given byte slice and returns them as a
    // slice of Go values of the given type.
**/
function _parseSequenceOf(_bytes:Slice<GoByte>, _sliceType:stdgo.reflect.Reflect.Type, _elemType:stdgo.reflect.Reflect.Type):{ var _0 : stdgo.reflect.Reflect.Value; var _1 : Error; } {
        var _ret:stdgo.reflect.Reflect.Value = new stdgo.reflect.Reflect.Value(), _err:Error = ((null : stdgo.Error));
        var __tmp__ = _getUniversalType(_elemType), _matchAny:Bool = __tmp__._0, _expectedTag:GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok) {
            _err = new StructuralError("unknown Go type for slice").__copy__();
            return { _0 : _ret, _1 : _err };
        };
        var _numElements:GoInt = ((0 : GoInt));
        {
            var _offset:GoInt = ((0 : GoInt));
            while (_offset < _bytes.length) {
                var _t:T_tagAndLength = new T_tagAndLength();
                {
                    var __tmp__ = _parseTagAndLength(_bytes, _offset);
                    _t = __tmp__._0.__copy__();
                    _offset = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : _ret, _1 : _err };
                };
                if (_t._tag == tagIA5String || _t._tag == tagGeneralString || _t._tag == tagT61String || _t._tag == tagUTF8String || _t._tag == tagNumericString || _t._tag == tagBMPString) {
                    _t._tag = tagPrintableString;
                } else if (_t._tag == tagGeneralizedTime || _t._tag == tagUTCTime) {
                    _t._tag = tagUTCTime;
                };
                if (!_matchAny && (_t._class != classUniversal || _t._isCompound != _compoundType || _t._tag != _expectedTag)) {
                    _err = new StructuralError("sequence tag mismatch").__copy__();
                    return { _0 : _ret, _1 : _err };
                };
                if (_invalidLength(_offset, _t._length, _bytes.length)) {
                    _err = new SyntaxError("truncated sequence").__copy__();
                    return { _0 : _ret, _1 : _err };
                };
                _offset = _offset + (_t._length);
                _numElements++;
            };
        };
        _ret = stdgo.reflect.Reflect.makeSlice(_sliceType, _numElements, _numElements).__copy__();
        var _params:T_fieldParameters = new T_fieldParameters().__copy__();
        var _offset:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _numElements, _i++, {
                {
                    var __tmp__ = _parseField(_ret.index(_i).__copy__(), _bytes, _offset, _params.__copy__());
                    _offset = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    return { _0 : _ret, _1 : _err };
                };
            });
        };
        return { _0 : _ret, _1 : _err };
    }
/**
    // invalidLength reports whether offset + length > sliceLength, or if the
    // addition would overflow.
**/
function _invalidLength(_offset:GoInt, _length:GoInt, _sliceLength:GoInt):Bool {
        return _offset + _length < _offset || _offset + _length > _sliceLength;
    }
/**
    // parseField is the main parsing function. Given a byte slice and an offset
    // into the array, it will try to parse a suitable ASN.1 value out and store it
    // in the given Value.
**/
function _parseField(_v:stdgo.reflect.Reflect.Value, _bytes:Slice<GoByte>, _initOffset:GoInt, _params:T_fieldParameters):{ var _0 : GoInt; var _1 : Error; } {
        var _offset:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _offset = _initOffset;
        var _fieldType:stdgo.reflect.Reflect.Type = _v.type();
        if (_offset == _bytes.length) {
            if (!_setDefaultValue(_v.__copy__(), _params.__copy__())) {
                _err = new SyntaxError("sequence truncated").__copy__();
            };
            return { _0 : _offset, _1 : _err };
        };
        {
            var _ifaceType:stdgo.reflect.Reflect.Type = _fieldType;
            if (_ifaceType.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__ && _ifaceType.numMethod() == ((0 : GoInt))) {
                var _t:T_tagAndLength = new T_tagAndLength();
                {
                    var __tmp__ = _parseTagAndLength(_bytes, _offset);
                    _t = __tmp__._0.__copy__();
                    _offset = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : _offset, _1 : _err };
                };
                if (_invalidLength(_offset, _t._length, _bytes.length)) {
                    _err = new SyntaxError("data truncated").__copy__();
                    return { _0 : _offset, _1 : _err };
                };
                var _result:AnyInterface = ((null : AnyInterface));
                if (!_t._isCompound && _t._class == classUniversal) {
                    var _innerBytes:Slice<GoUInt8> = _bytes.__slice__(_offset, _offset + _t._length);
                    if (_t._tag == tagPrintableString) {
                        {
                            var __tmp__ = _parsePrintableString(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagNumericString) {
                        {
                            var __tmp__ = _parseNumericString(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagIA5String) {
                        {
                            var __tmp__ = _parseIA5String(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagT61String) {
                        {
                            var __tmp__ = _parseT61String(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagUTF8String) {
                        {
                            var __tmp__ = _parseUTF8String(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagInteger) {
                        {
                            var __tmp__ = _parseInt64(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagBitString) {
                        {
                            var __tmp__ = _parseBitString(_innerBytes);
                            _result = Go.toInterface(__tmp__._0.__copy__());
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagOID) {
                        {
                            var __tmp__ = _parseObjectIdentifier(_innerBytes);
                            _result = Go.toInterface(__tmp__._0.__copy__());
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagUTCTime) {
                        {
                            var __tmp__ = _parseUTCTime(_innerBytes);
                            _result = Go.toInterface(__tmp__._0.__copy__());
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagGeneralizedTime) {
                        {
                            var __tmp__ = _parseGeneralizedTime(_innerBytes);
                            _result = Go.toInterface(__tmp__._0.__copy__());
                            _err = __tmp__._1;
                        };
                    } else if (_t._tag == tagOctetString) {
                        _result = Go.toInterface(_innerBytes);
                    } else if (_t._tag == tagBMPString) {
                        {
                            var __tmp__ = _parseBMPString(_innerBytes);
                            _result = Go.toInterface(__tmp__._0);
                            _err = __tmp__._1;
                        };
                    } else {};
                };
                _offset = _offset + (_t._length);
                if (_err != null) {
                    return { _0 : _offset, _1 : _err };
                };
                if (_result != null) {
                    _v.set(stdgo.reflect.Reflect.valueOf(Go.toInterface(_result)).__copy__());
                };
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = _parseTagAndLength(_bytes, _offset), _t:T_tagAndLength = __tmp__._0, _offset:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _offset, _1 : _err };
        };
        if (_params._explicit) {
            var _expectedClass:GoInt = classContextSpecific;
            if (_params._application) {
                _expectedClass = classApplication;
            };
            if (_offset == _bytes.length) {
                _err = new StructuralError("explicit tag has no child").__copy__();
                return { _0 : _offset, _1 : _err };
            };
            if (_t._class == _expectedClass && _t._tag == _params._tag.value && (_t._length == ((0 : GoInt)) || _t._isCompound)) {
                if (_fieldType.toString() == _rawValueType.toString()) {} else if (_t._length > ((0 : GoInt))) {
                    {
                        var __tmp__ = _parseTagAndLength(_bytes, _offset);
                        _t = __tmp__._0.__copy__();
                        _offset = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : _offset, _1 : _err };
                    };
                } else {
                    if (!(_fieldType.toString() == _flagType.toString())) {
                        _err = new StructuralError("zero length explicit tag was not an asn1.Flag").__copy__();
                        return { _0 : _offset, _1 : _err };
                    };
                    _v.setBool(true);
                    return { _0 : _offset, _1 : _err };
                };
            } else {
                var _ok:Bool = _setDefaultValue(_v.__copy__(), _params.__copy__());
                if (_ok) {
                    _offset = _initOffset;
                } else {
                    _err = new StructuralError("explicitly tagged member didn\'t match").__copy__();
                };
                return { _0 : _offset, _1 : _err };
            };
        };
        var __tmp__ = _getUniversalType(_fieldType), _matchAny:Bool = __tmp__._0, _universalTag:GoInt = __tmp__._1, _compoundType:Bool = __tmp__._2, _ok1:Bool = __tmp__._3;
        if (!_ok1) {
            _err = new StructuralError(stdgo.fmt.Fmt.sprintf("unknown Go type: %v", Go.toInterface(_fieldType))).__copy__();
            return { _0 : _offset, _1 : _err };
        };
        if (_universalTag == tagPrintableString) {
            if (_t._class == classUniversal) {
                if (_t._tag == tagIA5String || _t._tag == tagGeneralString || _t._tag == tagT61String || _t._tag == tagUTF8String || _t._tag == tagNumericString || _t._tag == tagBMPString) {
                    _universalTag = _t._tag;
                };
            } else if (_params._stringType != ((0 : GoInt))) {
                _universalTag = _params._stringType;
            };
        };
        if (_universalTag == tagUTCTime && _t._tag == tagGeneralizedTime && _t._class == classUniversal) {
            _universalTag = tagGeneralizedTime;
        };
        if (_params._set) {
            _universalTag = tagSet;
        };
        var _matchAnyClassAndTag:Bool = _matchAny;
        var _expectedClass:GoInt = classUniversal;
        var _expectedTag:GoInt = _universalTag;
        if (!_params._explicit && _params._tag != null && !_params._tag.isNil()) {
            _expectedClass = classContextSpecific;
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (!_params._explicit && _params._application && _params._tag != null && !_params._tag.isNil()) {
            _expectedClass = classApplication;
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (!_params._explicit && _params._private && _params._tag != null && !_params._tag.isNil()) {
            _expectedClass = classPrivate;
            _expectedTag = _params._tag.value;
            _matchAnyClassAndTag = false;
        };
        if (!_matchAnyClassAndTag && (_t._class != _expectedClass || _t._tag != _expectedTag) || (!_matchAny && _t._isCompound != _compoundType)) {
            var _ok:Bool = _setDefaultValue(_v.__copy__(), _params.__copy__());
            if (_ok) {
                _offset = _initOffset;
            } else {
                _err = new StructuralError(stdgo.fmt.Fmt.sprintf("tags don\'t match (%d vs %+v) %+v %s @%d", Go.toInterface(_expectedTag), Go.toInterface(_t.__copy__()), Go.toInterface(_params.__copy__()), Go.toInterface(_fieldType.name()), Go.toInterface(_offset))).__copy__();
            };
            return { _0 : _offset, _1 : _err };
        };
        if (_invalidLength(_offset, _t._length, _bytes.length)) {
            _err = new SyntaxError("data truncated").__copy__();
            return { _0 : _offset, _1 : _err };
        };
        var _innerBytes:Slice<GoUInt8> = _bytes.__slice__(_offset, _offset + _t._length);
        _offset = _offset + (_t._length);
        if (Go.assertable(((_v.addr().interface_() : Pointer<RawValue>)))) {
            var _v:Pointer<RawValue> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            _v.value = new RawValue(_t._class, _t._tag, _t._isCompound, _innerBytes, _bytes.__slice__(_initOffset, _offset)).__copy__();
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<ObjectIdentifier>)))) {
            var _v:Pointer<ObjectIdentifier> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            {
                var __tmp__ = _parseObjectIdentifier(_innerBytes);
                _v.value = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<BitString>)))) {
            var _v:Pointer<BitString> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            {
                var __tmp__ = _parseBitString(_innerBytes);
                _v.value = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<stdgo.time.Time.Time>)))) {
            var _v:Pointer<stdgo.time.Time.Time> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            if (_universalTag == tagUTCTime) {
                {
                    var __tmp__ = _parseUTCTime(_innerBytes);
                    _v.value = __tmp__._0.__copy__();
                    _err = __tmp__._1;
                };
                return { _0 : _offset, _1 : _err };
            };
            {
                var __tmp__ = _parseGeneralizedTime(_innerBytes);
                _v.value = __tmp__._0.__copy__();
                _err = __tmp__._1;
            };
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<Enumerated>)))) {
            var _v:Pointer<Enumerated> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            var __tmp__ = _parseInt32(_innerBytes), _parsedInt:GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 == null) {
                _v.value = new Enumerated(_parsedInt);
            };
            _err = _err1;
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<Flag>)))) {
            var _v:Pointer<Flag> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            _v.value = new Flag(true);
            return { _0 : _offset, _1 : _err };
        } else if (Go.assertable(((_v.addr().interface_() : Pointer<Pointer<stdgo.math.big.Big.Int_>>)))) {
            var _v:Pointer<Pointer<stdgo.math.big.Big.Int_>> = _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__() == null ? null : _v.addr().interface_() == null ? null : _v.addr().interface_().__underlying__().value;
            var __tmp__ = _parseBigInt(_innerBytes), _parsedInt:Pointer<stdgo.math.big.Big.Int_> = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
            if (_err1 == null) {
                _v.value = _parsedInt;
            };
            _err = _err1;
            return { _0 : _offset, _1 : _err };
        };
        {
            var _val:stdgo.reflect.Reflect.Value = _v.__copy__();
            if (_val.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
                var __tmp__ = _parseBool(_innerBytes), _parsedBool:Bool = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 == null) {
                    _val.setBool(_parsedBool);
                };
                _err = _err1;
                return { _0 : _offset, _1 : _err };
            } else if (_val.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _val.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
                if (_val.type().size() == ((4 : GoUIntptr))) {
                    var __tmp__ = _parseInt32(_innerBytes), _parsedInt:GoInt32 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    if (_err1 == null) {
                        _val.setInt(((_parsedInt : GoInt64)));
                    };
                    _err = _err1;
                } else {
                    var __tmp__ = _parseInt64(_innerBytes), _parsedInt:GoInt64 = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                    if (_err1 == null) {
                        _val.setInt(_parsedInt);
                    };
                    _err = _err1;
                };
                return { _0 : _offset, _1 : _err };
            } else if (_val.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                var _structType:stdgo.reflect.Reflect.Type = _fieldType;
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _structType.numField(), _i++, {
                        if (!_structType.field(_i).isExported()) {
                            _err = new StructuralError("struct contains unexported fields").__copy__();
                            return { _0 : _offset, _1 : _err };
                        };
                    });
                };
                if (_structType.numField() > ((0 : GoInt)) && _structType.field(((0 : GoInt))).type.toString() == _rawContentsType.toString()) {
                    var _bytes:Slice<GoUInt8> = _bytes.__slice__(_initOffset, _offset);
                    _val.field(((0 : GoInt))).set(stdgo.reflect.Reflect.valueOf(Go.toInterface(new RawContent(_bytes).__copy__())).__copy__());
                };
                var _innerOffset:GoInt = ((0 : GoInt));
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _structType.numField(), _i++, {
                        var _field:stdgo.reflect.Reflect.StructField = _structType.field(_i).__copy__();
                        if (_i == ((0 : GoInt)) && _field.type.toString() == _rawContentsType.toString()) {
                            continue;
                        };
                        {
                            var __tmp__ = _parseField(_val.field(_i).__copy__(), _innerBytes, _innerOffset, _parseFieldParameters(_field.tag.get("asn1")).__copy__());
                            _innerOffset = __tmp__._0;
                            _err = __tmp__._1;
                        };
                        if (_err != null) {
                            return { _0 : _offset, _1 : _err };
                        };
                    });
                };
                return { _0 : _offset, _1 : _err };
            } else if (_val.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                var _sliceType:stdgo.reflect.Reflect.Type = _fieldType;
                if (_sliceType.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                    _val.set(stdgo.reflect.Reflect.makeSlice(_sliceType, _innerBytes.length, _innerBytes.length).__copy__());
                    stdgo.reflect.Reflect.copy(_val.__copy__(), stdgo.reflect.Reflect.valueOf(Go.toInterface(_innerBytes)).__copy__());
                    return { _0 : _offset, _1 : _err };
                };
                var __tmp__ = _parseSequenceOf(_innerBytes, _sliceType, _sliceType.elem()), _newSlice:stdgo.reflect.Reflect.Value = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
                if (_err1 == null) {
                    _val.set(_newSlice.__copy__());
                };
                _err = _err1;
                return { _0 : _offset, _1 : _err };
            } else if (_val.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
                var _v:GoString = (("" : GoString));
                if (_universalTag == tagPrintableString) {
                    {
                        var __tmp__ = _parsePrintableString(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagNumericString) {
                    {
                        var __tmp__ = _parseNumericString(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagIA5String) {
                    {
                        var __tmp__ = _parseIA5String(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagT61String) {
                    {
                        var __tmp__ = _parseT61String(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagUTF8String) {
                    {
                        var __tmp__ = _parseUTF8String(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagGeneralString) {
                    {
                        var __tmp__ = _parseT61String(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else if (_universalTag == tagBMPString) {
                    {
                        var __tmp__ = _parseBMPString(_innerBytes);
                        _v = __tmp__._0;
                        _err = __tmp__._1;
                    };
                } else {
                    _err = new SyntaxError(stdgo.fmt.Fmt.sprintf("internal error: unknown string type %d", Go.toInterface(_universalTag))).__copy__();
                };
                if (_err == null) {
                    _val.setString(_v);
                };
                return { _0 : _offset, _1 : _err };
            };
        };
        _err = new StructuralError((("unsupported: " : GoString)) + _v.type().toString()).__copy__();
        return { _0 : _offset, _1 : _err };
    }
/**
    // canHaveDefaultValue reports whether k is a Kind that we will set a default
    // value for. (A signed integer, essentially.)
**/
function _canHaveDefaultValue(_k:stdgo.reflect.Reflect.Kind):Bool {
        if (_k.__t__ == stdgo.reflect.Reflect.int.__t__ || _k.__t__ == stdgo.reflect.Reflect.int8.__t__ || _k.__t__ == stdgo.reflect.Reflect.int16.__t__ || _k.__t__ == stdgo.reflect.Reflect.int32.__t__ || _k.__t__ == stdgo.reflect.Reflect.int64.__t__) {
            return true;
        };
        return false;
    }
/**
    // setDefaultValue is used to install a default value, from a tag string, into
    // a Value. It is successful if the field was optional, even if a default value
    // wasn't provided or it failed to install it into the Value.
**/
function _setDefaultValue(_v:stdgo.reflect.Reflect.Value, _params:T_fieldParameters):Bool {
        var _ok:Bool = false;
        if (!_params._optional) {
            return _ok;
        };
        _ok = true;
        if (_params._defaultValue == null || _params._defaultValue.isNil()) {
            return _ok;
        };
        if (_canHaveDefaultValue(_v.kind())) {
            _v.setInt(_params._defaultValue.value);
        };
        return _ok;
    }
/**
    // Unmarshal parses the DER-encoded ASN.1 data structure b
    // and uses the reflect package to fill in an arbitrary value pointed at by val.
    // Because Unmarshal uses the reflect package, the structs
    // being written to must use upper case field names. If val
    // is nil or not a pointer, Unmarshal returns an error.
    //
    // After parsing b, any bytes that were leftover and not used to fill
    // val will be returned in rest. When parsing a SEQUENCE into a struct,
    // any trailing elements of the SEQUENCE that do not have matching
    // fields in val will not be included in rest, as these are considered
    // valid elements of the SEQUENCE and not trailing data.
    //
    // An ASN.1 INTEGER can be written to an int, int32, int64,
    // or *big.Int (from the math/big package).
    // If the encoded value does not fit in the Go type,
    // Unmarshal returns a parse error.
    //
    // An ASN.1 BIT STRING can be written to a BitString.
    //
    // An ASN.1 OCTET STRING can be written to a []byte.
    //
    // An ASN.1 OBJECT IDENTIFIER can be written to an
    // ObjectIdentifier.
    //
    // An ASN.1 ENUMERATED can be written to an Enumerated.
    //
    // An ASN.1 UTCTIME or GENERALIZEDTIME can be written to a time.Time.
    //
    // An ASN.1 PrintableString, IA5String, or NumericString can be written to a string.
    //
    // Any of the above ASN.1 values can be written to an interface{}.
    // The value stored in the interface has the corresponding Go type.
    // For integers, that type is int64.
    //
    // An ASN.1 SEQUENCE OF x or SET OF x can be written
    // to a slice if an x can be written to the slice's element type.
    //
    // An ASN.1 SEQUENCE or SET can be written to a struct
    // if each of the elements in the sequence can be
    // written to the corresponding element in the struct.
    //
    // The following tags on struct fields have special meaning to Unmarshal:
    //
    //	application specifies that an APPLICATION tag is used
    //	private     specifies that a PRIVATE tag is used
    //	default:x   sets the default value for optional integer fields (only used if optional is also present)
    //	explicit    specifies that an additional, explicit tag wraps the implicit one
    //	optional    marks the field as ASN.1 OPTIONAL
    //	set         causes a SET, rather than a SEQUENCE type to be expected
    //	tag:x       specifies the ASN.1 tag number; implies ASN.1 CONTEXT SPECIFIC
    //
    // When decoding an ASN.1 value with an IMPLICIT tag into a string field,
    // Unmarshal will default to a PrintableString, which doesn't support
    // characters such as '@' and '&'. To force other encodings, use the following
    // tags:
    //
    //	ia5     causes strings to be unmarshaled as ASN.1 IA5String values
    //	numeric causes strings to be unmarshaled as ASN.1 NumericString values
    //	utf8    causes strings to be unmarshaled as ASN.1 UTF8String values
    //
    // If the type of the first field of a structure is RawContent then the raw
    // ASN1 contents of the struct will be stored in it.
    //
    // If the name of a slice type ends with "SET" then it's treated as if
    // the "set" tag was set on it. This results in interpreting the type as a
    // SET OF x rather than a SEQUENCE OF x. This can be used with nested slices
    // where a struct tag cannot be given.
    //
    // Other ASN.1 types are not supported; if it encounters them,
    // Unmarshal returns a parse error.
**/
function unmarshal(_b:Slice<GoByte>, _val:AnyInterface):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _rest:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        return unmarshalWithParams(_b, Go.toInterface(_val), "");
    }
/**
    // UnmarshalWithParams allows field parameters to be specified for the
    // top-level element. The form of the params is the same as the field tags.
**/
function unmarshalWithParams(_b:Slice<GoByte>, _val:AnyInterface, _params:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _rest:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _v:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.valueOf(Go.toInterface(_val)).__copy__();
        if (_v.kind().__t__ != stdgo.reflect.Reflect.ptr.__t__ || _v.isNil()) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : Go.pointer(new T_invalidUnmarshalError(stdgo.reflect.Reflect.typeOf(Go.toInterface(_val)))).value };
        };
        var __tmp__ = _parseField(_v.elem().__copy__(), _b, ((0 : GoInt)), _parseFieldParameters(_params).__copy__()), _offset:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        return { _0 : _b.__slice__(_offset), _1 : ((null : stdgo.Error)) };
    }
/**
    // Given a tag string with the format specified in the package comment,
    // parseFieldParameters will parse it into a fieldParameters structure,
    // ignoring unknown parts of the string.
**/
function _parseFieldParameters(_str:GoString):T_fieldParameters {
        var _ret:T_fieldParameters = new T_fieldParameters();
        var _part:GoString = (("" : GoString));
        while (_str.length > ((0 : GoInt))) {
            var _i:GoInt = stdgo.strings.Strings.indexByte(_str, ((",".code : GoRune)));
            if (_i < ((0 : GoInt))) {
                {
                    final __tmp__0 = _str;
                    final __tmp__1 = "";
                    _part = __tmp__0;
                    _str = __tmp__1;
                };
            } else {
                {
                    final __tmp__0 = _str.__slice__(0, _i);
                    final __tmp__1 = _str.__slice__(_i + ((1 : GoInt)));
                    _part = __tmp__0;
                    _str = __tmp__1;
                };
            };
            if (_part == (("optional" : GoString))) {
                _ret._optional = true;
            } else if (_part == (("explicit" : GoString))) {
                _ret._explicit = true;
                if (_ret._tag == null || _ret._tag.isNil()) {
                    _ret._tag = Go.pointer(((0 : GoInt)));
                };
            } else if (_part == (("generalized" : GoString))) {
                _ret._timeType = tagGeneralizedTime;
            } else if (_part == (("utc" : GoString))) {
                _ret._timeType = tagUTCTime;
            } else if (_part == (("ia5" : GoString))) {
                _ret._stringType = tagIA5String;
            } else if (_part == (("printable" : GoString))) {
                _ret._stringType = tagPrintableString;
            } else if (_part == (("numeric" : GoString))) {
                _ret._stringType = tagNumericString;
            } else if (_part == (("utf8" : GoString))) {
                _ret._stringType = tagUTF8String;
            } else if (stdgo.strings.Strings.hasPrefix(_part, "default:")) {
                var __tmp__ = stdgo.strconv.Strconv.parseInt(_part.__slice__(((8 : GoInt))), ((10 : GoInt)), ((64 : GoInt))), _i:GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ret._defaultValue = Go.pointer(((0 : GoInt64)));
                    _ret._defaultValue.value = _i;
                };
            } else if (stdgo.strings.Strings.hasPrefix(_part, "tag:")) {
                var __tmp__ = stdgo.strconv.Strconv.atoi(_part.__slice__(((4 : GoInt)))), _i:GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ret._tag = Go.pointer(((0 : GoInt)));
                    _ret._tag.value = _i;
                };
            } else if (_part == (("set" : GoString))) {
                _ret._set = true;
            } else if (_part == (("application" : GoString))) {
                _ret._application = true;
                if (_ret._tag == null || _ret._tag.isNil()) {
                    _ret._tag = Go.pointer(((0 : GoInt)));
                };
            } else if (_part == (("private" : GoString))) {
                _ret._private = true;
                if (_ret._tag == null || _ret._tag.isNil()) {
                    _ret._tag = Go.pointer(((0 : GoInt)));
                };
            } else if (_part == (("omitempty" : GoString))) {
                _ret._omitEmpty = true;
            };
        };
        return _ret;
    }
/**
    // Given a reflected Go type, getUniversalType returns the default tag number
    // and expected compound flag.
**/
function _getUniversalType(_t:stdgo.reflect.Reflect.Type):{ var _0 : Bool; var _1 : GoInt; var _2 : Bool; var _3 : Bool; } {
        var _matchAny:Bool = false, _tagNumber:GoInt = ((0 : GoInt)), _isCompound:Bool = false, _ok:Bool = false;
        if (_t.toString() == _rawValueType.toString()) {
            return { _0 : true, _1 : -((1 : GoUnTypedInt)), _2 : false, _3 : true };
        } else if (_t.toString() == _objectIdentifierType.toString()) {
            return { _0 : false, _1 : tagOID, _2 : false, _3 : true };
        } else if (_t.toString() == _bitStringType.toString()) {
            return { _0 : false, _1 : tagBitString, _2 : false, _3 : true };
        } else if (_t.toString() == _timeType.toString()) {
            return { _0 : false, _1 : tagUTCTime, _2 : false, _3 : true };
        } else if (_t.toString() == _enumeratedType.toString()) {
            return { _0 : false, _1 : tagEnum, _2 : false, _3 : true };
        } else if (_t.toString() == _bigIntType.toString()) {
            return { _0 : false, _1 : tagInteger, _2 : false, _3 : true };
        };
        if (_t.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
            return { _0 : false, _1 : tagBoolean, _2 : false, _3 : true };
        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _t.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
            return { _0 : false, _1 : tagInteger, _2 : false, _3 : true };
        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
            return { _0 : false, _1 : tagSequence, _2 : true, _3 : true };
        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
            if (_t.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                return { _0 : false, _1 : tagOctetString, _2 : false, _3 : true };
            };
            if (stdgo.strings.Strings.hasSuffix(_t.name(), "SET")) {
                return { _0 : false, _1 : tagSet, _2 : true, _3 : true };
            };
            return { _0 : false, _1 : tagSequence, _2 : true, _3 : true };
        } else if (_t.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
            return { _0 : false, _1 : tagPrintableString, _2 : false, _3 : true };
        };
        return { _0 : false, _1 : ((0 : GoInt)), _2 : false, _3 : false };
    }
function _base128IntLength(_n:GoInt64):GoInt {
        if (_n == ((0 : GoInt64))) {
            return ((1 : GoInt));
        };
        var _l:GoInt = ((0 : GoInt));
        {
            var _i:GoInt64 = _n;
            Go.cfor(_i > ((0 : GoInt64)), _i = (_i >> (((7 : GoUnTypedInt)))), {
                _l++;
            });
        };
        return _l;
    }
function _appendBase128Int(_dst:Slice<GoByte>, _n:GoInt64):Slice<GoByte> {
        var _l:GoInt = _base128IntLength(_n);
        {
            var _i:GoInt = _l - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                var _o:GoUInt8 = (((_n >> (((_i * ((7 : GoInt))) : GoUInt))) : GoByte));
                _o = _o & (((127 : GoUInt8)));
                if (_i != ((0 : GoInt))) {
                    _o = _o | (((128 : GoUInt8)));
                };
                _dst = _dst.__append__(_o);
            });
        };
        return _dst;
    }
function _makeBigInt(_n:Pointer<stdgo.math.big.Big.Int_>):{ var _0 : T_encoder; var _1 : Error; } {
        if (_n == null || _n.isNil()) {
            return { _0 : ((null : T_encoder)), _1 : new StructuralError("empty integer").__copy__() };
        };
        if (_n.value.sign() < ((0 : GoInt))) {
            var _nMinus1:Pointer<stdgo.math.big.Big.Int_> = Go.pointer(new stdgo.math.big.Big.Int_()).value.neg(_n);
            _nMinus1.value.sub(_nMinus1, _bigOne);
            var _bytes:Slice<GoUInt8> = _nMinus1.value.bytes();
            {
                var _i;
                for (_obj in _bytes.keyValueIterator()) {
                    _i = _obj.key;
                    _bytes[_i] = _bytes[_i] ^ (((255 : GoUInt8)));
                };
            };
            if (_bytes.length == ((0 : GoInt)) || _bytes[((0 : GoInt))] & ((128 : GoUInt8)) == ((0 : GoUInt8))) {
                return { _0 : new T_multiEncoder(new Slice<T_encoder>(_byteFFEncoder, new T_bytesEncoder(_bytes).__copy__())).__copy__(), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : new T_bytesEncoder(_bytes).__copy__(), _1 : ((null : stdgo.Error)) };
        } else if (_n.value.sign() == ((0 : GoInt))) {
            return { _0 : _byte00Encoder, _1 : ((null : stdgo.Error)) };
        } else {
            var _bytes:Slice<GoUInt8> = _n.value.bytes();
            if (_bytes.length > ((0 : GoInt)) && _bytes[((0 : GoInt))] & ((128 : GoUInt8)) != ((0 : GoUInt8))) {
                return { _0 : new T_multiEncoder(new Slice<T_encoder>(_byte00Encoder, new T_bytesEncoder(_bytes).__copy__())).__copy__(), _1 : ((null : stdgo.Error)) };
            };
            return { _0 : new T_bytesEncoder(_bytes).__copy__(), _1 : ((null : stdgo.Error)) };
        };
    }
function _appendLength(_dst:Slice<GoByte>, _i:GoInt):Slice<GoByte> {
        var _n:GoInt = _lengthLength(_i);
        Go.cfor(_n > ((0 : GoInt)), _n--, {
            _dst = _dst.__append__((((_i >> ((((_n - ((1 : GoInt))) * ((8 : GoInt))) : GoUInt))) : GoByte)));
        });
        return _dst;
    }
function _lengthLength(_i:GoInt):GoInt {
        var _numBytes:GoInt = ((0 : GoInt));
        _numBytes = ((1 : GoInt));
        while (_i > ((255 : GoInt))) {
            _numBytes++;
            _i = (_i >> (((8 : GoUnTypedInt))));
        };
        return _numBytes;
    }
function _appendTagAndLength(_dst:Slice<GoByte>, _t:T_tagAndLength):Slice<GoByte> {
        var _b:GoUInt8 = (((_t._class : GoUInt8)) << ((6 : GoUnTypedInt)));
        if (_t._isCompound) {
            _b = _b | (((32 : GoUInt8)));
        };
        if (_t._tag >= ((31 : GoInt))) {
            _b = _b | (((31 : GoUInt8)));
            _dst = _dst.__append__(_b);
            _dst = _appendBase128Int(_dst, ((_t._tag : GoInt64)));
        } else {
            _b = _b | (((_t._tag : GoUInt8)));
            _dst = _dst.__append__(_b);
        };
        if (_t._length >= ((128 : GoInt))) {
            var _l:GoInt = _lengthLength(_t._length);
            _dst = _dst.__append__(((128 : GoUInt8)) | ((_l : GoByte)));
            _dst = _appendLength(_dst, _t._length);
        } else {
            _dst = _dst.__append__(((_t._length : GoByte)));
        };
        return _dst;
    }
function _makeObjectIdentifier(_oid:Slice<GoInt>):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        if (_oid.length < ((2 : GoInt)) || _oid[((0 : GoInt))] > ((2 : GoInt)) || (_oid[((0 : GoInt))] < ((2 : GoInt)) && _oid[((1 : GoInt))] >= ((40 : GoInt)))) {
            return { _0 : ((null : T_encoder)), _1 : new StructuralError("invalid object identifier").__copy__() };
        };
        return { _0 : new T_oidEncoder(_oid).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _makePrintableString(_s:GoString):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (!_isPrintable(_s[_i], _allowAsterisk, _rejectAmpersand)) {
                    return { _0 : ((null : T_encoder)), _1 : new StructuralError("PrintableString contains invalid character").__copy__() };
                };
            });
        };
        return { _0 : new T_stringEncoder(_s), _1 : ((null : stdgo.Error)) };
    }
function _makeIA5String(_s:GoString):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (_s[_i] > ((127 : GoUInt8))) {
                    return { _0 : ((null : T_encoder)), _1 : new StructuralError("IA5String contains invalid character").__copy__() };
                };
            });
        };
        return { _0 : new T_stringEncoder(_s), _1 : ((null : stdgo.Error)) };
    }
function _makeNumericString(_s:GoString):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _s.length, _i++, {
                if (!_isNumeric(_s[_i])) {
                    return { _0 : ((null : T_encoder)), _1 : new StructuralError("NumericString contains invalid character").__copy__() };
                };
            });
        };
        return { _0 : new T_stringEncoder(_s), _1 : ((null : stdgo.Error)) };
    }
function _makeUTF8String(_s:GoString):T_encoder {
        return new T_stringEncoder(_s);
    }
function _appendTwoDigits(_dst:Slice<GoByte>, _v:GoInt):Slice<GoByte> {
        return _dst.__append__(((((("0".code : GoRune)) + (_v / ((10 : GoInt))) % ((10 : GoInt))) : GoByte)), ((((("0".code : GoRune)) + _v % ((10 : GoInt))) : GoByte)));
    }
function _appendFourDigits(_dst:Slice<GoByte>, _v:GoInt):Slice<GoByte> {
        var _bytes:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) ((0 : GoUInt8))]);
        {
            var _i;
            for (_obj in _bytes.keyValueIterator()) {
                _i = _obj.key;
                _bytes[((3 : GoInt)) - _i] = (("0".code : GoRune)) + (((_v % ((10 : GoInt))) : GoByte));
                _v = _v / (((10 : GoInt)));
            };
        };
        return _dst.__append__(..._bytes.__slice__(0).toArray());
    }
function _outsideUTCRange(_t:stdgo.time.Time.Time):Bool {
        var _year:GoInt = _t.year();
        return _year < ((1950 : GoInt)) || _year >= ((2050 : GoInt));
    }
function _makeUTCTime(_t:stdgo.time.Time.Time):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((18 : GoInt)) : GoInt)).toBasic());
        {
            var __tmp__ = _appendUTCTime(_dst, _t.__copy__());
            _dst = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : ((null : T_encoder)), _1 : _err };
        };
        return { _0 : new T_bytesEncoder(_dst).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _makeGeneralizedTime(_t:stdgo.time.Time.Time):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        var _dst:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((((20 : GoInt)) : GoInt)).toBasic());
        {
            var __tmp__ = _appendGeneralizedTime(_dst, _t.__copy__());
            _dst = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : ((null : T_encoder)), _1 : _err };
        };
        return { _0 : new T_bytesEncoder(_dst).__copy__(), _1 : ((null : stdgo.Error)) };
    }
function _appendUTCTime(_dst:Slice<GoByte>, _t:stdgo.time.Time.Time):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _ret:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _year:GoInt = _t.year();
        if (((1950 : GoInt)) <= _year && _year < ((2000 : GoInt))) {
            _dst = _appendTwoDigits(_dst, _year - ((1900 : GoInt)));
        } else if (((2000 : GoInt)) <= _year && _year < ((2050 : GoInt))) {
            _dst = _appendTwoDigits(_dst, _year - ((2000 : GoInt)));
        } else {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new StructuralError("cannot represent time as UTCTime").__copy__() };
        };
        return { _0 : _appendTimeCommon(_dst, _t.__copy__()), _1 : ((null : stdgo.Error)) };
    }
function _appendGeneralizedTime(_dst:Slice<GoByte>, _t:stdgo.time.Time.Time):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _ret:Slice<GoByte> = new Slice<GoUInt8>().nil(), _err:Error = ((null : stdgo.Error));
        var _year:GoInt = _t.year();
        if (_year < ((0 : GoInt)) || _year > ((9999 : GoInt))) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : new StructuralError("cannot represent time as GeneralizedTime").__copy__() };
        };
        _dst = _appendFourDigits(_dst, _year);
        return { _0 : _appendTimeCommon(_dst, _t.__copy__()), _1 : ((null : stdgo.Error)) };
    }
function _appendTimeCommon(_dst:Slice<GoByte>, _t:stdgo.time.Time.Time):Slice<GoByte> {
        var __tmp__ = _t.date(), _:GoInt = __tmp__._0, _month:stdgo.time.Time.Month = __tmp__._1, _day:GoInt = __tmp__._2;
        _dst = _appendTwoDigits(_dst, _month.__t__);
        _dst = _appendTwoDigits(_dst, _day);
        var __tmp__ = _t.clock(), _hour:GoInt = __tmp__._0, _min:GoInt = __tmp__._1, _sec:GoInt = __tmp__._2;
        _dst = _appendTwoDigits(_dst, _hour);
        _dst = _appendTwoDigits(_dst, _min);
        _dst = _appendTwoDigits(_dst, _sec);
        var __tmp__ = _t.zone(), _:GoString = __tmp__._0, _offset:GoInt = __tmp__._1;
        if (_offset / ((60 : GoInt)) == ((0 : GoInt))) {
            return _dst.__append__((("Z".code : GoRune)));
        } else if (_offset > ((0 : GoInt))) {
            _dst = _dst.__append__((("+".code : GoRune)));
        } else if (_offset < ((0 : GoInt))) {
            _dst = _dst.__append__((("-".code : GoRune)));
        };
        var _offsetMinutes:GoInt = _offset / ((60 : GoInt));
        if (_offsetMinutes < ((0 : GoInt))) {
            _offsetMinutes = -_offsetMinutes;
        };
        _dst = _appendTwoDigits(_dst, _offsetMinutes / ((60 : GoInt)));
        _dst = _appendTwoDigits(_dst, _offsetMinutes % ((60 : GoInt)));
        return _dst;
    }
function _stripTagAndLength(_in:Slice<GoByte>):Slice<GoByte> {
        var __tmp__ = _parseTagAndLength(_in, ((0 : GoInt))), _:T_tagAndLength = __tmp__._0, _offset:GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return _in;
        };
        return _in.__slice__(_offset);
    }
function _makeBody(_value:stdgo.reflect.Reflect.Value, _params:T_fieldParameters):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        if (_value.type().toString() == _flagType.toString()) {
            return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
        } else if (_value.type().toString() == _timeType.toString()) {
            var _t:stdgo.time.Time.Time = ((_value.interface_().value : stdgo.time.Time.Time)).__copy__();
            if (_params._timeType == tagGeneralizedTime || _outsideUTCRange(_t.__copy__())) {
                return _makeGeneralizedTime(_t.__copy__());
            };
            return _makeUTCTime(_t.__copy__());
        } else if (_value.type().toString() == _bitStringType.toString()) {
            return { _0 : new T_bitStringEncoder(((_value.interface_().value : BitString)).bytes, ((_value.interface_().value : BitString)).bitLength).__copy__(), _1 : ((null : stdgo.Error)) };
        } else if (_value.type().toString() == _objectIdentifierType.toString()) {
            return _makeObjectIdentifier(new ObjectIdentifier(((_value.interface_().value : AnyInterface))).__copy__().__t__);
        } else if (_value.type().toString() == _bigIntType.toString()) {
            return _makeBigInt(((_value.interface_().value : Pointer<stdgo.math.big.Big.Int_>)));
        };
        {
            var _v:stdgo.reflect.Reflect.Value = _value.__copy__();
            if (_v.kind().__t__ == stdgo.reflect.Reflect.bool.__t__) {
                if (_v.bool()) {
                    return { _0 : _byteFFEncoder, _1 : ((null : stdgo.Error)) };
                };
                return { _0 : _byte00Encoder, _1 : ((null : stdgo.Error)) };
            } else if (_v.kind().__t__ == stdgo.reflect.Reflect.int.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.int8.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.int16.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.int32.__t__ || _v.kind().__t__ == stdgo.reflect.Reflect.int64.__t__) {
                return { _0 : new T_int64Encoder(_v.int()), _1 : ((null : stdgo.Error)) };
            } else if (_v.kind().__t__ == stdgo.reflect.Reflect.struct.__t__) {
                var _t:stdgo.reflect.Reflect.Type = _v.type();
                {
                    var _i:GoInt = ((0 : GoInt));
                    Go.cfor(_i < _t.numField(), _i++, {
                        if (!_t.field(_i).isExported()) {
                            return { _0 : ((null : T_encoder)), _1 : new StructuralError("struct contains unexported fields").__copy__() };
                        };
                    });
                };
                var _startingField:GoInt = ((0 : GoInt));
                var _n:GoInt = _t.numField();
                if (_n == ((0 : GoInt))) {
                    return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
                };
                if (_t.field(((0 : GoInt))).type.toString() == _rawContentsType.toString()) {
                    var _s:stdgo.reflect.Reflect.Value = _v.field(((0 : GoInt))).__copy__();
                    if (_s.len() > ((0 : GoInt))) {
                        var _bytes:Slice<GoUInt8> = _s.bytes();
                        return { _0 : new T_bytesEncoder(_stripTagAndLength(_bytes)).__copy__(), _1 : ((null : stdgo.Error)) };
                    };
                    _startingField = ((1 : GoInt));
                };
                {
                    var _n1:GoInt = _n - _startingField;
                    if (_n1 == ((0 : GoInt))) {
                        return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
                    } else if (_n1 == ((1 : GoInt))) {
                        return _makeField(_v.field(_startingField).__copy__(), _parseFieldParameters(_t.field(_startingField).tag.get("asn1")).__copy__());
                    } else {
                        var _m:Slice<T_encoder> = new Slice<T_encoder>(...[for (i in 0 ... ((_n1 : GoInt)).toBasic()) ((null : T_encoder))]);
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < _n1, _i++, {
                                {
                                    var __tmp__ = _makeField(_v.field(_i + _startingField).__copy__(), _parseFieldParameters(_t.field(_i + _startingField).tag.get("asn1")).__copy__());
                                    _m[_i] = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return { _0 : ((null : T_encoder)), _1 : _err };
                                };
                            });
                        };
                        return { _0 : new T_multiEncoder(_m).__copy__(), _1 : ((null : stdgo.Error)) };
                    };
                };
            } else if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__) {
                var _sliceType:stdgo.reflect.Reflect.Type = _v.type();
                if (_sliceType.elem().kind().__t__ == stdgo.reflect.Reflect.uint8.__t__) {
                    return { _0 : new T_bytesEncoder(_v.bytes()).__copy__(), _1 : ((null : stdgo.Error)) };
                };
                var _fp:T_fieldParameters = new T_fieldParameters();
                {
                    var _l:GoInt = _v.len();
                    if (_l == ((0 : GoInt))) {
                        return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
                    } else if (_l == ((1 : GoInt))) {
                        return _makeField(_v.index(((0 : GoInt))).__copy__(), _fp.__copy__());
                    } else {
                        var _m:Slice<T_encoder> = new Slice<T_encoder>(...[for (i in 0 ... ((_l : GoInt)).toBasic()) ((null : T_encoder))]);
                        {
                            var _i:GoInt = ((0 : GoInt));
                            Go.cfor(_i < _l, _i++, {
                                {
                                    var __tmp__ = _makeField(_v.index(_i).__copy__(), _fp.__copy__());
                                    _m[_i] = __tmp__._0;
                                    _err = __tmp__._1;
                                };
                                if (_err != null) {
                                    return { _0 : ((null : T_encoder)), _1 : _err };
                                };
                            });
                        };
                        if (_params._set) {
                            return { _0 : new T_setEncoder(_m).__copy__(), _1 : ((null : stdgo.Error)) };
                        };
                        return { _0 : new T_multiEncoder(_m).__copy__(), _1 : ((null : stdgo.Error)) };
                    };
                };
            } else if (_v.kind().__t__ == stdgo.reflect.Reflect.toString.__t__) {
                if (_params._stringType == tagIA5String) {
                    return _makeIA5String(_v.toString());
                } else if (_params._stringType == tagPrintableString) {
                    return _makePrintableString(_v.toString());
                } else if (_params._stringType == tagNumericString) {
                    return _makeNumericString(_v.toString());
                } else {
                    return { _0 : _makeUTF8String(_v.toString()), _1 : ((null : stdgo.Error)) };
                };
            };
        };
        return { _0 : ((null : T_encoder)), _1 : new StructuralError("unknown Go type").__copy__() };
    }
function _makeField(_v:stdgo.reflect.Reflect.Value, _params:T_fieldParameters):{ var _0 : T_encoder; var _1 : Error; } {
        var _e:T_encoder = ((null : T_encoder)), _err:Error = ((null : stdgo.Error));
        if (!_v.isValid()) {
            return { _0 : ((null : T_encoder)), _1 : stdgo.fmt.Fmt.errorf("asn1: cannot marshal nil value") };
        };
        if (_v.kind().__t__ == stdgo.reflect.Reflect.interface_.__t__ && _v.type().numMethod() == ((0 : GoInt))) {
            return _makeField(_v.elem().__copy__(), _params.__copy__());
        };
        if (_v.kind().__t__ == stdgo.reflect.Reflect.slice.__t__ && _v.len() == ((0 : GoInt)) && _params._omitEmpty) {
            return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
        };
        if (_params._optional && _params._defaultValue != null && !_params._defaultValue.isNil() && _canHaveDefaultValue(_v.kind())) {
            var _defaultValue:stdgo.reflect.Reflect.Value = stdgo.reflect.Reflect.new_(_v.type()).elem().__copy__();
            _defaultValue.setInt(_params._defaultValue.value);
            if (stdgo.reflect.Reflect.deepEqual(Go.toInterface(_v.interface_()), Go.toInterface(_defaultValue.interface_()))) {
                return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
            };
        };
        if (_params._optional && _params._defaultValue == null || _params._defaultValue.isNil()) {
            if (stdgo.reflect.Reflect.deepEqual(Go.toInterface(_v.interface_()), Go.toInterface(stdgo.reflect.Reflect.zero(_v.type()).interface_()))) {
                return { _0 : ((new T_bytesEncoder() : T_bytesEncoder)).__copy__(), _1 : ((null : stdgo.Error)) };
            };
        };
        if (_v.type().toString() == _rawValueType.toString()) {
            var _rv:RawValue = ((_v.interface_().value : RawValue)).__copy__();
            if (_rv.fullBytes.length != ((0 : GoInt))) {
                return { _0 : new T_bytesEncoder(_rv.fullBytes).__copy__(), _1 : ((null : stdgo.Error)) };
            };
            var _t:Pointer<T_taggedEncoder> = Go.pointer(new T_taggedEncoder());
            _t.value._tag = new T_bytesEncoder(_appendTagAndLength(_t.value._scratch.__slice__(0, ((0 : GoInt))), new T_tagAndLength(_rv.class_, _rv.tag, _rv.bytes.length, _rv.isCompound).__copy__())).__copy__();
            _t.value._body = new T_bytesEncoder(_rv.bytes).__copy__();
            return { _0 : _t.value, _1 : ((null : stdgo.Error)) };
        };
        var __tmp__ = _getUniversalType(_v.type()), _matchAny:Bool = __tmp__._0, _tag:GoInt = __tmp__._1, _isCompound:Bool = __tmp__._2, _ok:Bool = __tmp__._3;
        if (!_ok || _matchAny) {
            return { _0 : ((null : T_encoder)), _1 : new StructuralError(stdgo.fmt.Fmt.sprintf("unknown Go type: %v", Go.toInterface(_v.type()))).__copy__() };
        };
        if (_params._timeType != ((0 : GoInt)) && _tag != tagUTCTime) {
            return { _0 : ((null : T_encoder)), _1 : new StructuralError("explicit time type given to non-time member").__copy__() };
        };
        if (_params._stringType != ((0 : GoInt)) && _tag != tagPrintableString) {
            return { _0 : ((null : T_encoder)), _1 : new StructuralError("explicit string type given to non-string member").__copy__() };
        };
        {
            var __switchIndex__ = -1;
            while (true) {
                if (_tag == tagPrintableString) {
                    if (_params._stringType == ((0 : GoInt))) {
                        for (_r in _v.toString()) {
                            if (_r >= stdgo.unicode.utf8.Utf8.runeSelf || !_isPrintable(((_r : GoByte)), _rejectAsterisk, _rejectAmpersand)) {
                                if (!stdgo.unicode.utf8.Utf8.validString(_v.toString())) {
                                    return { _0 : ((null : T_encoder)), _1 : stdgo.errors.Errors.new_("asn1: string not valid UTF-8") };
                                };
                                _tag = tagUTF8String;
                                break;
                            };
                        };
                    } else {
                        _tag = _params._stringType;
                    };
                    break;
                } else if (_tag == tagUTCTime) {
                    if (_params._timeType == tagGeneralizedTime || _outsideUTCRange(((_v.interface_().value : stdgo.time.Time.Time)).__copy__())) {
                        _tag = tagGeneralizedTime;
                    };
                    break;
                };
                break;
            };
        };
        if (_params._set) {
            if (_tag != tagSequence) {
                return { _0 : ((null : T_encoder)), _1 : new StructuralError("non sequence tagged as set").__copy__() };
            };
            _tag = tagSet;
        };
        if (_tag == tagSet && !_params._set) {
            _params._set = true;
        };
        var _t:Pointer<T_taggedEncoder> = Go.pointer(new T_taggedEncoder());
        {
            var __tmp__ = _makeBody(_v.__copy__(), _params.__copy__());
            _t.value._body = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_err != null) {
            return { _0 : ((null : T_encoder)), _1 : _err };
        };
        var _bodyLen:GoInt = _t.value._body.len();
        var _class:GoInt = classUniversal;
        if (_params._tag != null && !_params._tag.isNil()) {
            if (_params._application) {
                _class = classApplication;
            } else if (_params._private) {
                _class = classPrivate;
            } else {
                _class = classContextSpecific;
            };
            if (_params._explicit) {
                _t.value._tag = new T_bytesEncoder(_appendTagAndLength(_t.value._scratch.__slice__(0, ((0 : GoInt))), new T_tagAndLength(classUniversal, _tag, _bodyLen, _isCompound).__copy__())).__copy__();
                var _tt:Pointer<T_taggedEncoder> = Go.pointer(new T_taggedEncoder());
                _tt.value._body = _t.value;
                _tt.value._tag = new T_bytesEncoder(_appendTagAndLength(_tt.value._scratch.__slice__(0, ((0 : GoInt))), (({ _class : _class, _tag : _params._tag.value, _length : _bodyLen + _t.value._tag.len(), _isCompound : true } : T_tagAndLength)).__copy__())).__copy__();
                return { _0 : _tt.value, _1 : ((null : stdgo.Error)) };
            };
            _tag = _params._tag.value;
        };
        _t.value._tag = new T_bytesEncoder(_appendTagAndLength(_t.value._scratch.__slice__(0, ((0 : GoInt))), new T_tagAndLength(_class, _tag, _bodyLen, _isCompound).__copy__())).__copy__();
        return { _0 : _t.value, _1 : ((null : stdgo.Error)) };
    }
/**
    // Marshal returns the ASN.1 encoding of val.
    //
    // In addition to the struct tags recognised by Unmarshal, the following can be
    // used:
    //
    //	ia5:         causes strings to be marshaled as ASN.1, IA5String values
    //	omitempty:   causes empty slices to be skipped
    //	printable:   causes strings to be marshaled as ASN.1, PrintableString values
    //	utf8:        causes strings to be marshaled as ASN.1, UTF8String values
    //	utc:         causes time.Time to be marshaled as ASN.1, UTCTime values
    //	generalized: causes time.Time to be marshaled as ASN.1, GeneralizedTime values
**/
function marshal(_val:AnyInterface):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        return marshalWithParams(Go.toInterface(_val), "");
    }
/**
    // MarshalWithParams allows field parameters to be specified for the
    // top-level element. The form of the params is the same as the field tags.
**/
function marshalWithParams(_val:AnyInterface, _params:GoString):{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var __tmp__ = _makeField(stdgo.reflect.Reflect.valueOf(Go.toInterface(_val)).__copy__(), _parseFieldParameters(_params).__copy__()), _e:T_encoder = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : new Slice<GoUInt8>().nil(), _1 : _err };
        };
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((_e.len() : GoInt)).toBasic()) ((0 : GoUInt8))]);
        _e.encode(_b);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
class StructuralError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class SyntaxError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class BitString_extension_fields {
    public function at(__tmp__, _i:GoInt):GoInt return __tmp__.at(_i);
    public function rightAlign(__tmp__):Slice<GoByte> return __tmp__.rightAlign();
}
class ObjectIdentifier_extension_fields {
    public function equal(__tmp__, _other:ObjectIdentifier):Bool return __tmp__.equal(_other);
    public function toString(__tmp__):GoString return __tmp__.toString();
}
class T_invalidUnmarshalError_extension_fields {
    public function error(__tmp__):GoString return __tmp__.error();
}
class T_byteEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_bytesEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_stringEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_multiEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_setEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_taggedEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_int64Encoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_bitStringEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
class T_oidEncoder_extension_fields {
    public function len(__tmp__):GoInt return __tmp__.len();
    public function encode(__tmp__, _dst:Slice<GoByte>):Void __tmp__.encode(_dst);
}
