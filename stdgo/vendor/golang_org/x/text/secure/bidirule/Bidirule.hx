package stdgo.vendor.golang_org.x.text.secure.bidirule;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
@:named class T_ruleState {
    public var __t__ : GoUInt8;
    public function new(?t:GoUInt8) {
        __t__ = t == null ? 0 : t;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    @:implicit
    public function toString():GoString return Go.string(__t__);
    public function __copy__() return new T_ruleState(__t__);
}
@:structInit class T_ruleTransition {
    public var _next : T_ruleState = new T_ruleState();
    public var _mask : GoUInt16 = ((0 : GoUInt16));
    public function new(?_next:T_ruleState, ?_mask:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_next) + " " + Go.string(_mask) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_ruleTransition(_next, _mask);
    }
    public function __set__(__tmp__) {
        this._next = __tmp__._next;
        this._mask = __tmp__._mask;
        return this;
    }
}
@:structInit class Transformer {
    public function _isFinal():Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        return _t.value._state.__t__ == _ruleLTRFinal.__t__ || _t.value._state.__t__ == _ruleRTLFinal.__t__ || _t.value._state.__t__ == _ruleInitial.__t__;
    }
    public function _advanceString(_s:GoString):{ var _0 : GoInt; var _1 : Bool; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _e:golang_org.x.text.unicode.bidi.Bidi.Properties = new vendor.golang_org.x.text.unicode.bidi.Bidi.Properties();
        var _sz:GoInt = ((0 : GoInt));
        while (_n < _s.length) {
            if (_s[_n] < stdgo.unicode.utf8.Utf8.runeSelf) {
                {
                    final __tmp__0 = _asciiTable[_s[_n]].__copy__();
                    final __tmp__1 = ((1 : GoInt));
                    _e = __tmp__0;
                    _sz = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookupString(_s.__slice__(_n));
                    _e = __tmp__._0.__copy__();
                    _sz = __tmp__._1;
                };
                if (_sz <= ((1 : GoInt))) {
                    if (_sz == ((1 : GoInt))) {
                        return { _0 : _n, _1 : false };
                    };
                    return { _0 : _n, _1 : true };
                };
            };
            var _c:GoUInt16 = (((((1 : GoUInt16)) << _e.class_().__t__) : GoUInt16));
            _t.value._seen = _t.value._seen | (_c);
            if (_t.value._seen & _exclusiveRTL == _exclusiveRTL) {
                _t.value._state = _ruleInvalid;
                return { _0 : _n, _1 : false };
            };
            {
                var _tr:GoArray<T_ruleTransition> = _transitions[_t.value._state.__t__].copy();
                if (_tr[((0 : GoInt))]._mask & _c != ((0 : GoUInt16))) {
                    _t.value._state = _tr[((0 : GoInt))]._next;
                } else if (_tr[((1 : GoInt))]._mask & _c != ((0 : GoUInt16))) {
                    _t.value._state = _tr[((1 : GoInt))]._next;
                } else {
                    _t.value._state = _ruleInvalid;
                    if (_t.value._isRTL()) {
                        return { _0 : _n, _1 : false };
                    };
                };
            };
            _n = _n + (_sz);
        };
        return { _0 : _n, _1 : true };
    }
    public function _advance(_s:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _ok:Bool = false;
        var _e:golang_org.x.text.unicode.bidi.Bidi.Properties = new vendor.golang_org.x.text.unicode.bidi.Bidi.Properties();
        var _sz:GoInt = ((0 : GoInt));
        while (_n < _s.length) {
            if (_s[_n] < stdgo.unicode.utf8.Utf8.runeSelf) {
                {
                    final __tmp__0 = _asciiTable[_s[_n]].__copy__();
                    final __tmp__1 = ((1 : GoInt));
                    _e = __tmp__0;
                    _sz = __tmp__1;
                };
            } else {
                {
                    var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookup(_s.__slice__(_n));
                    _e = __tmp__._0.__copy__();
                    _sz = __tmp__._1;
                };
                if (_sz <= ((1 : GoInt))) {
                    if (_sz == ((1 : GoInt))) {
                        return { _0 : _n, _1 : false };
                    };
                    return { _0 : _n, _1 : true };
                };
            };
            var _c:GoUInt16 = (((((1 : GoUInt16)) << _e.class_().__t__) : GoUInt16));
            _t.value._seen = _t.value._seen | (_c);
            if (_t.value._seen & _exclusiveRTL == _exclusiveRTL) {
                _t.value._state = _ruleInvalid;
                return { _0 : _n, _1 : false };
            };
            {
                var _tr:GoArray<T_ruleTransition> = _transitions[_t.value._state.__t__].copy();
                if (_tr[((0 : GoInt))]._mask & _c != ((0 : GoUInt16))) {
                    _t.value._state = _tr[((0 : GoInt))]._next;
                } else if (_tr[((1 : GoInt))]._mask & _c != ((0 : GoUInt16))) {
                    _t.value._state = _tr[((1 : GoInt))]._next;
                } else {
                    _t.value._state = _ruleInvalid;
                    if (_t.value._isRTL()) {
                        return { _0 : _n, _1 : false };
                    };
                };
            };
            _n = _n + (_sz);
        };
        return { _0 : _n, _1 : true };
    }
    public function span(_src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_t.value._state.__t__ == _ruleInvalid.__t__ && _t.value._isRTL()) {
            return { _0 : ((0 : GoInt)), _1 : errInvalid };
        };
        var __tmp__ = _t.value._advance(_src), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        {
            var __switchIndex__ = -1;
            while (true) {
                if (!_ok) {
                    _err = errInvalid;
                    break;
                } else if (_n < _src.length) {
                    if (!_atEOF) {
                        _err = golang_org.x.text.transform.Transform.errShortSrc;
                        break;
                    };
                    _err = errInvalid;
                    break;
                } else if (!_t.value._isFinal()) {
                    _err = errInvalid;
                    break;
                };
                break;
            };
        };
        return { _0 : _n, _1 : _err };
    }
    public function transform(_dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        var _nDst:GoInt = ((0 : GoInt)), _nSrc:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
        if (_dst.length < _src.length) {
            _src = _src.__slice__(0, _dst.length);
            _atEOF = false;
            _err = golang_org.x.text.transform.Transform.errShortDst;
        };
        var __tmp__ = _t.value.span(_src, _atEOF), _n:GoInt = __tmp__._0, _err1:stdgo.Error = __tmp__._1;
        Go.copy(_dst, _src.__slice__(0, _n));
        if (_err == null || _err1 != null && Go.toInterface(_err1) != Go.toInterface(golang_org.x.text.transform.Transform.errShortSrc)) {
            _err = _err1;
        };
        return { _0 : _n, _1 : _n, _2 : _err };
    }
    public function reset():Void {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        _t.value = new Transformer().__copy__();
    }
    public function _isRTL():Bool {
        var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
        final _isRTL:GoUnTypedInt = (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.r.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.al.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.an.__t__);
        return _t.value._seen & _isRTL != ((0 : GoUInt16));
    }
    public var _state : T_ruleState = new T_ruleState();
    public var _hasRTL : Bool = false;
    public var _seen : GoUInt16 = ((0 : GoUInt16));
    public function new(?_state:T_ruleState, ?_hasRTL:Bool, ?_seen:GoUInt16) stdgo.internal.Macro.initLocals();
    public function toString() {
        return '{' + Go.string(_state) + " " + Go.string(_hasRTL) + " " + Go.string(_seen) + "}";
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new Transformer(_state, _hasRTL, _seen);
    }
    public function __set__(__tmp__) {
        this._state = __tmp__._state;
        this._hasRTL = __tmp__._hasRTL;
        this._seen = __tmp__._seen;
        return this;
    }
}
final _ruleRTL : T_ruleState = new T_ruleState((3 : GoUnTypedInt));
final _ruleLTR : T_ruleState = new T_ruleState((1 : GoUnTypedInt));
final _ruleInitial : T_ruleState = new T_ruleState((0 : GoUnTypedInt));
var errInvalid : stdgo.Error = stdgo.errors.Errors.new_("bidirule: failed Bidi Rule");
var _asciiTable : GoArray<golang_org.x.text.unicode.bidi.Bidi.Properties> = new GoArray<vendor.golang_org.x.text.unicode.bidi.Bidi.Properties>(...[for (i in 0 ... 128) new vendor.golang_org.x.text.unicode.bidi.Bidi.Properties()]);
final _exclusiveRTL : GoUInt16 = ((((((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.en.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.an.__t__)) : GoUInt16));
final _ruleRTLFinal : T_ruleState = new T_ruleState((4 : GoUnTypedInt));
final _ruleLTRFinal : T_ruleState = new T_ruleState((2 : GoUnTypedInt));
final _ruleInvalid : T_ruleState = new T_ruleState((5 : GoUnTypedInt));
var _transitions : GoArray<GoArray<T_ruleTransition>> = {
        var s = new GoArray<GoArray<T_ruleTransition>>(...[for (i in 0 ... 6) new GoArray<T_ruleTransition>(...[for (i in 0 ... 2) new T_ruleTransition()])]);
        s[0] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleLTRFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.l.__t__)).__copy__(), new T_ruleTransition(_ruleRTLFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.r.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.al.__t__)).__copy__());
        s[1] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleRTLFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.r.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.al.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.en.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.an.__t__)).__copy__(), new T_ruleTransition(_ruleRTL, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.es.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.cs.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.et.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.on.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.bn.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.nsm.__t__)).__copy__());
        s[2] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleRTLFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.r.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.al.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.en.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.an.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.nsm.__t__)).__copy__(), new T_ruleTransition(_ruleRTL, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.es.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.cs.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.et.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.on.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.bn.__t__)).__copy__());
        s[3] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleLTRFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.l.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.en.__t__)).__copy__(), new T_ruleTransition(_ruleLTR, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.es.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.cs.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.et.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.on.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.bn.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.nsm.__t__)).__copy__());
        s[4] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleLTRFinal, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.l.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.en.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.nsm.__t__)).__copy__(), new T_ruleTransition(_ruleLTR, (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.es.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.cs.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.et.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.on.__t__) | (((1 : GoUnTypedInt)) << golang_org.x.text.unicode.bidi.Bidi.bn.__t__)).__copy__());
        s[5] = new GoArray<T_ruleTransition>(new T_ruleTransition(_ruleInvalid, ((0 : GoUInt16))).__copy__(), new T_ruleTransition(_ruleInvalid, ((0 : GoUInt16))).__copy__());
        s;
    };
