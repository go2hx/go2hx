package stdgo.vendor.golang_org.x.crypto.poly1305;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:structInit class T_mac {
    @:embedded
    public var _macGeneric : T_macGeneric = new T_macGeneric();
    public function new(?_macGeneric:T_macGeneric) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_macGeneric) + "}";
    }
    public function sum(_out:Pointer<GoArray<GoUInt8>>) _macGeneric.sum(_0);
    public function write(_p:Slice<GoUInt8>):{ var _0 : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; }; var _1 : Slice<GoUInt8> -> { var _0 : GoInt; var _1 : stdgo.Error; }; } return _macGeneric.write(_0);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_mac(_macGeneric);
    }
    public function __set__(__tmp__) {
        this._macGeneric = __tmp__._macGeneric;
        return this;
    }
}
@:structInit class MAC {
    public function verify(_expected:Slice<GoByte>):Bool {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _mac:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _h.value._mac.sum(Go.pointer(_mac));
        _h.value._finalized = true;
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_expected, _mac.__slice__(0)) == ((1 : GoInt));
    }
    public function sum(_b:Slice<GoByte>):Slice<GoByte> {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _mac:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        _h.value._mac.sum(Go.pointer(_mac));
        _h.value._finalized = true;
        return _b.__append__(..._mac.__slice__(0).toArray());
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_h.value._finalized) {
            throw "poly1305: write to MAC after Sum or Verify";
        };
        return _h.value._mac.write(_p);
    }
    public function size():GoInt {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return tagSize;
    }
    @:embedded
    public var _mac : T_mac = new T_mac();
    public var _finalized : Bool = false;
    public function new(?_mac:T_mac, ?_finalized:Bool) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_mac) + " " + Go.string(_finalized) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new MAC(_mac, _finalized);
    }
    public function __set__(__tmp__) {
        this._mac = __tmp__._mac;
        this._finalized = __tmp__._finalized;
        return this;
    }
}
@:structInit class T_macState {
    public var _h : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 3) ((0 : GoUInt64))]);
    public var _r : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 2) ((0 : GoUInt64))]);
    public var _s : GoArray<GoUInt64> = new GoArray<GoUInt64>(...[for (i in 0 ... 2) ((0 : GoUInt64))]);
    public function new(?_h:GoArray<GoUInt64>, ?_r:GoArray<GoUInt64>, ?_s:GoArray<GoUInt64>) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_h) + " " + Go.string(_r) + " " + Go.string(_s) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_macState(_h, _r, _s);
    }
    public function __set__(__tmp__) {
        this._h = __tmp__._h;
        this._r = __tmp__._r;
        this._s = __tmp__._s;
        return this;
    }
}
@:structInit class T_macGeneric {
    public function sum(_out:Pointer<GoArray<GoByte>>):Void {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _state:T_macState = _h.value._macState.__copy__();
        if (_h.value._offset > ((0 : GoInt))) {
            _updateGeneric(Go.pointer(_state), _h.value._buffer.__slice__(0, _h.value._offset));
        };
        _finalize(_out, Go.pointer(_state._h), Go.pointer(_state._s));
    }
    public function write(_p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } {
        var _h = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nn:GoInt = _p.length;
        if (_h.value._offset > ((0 : GoInt))) {
            var _n:GoInt = Go.copy(_h.value._buffer.__slice__(_h.value._offset), _p);
            if (_h.value._offset + _n < tagSize) {
                _h.value._offset = _h.value._offset + (_n);
                return { _0 : _nn, _1 : ((null : stdgo.Error)) };
            };
            _p = _p.__slice__(_n);
            _h.value._offset = ((0 : GoInt));
            _updateGeneric(Go.pointer(_h.value._macState), _h.value._buffer.__slice__(0));
        };
        {
            var _n:GoInt = _p.length - (_p.length % tagSize);
            if (_n > ((0 : GoInt))) {
                _updateGeneric(Go.pointer(_h.value._macState), _p.__slice__(0, _n));
                _p = _p.__slice__(_n);
            };
        };
        if (_p.length > ((0 : GoInt))) {
            _h.value._offset = _h.value._offset + (Go.copy(_h.value._buffer.__slice__(_h.value._offset), _p));
        };
        return { _0 : _nn, _1 : ((null : stdgo.Error)) };
    }
    @:embedded
    public var _macState : T_macState = new T_macState();
    public var _buffer : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
    public var _offset : GoInt = ((0 : GoInt));
    public function new(?_macState:T_macState, ?_buffer:GoArray<GoUInt8>, ?_offset:GoInt) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_macState) + " " + Go.string(_buffer) + " " + Go.string(_offset) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_macGeneric(_macState, _buffer, _offset);
    }
    public function __set__(__tmp__) {
        this._macState = __tmp__._macState;
        this._buffer = __tmp__._buffer;
        this._offset = __tmp__._offset;
        return this;
    }
}
@:structInit class T_uint128 {
    public var _lo : GoUInt64 = ((0 : GoUInt64));
    public var _hi : GoUInt64 = ((0 : GoUInt64));
    public function new(?_lo:GoUInt64, ?_hi:GoUInt64) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_lo) + " " + Go.string(_hi) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_uint128(_lo, _hi);
    }
    public function __set__(__tmp__) {
        this._lo = __tmp__._lo;
        this._hi = __tmp__._hi;
        return this;
    }
}
final _rMask0 : GoInt64 = (("1152921487695413247" : GoUnTypedInt));
final _maskLow2Bits : GoUInt64 = ((3 : GoUInt64));
final _maskNotLow2Bits : GoUInt64 = -1 ^ _maskLow2Bits;
final _rMask1 : GoInt64 = (("1152921487695413244" : GoUnTypedInt));
final _p0 : GoInt64 = (("18446744073709551611" : GoUnTypedInt));
final tagSize : GoInt64 = ((16 : GoUnTypedInt));
final _p1 : GoInt64 = (("18446744073709551615" : GoUnTypedInt));
final _p2 : GoInt64 = ((3 : GoUnTypedInt));
function _bitsAdd64(_x:GoUInt64, _y:GoUInt64, _carry:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _sum:GoUInt64 = ((0 : GoUInt64)), _carryOut:GoUInt64 = ((0 : GoUInt64));
        return stdgo.math.bits.Bits.add64(_x, _y, _carry);
    }
