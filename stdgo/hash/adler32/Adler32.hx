package stdgo.hash.adler32;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_digest {
    public function sum(_in:Slice<GoByte>):Slice<GoByte> {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        var _s:GoUInt32 = _d.value.__t__;
        return _in.__append__((((_s >> ((24 : GoUnTypedInt))) : GoByte)), (((_s >> ((16 : GoUnTypedInt))) : GoByte)), (((_s >> ((8 : GoUnTypedInt))) : GoByte)), ((_s : GoByte)));
    }
    public function sum32():GoUInt32 {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        return _d.value.__t__;
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        var _nn:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        _d.value = _update(_d.value, _p);
        return { _0 : _p.length, _1 : ((null : stdgo.Error)) };
    }
    public function unmarshalBinary(_b:Slice<GoByte>):Error {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        if (_b.length < _magic.length || ((_b.__slice__(0, _magic.length) : GoString)) != _magic) {
            return stdgo.errors.Errors.new_("hash/adler32: invalid hash state identifier");
        };
        if (_b.length != _marshaledSize) {
            return stdgo.errors.Errors.new_("hash/adler32: invalid hash state size");
        };
        _d.value = new T_digest(_readUint32(_b.__slice__(_magic.length)));
        return ((null : stdgo.Error));
    }
    public function marshalBinary():{ var _0 : Slice<GoByte>; var _1 : Error; } {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        var _b:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0 ... ((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_marshaledSize : GoInt)).toBasic());
        _b = _b.__append__(..._magic.toArray());
        _b = _appendUint32(_b, _d.value.__t__);
        return { _0 : _b, _1 : ((null : stdgo.Error)) };
    }
    public function blockSize():GoInt {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        return ((4 : GoInt));
    }
    public function size():GoInt {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        return Adler32.size;
    }
    public function reset():Void {
        var _d = new Pointer(() -> new T_digest(this.__t__), __tmp__ -> new T_digest(this.__t__ = __tmp__.__t__));
        _d.value = new T_digest(((1 : GoUInt32)));
    }
    public var __t__ : GoUInt32;
    public function new(?t:GoUInt32) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_digest(__t__);
}
final _magic : GoString = "adl\\x01";
final size : GoInt64 = ((4 : GoUnTypedInt));
final _marshaledSize : GoInt = _magic.length + ((4 : GoInt));
final _nmax : GoInt64 = ((5552 : GoUnTypedInt));
final _mod : GoInt64 = ((65521 : GoUnTypedInt));
/**
    // New returns a new hash.Hash32 computing the Adler-32 checksum. Its
    // Sum method will lay the value out in big-endian byte order. The
    // returned Hash32 also implements encoding.BinaryMarshaler and
    // encoding.BinaryUnmarshaler to marshal and unmarshal the internal
    // state of the hash.
**/
function new_():stdgo.hash.Hash.Hash32 {
        var _d:Pointer<T_digest> = Go.pointer(new T_digest());
        _d.value.reset();
        return _d.value;
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
    // Add p to the running checksum d.
**/
function _update(_d:T_digest, _p:Slice<GoByte>):T_digest {
        var _s1:GoUInt32 = new T_digest(_d.__t__ & ((65535 : GoUInt32))).__t__, _s2:GoUInt32 = (new T_digest(_d.__t__ >> ((16 : GoUnTypedInt)))).__t__;
        while (_p.length > ((0 : GoInt))) {
            var _q:Slice<GoByte> = new Slice<GoUInt8>().nil();
            if (_p.length > _nmax) {
                {
                    final __tmp__0 = _p.__slice__(0, _nmax);
                    final __tmp__1 = _p.__slice__(_nmax);
                    _p = __tmp__0;
                    _q = __tmp__1;
                };
            };
            while (_p.length >= ((4 : GoInt))) {
                _s1 = _s1 + (((_p[((0 : GoInt))] : GoUInt32)));
                _s2 = _s2 + (_s1);
                _s1 = _s1 + (((_p[((1 : GoInt))] : GoUInt32)));
                _s2 = _s2 + (_s1);
                _s1 = _s1 + (((_p[((2 : GoInt))] : GoUInt32)));
                _s2 = _s2 + (_s1);
                _s1 = _s1 + (((_p[((3 : GoInt))] : GoUInt32)));
                _s2 = _s2 + (_s1);
                _p = _p.__slice__(((4 : GoInt)));
            };
            for (_ => _x in _p) {
                _s1 = _s1 + (((_x : GoUInt32)));
                _s2 = _s2 + (_s1);
            };
            _s1 = _s1 % (_mod);
            _s2 = _s2 % (_mod);
            _p = _q;
        };
        return new T_digest(((_s2 << ((16 : GoUnTypedInt))) | _s1));
    }
/**
    // Checksum returns the Adler-32 checksum of data.
**/
function checksum(_data:Slice<GoByte>):GoUInt32 {
        return _update(new T_digest(((1 : GoUInt32))), _data).__t__;
    }
class T_digest_extension_fields {
    public function reset(__tmp__):Void __tmp__.reset();
    public function size(__tmp__):GoInt return __tmp__.size();
    public function blockSize(__tmp__):GoInt return __tmp__.blockSize();
    public function marshalBinary(__tmp__):{ var _0 : Slice<GoByte>; var _1 : Error; } return __tmp__.marshalBinary();
    public function unmarshalBinary(__tmp__, _b:Slice<GoByte>):Error return __tmp__.unmarshalBinary(_b);
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum32(__tmp__):GoUInt32 return __tmp__.sum32();
    public function sum(__tmp__, _in:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_in);
}