/**
    // Direction reports the direction of the given label as defined by RFC 5893.
    // The Bidi Rule does not have to be applied to labels of the category
    // LeftToRight.
**/
function direction(_b:Slice<GoByte>):golang_org.x.text.unicode.bidi.Bidi.Direction {
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _b.length) {
                var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookup(_b.__slice__(_i)), _e:vendor.golang_org.x.text.unicode.bidi.Bidi.Properties = __tmp__._0, _sz:GoInt = __tmp__._1;
                if (_sz == ((0 : GoInt))) {
                    _i++;
                };
                var _c:vendor.golang_org.x.text.unicode.bidi.Bidi.Class_ = _e.class_();
                if (_c.__t__ == golang_org.x.text.unicode.bidi.Bidi.r.__t__ || _c.__t__ == golang_org.x.text.unicode.bidi.Bidi.al.__t__ || _c.__t__ == golang_org.x.text.unicode.bidi.Bidi.an.__t__) {
                    return golang_org.x.text.unicode.bidi.Bidi.rightToLeft;
                };
                _i = _i + (_sz);
            };
        };
        return golang_org.x.text.unicode.bidi.Bidi.leftToRight;
    }
/**
    // DirectionString reports the direction of the given label as defined by RFC
    // 5893. The Bidi Rule does not have to be applied to labels of the category
    // LeftToRight.
**/
function directionString(_s:GoString):golang_org.x.text.unicode.bidi.Bidi.Direction {
        {
            var _i:GoInt = ((0 : GoInt));
            while (_i < _s.length) {
                var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookupString(_s.__slice__(_i)), _e:vendor.golang_org.x.text.unicode.bidi.Bidi.Properties = __tmp__._0, _sz:GoInt = __tmp__._1;
                if (_sz == ((0 : GoInt))) {
                    _i++;
                    continue;
                };
                var _c:vendor.golang_org.x.text.unicode.bidi.Bidi.Class_ = _e.class_();
                if (_c.__t__ == golang_org.x.text.unicode.bidi.Bidi.r.__t__ || _c.__t__ == golang_org.x.text.unicode.bidi.Bidi.al.__t__ || _c.__t__ == golang_org.x.text.unicode.bidi.Bidi.an.__t__) {
                    return golang_org.x.text.unicode.bidi.Bidi.rightToLeft;
                };
                _i = _i + (_sz);
            };
        };
        return golang_org.x.text.unicode.bidi.Bidi.leftToRight;
    }