function _bitsSub64(_x:GoUInt64, _y:GoUInt64, _borrow:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _diff:GoUInt64 = ((0 : GoUInt64)), _borrowOut:GoUInt64 = ((0 : GoUInt64));
        return stdgo.math.bits.Bits.sub64(_x, _y, _borrow);
    }
function _bitsMul64(_x:GoUInt64, _y:GoUInt64):{ var _0 : GoUInt64; var _1 : GoUInt64; } {
        var _hi:GoUInt64 = ((0 : GoUInt64)), _lo:GoUInt64 = ((0 : GoUInt64));
        return stdgo.math.bits.Bits.mul64(_x, _y);
    }
/**
    // Sum generates an authenticator for msg using a one-time key and puts the
    // 16-byte result into out. Authenticating two different messages with the same
    // key allows an attacker to forge messages at will.
**/
function sum(_out:Pointer<GoArray<GoByte>>, _m:Slice<GoByte>, _key:Pointer<GoArray<GoByte>>):Void {
        var _h:Pointer<MAC> = new_(_key);
        _h.value.write(_m);
        _h.value.sum(_out.value.__slice__(0, ((0 : GoInt))));
    }
/**
    // Verify returns true if mac is a valid authenticator for m with the given key.
**/
function verify(_mac:Pointer<GoArray<GoByte>>, _m:Slice<GoByte>, _key:Pointer<GoArray<GoByte>>):Bool {
        var _tmp:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
        sum(Go.pointer(_tmp), _m, _key);
        return stdgo.crypto.subtle.Subtle.constantTimeCompare(_tmp.__slice__(0), _mac.value.__slice__(0)) == ((1 : GoInt));
    }
