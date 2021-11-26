package stdgo.hash.fnv;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_sum32 {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic32.length || ((_b.__slice__(0, _magic32.length) : GoString)) != _magic32) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize32) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value = new T_sum32(_readUint32(_b.__slice__(((4 : GoInt)))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize32 : GoInt)).toBasic());
        _b = _b.__append__(..._magic32.toArray());
        _b = _appendUint32(_b, _s.value.__t__);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        var _v:GoUInt32 = _s.value.__t__;
        return _in.__append__((((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        return ((4 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        var _hash:T_sum32 = _s.value;
        for (_ => _c in _data) {
            _hash = new T_sum32(_hash.__t__ * (_prime32));
            _hash = new T_sum32(_hash.__t__ ^ (new T_sum32(_c)).__t__);
        };
        _s.value = _hash;
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function sum32():GoUInt32 {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        return _s.value.__t__;
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum32(this.__t__), __tmp__ -> new T_sum32(this.__t__ = __tmp__.__t__));
        _s.value = new T_sum32(_offset32);
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum32(__t__);
}
@:named class T_sum32a {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic32a.length || ((_b.__slice__(0, _magic32a.length) : GoString)) != _magic32a) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize32) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value = new T_sum32a(_readUint32(_b.__slice__(((4 : GoInt)))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize32 : GoInt)).toBasic());
        _b = _b.__append__(..._magic32a.toArray());
        _b = _appendUint32(_b, _s.value.__t__);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        var _v:GoUInt32 = _s.value.__t__;
        return _in.__append__((((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        return ((4 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        var _hash:T_sum32a = _s.value;
        for (_ => _c in _data) {
            _hash = new T_sum32a(_hash.__t__ ^ (new T_sum32a(_c)).__t__);
            _hash = new T_sum32a(_hash.__t__ * (_prime32));
        };
        _s.value = _hash;
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function sum32():GoUInt32 {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        return _s.value.__t__;
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum32a(this.__t__), __tmp__ -> new T_sum32a(this.__t__ = __tmp__.__t__));
        _s.value = new T_sum32a(_offset32);
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum32a(__t__);
}
@:named class T_sum64 {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic64.length || ((_b.__slice__(0, _magic64.length) : GoString)) != _magic64) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize64) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value = new T_sum64(_readUint64(_b.__slice__(((4 : GoInt)))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize64 : GoInt)).toBasic());
        _b = _b.__append__(..._magic64.toArray());
        _b = _appendUint64(_b, _s.value.__t__);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        var _v:GoUInt64 = _s.value.__t__;
        return _in.__append__((((_v >> ((56 : GoUnTypedInt))) : GoByte)), (((_v >> ((48 : GoUnTypedInt))) : GoByte)), (((_v >> ((40 : GoUnTypedInt))) : GoByte)), (((_v >> ((32 : GoUnTypedInt))) : GoByte)), (((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        return ((8 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        var _hash:T_sum64 = _s.value;
        for (_ => _c in _data) {
            _hash = new T_sum64(_hash.__t__ * (_prime64));
            _hash = new T_sum64(_hash.__t__ ^ (new T_sum64(_c)).__t__);
        };
        _s.value = _hash;
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function sum64():GoUInt64 {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        return _s.value.__t__;
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum64(this.__t__), __tmp__ -> new T_sum64(this.__t__ = __tmp__.__t__));
        _s.value = new T_sum64(_offset64);
    }
    public var __t__ : GoUInt64;
    public function new(?t:GoUInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum64(__t__);
}
@:named class T_sum64a {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic64a.length || ((_b.__slice__(0, _magic64a.length) : GoString)) != _magic64a) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize64) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value = new T_sum64a(_readUint64(_b.__slice__(((4 : GoInt)))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize64 : GoInt)).toBasic());
        _b = _b.__append__(..._magic64a.toArray());
        _b = _appendUint64(_b, _s.value.__t__);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        var _v:GoUInt64 = _s.value.__t__;
        return _in.__append__((((_v >> ((56 : GoUnTypedInt))) : GoByte)), (((_v >> ((48 : GoUnTypedInt))) : GoByte)), (((_v >> ((40 : GoUnTypedInt))) : GoByte)), (((_v >> ((32 : GoUnTypedInt))) : GoByte)), (((_v >> ((24 : GoUnTypedInt))) : GoByte)), (((_v >> ((16 : GoUnTypedInt))) : GoByte)), (((_v >> ((8 : GoUnTypedInt))) : GoByte)), ((_v : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        return ((8 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        var _hash:T_sum64a = _s.value;
        for (_ => _c in _data) {
            _hash = new T_sum64a(_hash.__t__ ^ (new T_sum64a(_c)).__t__);
            _hash = new T_sum64a(_hash.__t__ * (_prime64));
        };
        _s.value = _hash;
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function sum64():GoUInt64 {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        return _s.value.__t__;
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum64a(this.__t__), __tmp__ -> new T_sum64a(this.__t__ = __tmp__.__t__));
        _s.value = new T_sum64a(_offset64);
    }
    public var __t__ : GoUInt64;
    public function new(?t:GoUInt64) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum64a(__t__);
}
@:named class T_sum128 {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic128.length || ((_b.__slice__(0, _magic128.length) : GoString)) != _magic128) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize128) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value.__t__[((0 : GoInt))] = _readUint64(_b.__slice__(((4 : GoInt))));
        _s.value.__t__[((1 : GoInt))] = _readUint64(_b.__slice__(((12 : GoInt))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize128 : GoInt)).toBasic());
        _b = _b.__append__(..._magic128.toArray());
        _b = _appendUint64(_b, _s.value.__t__[((0 : GoInt))]);
        _b = _appendUint64(_b, _s.value.__t__[((1 : GoInt))]);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        return _in.__append__((((_s.value.__t__[((0 : GoInt))] >> ((56 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((48 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((40 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((32 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((24 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte)),
((_s.value.__t__[((0 : GoInt))] : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((56 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((48 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((40 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((32 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((24 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte)),
((_s.value.__t__[((1 : GoInt))] : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        return ((16 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        for (_ => _c in _data) {
            var __tmp__ = stdgo.math.bits.Bits.mul64(_prime128Lower, _s.value.__t__[((1 : GoInt))]), _s0:GoUInt64 = __tmp__._0, _s1:GoUInt64 = __tmp__._1;
            _s0 = _s0 + ((_s.value.__t__[((1 : GoInt))] << _prime128Shift) + _prime128Lower * _s.value.__t__[((0 : GoInt))]);
            _s.value.__t__[((1 : GoInt))] = _s1;
            _s.value.__t__[((0 : GoInt))] = _s0;
            _s.value.__t__[((1 : GoInt))] = _s.value.__t__[((1 : GoInt))] ^ (((_c : GoUInt64)));
        };
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum128(this.__t__), __tmp__ -> new T_sum128(this.__t__ = __tmp__.__t__));
        _s.value.__t__[((0 : GoInt))] = _offset128Higher;
        _s.value.__t__[((1 : GoInt))] = _offset128Lower;
    }
    public var __t__ : GoArray<GoUInt64>;
    public function new(?t:GoArray<GoUInt64>) {
        __t__ = t == null ? new GoArray<GoUInt64>(...[for (i in 0 ... 2) ((0 : GoUInt64))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum128(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
@:named class T_sum128a {
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic128a.length || ((_b.__slice__(0, _magic128a.length) : GoString)) != _magic128a) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize128) {
            return stdgo.errors.Errors.new_("hash/fnv: invalid hash state size");
        };
        _s.value.__t__[((0 : GoInt))] = _readUint64(_b.__slice__(((4 : GoInt))));
        _s.value.__t__[((1 : GoInt))] = _readUint64(_b.__slice__(((12 : GoInt))));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize128 : GoInt)).toBasic());
        _b = _b.__append__(..._magic128a.toArray());
        _b = _appendUint64(_b, _s.value.__t__[((0 : GoInt))]);
        _b = _appendUint64(_b, _s.value.__t__[((1 : GoInt))]);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        return _in.__append__((((_s.value.__t__[((0 : GoInt))] >> ((56 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((48 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((40 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((32 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((24 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((0 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte)),
((_s.value.__t__[((0 : GoInt))] : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((56 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((48 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((40 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((32 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((24 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((16 : GoUnTypedInt))) : GoByte)),
(((_s.value.__t__[((1 : GoInt))] >> ((8 : GoUnTypedInt))) : GoByte)),
((_s.value.__t__[((1 : GoInt))] : GoByte)));
    }
    public function blockSize():GoInt {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        return ((1 : GoInt));
    }
    public function size():GoInt {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        return ((16 : GoInt));
    }
    public function write(_data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        for (_ => _c in _data) {
            _s.value.__t__[((1 : GoInt))] = _s.value.__t__[((1 : GoInt))] ^ (((_c : GoUInt64)));
            var __tmp__ = stdgo.math.bits.Bits.mul64(_prime128Lower, _s.value.__t__[((1 : GoInt))]), _s0:GoUInt64 = __tmp__._0, _s1:GoUInt64 = __tmp__._1;
            _s0 = _s0 + ((_s.value.__t__[((1 : GoInt))] << _prime128Shift) + _prime128Lower * _s.value.__t__[((0 : GoInt))]);
            _s.value.__t__[((1 : GoInt))] = _s1;
            _s.value.__t__[((0 : GoInt))] = _s0;
        };
        return { _0 : _data.length, _1 : ((null : stdgo.Error)) };
    }
    public function reset():Void {
        var _s = new Pointer(() -> new T_sum128a(this.__t__), __tmp__ -> new T_sum128a(this.__t__ = __tmp__.__t__));
        _s.value.__t__[((0 : GoInt))] = _offset128Higher;
        _s.value.__t__[((1 : GoInt))] = _offset128Lower;
    }
    public var __t__ : GoArray<GoUInt64>;
    public function new(?t:GoArray<GoUInt64>) {
        __t__ = t == null ? new GoArray<GoUInt64>(...[for (i in 0 ... 2) ((0 : GoUInt64))]) : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_sum128a(__t__.copy());
    public function __slice__(low:GoInt, high:GoInt = -1) return this.__t__.__slice__(low, high);
}
final _magic64 : GoString = "fnv\\x03";
final _marshaledSize64 : GoInt = _magic64.length + ((8 : GoInt));
final _magic128 : GoString = "fnv\\x05";
final _prime128Lower : GoInt64 = ((315 : GoUnTypedInt));
final _magic32 : GoString = "fnv\\x01";
final _marshaledSize32 : GoInt = _magic32.length + ((4 : GoInt));
final _magic32a : GoString = "fnv\\x02";
final _offset128Lower : GoInt64 = (("7113472399480571277" : GoUnTypedInt));
final _marshaledSize128 : GoInt = _magic128.length + ((8 : GoUnTypedInt)) * ((2 : GoUnTypedInt));
final _magic64a : GoString = "fnv\\x04";
final _prime128Shift : GoInt64 = ((24 : GoUnTypedInt));
final _prime64 : GoInt64 = (("1099511628211" : GoUnTypedInt));
final _prime32 : GoInt64 = ((16777619 : GoUnTypedInt));
final _offset64 : GoInt64 = (("14695981039346656037" : GoUnTypedInt));
final _magic128a : GoString = "fnv\\x06";
final _offset128Higher : GoInt64 = (("7809847782465536322" : GoUnTypedInt));
final _offset32 : GoInt64 = (("2166136261" : GoUnTypedInt));
/**
    // New32 returns a new 32-bit FNV-1 hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new32():stdgo.hash.Hash.Hash32 {
        var _s:T_sum32 = new T_sum32(_offset32);
        return Go.pointer(_s).value;
    }
/**
    // New32a returns a new 32-bit FNV-1a hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new32a():stdgo.hash.Hash.Hash32 {
        var _s:T_sum32a = new T_sum32a(_offset32);
        return Go.pointer(_s).value;
    }
/**
    // New64 returns a new 64-bit FNV-1 hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new64():stdgo.hash.Hash.Hash64 {
        var _s:T_sum64 = new T_sum64(_offset64);
        return Go.pointer(_s).value;
    }
/**
    // New64a returns a new 64-bit FNV-1a hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new64a():stdgo.hash.Hash.Hash64 {
        var _s:T_sum64a = new T_sum64a(_offset64);
        return Go.pointer(_s).value;
    }
/**
    // New128 returns a new 128-bit FNV-1 hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new128():stdgo.hash.Hash.Hash {
        var _s:T_sum128 = new T_sum128();
        _s.__t__[((0 : GoInt))] = _offset128Higher;
        _s.__t__[((1 : GoInt))] = _offset128Lower;
        return Go.pointer(_s).value;
    }
/**
    // New128a returns a new 128-bit FNV-1a hash.Hash.
    // Its Sum method will lay the value out in big-endian byte order.
**/
function new128a():stdgo.hash.Hash.Hash {
        var _s:T_sum128a = new T_sum128a();
        _s.__t__[((0 : GoInt))] = _offset128Higher;
        _s.__t__[((1 : GoInt))] = _offset128Lower;
        return Go.pointer(_s).value;
    }
function _readUint32(_b:Slice<GoByte>):GoUInt32 {
        _b[((3 : GoInt))];
        return ((_b[((3 : GoInt))] : GoUInt32)) | (((_b[((2 : GoInt))] : GoUInt32)) << ((8 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt32)) << ((16 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt32)) << ((24 : GoUnTypedInt)));
    }
function _appendUint32(_b:Slice<GoByte>, _x:GoUInt32):Slice<GoByte> {
        var _a:GoArray<GoUInt8> = new GoArray<GoUInt8>((((_x >> ((24 : GoUnTypedInt))) : GoByte)), (((_x >> ((16 : GoUnTypedInt))) : GoByte)), (((_x >> ((8 : GoUnTypedInt))) : GoByte)), ((_x : GoByte))).copy();
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _appendUint64(_b:Slice<GoByte>, _x:GoUInt64):Slice<GoByte> {
        var _a:GoArray<GoUInt8> = new GoArray<GoUInt8>((((_x >> ((56 : GoUnTypedInt))) : GoByte)), (((_x >> ((48 : GoUnTypedInt))) : GoByte)), (((_x >> ((40 : GoUnTypedInt))) : GoByte)), (((_x >> ((32 : GoUnTypedInt))) : GoByte)), (((_x >> ((24 : GoUnTypedInt))) : GoByte)), (((_x >> ((16 : GoUnTypedInt))) : GoByte)), (((_x >> ((8 : GoUnTypedInt))) : GoByte)), ((_x : GoByte))).copy();
        return _b.__append__(..._a.__slice__(0).toArray());
    }
function _readUint64(_b:Slice<GoByte>):GoUInt64 {
        _b[((7 : GoInt))];
        return ((_b[((7 : GoInt))] : GoUInt64)) | (((_b[((6 : GoInt))] : GoUInt64)) << ((8 : GoUnTypedInt))) | (((_b[((5 : GoInt))] : GoUInt64)) << ((16 : GoUnTypedInt))) | (((_b[((4 : GoInt))] : GoUInt64)) << ((24 : GoUnTypedInt))) | (((_b[((3 : GoInt))] : GoUInt64)) << ((32 : GoUnTypedInt))) | (((_b[((2 : GoInt))] : GoUInt64)) << ((40 : GoUnTypedInt))) | (((_b[((1 : GoInt))] : GoUInt64)) << ((48 : GoUnTypedInt))) | (((_b[((0 : GoInt))] : GoUInt64)) << ((56 : GoUnTypedInt)));
    }
class T_sum32_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function sum32(__tmp__):GoUInt32 return __tmp__.sum32();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
class T_sum32a_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function sum32(__tmp__):GoUInt32 return __tmp__.sum32();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
class T_sum64_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function sum64(__tmp__):GoUInt64 return __tmp__.sum64();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
class T_sum64a_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function sum64(__tmp__):GoUInt64 return __tmp__.sum64();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
class T_sum128_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
class T_sum128a_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function write(__tmp__, _data:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_data);
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
}