/**
    // Valid reports whether b conforms to the BiDi rule.
**/
function valid(_b:Slice<GoByte>):Bool {
        var _t:Transformer = new Transformer();
        {
            var __tmp__ = _t._advance(_b), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok || _n < _b.length) {
                return false;
            };
        };
        return _t._isFinal();
    }
/**
    // ValidString reports whether s conforms to the BiDi rule.
**/
function validString(_s:GoString):Bool {
        var _t:Transformer = new Transformer();
        {
            var __tmp__ = _t._advanceString(_s), _n:GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
            if (!_ok || _n < _s.length) {
                return false;
            };
        };
        return _t._isFinal();
    }
/**
    // New returns a Transformer that verifies that input adheres to the Bidi Rule.
**/
function new_():Pointer<Transformer> {
        return Go.pointer(new Transformer());
    }
@:keep var _ = {
        try {
            {
                var _i;
                for (_obj in _asciiTable.keyValueIterator()) {
                    _i = _obj.key;
                    var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookupRune(((_i : GoRune))), _p:vendor.golang_org.x.text.unicode.bidi.Bidi.Properties = __tmp__._0, _:GoInt = __tmp__._1;
                    _asciiTable[_i] = _p.__copy__();
                };
            };
        } catch(e) if (e.message != "__return__") throw e;
        true;
    };
class Transformer_extension_fields {
    public function _isRTL(__tmp__):Bool return __tmp__._isRTL();
    public function reset(__tmp__):Void __tmp__.reset();
    public function transform(__tmp__, _dst:Slice<GoByte>, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : GoInt; var _2 : Error; } return __tmp__.transform(_dst, _src, _atEOF);
    public function span(__tmp__, _src:Slice<GoByte>, _atEOF:Bool):{ var _0 : GoInt; var _1 : Error; } return __tmp__.span(_src, _atEOF);
    public function _advance(__tmp__, _s:Slice<GoByte>):{ var _0 : GoInt; var _1 : Bool; } return __tmp__._advance(_s);
    public function _advanceString(__tmp__, _s:GoString):{ var _0 : GoInt; var _1 : Bool; } return __tmp__._advanceString(_s);
    public function _isFinal(__tmp__):Bool return __tmp__._isFinal();
}