/**
    // New returns a new MAC computing an authentication
    // tag of all data written to it with the given key.
    // This allows writing the message progressively instead
    // of passing it as a single slice. Common users should use
    // the Sum function instead.
    //
    // The key must be unique for each message, as authenticating
    // two different messages with the same key allows an attacker
    // to forge messages at will.
**/
function new_(_key:Pointer<GoArray<GoByte>>):Pointer<MAC> {
        var _m:Pointer<MAC> = Go.pointer(new MAC());
        _initialize(_key, Go.pointer(_m.value._mac._macGeneric._macState));
        return _m;
    }
function _sumGeneric(_out:Pointer<GoArray<GoByte>>, _msg:Slice<GoByte>, _key:Pointer<GoArray<GoByte>>):Void {
        var _h:T_macGeneric = _newMACGeneric(_key).__copy__();
        _h.write(_msg);
        _h.sum(_out);
    }
function _newMACGeneric(_key:Pointer<GoArray<GoByte>>):T_macGeneric {
        var _m:T_macGeneric = new T_macGeneric().__copy__();
        _initialize(_key, Go.pointer(_m._macState));
        return _m.__copy__();
    }
/**
    // initialize loads the 256-bit key into the two 128-bit secret values r and s.
**/
function _initialize(_key:Pointer<GoArray<GoByte>>, _m:Pointer<T_macState>):Void {
        _m.value._r[((0 : GoInt))] = stdgo.encoding.binary.Binary.littleEndian.uint64(_key.value.__slice__(((0 : GoInt)), ((8 : GoInt)))) & _rMask0;
        _m.value._r[((1 : GoInt))] = stdgo.encoding.binary.Binary.littleEndian.uint64(_key.value.__slice__(((8 : GoInt)), ((16 : GoInt)))) & _rMask1;
        _m.value._s[((0 : GoInt))] = stdgo.encoding.binary.Binary.littleEndian.uint64(_key.value.__slice__(((16 : GoInt)), ((24 : GoInt))));
        _m.value._s[((1 : GoInt))] = stdgo.encoding.binary.Binary.littleEndian.uint64(_key.value.__slice__(((24 : GoInt)), ((32 : GoInt))));
    }
function _mul64(_a:GoUInt64, _b:GoUInt64):T_uint128 {
        var __tmp__ = _bitsMul64(_a, _b), _hi:GoUInt64 = __tmp__._0, _lo:GoUInt64 = __tmp__._1;
        return new T_uint128(_lo, _hi).__copy__();
    }
function _add128(_a:T_uint128, _b:T_uint128):T_uint128 {
        var __tmp__ = _bitsAdd64(_a._lo, _b._lo, ((0 : GoUInt64))), _lo:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        var __tmp__ = _bitsAdd64(_a._hi, _b._hi, _c), _hi:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        if (_c != ((0 : GoUInt64))) {
            throw "poly1305: unexpected overflow";
        };
        return new T_uint128(_lo, _hi).__copy__();
    }
function _shiftRightBy2(_a:T_uint128):T_uint128 {
        _a._lo = (_a._lo >> ((2 : GoUnTypedInt))) | ((_a._hi & ((3 : GoUInt64))) << ((62 : GoUnTypedInt)));
        _a._hi = (_a._hi >> ((2 : GoUnTypedInt)));
        return _a.__copy__();
    }
/**
    // updateGeneric absorbs msg into the state.h accumulator. For each chunk m of
    // 128 bits of message, it computes
    //
    //     h₊ = (h + m) * r  mod  2¹³⁰ - 5
    //
    // If the msg length is not a multiple of TagSize, it assumes the last
    // incomplete chunk is the final one.
**/
function _updateGeneric(_state:Pointer<T_macState>, _msg:Slice<GoByte>):Void {
        var _h0:GoUInt64 = _state.value._h[((0 : GoInt))], _h1:GoUInt64 = _state.value._h[((1 : GoInt))], _h2:GoUInt64 = _state.value._h[((2 : GoInt))];
        var _r0:GoUInt64 = _state.value._r[((0 : GoInt))], _r1:GoUInt64 = _state.value._r[((1 : GoInt))];
        while (_msg.length > ((0 : GoInt))) {
            var _c:GoUInt64 = ((0 : GoUInt64));
            if (_msg.length >= tagSize) {
                {
                    var __tmp__ = _bitsAdd64(_h0, stdgo.encoding.binary.Binary.littleEndian.uint64(_msg.__slice__(((0 : GoInt)), ((8 : GoInt)))), ((0 : GoUInt64)));
                    _h0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = _bitsAdd64(_h1, stdgo.encoding.binary.Binary.littleEndian.uint64(_msg.__slice__(((8 : GoInt)), ((16 : GoInt)))), _c);
                    _h1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                _h2 = _h2 + (_c + ((1 : GoUInt64)));
                _msg = _msg.__slice__(tagSize);
            } else {
                var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) ((0 : GoUInt8))]);
                Go.copy(_buf.__slice__(0), _msg);
                _buf[_msg.length] = ((1 : GoUInt8));
                {
                    var __tmp__ = _bitsAdd64(_h0, stdgo.encoding.binary.Binary.littleEndian.uint64(_buf.__slice__(((0 : GoInt)), ((8 : GoInt)))), ((0 : GoUInt64)));
                    _h0 = __tmp__._0;
                    _c = __tmp__._1;
                };
                {
                    var __tmp__ = _bitsAdd64(_h1, stdgo.encoding.binary.Binary.littleEndian.uint64(_buf.__slice__(((8 : GoInt)), ((16 : GoInt)))), _c);
                    _h1 = __tmp__._0;
                    _c = __tmp__._1;
                };
                _h2 = _h2 + (_c);
                _msg = new Slice<GoUInt8>().nil();
            };
            var _h0r0:T_uint128 = _mul64(_h0, _r0).__copy__();
            var _h1r0:T_uint128 = _mul64(_h1, _r0).__copy__();
            var _h2r0:T_uint128 = _mul64(_h2, _r0).__copy__();
            var _h0r1:T_uint128 = _mul64(_h0, _r1).__copy__();
            var _h1r1:T_uint128 = _mul64(_h1, _r1).__copy__();
            var _h2r1:T_uint128 = _mul64(_h2, _r1).__copy__();
            if (_h2r0._hi != ((0 : GoUInt64))) {
                throw "poly1305: unexpected overflow";
            };
            if (_h2r1._hi != ((0 : GoUInt64))) {
                throw "poly1305: unexpected overflow";
            };
            var _m0:T_uint128 = _h0r0.__copy__();
            var _m1:T_uint128 = _add128(_h1r0.__copy__(), _h0r1.__copy__()).__copy__();
            var _m2:T_uint128 = _add128(_h2r0.__copy__(), _h1r1.__copy__()).__copy__();
            var _m3:T_uint128 = _h2r1.__copy__();
            var _t0:GoUInt64 = _m0._lo;
            var __tmp__ = _bitsAdd64(_m1._lo, _m0._hi, ((0 : GoUInt64))), _t1:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            var __tmp__ = _bitsAdd64(_m2._lo, _m1._hi, _c), _t2:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
            var __tmp__ = _bitsAdd64(_m3._lo, _m2._hi, _c), _t3:GoUInt64 = __tmp__._0, _:GoUInt64 = __tmp__._1;
            {
                final __tmp__0 = _t0;
                final __tmp__1 = _t1;
                final __tmp__2 = _t2 & _maskLow2Bits;
                _h0 = __tmp__0;
                _h1 = __tmp__1;
                _h2 = __tmp__2;
            };
            var _cc:T_uint128 = new T_uint128(_t2 & _maskNotLow2Bits, _t3).__copy__();
            {
                var __tmp__ = _bitsAdd64(_h0, _cc._lo, ((0 : GoUInt64)));
                _h0 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = _bitsAdd64(_h1, _cc._hi, _c);
                _h1 = __tmp__._0;
                _c = __tmp__._1;
            };
            _h2 = _h2 + (_c);
            _cc = _shiftRightBy2(_cc.__copy__()).__copy__();
            {
                var __tmp__ = _bitsAdd64(_h0, _cc._lo, ((0 : GoUInt64)));
                _h0 = __tmp__._0;
                _c = __tmp__._1;
            };
            {
                var __tmp__ = _bitsAdd64(_h1, _cc._hi, _c);
                _h1 = __tmp__._0;
                _c = __tmp__._1;
            };
            _h2 = _h2 + (_c);
        };
        {
            final __tmp__0 = _h0;
            final __tmp__1 = _h1;
            final __tmp__2 = _h2;
            _state.value._h[((0 : GoInt))] = __tmp__0;
            _state.value._h[((1 : GoInt))] = __tmp__1;
            _state.value._h[((2 : GoInt))] = __tmp__2;
        };
    }
/**
    // select64 returns x if v == 1 and y if v == 0, in constant time.
**/
function _select64(_v:GoUInt64, _x:GoUInt64, _y:GoUInt64):GoUInt64 {
        return -1 ^ (_v - ((1 : GoUInt64))) & _x | (_v - ((1 : GoUInt64))) & _y;
    }
/**
    // finalize completes the modular reduction of h and computes
    //
    //     out = h + s  mod  2¹²⁸
    //
**/
function _finalize(_out:Pointer<GoArray<GoByte>>, _h:Pointer<GoArray<GoUInt64>>, _s:Pointer<GoArray<GoUInt64>>):Void {
        var _h0:GoUInt64 = _h.value[((0 : GoInt))], _h1:GoUInt64 = _h.value[((1 : GoInt))], _h2:GoUInt64 = _h.value[((2 : GoInt))];
        var __tmp__ = _bitsSub64(_h0, _p0, ((0 : GoUInt64))), _hMinusP0:GoUInt64 = __tmp__._0, _b:GoUInt64 = __tmp__._1;
        var __tmp__ = _bitsSub64(_h1, _p1, _b), _hMinusP1:GoUInt64 = __tmp__._0, _b:GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _bitsSub64(_h2, _p2, _b);
            _b = __tmp__._1;
        };
        _h0 = _select64(_b, _h0, _hMinusP0);
        _h1 = _select64(_b, _h1, _hMinusP1);
        var __tmp__ = _bitsAdd64(_h0, _s.value[((0 : GoInt))], ((0 : GoUInt64))), _h0:GoUInt64 = __tmp__._0, _c:GoUInt64 = __tmp__._1;
        {
            var __tmp__ = _bitsAdd64(_h1, _s.value[((1 : GoInt))], _c);
            _h1 = __tmp__._0;
        };
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_out.value.__slice__(((0 : GoInt)), ((8 : GoInt))), _h0);
        stdgo.encoding.binary.Binary.littleEndian.putUint64(_out.value.__slice__(((8 : GoInt)), ((16 : GoInt))), _h1);
    }
class MAC_extension_fields {
    public function size(__tmp__):GoInt return __tmp__.size();
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum(__tmp__, _b:Slice<GoByte>):Slice<GoByte> return __tmp__.sum(_b);
    public function verify(__tmp__, _expected:Slice<GoByte>):Bool return __tmp__.verify(_expected);
}
class T_macGeneric_extension_fields {
    public function write(__tmp__, _p:Slice<GoByte>):{ var _0 : GoInt; var _1 : Error; } return __tmp__.write(_p);
    public function sum(__tmp__, _out:Pointer<GoArray<GoByte>>):Void __tmp__.sum(_out);
}
