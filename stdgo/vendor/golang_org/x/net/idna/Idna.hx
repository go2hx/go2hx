package stdgo.vendor.golang_org.x.net.idna;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:named class Option {
	public var __t__:Pointer<T_options>->Void;

	public function new(?t:Pointer<T_options>->Void) {
		__t__ = t == null ? null : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Option(__t__);
}

@:structInit class T_options {
	public var _transitional:Bool = false;
	public var _useSTD3Rules:Bool = false;
	public var _checkHyphens:Bool = false;
	public var _checkJoiners:Bool = false;
	public var _verifyDNSLength:Bool = false;
	public var _removeLeadingDots:Bool = false;
	public var _trie:Pointer<T_idnaTrie> = new Pointer<T_idnaTrie>().nil();
	public var _fromPuny:(Pointer<Profile>, GoString) -> stdgo.Error = null;
	public var _mapping:(Pointer<Profile>, GoString) -> {
		var _0:GoString;
		var _1:Bool;
		var _2:stdgo.Error;
	} = null;
	public var _bidirule:GoString->Bool = null;

	public function new(?_transitional:Bool, ?_useSTD3Rules:Bool, ?_checkHyphens:Bool, ?_checkJoiners:Bool, ?_verifyDNSLength:Bool, ?_removeLeadingDots:Bool,
			?_trie:Pointer<T_idnaTrie>, ?_fromPuny:(Pointer<Profile>, GoString) -> stdgo.Error, ?_mapping:(Pointer<Profile>, GoString) -> {
			var _0:GoString;
			var _1:Bool;
			var _2:stdgo.Error;
		}, ?_bidirule:GoString->Bool)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_transitional) + " " + Go.string(_useSTD3Rules) + " " + Go.string(_checkHyphens) + " " + Go.string(_checkJoiners) + " "
			+ Go.string(_verifyDNSLength) + " " + Go.string(_removeLeadingDots) + " " + Go.string(_trie) + " " + Go.string(_fromPuny) + " "
			+ Go.string(_mapping) + " " + Go.string(_bidirule) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_options(_transitional, _useSTD3Rules, _checkHyphens, _checkJoiners, _verifyDNSLength, _removeLeadingDots, _trie, _fromPuny, _mapping,
			_bidirule);
	}

	public function __set__(__tmp__) {
		this._transitional = __tmp__._transitional;
		this._useSTD3Rules = __tmp__._useSTD3Rules;
		this._checkHyphens = __tmp__._checkHyphens;
		this._checkJoiners = __tmp__._checkJoiners;
		this._verifyDNSLength = __tmp__._verifyDNSLength;
		this._removeLeadingDots = __tmp__._removeLeadingDots;
		this._trie = __tmp__._trie;
		this._fromPuny = __tmp__._fromPuny;
		this._mapping = __tmp__._mapping;
		this._bidirule = __tmp__._bidirule;
		return this;
	}
}

@:structInit class Profile {
	public function _validateLabel(_s:GoString):Error {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		if (_s == (("" : GoString))) {
			if (_p.value._options._verifyDNSLength) {
				return Go.pointer(new T_labelError(_s, "A4")).value;
			};
			return ((null : stdgo.Error));
		};
		if (_p.value._options._checkHyphens) {
			if (_s.length > ((4 : GoInt)) && _s[((2 : GoInt))] == (("-".code : GoRune)) && _s[((3 : GoInt))] == (("-".code : GoRune))) {
				return Go.pointer(new T_labelError(_s, "V2")).value;
			};
			if (_s[((0 : GoInt))] == (("-".code : GoRune)) || _s[_s.length - ((1 : GoInt))] == (("-".code : GoRune))) {
				return Go.pointer(new T_labelError(_s, "V3")).value;
			};
		};
		if (!_p.value._options._checkJoiners) {
			return ((null : stdgo.Error));
		};
		var _trie:Pointer<T_idnaTrie> = _p.value._options._trie;
		var __tmp__ = _trie.value._lookupString(_s),
			_v:GoUInt16 = __tmp__._0,
			_sz:GoInt = __tmp__._1;
		var _x:T_info = new T_info(_v);
		if (_x._isModifier()) {
			return Go.pointer(new T_labelError(_s, "V5")).value;
		};
		if (stdgo.strings.Strings.index(_s, _zwj) == -((1 : GoUnTypedInt))
			&& stdgo.strings.Strings.index(_s, _zwnj) == -((1 : GoUnTypedInt))) {
			return ((null : stdgo.Error));
		};
		var _st:T_joinState = _stateStart;
		{
			var _i:GoInt = ((0 : GoInt));
			while (true) {
				var _jt:T_info = _x._joinType();
				if (_s.__slice__(_i, _i + _sz) == _zwj) {
					_jt = new T_info(_joinZWJ);
				} else if (_s.__slice__(_i, _i + _sz) == _zwnj) {
					_jt = new T_info(_joinZWNJ);
				};
				_st = _joinStates[_st.__t__][_jt.__t__];
				if (_x._isViramaModifier()) {
					_st = _joinStates[_st.__t__][_joinVirama];
				};
				{
					_i = _i + (_sz);
					if (_i == _s.length) {
						break;
					};
				};
				{
					var __tmp__ = _trie.value._lookupString(_s.__slice__(_i));
					_v = __tmp__._0;
					_sz = __tmp__._1;
				};
				_x = new T_info(_v);
			};
		};
		if (_st.__t__ == _stateFAIL.__t__ || _st.__t__ == _stateAfter.__t__) {
			return Go.pointer(new T_labelError(_s, "C")).value;
		};
		return ((null : stdgo.Error));
	}

	public function _simplify(_cat:T_category):T_category {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_cat.__t__ == _disallowedSTD3Mapped.__t__) {
			if (_p.value._options._useSTD3Rules) {
				_cat = _disallowed;
			} else {
				_cat = _mapped;
			};
		} else if (_cat.__t__ == _disallowedSTD3Valid.__t__) {
			if (_p.value._options._useSTD3Rules) {
				_cat = _disallowed;
			} else {
				_cat = _valid;
			};
		} else if (_cat.__t__ == _deviation.__t__) {
			if (!_p.value._options._transitional) {
				_cat = _valid;
			};
		} else if (_cat.__t__ == _validNV8.__t__ || _cat.__t__ == _validXV8.__t__) {
			_cat = _valid;
		};
		return _cat;
	}

	public function _process(_s:GoString, _toASCII:Bool):{var _0:GoString; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _err:Error = ((null : stdgo.Error));
		var _isBidi:Bool = false;
		if (_p.value._mapping != null) {
			{
				var __tmp__ = _p.value._mapping(_p, _s);
				_s = __tmp__._0;
				_isBidi = __tmp__._1;
				_err = __tmp__._2;
			};
		};
		if (_p.value._options._removeLeadingDots) {
			Go.cfor(_s.length > ((0 : GoInt)) && _s[((0 : GoInt))] == ((".".code : GoRune)), _s = _s.__slice__(((1 : GoInt))), {});
		};
		if (_err == null && _p.value._options._verifyDNSLength && _s == (("" : GoString))) {
			_err = Go.pointer(new T_labelError(_s, "A4")).value;
		};
		var _labels:T_labelIter = (({
			_orig: _s,
			_slice: new Slice<GoString>().nil(),
			_curStart: 0,
			_curEnd: 0,
			_i: 0
		} : T_labelIter)).__copy__();
		Go.cfor(!_labels._done(), _labels._next(), {
			var _label:GoString = _labels._label();
			if (_label == (("" : GoString))) {
				if (_err == null && _p.value._options._verifyDNSLength) {
					_err = Go.pointer(new T_labelError(_s, "A4")).value;
				};
				continue;
			};
			if (stdgo.strings.Strings.hasPrefix(_label, _acePrefix)) {
				var __tmp__ = _decode(_label.__slice__(_acePrefix.length)),
					_u:GoString = __tmp__._0,
					_err2:stdgo.Error = __tmp__._1;
				if (_err2 != null) {
					if (_err == null) {
						_err = _err2;
					};
					continue;
				};
				_isBidi = _isBidi || _bidirule.directionString(_u).__t__ != golang_org.x.text.unicode.bidi.Bidi.leftToRight.__t__;
				_labels._set(_u);
				if (_err == null && _p.value._fromPuny != null) {
					_err = _p.value._fromPuny(_p, _u);
				};
				if (_err == null) {
					_err = _p.value._validateLabel(_u);
				};
			} else if (_err == null) {
				_err = _p.value._validateLabel(_label);
			};
		});
		if (_isBidi && _p.value._bidirule != null && _err == null) {
			{
				_labels._reset();
				Go.cfor(!_labels._done(), _labels._next(), {
					if (!_p.value._bidirule(_labels._label())) {
						_err = Go.pointer(new T_labelError(_s, "B")).value;
						break;
					};
				});
			};
		};
		if (_toASCII) {
			{
				_labels._reset();
				Go.cfor(!_labels._done(), _labels._next(), {
					var _label:GoString = _labels._label();
					if (!_ascii(_label)) {
						var __tmp__ = _encode(_acePrefix, _label),
							_a:GoString = __tmp__._0,
							_err2:stdgo.Error = __tmp__._1;
						if (_err == null) {
							_err = _err2;
						};
						_label = _a;
						_labels._set(_a);
					};
					var _n:GoInt = _label.length;
					if (_p.value._options._verifyDNSLength && _err == null && (_n == ((0 : GoInt)) || _n > ((63 : GoInt)))) {
						_err = Go.pointer(new T_labelError(_label, "A4")).value;
					};
				});
			};
		};
		_s = _labels._result();
		if (_toASCII && _p.value._options._verifyDNSLength && _err == null) {
			var _n:GoInt = _s.length;
			if (_n > ((0 : GoInt)) && _s[_n - ((1 : GoInt))] == ((".".code : GoRune))) {
				_n--;
			};
			if (_s.length < ((1 : GoInt)) || _n > ((253 : GoInt))) {
				_err = Go.pointer(new T_labelError(_s, "A4")).value;
			};
		};
		return {_0: _s, _1: _err};
	}

	public function toString():GoString {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _s:GoString = "";
		if (_p.value._options._transitional) {
			_s = "Transitional";
		} else {
			_s = "NonTransitional";
		};
		if (_p.value._options._useSTD3Rules) {
			_s = _s + (":UseSTD3Rules");
		};
		if (_p.value._options._checkHyphens) {
			_s = _s + (":CheckHyphens");
		};
		if (_p.value._options._checkJoiners) {
			_s = _s + (":CheckJoiners");
		};
		if (_p.value._options._verifyDNSLength) {
			_s = _s + (":VerifyDNSLength");
		};
		return _s;
	}

	public function toUnicode(_s:GoString):{var _0:GoString; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _pp:Profile = _p.value.__copy__();
		_pp._options._transitional = false;
		return _pp._process(_s, false);
	}

	public function toASCII(_s:GoString):{var _0:GoString; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value._process(_s, true);
	}

	@:embedded
	public var _options:T_options = new T_options();

	public function new(?_options:T_options)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Profile(_options);
	}

	public function __set__(__tmp__) {
		this._options = __tmp__._options;
		return this;
	}
}

@:structInit class T_labelError {
	public function error():GoString {
		var _e = this.__copy__();
		return stdgo.fmt.Fmt.sprintf("idna: invalid label %q", Go.toInterface(_e._label));
	}

	public function _code():GoString {
		var _e = this.__copy__();
		return _e._code_;
	}

	public var _label:GoString = (("" : GoString));
	public var _code_:GoString = (("" : GoString));

	public function new(?_label:GoString, ?_code_:GoString)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_label) + " " + Go.string(_code_) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_labelError(_label, _code_);
	}

	public function __set__(__tmp__) {
		this._label = __tmp__._label;
		this._code_ = __tmp__._code_;
		return this;
	}
}

@:named class T_runeError {
	public function error():GoString {
		var _e = this.__copy__();
		return stdgo.fmt.Fmt.sprintf("idna: disallowed rune %U", Go.toInterface(_e));
	}

	public function _code():GoString {
		var _e = this.__copy__();
		return "P1";
	}

	public var __t__:GoInt32;

	public function new(?t:GoInt32) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_runeError(__t__);
}

@:structInit class T_labelIter {
	public function _set(_s:GoString):Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_l.value._slice == null || _l.value._slice.isNil()) {
			_l.value._slice = stdgo.strings.Strings.split(_l.value._orig, ".");
		};
		_l.value._slice[_l.value._i] = _s;
	}

	public function _next():Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_l.value._i++;
		if (_l.value._slice != null && !_l.value._slice.isNil()) {
			if (_l.value._i >= _l.value._slice.length
				|| _l.value._i == _l.value._slice.length - ((1 : GoInt))
				&& _l.value._slice[_l.value._i] == (("" : GoString))) {
				_l.value._curStart = _l.value._orig.length;
			};
		} else {
			_l.value._curStart = _l.value._curEnd + ((1 : GoInt));
			if (_l.value._curStart == _l.value._orig.length - ((1 : GoInt))
				&& _l.value._orig[_l.value._curStart] == ((".".code : GoRune))) {
				_l.value._curStart = _l.value._orig.length;
			};
		};
	}

	public function _label():GoString {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_l.value._slice != null && !_l.value._slice.isNil()) {
			return _l.value._slice[_l.value._i];
		};
		var _p:GoInt = stdgo.strings.Strings.indexByte(_l.value._orig.__slice__(_l.value._curStart), ((".".code : GoRune)));
		_l.value._curEnd = _l.value._curStart + _p;
		if (_p == -((1 : GoUnTypedInt))) {
			_l.value._curEnd = _l.value._orig.length;
		};
		return _l.value._orig.__slice__(_l.value._curStart, _l.value._curEnd);
	}

	public function _result():GoString {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_l.value._slice != null && !_l.value._slice.isNil()) {
			return stdgo.strings.Strings.join(_l.value._slice, ".");
		};
		return _l.value._orig;
	}

	public function _done():Bool {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _l.value._curStart >= _l.value._orig.length;
	}

	public function _reset():Void {
		var _l = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_l.value._curStart = ((0 : GoInt));
		_l.value._curEnd = ((0 : GoInt));
		_l.value._i = ((0 : GoInt));
	}

	public var _orig:GoString = (("" : GoString));
	public var _slice:Slice<GoString> = new Slice<GoString>().nil();
	public var _curStart:GoInt = ((0 : GoInt));
	public var _curEnd:GoInt = ((0 : GoInt));
	public var _i:GoInt = ((0 : GoInt));

	public function new(?_orig:GoString, ?_slice:Slice<GoString>, ?_curStart:GoInt, ?_curEnd:GoInt, ?_i:GoInt)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{'
			+ Go.string(_orig)
			+ " "
			+ Go.string(_slice)
			+ " "
			+ Go.string(_curStart)
			+ " "
			+ Go.string(_curEnd)
			+ " "
			+ Go.string(_i)
			+ "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_labelIter(_orig, _slice, _curStart, _curEnd, _i);
	}

	public function __set__(__tmp__) {
		this._orig = __tmp__._orig;
		this._slice = __tmp__._slice;
		this._curStart = __tmp__._curStart;
		this._curEnd = __tmp__._curEnd;
		this._i = __tmp__._i;
		return this;
	}
}

@:named class T_joinState {
	public var __t__:GoInt8;

	public function new(?t:GoInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_joinState(__t__);
}

@:structInit class T_idnaTrie {
	public function _lookupValue(_n:GoUInt32, _b:GoByte):GoUInt16 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_n < ((126 : GoUInt32))) {
			return ((_idnaValues[(_n << ((6 : GoUnTypedInt))) + ((_b : GoUInt32))] : GoUInt16));
		} else {
			_n = _n - (((126 : GoUInt32)));
			return ((_idnaSparse._lookup(_n, _b) : GoUInt16));
		};
	}

	public function _lookupStringUnsafe(_s:GoString):GoUInt16 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return _idnaValues[_c0];
		};
		var _i:GoUInt16 = _idnaIndex[_c0];
		if (_c0 < ((224 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((1 : GoInt))]);
		};
		_i = _idnaIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((1 : GoInt))] : GoUInt32))];
		if (_c0 < ((240 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((2 : GoInt))]);
		};
		_i = _idnaIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((2 : GoInt))] : GoUInt32))];
		if (_c0 < ((248 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((3 : GoInt))]);
		};
		return ((0 : GoUInt16));
	}

	public function _lookupString(_s:GoString):{var _0:GoUInt16; var _1:GoInt;} {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v:GoUInt16 = ((0 : GoUInt16)), _sz:GoInt = ((0 : GoInt));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return {_0: _idnaValues[_c0], _1: ((1 : GoInt))};
		} else if (_c0 < ((194 : GoUInt8))) {
			return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
		} else if (_c0 < ((224 : GoUInt8))) {
			if (_s.length < ((2 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c1), _1: ((2 : GoInt))};
		} else if (_c0 < ((240 : GoUInt8))) {
			if (_s.length < ((3 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt16)), _1: ((2 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c2), _1: ((3 : GoInt))};
		} else if (_c0 < ((248 : GoUInt8))) {
			if (_s.length < ((4 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt16)), _1: ((2 : GoInt))};
			};
			_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c3:GoUInt8 = _s[((3 : GoInt))];
			if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
				return {_0: ((0 : GoUInt16)), _1: ((3 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c3), _1: ((4 : GoInt))};
		};
		return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
	}

	public function _lookupUnsafe(_s:Slice<GoByte>):GoUInt16 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return _idnaValues[_c0];
		};
		var _i:GoUInt16 = _idnaIndex[_c0];
		if (_c0 < ((224 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((1 : GoInt))]);
		};
		_i = _idnaIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((1 : GoInt))] : GoUInt32))];
		if (_c0 < ((240 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((2 : GoInt))]);
		};
		_i = _idnaIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((2 : GoInt))] : GoUInt32))];
		if (_c0 < ((248 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((3 : GoInt))]);
		};
		return ((0 : GoUInt16));
	}

	public function _lookup(_s:Slice<GoByte>):{var _0:GoUInt16; var _1:GoInt;} {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v:GoUInt16 = ((0 : GoUInt16)), _sz:GoInt = ((0 : GoInt));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return {_0: _idnaValues[_c0], _1: ((1 : GoInt))};
		} else if (_c0 < ((194 : GoUInt8))) {
			return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
		} else if (_c0 < ((224 : GoUInt8))) {
			if (_s.length < ((2 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c1), _1: ((2 : GoInt))};
		} else if (_c0 < ((240 : GoUInt8))) {
			if (_s.length < ((3 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt16)), _1: ((2 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c2), _1: ((3 : GoInt))};
		} else if (_c0 < ((248 : GoUInt8))) {
			if (_s.length < ((4 : GoInt))) {
				return {_0: ((0 : GoUInt16)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt16 = _idnaIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt16)), _1: ((2 : GoInt))};
			};
			_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
			_i = _idnaIndex[_o];
			var _c3:GoUInt8 = _s[((3 : GoInt))];
			if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
				return {_0: ((0 : GoUInt16)), _1: ((3 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c3), _1: ((4 : GoInt))};
		};
		return {_0: ((0 : GoUInt16)), _1: ((1 : GoInt))};
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_idnaTrie();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:structInit class T_valueRange {
	public var _value:GoUInt16 = ((0 : GoUInt16));
	public var _lo:GoUInt8 = ((0 : GoUInt8));
	public var _hi:GoUInt8 = ((0 : GoUInt8));

	public function new(?_value:GoUInt16, ?_lo:GoUInt8, ?_hi:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_value) + " " + Go.string(_lo) + " " + Go.string(_hi) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_valueRange(_value, _lo, _hi);
	}

	public function __set__(__tmp__) {
		this._value = __tmp__._value;
		this._lo = __tmp__._lo;
		this._hi = __tmp__._hi;
		return this;
	}
}

@:structInit class T_sparseBlocks {
	public function _lookup(_n:GoUInt32, _b:GoByte):GoUInt16 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _offset:GoUInt16 = _t.value._offset[_n];
		var _header:T_valueRange = _t.value._values[_offset].__copy__();
		var _lo:GoUInt16 = _offset + ((1 : GoUInt16));
		var _hi:GoUInt16 = _lo + ((_header._lo : GoUInt16));
		while (_lo < _hi) {
			var _m:GoUInt16 = _lo + (_hi - _lo) / ((2 : GoUInt16));
			var _r:T_valueRange = _t.value._values[_m].__copy__();
			if (_r._lo <= _b && _b <= _r._hi) {
				return _r._value + (((_b - _r._lo) : GoUInt16)) * _header._value;
			};
			if (_b < _r._lo) {
				_hi = _m;
			} else {
				_lo = _m + ((1 : GoUInt16));
			};
		};
		return ((0 : GoUInt16));
	}

	public var _values:Slice<T_valueRange> = new Slice<T_valueRange>().nil();
	public var _offset:Slice<GoUInt16> = new Slice<GoUInt16>().nil();

	public function new(?_values:Slice<T_valueRange>, ?_offset:Slice<GoUInt16>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_values) + " " + Go.string(_offset) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_sparseBlocks(_values, _offset);
	}

	public function __set__(__tmp__) {
		this._values = __tmp__._values;
		this._offset = __tmp__._offset;
		return this;
	}
}

@:named class T_info {
	public function _isViramaModifier():Bool {
		var _c = this.__copy__();
		return new T_info(_c.__t__ & (new T_info(_attributesMask | _catSmallMask)).__t__).__t__ == _viramaModifier;
	}

	public function _isModifier():Bool {
		var _c = this.__copy__();
		return new T_info(_c.__t__ & (new T_info(_modifier | _catSmallMask)).__t__).__t__ == _modifier;
	}

	public function _joinType():T_info {
		var _c = this.__copy__();
		if (_c._isMapped()) {
			return new T_info(((0 : GoUInt16)));
		};
		return new T_info(((new T_info(_c.__t__ >> _joinShift))).__t__ & _joinMask);
	}

	public function _category():T_category {
		var _c = this.__copy__();
		var _small:T_info = new T_info(_c.__t__ & _catSmallMask);
		if (_small.__t__ != ((0 : GoUInt16))) {
			return new T_category(_small.__t__);
		};
		return new T_category(new T_info(_c.__t__ & _catBigMask).__t__);
	}

	public function _isMapped():Bool {
		var _c = this.__copy__();
		return new T_info(_c.__t__ & ((3 : GoUInt16))).__t__ != ((0 : GoUInt16));
	}

	public function _appendMapping(_b:Slice<GoByte>, _s:GoString):Slice<GoByte> {
		var _c = this.__copy__();
		var _index:GoInt = (new T_info(_c.__t__ >> _indexShift)).__t__;
		if (new T_info(_c.__t__ & _xorBit).__t__ == ((0 : GoUInt16))) {
			var _s:GoString = _mappings.__slice__(_index);
			return _b.__append__(..._s.__slice__(((1 : GoInt)), _s[((0 : GoInt))] + ((1 : GoUInt8))).toArray());
		};
		_b = _b.__append__(..._s.toArray());
		if (new T_info(_c.__t__ & _inlineXOR).__t__ == _inlineXOR) {
			_b[_b.length - ((1 : GoInt))] = _b[_b.length - ((1 : GoInt))] ^ (((_index : GoByte)));
		} else {
			{
				var _p:GoInt = _b.length - ((_xorData[_index] : GoInt));
				Go.cfor(_p < _b.length, _p++, {
					_index++;
					_b[_p] = _b[_p] ^ (_xorData[_index]);
				});
			};
		};
		return _b;
	}

	public function _isBidi(_s:GoString):Bool {
		var _c = this.__copy__();
		if (!_c._isMapped()) {
			return new T_info(_c.__t__ & _attributesMask).__t__ == _rtl;
		};
		var __tmp__ = golang_org.x.text.unicode.bidi.Bidi.lookupString(_s),
			_p:vendor.golang_org.x.text.unicode.bidi.Bidi.Properties = __tmp__._0,
			_:GoInt = __tmp__._1;
		if (_p.class_().__t__ == golang_org.x.text.unicode.bidi.Bidi.r.__t__
			|| _p.class_().__t__ == golang_org.x.text.unicode.bidi.Bidi.al.__t__
			|| _p.class_().__t__ == golang_org.x.text.unicode.bidi.Bidi.an.__t__) {
			return true;
		};
		return false;
	}

	public var __t__:GoUInt16;

	public function new(?t:GoUInt16) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_info(__t__);
}

@:named class T_category {
	public var __t__:GoUInt16;

	public function new(?t:GoUInt16) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_category(__t__);
}

var _idnaIndex:GoArray<GoUInt16> = {
	var s = new GoArray<GoUInt16>(...[for (i in 0...2368) 0]);
	s[194] = ((1 : GoUInt16));
	s[195] = ((126 : GoUInt16));
	s[196] = ((2 : GoUInt16));
	s[197] = ((3 : GoUInt16));
	s[198] = ((4 : GoUInt16));
	s[199] = ((5 : GoUInt16));
	s[200] = ((6 : GoUInt16));
	s[201] = ((127 : GoUInt16));
	s[202] = ((128 : GoUInt16));
	s[203] = ((7 : GoUInt16));
	s[204] = ((129 : GoUInt16));
	s[205] = ((8 : GoUInt16));
	s[206] = ((9 : GoUInt16));
	s[207] = ((10 : GoUInt16));
	s[208] = ((130 : GoUInt16));
	s[209] = ((11 : GoUInt16));
	s[210] = ((12 : GoUInt16));
	s[211] = ((13 : GoUInt16));
	s[212] = ((14 : GoUInt16));
	s[213] = ((131 : GoUInt16));
	s[214] = ((132 : GoUInt16));
	s[215] = ((133 : GoUInt16));
	s[216] = ((15 : GoUInt16));
	s[217] = ((16 : GoUInt16));
	s[218] = ((134 : GoUInt16));
	s[219] = ((17 : GoUInt16));
	s[220] = ((18 : GoUInt16));
	s[221] = ((135 : GoUInt16));
	s[222] = ((136 : GoUInt16));
	s[223] = ((137 : GoUInt16));
	s[224] = ((2 : GoUInt16));
	s[225] = ((3 : GoUInt16));
	s[226] = ((4 : GoUInt16));
	s[227] = ((5 : GoUInt16));
	s[228] = ((6 : GoUInt16));
	s[229] = ((7 : GoUInt16));
	s[230] = ((7 : GoUInt16));
	s[231] = ((7 : GoUInt16));
	s[232] = ((7 : GoUInt16));
	s[233] = ((8 : GoUInt16));
	s[234] = ((9 : GoUInt16));
	s[235] = ((7 : GoUInt16));
	s[236] = ((7 : GoUInt16));
	s[237] = ((10 : GoUInt16));
	s[238] = ((11 : GoUInt16));
	s[239] = ((12 : GoUInt16));
	s[240] = ((30 : GoUInt16));
	s[241] = ((31 : GoUInt16));
	s[242] = ((31 : GoUInt16));
	s[243] = ((33 : GoUInt16));
	s[244] = ((34 : GoUInt16));
	s[288] = ((138 : GoUInt16));
	s[289] = ((19 : GoUInt16));
	s[290] = ((139 : GoUInt16));
	s[291] = ((140 : GoUInt16));
	s[292] = ((141 : GoUInt16));
	s[293] = ((20 : GoUInt16));
	s[294] = ((21 : GoUInt16));
	s[295] = ((22 : GoUInt16));
	s[296] = ((23 : GoUInt16));
	s[297] = ((24 : GoUInt16));
	s[298] = ((25 : GoUInt16));
	s[299] = ((26 : GoUInt16));
	s[300] = ((27 : GoUInt16));
	s[301] = ((28 : GoUInt16));
	s[302] = ((29 : GoUInt16));
	s[303] = ((142 : GoUInt16));
	s[304] = ((143 : GoUInt16));
	s[305] = ((30 : GoUInt16));
	s[306] = ((31 : GoUInt16));
	s[307] = ((32 : GoUInt16));
	s[308] = ((144 : GoUInt16));
	s[309] = ((33 : GoUInt16));
	s[310] = ((145 : GoUInt16));
	s[311] = ((146 : GoUInt16));
	s[312] = ((147 : GoUInt16));
	s[313] = ((148 : GoUInt16));
	s[314] = ((34 : GoUInt16));
	s[315] = ((149 : GoUInt16));
	s[316] = ((150 : GoUInt16));
	s[317] = ((35 : GoUInt16));
	s[318] = ((36 : GoUInt16));
	s[319] = ((151 : GoUInt16));
	s[320] = ((152 : GoUInt16));
	s[321] = ((153 : GoUInt16));
	s[322] = ((154 : GoUInt16));
	s[323] = ((155 : GoUInt16));
	s[324] = ((156 : GoUInt16));
	s[325] = ((157 : GoUInt16));
	s[326] = ((158 : GoUInt16));
	s[327] = ((159 : GoUInt16));
	s[328] = ((160 : GoUInt16));
	s[329] = ((161 : GoUInt16));
	s[330] = ((162 : GoUInt16));
	s[331] = ((163 : GoUInt16));
	s[332] = ((164 : GoUInt16));
	s[333] = ((165 : GoUInt16));
	s[334] = ((166 : GoUInt16));
	s[335] = ((167 : GoUInt16));
	s[336] = ((168 : GoUInt16));
	s[337] = ((160 : GoUInt16));
	s[338] = ((160 : GoUInt16));
	s[339] = ((160 : GoUInt16));
	s[340] = ((160 : GoUInt16));
	s[341] = ((160 : GoUInt16));
	s[342] = ((160 : GoUInt16));
	s[343] = ((160 : GoUInt16));
	s[344] = ((160 : GoUInt16));
	s[345] = ((169 : GoUInt16));
	s[346] = ((170 : GoUInt16));
	s[347] = ((171 : GoUInt16));
	s[348] = ((172 : GoUInt16));
	s[349] = ((173 : GoUInt16));
	s[350] = ((174 : GoUInt16));
	s[351] = ((175 : GoUInt16));
	s[352] = ((176 : GoUInt16));
	s[353] = ((177 : GoUInt16));
	s[354] = ((178 : GoUInt16));
	s[355] = ((179 : GoUInt16));
	s[356] = ((180 : GoUInt16));
	s[357] = ((181 : GoUInt16));
	s[358] = ((182 : GoUInt16));
	s[359] = ((183 : GoUInt16));
	s[360] = ((184 : GoUInt16));
	s[361] = ((185 : GoUInt16));
	s[362] = ((186 : GoUInt16));
	s[363] = ((187 : GoUInt16));
	s[364] = ((188 : GoUInt16));
	s[365] = ((189 : GoUInt16));
	s[366] = ((190 : GoUInt16));
	s[367] = ((191 : GoUInt16));
	s[368] = ((192 : GoUInt16));
	s[369] = ((193 : GoUInt16));
	s[370] = ((194 : GoUInt16));
	s[371] = ((195 : GoUInt16));
	s[372] = ((37 : GoUInt16));
	s[373] = ((38 : GoUInt16));
	s[374] = ((39 : GoUInt16));
	s[375] = ((196 : GoUInt16));
	s[376] = ((40 : GoUInt16));
	s[377] = ((40 : GoUInt16));
	s[378] = ((41 : GoUInt16));
	s[379] = ((40 : GoUInt16));
	s[380] = ((197 : GoUInt16));
	s[381] = ((42 : GoUInt16));
	s[382] = ((43 : GoUInt16));
	s[383] = ((44 : GoUInt16));
	s[384] = ((45 : GoUInt16));
	s[385] = ((46 : GoUInt16));
	s[386] = ((47 : GoUInt16));
	s[387] = ((198 : GoUInt16));
	s[388] = ((48 : GoUInt16));
	s[389] = ((49 : GoUInt16));
	s[390] = ((199 : GoUInt16));
	s[391] = ((156 : GoUInt16));
	s[392] = ((200 : GoUInt16));
	s[393] = ((201 : GoUInt16));
	s[394] = ((156 : GoUInt16));
	s[395] = ((156 : GoUInt16));
	s[396] = ((202 : GoUInt16));
	s[397] = ((156 : GoUInt16));
	s[398] = ((156 : GoUInt16));
	s[399] = ((156 : GoUInt16));
	s[400] = ((203 : GoUInt16));
	s[401] = ((50 : GoUInt16));
	s[402] = ((51 : GoUInt16));
	s[403] = ((52 : GoUInt16));
	s[404] = ((156 : GoUInt16));
	s[405] = ((156 : GoUInt16));
	s[406] = ((156 : GoUInt16));
	s[407] = ((156 : GoUInt16));
	s[408] = ((156 : GoUInt16));
	s[409] = ((156 : GoUInt16));
	s[410] = ((156 : GoUInt16));
	s[411] = ((156 : GoUInt16));
	s[412] = ((156 : GoUInt16));
	s[413] = ((156 : GoUInt16));
	s[414] = ((156 : GoUInt16));
	s[415] = ((156 : GoUInt16));
	s[416] = ((156 : GoUInt16));
	s[417] = ((156 : GoUInt16));
	s[418] = ((156 : GoUInt16));
	s[419] = ((156 : GoUInt16));
	s[420] = ((156 : GoUInt16));
	s[421] = ((156 : GoUInt16));
	s[422] = ((156 : GoUInt16));
	s[423] = ((156 : GoUInt16));
	s[424] = ((204 : GoUInt16));
	s[425] = ((205 : GoUInt16));
	s[426] = ((156 : GoUInt16));
	s[427] = ((206 : GoUInt16));
	s[428] = ((156 : GoUInt16));
	s[429] = ((207 : GoUInt16));
	s[430] = ((208 : GoUInt16));
	s[431] = ((156 : GoUInt16));
	s[432] = ((209 : GoUInt16));
	s[433] = ((53 : GoUInt16));
	s[434] = ((40 : GoUInt16));
	s[435] = ((54 : GoUInt16));
	s[436] = ((210 : GoUInt16));
	s[437] = ((211 : GoUInt16));
	s[438] = ((212 : GoUInt16));
	s[439] = ((213 : GoUInt16));
	s[440] = ((214 : GoUInt16));
	s[441] = ((215 : GoUInt16));
	s[442] = ((216 : GoUInt16));
	s[443] = ((217 : GoUInt16));
	s[444] = ((218 : GoUInt16));
	s[445] = ((219 : GoUInt16));
	s[446] = ((220 : GoUInt16));
	s[447] = ((55 : GoUInt16));
	s[448] = ((56 : GoUInt16));
	s[449] = ((221 : GoUInt16));
	s[450] = ((222 : GoUInt16));
	s[451] = ((223 : GoUInt16));
	s[452] = ((224 : GoUInt16));
	s[453] = ((57 : GoUInt16));
	s[454] = ((58 : GoUInt16));
	s[455] = ((225 : GoUInt16));
	s[456] = ((226 : GoUInt16));
	s[457] = ((59 : GoUInt16));
	s[458] = ((60 : GoUInt16));
	s[459] = ((61 : GoUInt16));
	s[460] = ((62 : GoUInt16));
	s[461] = ((63 : GoUInt16));
	s[462] = ((64 : GoUInt16));
	s[463] = ((65 : GoUInt16));
	s[464] = ((160 : GoUInt16));
	s[465] = ((160 : GoUInt16));
	s[466] = ((160 : GoUInt16));
	s[467] = ((160 : GoUInt16));
	s[468] = ((160 : GoUInt16));
	s[469] = ((160 : GoUInt16));
	s[470] = ((160 : GoUInt16));
	s[471] = ((160 : GoUInt16));
	s[472] = ((160 : GoUInt16));
	s[473] = ((160 : GoUInt16));
	s[474] = ((160 : GoUInt16));
	s[475] = ((160 : GoUInt16));
	s[476] = ((160 : GoUInt16));
	s[477] = ((160 : GoUInt16));
	s[478] = ((160 : GoUInt16));
	s[479] = ((160 : GoUInt16));
	s[480] = ((160 : GoUInt16));
	s[481] = ((160 : GoUInt16));
	s[482] = ((160 : GoUInt16));
	s[483] = ((160 : GoUInt16));
	s[484] = ((160 : GoUInt16));
	s[485] = ((160 : GoUInt16));
	s[486] = ((160 : GoUInt16));
	s[487] = ((160 : GoUInt16));
	s[488] = ((160 : GoUInt16));
	s[489] = ((160 : GoUInt16));
	s[490] = ((160 : GoUInt16));
	s[491] = ((160 : GoUInt16));
	s[492] = ((160 : GoUInt16));
	s[493] = ((160 : GoUInt16));
	s[494] = ((160 : GoUInt16));
	s[495] = ((160 : GoUInt16));
	s[496] = ((160 : GoUInt16));
	s[497] = ((160 : GoUInt16));
	s[498] = ((160 : GoUInt16));
	s[499] = ((160 : GoUInt16));
	s[500] = ((160 : GoUInt16));
	s[501] = ((160 : GoUInt16));
	s[502] = ((160 : GoUInt16));
	s[503] = ((160 : GoUInt16));
	s[504] = ((160 : GoUInt16));
	s[505] = ((160 : GoUInt16));
	s[506] = ((160 : GoUInt16));
	s[507] = ((160 : GoUInt16));
	s[508] = ((160 : GoUInt16));
	s[509] = ((160 : GoUInt16));
	s[510] = ((160 : GoUInt16));
	s[511] = ((160 : GoUInt16));
	s[512] = ((160 : GoUInt16));
	s[513] = ((160 : GoUInt16));
	s[514] = ((160 : GoUInt16));
	s[515] = ((160 : GoUInt16));
	s[516] = ((160 : GoUInt16));
	s[517] = ((160 : GoUInt16));
	s[518] = ((160 : GoUInt16));
	s[519] = ((160 : GoUInt16));
	s[520] = ((160 : GoUInt16));
	s[521] = ((160 : GoUInt16));
	s[522] = ((160 : GoUInt16));
	s[523] = ((160 : GoUInt16));
	s[524] = ((160 : GoUInt16));
	s[525] = ((160 : GoUInt16));
	s[526] = ((160 : GoUInt16));
	s[527] = ((160 : GoUInt16));
	s[528] = ((160 : GoUInt16));
	s[529] = ((160 : GoUInt16));
	s[530] = ((160 : GoUInt16));
	s[531] = ((160 : GoUInt16));
	s[532] = ((160 : GoUInt16));
	s[533] = ((160 : GoUInt16));
	s[534] = ((160 : GoUInt16));
	s[535] = ((160 : GoUInt16));
	s[536] = ((160 : GoUInt16));
	s[537] = ((160 : GoUInt16));
	s[538] = ((160 : GoUInt16));
	s[539] = ((160 : GoUInt16));
	s[540] = ((160 : GoUInt16));
	s[541] = ((160 : GoUInt16));
	s[542] = ((160 : GoUInt16));
	s[543] = ((160 : GoUInt16));
	s[544] = ((160 : GoUInt16));
	s[545] = ((160 : GoUInt16));
	s[546] = ((160 : GoUInt16));
	s[547] = ((160 : GoUInt16));
	s[548] = ((160 : GoUInt16));
	s[549] = ((160 : GoUInt16));
	s[550] = ((160 : GoUInt16));
	s[551] = ((160 : GoUInt16));
	s[552] = ((160 : GoUInt16));
	s[553] = ((160 : GoUInt16));
	s[554] = ((160 : GoUInt16));
	s[555] = ((160 : GoUInt16));
	s[556] = ((160 : GoUInt16));
	s[557] = ((160 : GoUInt16));
	s[558] = ((160 : GoUInt16));
	s[559] = ((160 : GoUInt16));
	s[560] = ((160 : GoUInt16));
	s[561] = ((160 : GoUInt16));
	s[562] = ((160 : GoUInt16));
	s[563] = ((160 : GoUInt16));
	s[564] = ((160 : GoUInt16));
	s[565] = ((160 : GoUInt16));
	s[566] = ((160 : GoUInt16));
	s[567] = ((156 : GoUInt16));
	s[568] = ((160 : GoUInt16));
	s[569] = ((160 : GoUInt16));
	s[570] = ((160 : GoUInt16));
	s[571] = ((160 : GoUInt16));
	s[572] = ((160 : GoUInt16));
	s[573] = ((160 : GoUInt16));
	s[574] = ((160 : GoUInt16));
	s[575] = ((160 : GoUInt16));
	s[576] = ((160 : GoUInt16));
	s[577] = ((160 : GoUInt16));
	s[578] = ((160 : GoUInt16));
	s[579] = ((160 : GoUInt16));
	s[580] = ((160 : GoUInt16));
	s[581] = ((160 : GoUInt16));
	s[582] = ((160 : GoUInt16));
	s[583] = ((160 : GoUInt16));
	s[584] = ((160 : GoUInt16));
	s[585] = ((160 : GoUInt16));
	s[586] = ((160 : GoUInt16));
	s[587] = ((160 : GoUInt16));
	s[588] = ((160 : GoUInt16));
	s[589] = ((160 : GoUInt16));
	s[590] = ((160 : GoUInt16));
	s[591] = ((160 : GoUInt16));
	s[592] = ((160 : GoUInt16));
	s[593] = ((160 : GoUInt16));
	s[594] = ((160 : GoUInt16));
	s[595] = ((160 : GoUInt16));
	s[596] = ((160 : GoUInt16));
	s[597] = ((160 : GoUInt16));
	s[598] = ((160 : GoUInt16));
	s[599] = ((160 : GoUInt16));
	s[600] = ((160 : GoUInt16));
	s[601] = ((160 : GoUInt16));
	s[602] = ((160 : GoUInt16));
	s[603] = ((160 : GoUInt16));
	s[604] = ((160 : GoUInt16));
	s[605] = ((160 : GoUInt16));
	s[606] = ((160 : GoUInt16));
	s[607] = ((160 : GoUInt16));
	s[608] = ((160 : GoUInt16));
	s[609] = ((160 : GoUInt16));
	s[610] = ((160 : GoUInt16));
	s[611] = ((160 : GoUInt16));
	s[612] = ((160 : GoUInt16));
	s[613] = ((160 : GoUInt16));
	s[614] = ((160 : GoUInt16));
	s[615] = ((160 : GoUInt16));
	s[616] = ((160 : GoUInt16));
	s[617] = ((160 : GoUInt16));
	s[618] = ((160 : GoUInt16));
	s[619] = ((160 : GoUInt16));
	s[620] = ((160 : GoUInt16));
	s[621] = ((160 : GoUInt16));
	s[622] = ((160 : GoUInt16));
	s[623] = ((160 : GoUInt16));
	s[624] = ((160 : GoUInt16));
	s[625] = ((160 : GoUInt16));
	s[626] = ((160 : GoUInt16));
	s[627] = ((160 : GoUInt16));
	s[628] = ((160 : GoUInt16));
	s[629] = ((160 : GoUInt16));
	s[630] = ((160 : GoUInt16));
	s[631] = ((160 : GoUInt16));
	s[632] = ((160 : GoUInt16));
	s[633] = ((160 : GoUInt16));
	s[634] = ((160 : GoUInt16));
	s[635] = ((160 : GoUInt16));
	s[636] = ((160 : GoUInt16));
	s[637] = ((160 : GoUInt16));
	s[638] = ((160 : GoUInt16));
	s[639] = ((160 : GoUInt16));
	s[640] = ((160 : GoUInt16));
	s[641] = ((160 : GoUInt16));
	s[642] = ((160 : GoUInt16));
	s[643] = ((160 : GoUInt16));
	s[644] = ((160 : GoUInt16));
	s[645] = ((160 : GoUInt16));
	s[646] = ((160 : GoUInt16));
	s[647] = ((160 : GoUInt16));
	s[648] = ((160 : GoUInt16));
	s[649] = ((160 : GoUInt16));
	s[650] = ((160 : GoUInt16));
	s[651] = ((160 : GoUInt16));
	s[652] = ((160 : GoUInt16));
	s[653] = ((160 : GoUInt16));
	s[654] = ((160 : GoUInt16));
	s[655] = ((160 : GoUInt16));
	s[656] = ((160 : GoUInt16));
	s[657] = ((160 : GoUInt16));
	s[658] = ((160 : GoUInt16));
	s[659] = ((160 : GoUInt16));
	s[660] = ((160 : GoUInt16));
	s[661] = ((160 : GoUInt16));
	s[662] = ((160 : GoUInt16));
	s[663] = ((160 : GoUInt16));
	s[664] = ((160 : GoUInt16));
	s[665] = ((160 : GoUInt16));
	s[666] = ((160 : GoUInt16));
	s[667] = ((160 : GoUInt16));
	s[668] = ((160 : GoUInt16));
	s[669] = ((160 : GoUInt16));
	s[670] = ((160 : GoUInt16));
	s[671] = ((160 : GoUInt16));
	s[672] = ((160 : GoUInt16));
	s[673] = ((160 : GoUInt16));
	s[674] = ((160 : GoUInt16));
	s[675] = ((160 : GoUInt16));
	s[676] = ((160 : GoUInt16));
	s[677] = ((160 : GoUInt16));
	s[678] = ((160 : GoUInt16));
	s[679] = ((160 : GoUInt16));
	s[680] = ((160 : GoUInt16));
	s[681] = ((160 : GoUInt16));
	s[682] = ((160 : GoUInt16));
	s[683] = ((160 : GoUInt16));
	s[684] = ((160 : GoUInt16));
	s[685] = ((160 : GoUInt16));
	s[686] = ((160 : GoUInt16));
	s[687] = ((160 : GoUInt16));
	s[688] = ((160 : GoUInt16));
	s[689] = ((160 : GoUInt16));
	s[690] = ((160 : GoUInt16));
	s[691] = ((160 : GoUInt16));
	s[692] = ((160 : GoUInt16));
	s[693] = ((160 : GoUInt16));
	s[694] = ((160 : GoUInt16));
	s[695] = ((160 : GoUInt16));
	s[696] = ((160 : GoUInt16));
	s[697] = ((160 : GoUInt16));
	s[698] = ((160 : GoUInt16));
	s[699] = ((160 : GoUInt16));
	s[700] = ((160 : GoUInt16));
	s[701] = ((160 : GoUInt16));
	s[702] = ((160 : GoUInt16));
	s[703] = ((227 : GoUInt16));
	s[704] = ((160 : GoUInt16));
	s[705] = ((160 : GoUInt16));
	s[706] = ((160 : GoUInt16));
	s[707] = ((160 : GoUInt16));
	s[708] = ((160 : GoUInt16));
	s[709] = ((160 : GoUInt16));
	s[710] = ((160 : GoUInt16));
	s[711] = ((160 : GoUInt16));
	s[712] = ((160 : GoUInt16));
	s[713] = ((160 : GoUInt16));
	s[714] = ((160 : GoUInt16));
	s[715] = ((160 : GoUInt16));
	s[716] = ((160 : GoUInt16));
	s[717] = ((160 : GoUInt16));
	s[718] = ((160 : GoUInt16));
	s[719] = ((160 : GoUInt16));
	s[720] = ((160 : GoUInt16));
	s[721] = ((160 : GoUInt16));
	s[722] = ((228 : GoUInt16));
	s[723] = ((229 : GoUInt16));
	s[724] = ((160 : GoUInt16));
	s[725] = ((160 : GoUInt16));
	s[726] = ((160 : GoUInt16));
	s[727] = ((160 : GoUInt16));
	s[728] = ((230 : GoUInt16));
	s[729] = ((66 : GoUInt16));
	s[730] = ((67 : GoUInt16));
	s[731] = ((231 : GoUInt16));
	s[732] = ((68 : GoUInt16));
	s[733] = ((69 : GoUInt16));
	s[734] = ((70 : GoUInt16));
	s[735] = ((232 : GoUInt16));
	s[736] = ((233 : GoUInt16));
	s[737] = ((234 : GoUInt16));
	s[738] = ((235 : GoUInt16));
	s[739] = ((236 : GoUInt16));
	s[740] = ((237 : GoUInt16));
	s[741] = ((238 : GoUInt16));
	s[742] = ((239 : GoUInt16));
	s[743] = ((240 : GoUInt16));
	s[744] = ((241 : GoUInt16));
	s[745] = ((242 : GoUInt16));
	s[746] = ((243 : GoUInt16));
	s[747] = ((244 : GoUInt16));
	s[748] = ((245 : GoUInt16));
	s[749] = ((246 : GoUInt16));
	s[750] = ((247 : GoUInt16));
	s[751] = ((248 : GoUInt16));
	s[752] = ((160 : GoUInt16));
	s[753] = ((160 : GoUInt16));
	s[754] = ((160 : GoUInt16));
	s[755] = ((160 : GoUInt16));
	s[756] = ((160 : GoUInt16));
	s[757] = ((160 : GoUInt16));
	s[758] = ((160 : GoUInt16));
	s[759] = ((160 : GoUInt16));
	s[760] = ((160 : GoUInt16));
	s[761] = ((160 : GoUInt16));
	s[762] = ((160 : GoUInt16));
	s[763] = ((160 : GoUInt16));
	s[764] = ((160 : GoUInt16));
	s[765] = ((160 : GoUInt16));
	s[766] = ((160 : GoUInt16));
	s[767] = ((160 : GoUInt16));
	s[768] = ((160 : GoUInt16));
	s[769] = ((160 : GoUInt16));
	s[770] = ((160 : GoUInt16));
	s[771] = ((160 : GoUInt16));
	s[772] = ((160 : GoUInt16));
	s[773] = ((160 : GoUInt16));
	s[774] = ((160 : GoUInt16));
	s[775] = ((160 : GoUInt16));
	s[776] = ((160 : GoUInt16));
	s[777] = ((160 : GoUInt16));
	s[778] = ((160 : GoUInt16));
	s[779] = ((160 : GoUInt16));
	s[780] = ((160 : GoUInt16));
	s[781] = ((160 : GoUInt16));
	s[782] = ((160 : GoUInt16));
	s[783] = ((160 : GoUInt16));
	s[784] = ((160 : GoUInt16));
	s[785] = ((160 : GoUInt16));
	s[786] = ((160 : GoUInt16));
	s[787] = ((160 : GoUInt16));
	s[788] = ((160 : GoUInt16));
	s[789] = ((160 : GoUInt16));
	s[790] = ((160 : GoUInt16));
	s[791] = ((160 : GoUInt16));
	s[792] = ((160 : GoUInt16));
	s[793] = ((160 : GoUInt16));
	s[794] = ((160 : GoUInt16));
	s[795] = ((160 : GoUInt16));
	s[796] = ((160 : GoUInt16));
	s[797] = ((160 : GoUInt16));
	s[798] = ((249 : GoUInt16));
	s[799] = ((250 : GoUInt16));
	s[832] = ((251 : GoUInt16));
	s[833] = ((251 : GoUInt16));
	s[834] = ((251 : GoUInt16));
	s[835] = ((251 : GoUInt16));
	s[836] = ((251 : GoUInt16));
	s[837] = ((251 : GoUInt16));
	s[838] = ((251 : GoUInt16));
	s[839] = ((251 : GoUInt16));
	s[840] = ((251 : GoUInt16));
	s[841] = ((251 : GoUInt16));
	s[842] = ((251 : GoUInt16));
	s[843] = ((251 : GoUInt16));
	s[844] = ((251 : GoUInt16));
	s[845] = ((251 : GoUInt16));
	s[846] = ((251 : GoUInt16));
	s[847] = ((251 : GoUInt16));
	s[848] = ((251 : GoUInt16));
	s[849] = ((251 : GoUInt16));
	s[850] = ((251 : GoUInt16));
	s[851] = ((251 : GoUInt16));
	s[852] = ((251 : GoUInt16));
	s[853] = ((251 : GoUInt16));
	s[854] = ((251 : GoUInt16));
	s[855] = ((251 : GoUInt16));
	s[856] = ((251 : GoUInt16));
	s[857] = ((251 : GoUInt16));
	s[858] = ((251 : GoUInt16));
	s[859] = ((251 : GoUInt16));
	s[860] = ((251 : GoUInt16));
	s[861] = ((251 : GoUInt16));
	s[862] = ((251 : GoUInt16));
	s[863] = ((251 : GoUInt16));
	s[864] = ((251 : GoUInt16));
	s[865] = ((251 : GoUInt16));
	s[866] = ((251 : GoUInt16));
	s[867] = ((251 : GoUInt16));
	s[868] = ((251 : GoUInt16));
	s[869] = ((251 : GoUInt16));
	s[870] = ((251 : GoUInt16));
	s[871] = ((251 : GoUInt16));
	s[872] = ((251 : GoUInt16));
	s[873] = ((251 : GoUInt16));
	s[874] = ((251 : GoUInt16));
	s[875] = ((251 : GoUInt16));
	s[876] = ((251 : GoUInt16));
	s[877] = ((251 : GoUInt16));
	s[878] = ((251 : GoUInt16));
	s[879] = ((251 : GoUInt16));
	s[880] = ((251 : GoUInt16));
	s[881] = ((251 : GoUInt16));
	s[882] = ((251 : GoUInt16));
	s[883] = ((251 : GoUInt16));
	s[884] = ((251 : GoUInt16));
	s[885] = ((251 : GoUInt16));
	s[886] = ((251 : GoUInt16));
	s[887] = ((251 : GoUInt16));
	s[888] = ((251 : GoUInt16));
	s[889] = ((251 : GoUInt16));
	s[890] = ((251 : GoUInt16));
	s[891] = ((251 : GoUInt16));
	s[892] = ((251 : GoUInt16));
	s[893] = ((251 : GoUInt16));
	s[894] = ((251 : GoUInt16));
	s[895] = ((251 : GoUInt16));
	s[896] = ((251 : GoUInt16));
	s[897] = ((251 : GoUInt16));
	s[898] = ((251 : GoUInt16));
	s[899] = ((251 : GoUInt16));
	s[900] = ((251 : GoUInt16));
	s[901] = ((251 : GoUInt16));
	s[902] = ((251 : GoUInt16));
	s[903] = ((251 : GoUInt16));
	s[904] = ((251 : GoUInt16));
	s[905] = ((251 : GoUInt16));
	s[906] = ((251 : GoUInt16));
	s[907] = ((251 : GoUInt16));
	s[908] = ((251 : GoUInt16));
	s[909] = ((251 : GoUInt16));
	s[910] = ((251 : GoUInt16));
	s[911] = ((251 : GoUInt16));
	s[912] = ((251 : GoUInt16));
	s[913] = ((251 : GoUInt16));
	s[914] = ((251 : GoUInt16));
	s[915] = ((251 : GoUInt16));
	s[916] = ((251 : GoUInt16));
	s[917] = ((251 : GoUInt16));
	s[918] = ((251 : GoUInt16));
	s[919] = ((251 : GoUInt16));
	s[920] = ((251 : GoUInt16));
	s[921] = ((251 : GoUInt16));
	s[922] = ((251 : GoUInt16));
	s[923] = ((251 : GoUInt16));
	s[924] = ((251 : GoUInt16));
	s[925] = ((251 : GoUInt16));
	s[926] = ((251 : GoUInt16));
	s[927] = ((251 : GoUInt16));
	s[928] = ((251 : GoUInt16));
	s[929] = ((251 : GoUInt16));
	s[930] = ((251 : GoUInt16));
	s[931] = ((251 : GoUInt16));
	s[932] = ((252 : GoUInt16));
	s[933] = ((253 : GoUInt16));
	s[934] = ((254 : GoUInt16));
	s[935] = ((255 : GoUInt16));
	s[936] = ((71 : GoUInt16));
	s[937] = ((256 : GoUInt16));
	s[938] = ((257 : GoUInt16));
	s[939] = ((72 : GoUInt16));
	s[940] = ((73 : GoUInt16));
	s[941] = ((74 : GoUInt16));
	s[942] = ((75 : GoUInt16));
	s[943] = ((76 : GoUInt16));
	s[944] = ((258 : GoUInt16));
	s[945] = ((77 : GoUInt16));
	s[946] = ((78 : GoUInt16));
	s[947] = ((79 : GoUInt16));
	s[948] = ((80 : GoUInt16));
	s[949] = ((81 : GoUInt16));
	s[950] = ((259 : GoUInt16));
	s[951] = ((82 : GoUInt16));
	s[952] = ((83 : GoUInt16));
	s[953] = ((84 : GoUInt16));
	s[954] = ((85 : GoUInt16));
	s[955] = ((86 : GoUInt16));
	s[956] = ((87 : GoUInt16));
	s[957] = ((88 : GoUInt16));
	s[958] = ((89 : GoUInt16));
	s[959] = ((90 : GoUInt16));
	s[960] = ((260 : GoUInt16));
	s[961] = ((261 : GoUInt16));
	s[962] = ((160 : GoUInt16));
	s[963] = ((262 : GoUInt16));
	s[964] = ((263 : GoUInt16));
	s[965] = ((156 : GoUInt16));
	s[966] = ((264 : GoUInt16));
	s[967] = ((265 : GoUInt16));
	s[968] = ((251 : GoUInt16));
	s[969] = ((251 : GoUInt16));
	s[970] = ((266 : GoUInt16));
	s[971] = ((267 : GoUInt16));
	s[972] = ((268 : GoUInt16));
	s[973] = ((269 : GoUInt16));
	s[974] = ((270 : GoUInt16));
	s[975] = ((271 : GoUInt16));
	s[976] = ((272 : GoUInt16));
	s[977] = ((160 : GoUInt16));
	s[978] = ((273 : GoUInt16));
	s[979] = ((274 : GoUInt16));
	s[980] = ((275 : GoUInt16));
	s[981] = ((276 : GoUInt16));
	s[982] = ((251 : GoUInt16));
	s[983] = ((251 : GoUInt16));
	s[984] = ((160 : GoUInt16));
	s[985] = ((160 : GoUInt16));
	s[986] = ((160 : GoUInt16));
	s[987] = ((160 : GoUInt16));
	s[988] = ((277 : GoUInt16));
	s[989] = ((278 : GoUInt16));
	s[990] = ((251 : GoUInt16));
	s[991] = ((251 : GoUInt16));
	s[992] = ((279 : GoUInt16));
	s[993] = ((280 : GoUInt16));
	s[994] = ((281 : GoUInt16));
	s[995] = ((282 : GoUInt16));
	s[996] = ((283 : GoUInt16));
	s[997] = ((251 : GoUInt16));
	s[998] = ((284 : GoUInt16));
	s[999] = ((285 : GoUInt16));
	s[1000] = ((286 : GoUInt16));
	s[1001] = ((287 : GoUInt16));
	s[1002] = ((288 : GoUInt16));
	s[1003] = ((91 : GoUInt16));
	s[1004] = ((289 : GoUInt16));
	s[1005] = ((290 : GoUInt16));
	s[1006] = ((92 : GoUInt16));
	s[1007] = ((251 : GoUInt16));
	s[1008] = ((291 : GoUInt16));
	s[1009] = ((292 : GoUInt16));
	s[1010] = ((293 : GoUInt16));
	s[1011] = ((294 : GoUInt16));
	s[1012] = ((295 : GoUInt16));
	s[1013] = ((251 : GoUInt16));
	s[1014] = ((251 : GoUInt16));
	s[1015] = ((251 : GoUInt16));
	s[1016] = ((251 : GoUInt16));
	s[1017] = ((296 : GoUInt16));
	s[1018] = ((297 : GoUInt16));
	s[1019] = ((251 : GoUInt16));
	s[1020] = ((298 : GoUInt16));
	s[1021] = ((299 : GoUInt16));
	s[1022] = ((300 : GoUInt16));
	s[1023] = ((301 : GoUInt16));
	s[1024] = ((302 : GoUInt16));
	s[1025] = ((303 : GoUInt16));
	s[1026] = ((304 : GoUInt16));
	s[1027] = ((305 : GoUInt16));
	s[1028] = ((306 : GoUInt16));
	s[1029] = ((307 : GoUInt16));
	s[1030] = ((308 : GoUInt16));
	s[1031] = ((309 : GoUInt16));
	s[1032] = ((310 : GoUInt16));
	s[1033] = ((251 : GoUInt16));
	s[1034] = ((311 : GoUInt16));
	s[1035] = ((312 : GoUInt16));
	s[1036] = ((93 : GoUInt16));
	s[1037] = ((94 : GoUInt16));
	s[1038] = ((251 : GoUInt16));
	s[1039] = ((251 : GoUInt16));
	s[1040] = ((313 : GoUInt16));
	s[1041] = ((314 : GoUInt16));
	s[1042] = ((315 : GoUInt16));
	s[1043] = ((316 : GoUInt16));
	s[1044] = ((251 : GoUInt16));
	s[1045] = ((251 : GoUInt16));
	s[1046] = ((317 : GoUInt16));
	s[1047] = ((318 : GoUInt16));
	s[1048] = ((319 : GoUInt16));
	s[1049] = ((320 : GoUInt16));
	s[1050] = ((321 : GoUInt16));
	s[1051] = ((322 : GoUInt16));
	s[1052] = ((323 : GoUInt16));
	s[1053] = ((251 : GoUInt16));
	s[1054] = ((251 : GoUInt16));
	s[1055] = ((251 : GoUInt16));
	s[1056] = ((324 : GoUInt16));
	s[1057] = ((251 : GoUInt16));
	s[1058] = ((325 : GoUInt16));
	s[1059] = ((326 : GoUInt16));
	s[1060] = ((95 : GoUInt16));
	s[1061] = ((327 : GoUInt16));
	s[1062] = ((328 : GoUInt16));
	s[1063] = ((329 : GoUInt16));
	s[1064] = ((330 : GoUInt16));
	s[1065] = ((331 : GoUInt16));
	s[1066] = ((332 : GoUInt16));
	s[1067] = ((333 : GoUInt16));
	s[1068] = ((251 : GoUInt16));
	s[1069] = ((251 : GoUInt16));
	s[1070] = ((251 : GoUInt16));
	s[1071] = ((251 : GoUInt16));
	s[1072] = ((334 : GoUInt16));
	s[1073] = ((335 : GoUInt16));
	s[1074] = ((336 : GoUInt16));
	s[1075] = ((251 : GoUInt16));
	s[1076] = ((337 : GoUInt16));
	s[1077] = ((338 : GoUInt16));
	s[1078] = ((339 : GoUInt16));
	s[1079] = ((251 : GoUInt16));
	s[1080] = ((251 : GoUInt16));
	s[1081] = ((251 : GoUInt16));
	s[1082] = ((251 : GoUInt16));
	s[1083] = ((340 : GoUInt16));
	s[1084] = ((251 : GoUInt16));
	s[1085] = ((251 : GoUInt16));
	s[1086] = ((341 : GoUInt16));
	s[1087] = ((342 : GoUInt16));
	s[1088] = ((160 : GoUInt16));
	s[1089] = ((160 : GoUInt16));
	s[1090] = ((160 : GoUInt16));
	s[1091] = ((160 : GoUInt16));
	s[1092] = ((160 : GoUInt16));
	s[1093] = ((160 : GoUInt16));
	s[1094] = ((160 : GoUInt16));
	s[1095] = ((160 : GoUInt16));
	s[1096] = ((160 : GoUInt16));
	s[1097] = ((160 : GoUInt16));
	s[1098] = ((160 : GoUInt16));
	s[1099] = ((160 : GoUInt16));
	s[1100] = ((160 : GoUInt16));
	s[1101] = ((160 : GoUInt16));
	s[1102] = ((343 : GoUInt16));
	s[1103] = ((251 : GoUInt16));
	s[1104] = ((156 : GoUInt16));
	s[1105] = ((344 : GoUInt16));
	s[1106] = ((160 : GoUInt16));
	s[1107] = ((160 : GoUInt16));
	s[1108] = ((160 : GoUInt16));
	s[1109] = ((345 : GoUInt16));
	s[1110] = ((251 : GoUInt16));
	s[1111] = ((251 : GoUInt16));
	s[1112] = ((251 : GoUInt16));
	s[1113] = ((251 : GoUInt16));
	s[1114] = ((251 : GoUInt16));
	s[1115] = ((251 : GoUInt16));
	s[1116] = ((251 : GoUInt16));
	s[1117] = ((251 : GoUInt16));
	s[1118] = ((251 : GoUInt16));
	s[1119] = ((251 : GoUInt16));
	s[1120] = ((251 : GoUInt16));
	s[1121] = ((251 : GoUInt16));
	s[1122] = ((251 : GoUInt16));
	s[1123] = ((251 : GoUInt16));
	s[1124] = ((251 : GoUInt16));
	s[1125] = ((251 : GoUInt16));
	s[1126] = ((251 : GoUInt16));
	s[1127] = ((251 : GoUInt16));
	s[1128] = ((251 : GoUInt16));
	s[1129] = ((251 : GoUInt16));
	s[1130] = ((251 : GoUInt16));
	s[1131] = ((251 : GoUInt16));
	s[1132] = ((251 : GoUInt16));
	s[1133] = ((251 : GoUInt16));
	s[1134] = ((251 : GoUInt16));
	s[1135] = ((251 : GoUInt16));
	s[1136] = ((251 : GoUInt16));
	s[1137] = ((251 : GoUInt16));
	s[1138] = ((251 : GoUInt16));
	s[1139] = ((251 : GoUInt16));
	s[1140] = ((251 : GoUInt16));
	s[1141] = ((251 : GoUInt16));
	s[1142] = ((251 : GoUInt16));
	s[1143] = ((251 : GoUInt16));
	s[1144] = ((251 : GoUInt16));
	s[1145] = ((251 : GoUInt16));
	s[1146] = ((251 : GoUInt16));
	s[1147] = ((251 : GoUInt16));
	s[1148] = ((251 : GoUInt16));
	s[1149] = ((251 : GoUInt16));
	s[1150] = ((251 : GoUInt16));
	s[1151] = ((251 : GoUInt16));
	s[1152] = ((160 : GoUInt16));
	s[1153] = ((160 : GoUInt16));
	s[1154] = ((160 : GoUInt16));
	s[1155] = ((160 : GoUInt16));
	s[1156] = ((160 : GoUInt16));
	s[1157] = ((160 : GoUInt16));
	s[1158] = ((160 : GoUInt16));
	s[1159] = ((160 : GoUInt16));
	s[1160] = ((160 : GoUInt16));
	s[1161] = ((160 : GoUInt16));
	s[1162] = ((160 : GoUInt16));
	s[1163] = ((160 : GoUInt16));
	s[1164] = ((160 : GoUInt16));
	s[1165] = ((160 : GoUInt16));
	s[1166] = ((160 : GoUInt16));
	s[1167] = ((160 : GoUInt16));
	s[1168] = ((346 : GoUInt16));
	s[1169] = ((251 : GoUInt16));
	s[1170] = ((251 : GoUInt16));
	s[1171] = ((251 : GoUInt16));
	s[1172] = ((251 : GoUInt16));
	s[1173] = ((251 : GoUInt16));
	s[1174] = ((251 : GoUInt16));
	s[1175] = ((251 : GoUInt16));
	s[1176] = ((251 : GoUInt16));
	s[1177] = ((251 : GoUInt16));
	s[1178] = ((251 : GoUInt16));
	s[1179] = ((251 : GoUInt16));
	s[1180] = ((251 : GoUInt16));
	s[1181] = ((251 : GoUInt16));
	s[1182] = ((251 : GoUInt16));
	s[1183] = ((251 : GoUInt16));
	s[1184] = ((251 : GoUInt16));
	s[1185] = ((251 : GoUInt16));
	s[1186] = ((251 : GoUInt16));
	s[1187] = ((251 : GoUInt16));
	s[1188] = ((251 : GoUInt16));
	s[1189] = ((251 : GoUInt16));
	s[1190] = ((251 : GoUInt16));
	s[1191] = ((251 : GoUInt16));
	s[1192] = ((251 : GoUInt16));
	s[1193] = ((251 : GoUInt16));
	s[1194] = ((251 : GoUInt16));
	s[1195] = ((251 : GoUInt16));
	s[1196] = ((251 : GoUInt16));
	s[1197] = ((251 : GoUInt16));
	s[1198] = ((251 : GoUInt16));
	s[1199] = ((251 : GoUInt16));
	s[1200] = ((251 : GoUInt16));
	s[1201] = ((251 : GoUInt16));
	s[1202] = ((251 : GoUInt16));
	s[1203] = ((251 : GoUInt16));
	s[1204] = ((251 : GoUInt16));
	s[1205] = ((251 : GoUInt16));
	s[1206] = ((251 : GoUInt16));
	s[1207] = ((251 : GoUInt16));
	s[1208] = ((251 : GoUInt16));
	s[1209] = ((251 : GoUInt16));
	s[1210] = ((251 : GoUInt16));
	s[1211] = ((251 : GoUInt16));
	s[1212] = ((251 : GoUInt16));
	s[1213] = ((251 : GoUInt16));
	s[1214] = ((251 : GoUInt16));
	s[1215] = ((251 : GoUInt16));
	s[1216] = ((251 : GoUInt16));
	s[1217] = ((251 : GoUInt16));
	s[1218] = ((251 : GoUInt16));
	s[1219] = ((251 : GoUInt16));
	s[1220] = ((251 : GoUInt16));
	s[1221] = ((251 : GoUInt16));
	s[1222] = ((251 : GoUInt16));
	s[1223] = ((251 : GoUInt16));
	s[1224] = ((251 : GoUInt16));
	s[1225] = ((251 : GoUInt16));
	s[1226] = ((251 : GoUInt16));
	s[1227] = ((251 : GoUInt16));
	s[1228] = ((251 : GoUInt16));
	s[1229] = ((251 : GoUInt16));
	s[1230] = ((251 : GoUInt16));
	s[1231] = ((251 : GoUInt16));
	s[1232] = ((160 : GoUInt16));
	s[1233] = ((160 : GoUInt16));
	s[1234] = ((160 : GoUInt16));
	s[1235] = ((160 : GoUInt16));
	s[1236] = ((160 : GoUInt16));
	s[1237] = ((160 : GoUInt16));
	s[1238] = ((160 : GoUInt16));
	s[1239] = ((160 : GoUInt16));
	s[1240] = ((160 : GoUInt16));
	s[1241] = ((347 : GoUInt16));
	s[1242] = ((251 : GoUInt16));
	s[1243] = ((251 : GoUInt16));
	s[1244] = ((251 : GoUInt16));
	s[1245] = ((251 : GoUInt16));
	s[1246] = ((251 : GoUInt16));
	s[1247] = ((251 : GoUInt16));
	s[1248] = ((251 : GoUInt16));
	s[1249] = ((251 : GoUInt16));
	s[1250] = ((251 : GoUInt16));
	s[1251] = ((251 : GoUInt16));
	s[1252] = ((251 : GoUInt16));
	s[1253] = ((251 : GoUInt16));
	s[1254] = ((251 : GoUInt16));
	s[1255] = ((251 : GoUInt16));
	s[1256] = ((251 : GoUInt16));
	s[1257] = ((251 : GoUInt16));
	s[1258] = ((251 : GoUInt16));
	s[1259] = ((251 : GoUInt16));
	s[1260] = ((251 : GoUInt16));
	s[1261] = ((251 : GoUInt16));
	s[1262] = ((251 : GoUInt16));
	s[1263] = ((251 : GoUInt16));
	s[1264] = ((251 : GoUInt16));
	s[1265] = ((251 : GoUInt16));
	s[1266] = ((251 : GoUInt16));
	s[1267] = ((251 : GoUInt16));
	s[1268] = ((251 : GoUInt16));
	s[1269] = ((251 : GoUInt16));
	s[1270] = ((251 : GoUInt16));
	s[1271] = ((251 : GoUInt16));
	s[1272] = ((251 : GoUInt16));
	s[1273] = ((251 : GoUInt16));
	s[1274] = ((251 : GoUInt16));
	s[1275] = ((251 : GoUInt16));
	s[1276] = ((251 : GoUInt16));
	s[1277] = ((251 : GoUInt16));
	s[1278] = ((251 : GoUInt16));
	s[1279] = ((251 : GoUInt16));
	s[1280] = ((251 : GoUInt16));
	s[1281] = ((251 : GoUInt16));
	s[1282] = ((251 : GoUInt16));
	s[1283] = ((251 : GoUInt16));
	s[1284] = ((251 : GoUInt16));
	s[1285] = ((251 : GoUInt16));
	s[1286] = ((251 : GoUInt16));
	s[1287] = ((251 : GoUInt16));
	s[1288] = ((251 : GoUInt16));
	s[1289] = ((251 : GoUInt16));
	s[1290] = ((251 : GoUInt16));
	s[1291] = ((251 : GoUInt16));
	s[1292] = ((251 : GoUInt16));
	s[1293] = ((251 : GoUInt16));
	s[1294] = ((251 : GoUInt16));
	s[1295] = ((251 : GoUInt16));
	s[1296] = ((251 : GoUInt16));
	s[1297] = ((251 : GoUInt16));
	s[1298] = ((251 : GoUInt16));
	s[1299] = ((251 : GoUInt16));
	s[1300] = ((251 : GoUInt16));
	s[1301] = ((251 : GoUInt16));
	s[1302] = ((251 : GoUInt16));
	s[1303] = ((251 : GoUInt16));
	s[1304] = ((251 : GoUInt16));
	s[1305] = ((251 : GoUInt16));
	s[1306] = ((251 : GoUInt16));
	s[1307] = ((251 : GoUInt16));
	s[1308] = ((251 : GoUInt16));
	s[1309] = ((251 : GoUInt16));
	s[1310] = ((251 : GoUInt16));
	s[1311] = ((251 : GoUInt16));
	s[1312] = ((160 : GoUInt16));
	s[1313] = ((160 : GoUInt16));
	s[1314] = ((160 : GoUInt16));
	s[1315] = ((160 : GoUInt16));
	s[1316] = ((160 : GoUInt16));
	s[1317] = ((160 : GoUInt16));
	s[1318] = ((160 : GoUInt16));
	s[1319] = ((160 : GoUInt16));
	s[1320] = ((333 : GoUInt16));
	s[1321] = ((348 : GoUInt16));
	s[1322] = ((251 : GoUInt16));
	s[1323] = ((349 : GoUInt16));
	s[1324] = ((350 : GoUInt16));
	s[1325] = ((351 : GoUInt16));
	s[1326] = ((352 : GoUInt16));
	s[1327] = ((251 : GoUInt16));
	s[1328] = ((251 : GoUInt16));
	s[1329] = ((251 : GoUInt16));
	s[1330] = ((251 : GoUInt16));
	s[1331] = ((251 : GoUInt16));
	s[1332] = ((251 : GoUInt16));
	s[1333] = ((251 : GoUInt16));
	s[1334] = ((251 : GoUInt16));
	s[1335] = ((251 : GoUInt16));
	s[1336] = ((251 : GoUInt16));
	s[1337] = ((353 : GoUInt16));
	s[1338] = ((354 : GoUInt16));
	s[1339] = ((251 : GoUInt16));
	s[1340] = ((160 : GoUInt16));
	s[1341] = ((355 : GoUInt16));
	s[1342] = ((356 : GoUInt16));
	s[1343] = ((357 : GoUInt16));
	s[1344] = ((160 : GoUInt16));
	s[1345] = ((160 : GoUInt16));
	s[1346] = ((160 : GoUInt16));
	s[1347] = ((160 : GoUInt16));
	s[1348] = ((160 : GoUInt16));
	s[1349] = ((160 : GoUInt16));
	s[1350] = ((160 : GoUInt16));
	s[1351] = ((160 : GoUInt16));
	s[1352] = ((160 : GoUInt16));
	s[1353] = ((160 : GoUInt16));
	s[1354] = ((160 : GoUInt16));
	s[1355] = ((160 : GoUInt16));
	s[1356] = ((160 : GoUInt16));
	s[1357] = ((160 : GoUInt16));
	s[1358] = ((160 : GoUInt16));
	s[1359] = ((160 : GoUInt16));
	s[1360] = ((160 : GoUInt16));
	s[1361] = ((160 : GoUInt16));
	s[1362] = ((160 : GoUInt16));
	s[1363] = ((160 : GoUInt16));
	s[1364] = ((160 : GoUInt16));
	s[1365] = ((160 : GoUInt16));
	s[1366] = ((160 : GoUInt16));
	s[1367] = ((160 : GoUInt16));
	s[1368] = ((160 : GoUInt16));
	s[1369] = ((160 : GoUInt16));
	s[1370] = ((160 : GoUInt16));
	s[1371] = ((160 : GoUInt16));
	s[1372] = ((160 : GoUInt16));
	s[1373] = ((160 : GoUInt16));
	s[1374] = ((160 : GoUInt16));
	s[1375] = ((358 : GoUInt16));
	s[1376] = ((160 : GoUInt16));
	s[1377] = ((160 : GoUInt16));
	s[1378] = ((160 : GoUInt16));
	s[1379] = ((160 : GoUInt16));
	s[1380] = ((160 : GoUInt16));
	s[1381] = ((160 : GoUInt16));
	s[1382] = ((160 : GoUInt16));
	s[1383] = ((160 : GoUInt16));
	s[1384] = ((160 : GoUInt16));
	s[1385] = ((160 : GoUInt16));
	s[1386] = ((160 : GoUInt16));
	s[1387] = ((160 : GoUInt16));
	s[1388] = ((160 : GoUInt16));
	s[1389] = ((160 : GoUInt16));
	s[1390] = ((160 : GoUInt16));
	s[1391] = ((160 : GoUInt16));
	s[1392] = ((160 : GoUInt16));
	s[1393] = ((160 : GoUInt16));
	s[1394] = ((160 : GoUInt16));
	s[1395] = ((359 : GoUInt16));
	s[1396] = ((360 : GoUInt16));
	s[1397] = ((251 : GoUInt16));
	s[1398] = ((251 : GoUInt16));
	s[1399] = ((251 : GoUInt16));
	s[1400] = ((251 : GoUInt16));
	s[1401] = ((251 : GoUInt16));
	s[1402] = ((251 : GoUInt16));
	s[1403] = ((251 : GoUInt16));
	s[1404] = ((251 : GoUInt16));
	s[1405] = ((251 : GoUInt16));
	s[1406] = ((251 : GoUInt16));
	s[1407] = ((251 : GoUInt16));
	s[1408] = ((160 : GoUInt16));
	s[1409] = ((160 : GoUInt16));
	s[1410] = ((160 : GoUInt16));
	s[1411] = ((160 : GoUInt16));
	s[1412] = ((361 : GoUInt16));
	s[1413] = ((362 : GoUInt16));
	s[1414] = ((160 : GoUInt16));
	s[1415] = ((160 : GoUInt16));
	s[1416] = ((160 : GoUInt16));
	s[1417] = ((160 : GoUInt16));
	s[1418] = ((160 : GoUInt16));
	s[1419] = ((363 : GoUInt16));
	s[1420] = ((251 : GoUInt16));
	s[1421] = ((251 : GoUInt16));
	s[1422] = ((251 : GoUInt16));
	s[1423] = ((251 : GoUInt16));
	s[1424] = ((251 : GoUInt16));
	s[1425] = ((251 : GoUInt16));
	s[1426] = ((251 : GoUInt16));
	s[1427] = ((251 : GoUInt16));
	s[1428] = ((251 : GoUInt16));
	s[1429] = ((251 : GoUInt16));
	s[1430] = ((251 : GoUInt16));
	s[1431] = ((251 : GoUInt16));
	s[1432] = ((251 : GoUInt16));
	s[1433] = ((251 : GoUInt16));
	s[1434] = ((251 : GoUInt16));
	s[1435] = ((251 : GoUInt16));
	s[1436] = ((251 : GoUInt16));
	s[1437] = ((251 : GoUInt16));
	s[1438] = ((251 : GoUInt16));
	s[1439] = ((251 : GoUInt16));
	s[1440] = ((251 : GoUInt16));
	s[1441] = ((251 : GoUInt16));
	s[1442] = ((251 : GoUInt16));
	s[1443] = ((251 : GoUInt16));
	s[1444] = ((251 : GoUInt16));
	s[1445] = ((251 : GoUInt16));
	s[1446] = ((251 : GoUInt16));
	s[1447] = ((251 : GoUInt16));
	s[1448] = ((251 : GoUInt16));
	s[1449] = ((251 : GoUInt16));
	s[1450] = ((251 : GoUInt16));
	s[1451] = ((251 : GoUInt16));
	s[1452] = ((251 : GoUInt16));
	s[1453] = ((251 : GoUInt16));
	s[1454] = ((251 : GoUInt16));
	s[1455] = ((251 : GoUInt16));
	s[1456] = ((160 : GoUInt16));
	s[1457] = ((364 : GoUInt16));
	s[1458] = ((365 : GoUInt16));
	s[1459] = ((251 : GoUInt16));
	s[1460] = ((251 : GoUInt16));
	s[1461] = ((251 : GoUInt16));
	s[1462] = ((251 : GoUInt16));
	s[1463] = ((251 : GoUInt16));
	s[1464] = ((251 : GoUInt16));
	s[1465] = ((251 : GoUInt16));
	s[1466] = ((251 : GoUInt16));
	s[1467] = ((251 : GoUInt16));
	s[1468] = ((251 : GoUInt16));
	s[1469] = ((251 : GoUInt16));
	s[1470] = ((251 : GoUInt16));
	s[1471] = ((251 : GoUInt16));
	s[1472] = ((156 : GoUInt16));
	s[1473] = ((156 : GoUInt16));
	s[1474] = ((156 : GoUInt16));
	s[1475] = ((366 : GoUInt16));
	s[1476] = ((367 : GoUInt16));
	s[1477] = ((368 : GoUInt16));
	s[1478] = ((369 : GoUInt16));
	s[1479] = ((370 : GoUInt16));
	s[1480] = ((156 : GoUInt16));
	s[1481] = ((371 : GoUInt16));
	s[1482] = ((251 : GoUInt16));
	s[1483] = ((372 : GoUInt16));
	s[1484] = ((156 : GoUInt16));
	s[1485] = ((373 : GoUInt16));
	s[1486] = ((251 : GoUInt16));
	s[1487] = ((251 : GoUInt16));
	s[1488] = ((96 : GoUInt16));
	s[1489] = ((97 : GoUInt16));
	s[1490] = ((98 : GoUInt16));
	s[1491] = ((99 : GoUInt16));
	s[1492] = ((100 : GoUInt16));
	s[1493] = ((101 : GoUInt16));
	s[1494] = ((102 : GoUInt16));
	s[1495] = ((103 : GoUInt16));
	s[1496] = ((104 : GoUInt16));
	s[1497] = ((105 : GoUInt16));
	s[1498] = ((106 : GoUInt16));
	s[1499] = ((107 : GoUInt16));
	s[1500] = ((108 : GoUInt16));
	s[1501] = ((109 : GoUInt16));
	s[1502] = ((110 : GoUInt16));
	s[1503] = ((111 : GoUInt16));
	s[1504] = ((156 : GoUInt16));
	s[1505] = ((156 : GoUInt16));
	s[1506] = ((156 : GoUInt16));
	s[1507] = ((156 : GoUInt16));
	s[1508] = ((156 : GoUInt16));
	s[1509] = ((156 : GoUInt16));
	s[1510] = ((156 : GoUInt16));
	s[1511] = ((156 : GoUInt16));
	s[1512] = ((374 : GoUInt16));
	s[1513] = ((375 : GoUInt16));
	s[1514] = ((376 : GoUInt16));
	s[1515] = ((251 : GoUInt16));
	s[1516] = ((251 : GoUInt16));
	s[1517] = ((251 : GoUInt16));
	s[1518] = ((251 : GoUInt16));
	s[1519] = ((251 : GoUInt16));
	s[1520] = ((251 : GoUInt16));
	s[1521] = ((251 : GoUInt16));
	s[1522] = ((251 : GoUInt16));
	s[1523] = ((251 : GoUInt16));
	s[1524] = ((251 : GoUInt16));
	s[1525] = ((251 : GoUInt16));
	s[1526] = ((251 : GoUInt16));
	s[1527] = ((251 : GoUInt16));
	s[1528] = ((251 : GoUInt16));
	s[1529] = ((251 : GoUInt16));
	s[1530] = ((251 : GoUInt16));
	s[1531] = ((251 : GoUInt16));
	s[1532] = ((251 : GoUInt16));
	s[1533] = ((251 : GoUInt16));
	s[1534] = ((251 : GoUInt16));
	s[1535] = ((251 : GoUInt16));
	s[1536] = ((377 : GoUInt16));
	s[1537] = ((251 : GoUInt16));
	s[1538] = ((251 : GoUInt16));
	s[1539] = ((251 : GoUInt16));
	s[1540] = ((378 : GoUInt16));
	s[1541] = ((379 : GoUInt16));
	s[1542] = ((251 : GoUInt16));
	s[1543] = ((251 : GoUInt16));
	s[1544] = ((251 : GoUInt16));
	s[1545] = ((251 : GoUInt16));
	s[1546] = ((251 : GoUInt16));
	s[1547] = ((380 : GoUInt16));
	s[1548] = ((251 : GoUInt16));
	s[1549] = ((251 : GoUInt16));
	s[1550] = ((251 : GoUInt16));
	s[1551] = ((251 : GoUInt16));
	s[1552] = ((251 : GoUInt16));
	s[1553] = ((251 : GoUInt16));
	s[1554] = ((251 : GoUInt16));
	s[1555] = ((251 : GoUInt16));
	s[1556] = ((251 : GoUInt16));
	s[1557] = ((251 : GoUInt16));
	s[1558] = ((251 : GoUInt16));
	s[1559] = ((251 : GoUInt16));
	s[1560] = ((251 : GoUInt16));
	s[1561] = ((251 : GoUInt16));
	s[1562] = ((251 : GoUInt16));
	s[1563] = ((251 : GoUInt16));
	s[1564] = ((251 : GoUInt16));
	s[1565] = ((251 : GoUInt16));
	s[1566] = ((251 : GoUInt16));
	s[1567] = ((251 : GoUInt16));
	s[1568] = ((291 : GoUInt16));
	s[1569] = ((291 : GoUInt16));
	s[1570] = ((291 : GoUInt16));
	s[1571] = ((381 : GoUInt16));
	s[1572] = ((112 : GoUInt16));
	s[1573] = ((382 : GoUInt16));
	s[1574] = ((251 : GoUInt16));
	s[1575] = ((251 : GoUInt16));
	s[1576] = ((251 : GoUInt16));
	s[1577] = ((251 : GoUInt16));
	s[1578] = ((251 : GoUInt16));
	s[1579] = ((251 : GoUInt16));
	s[1580] = ((251 : GoUInt16));
	s[1581] = ((251 : GoUInt16));
	s[1582] = ((251 : GoUInt16));
	s[1583] = ((251 : GoUInt16));
	s[1584] = ((251 : GoUInt16));
	s[1585] = ((383 : GoUInt16));
	s[1586] = ((384 : GoUInt16));
	s[1587] = ((251 : GoUInt16));
	s[1588] = ((385 : GoUInt16));
	s[1589] = ((251 : GoUInt16));
	s[1590] = ((251 : GoUInt16));
	s[1591] = ((251 : GoUInt16));
	s[1592] = ((113 : GoUInt16));
	s[1593] = ((114 : GoUInt16));
	s[1594] = ((115 : GoUInt16));
	s[1595] = ((386 : GoUInt16));
	s[1596] = ((251 : GoUInt16));
	s[1597] = ((251 : GoUInt16));
	s[1598] = ((251 : GoUInt16));
	s[1599] = ((251 : GoUInt16));
	s[1600] = ((387 : GoUInt16));
	s[1601] = ((156 : GoUInt16));
	s[1602] = ((388 : GoUInt16));
	s[1603] = ((389 : GoUInt16));
	s[1604] = ((116 : GoUInt16));
	s[1605] = ((117 : GoUInt16));
	s[1606] = ((390 : GoUInt16));
	s[1607] = ((391 : GoUInt16));
	s[1608] = ((118 : GoUInt16));
	s[1609] = ((392 : GoUInt16));
	s[1610] = ((251 : GoUInt16));
	s[1611] = ((251 : GoUInt16));
	s[1612] = ((156 : GoUInt16));
	s[1613] = ((156 : GoUInt16));
	s[1614] = ((156 : GoUInt16));
	s[1615] = ((156 : GoUInt16));
	s[1616] = ((156 : GoUInt16));
	s[1617] = ((156 : GoUInt16));
	s[1618] = ((156 : GoUInt16));
	s[1619] = ((156 : GoUInt16));
	s[1620] = ((156 : GoUInt16));
	s[1621] = ((156 : GoUInt16));
	s[1622] = ((156 : GoUInt16));
	s[1623] = ((156 : GoUInt16));
	s[1624] = ((156 : GoUInt16));
	s[1625] = ((156 : GoUInt16));
	s[1626] = ((156 : GoUInt16));
	s[1627] = ((393 : GoUInt16));
	s[1628] = ((156 : GoUInt16));
	s[1629] = ((394 : GoUInt16));
	s[1630] = ((156 : GoUInt16));
	s[1631] = ((395 : GoUInt16));
	s[1632] = ((396 : GoUInt16));
	s[1633] = ((397 : GoUInt16));
	s[1634] = ((398 : GoUInt16));
	s[1635] = ((251 : GoUInt16));
	s[1636] = ((156 : GoUInt16));
	s[1637] = ((399 : GoUInt16));
	s[1638] = ((156 : GoUInt16));
	s[1639] = ((400 : GoUInt16));
	s[1640] = ((156 : GoUInt16));
	s[1641] = ((401 : GoUInt16));
	s[1642] = ((402 : GoUInt16));
	s[1643] = ((403 : GoUInt16));
	s[1644] = ((156 : GoUInt16));
	s[1645] = ((156 : GoUInt16));
	s[1646] = ((404 : GoUInt16));
	s[1647] = ((405 : GoUInt16));
	s[1648] = ((251 : GoUInt16));
	s[1649] = ((251 : GoUInt16));
	s[1650] = ((251 : GoUInt16));
	s[1651] = ((251 : GoUInt16));
	s[1652] = ((251 : GoUInt16));
	s[1653] = ((251 : GoUInt16));
	s[1654] = ((251 : GoUInt16));
	s[1655] = ((251 : GoUInt16));
	s[1656] = ((251 : GoUInt16));
	s[1657] = ((251 : GoUInt16));
	s[1658] = ((251 : GoUInt16));
	s[1659] = ((251 : GoUInt16));
	s[1660] = ((251 : GoUInt16));
	s[1661] = ((251 : GoUInt16));
	s[1662] = ((251 : GoUInt16));
	s[1663] = ((251 : GoUInt16));
	s[1664] = ((160 : GoUInt16));
	s[1665] = ((160 : GoUInt16));
	s[1666] = ((160 : GoUInt16));
	s[1667] = ((160 : GoUInt16));
	s[1668] = ((160 : GoUInt16));
	s[1669] = ((160 : GoUInt16));
	s[1670] = ((160 : GoUInt16));
	s[1671] = ((160 : GoUInt16));
	s[1672] = ((160 : GoUInt16));
	s[1673] = ((160 : GoUInt16));
	s[1674] = ((160 : GoUInt16));
	s[1675] = ((160 : GoUInt16));
	s[1676] = ((160 : GoUInt16));
	s[1677] = ((160 : GoUInt16));
	s[1678] = ((160 : GoUInt16));
	s[1679] = ((160 : GoUInt16));
	s[1680] = ((160 : GoUInt16));
	s[1681] = ((160 : GoUInt16));
	s[1682] = ((160 : GoUInt16));
	s[1683] = ((160 : GoUInt16));
	s[1684] = ((160 : GoUInt16));
	s[1685] = ((160 : GoUInt16));
	s[1686] = ((160 : GoUInt16));
	s[1687] = ((160 : GoUInt16));
	s[1688] = ((160 : GoUInt16));
	s[1689] = ((160 : GoUInt16));
	s[1690] = ((160 : GoUInt16));
	s[1691] = ((406 : GoUInt16));
	s[1692] = ((160 : GoUInt16));
	s[1693] = ((160 : GoUInt16));
	s[1694] = ((160 : GoUInt16));
	s[1695] = ((160 : GoUInt16));
	s[1696] = ((160 : GoUInt16));
	s[1697] = ((160 : GoUInt16));
	s[1698] = ((160 : GoUInt16));
	s[1699] = ((160 : GoUInt16));
	s[1700] = ((160 : GoUInt16));
	s[1701] = ((160 : GoUInt16));
	s[1702] = ((160 : GoUInt16));
	s[1703] = ((160 : GoUInt16));
	s[1704] = ((160 : GoUInt16));
	s[1705] = ((160 : GoUInt16));
	s[1706] = ((160 : GoUInt16));
	s[1707] = ((160 : GoUInt16));
	s[1708] = ((160 : GoUInt16));
	s[1709] = ((160 : GoUInt16));
	s[1710] = ((160 : GoUInt16));
	s[1711] = ((160 : GoUInt16));
	s[1712] = ((160 : GoUInt16));
	s[1713] = ((160 : GoUInt16));
	s[1714] = ((160 : GoUInt16));
	s[1715] = ((160 : GoUInt16));
	s[1716] = ((160 : GoUInt16));
	s[1717] = ((160 : GoUInt16));
	s[1718] = ((160 : GoUInt16));
	s[1719] = ((160 : GoUInt16));
	s[1720] = ((160 : GoUInt16));
	s[1721] = ((160 : GoUInt16));
	s[1722] = ((160 : GoUInt16));
	s[1723] = ((160 : GoUInt16));
	s[1724] = ((160 : GoUInt16));
	s[1725] = ((160 : GoUInt16));
	s[1726] = ((160 : GoUInt16));
	s[1727] = ((160 : GoUInt16));
	s[1728] = ((160 : GoUInt16));
	s[1729] = ((160 : GoUInt16));
	s[1730] = ((160 : GoUInt16));
	s[1731] = ((160 : GoUInt16));
	s[1732] = ((160 : GoUInt16));
	s[1733] = ((160 : GoUInt16));
	s[1734] = ((160 : GoUInt16));
	s[1735] = ((160 : GoUInt16));
	s[1736] = ((160 : GoUInt16));
	s[1737] = ((160 : GoUInt16));
	s[1738] = ((160 : GoUInt16));
	s[1739] = ((160 : GoUInt16));
	s[1740] = ((160 : GoUInt16));
	s[1741] = ((160 : GoUInt16));
	s[1742] = ((160 : GoUInt16));
	s[1743] = ((160 : GoUInt16));
	s[1744] = ((160 : GoUInt16));
	s[1745] = ((160 : GoUInt16));
	s[1746] = ((160 : GoUInt16));
	s[1747] = ((160 : GoUInt16));
	s[1748] = ((160 : GoUInt16));
	s[1749] = ((160 : GoUInt16));
	s[1750] = ((160 : GoUInt16));
	s[1751] = ((160 : GoUInt16));
	s[1752] = ((160 : GoUInt16));
	s[1753] = ((160 : GoUInt16));
	s[1754] = ((160 : GoUInt16));
	s[1755] = ((160 : GoUInt16));
	s[1756] = ((407 : GoUInt16));
	s[1757] = ((160 : GoUInt16));
	s[1758] = ((160 : GoUInt16));
	s[1759] = ((160 : GoUInt16));
	s[1760] = ((408 : GoUInt16));
	s[1761] = ((160 : GoUInt16));
	s[1762] = ((160 : GoUInt16));
	s[1763] = ((160 : GoUInt16));
	s[1764] = ((160 : GoUInt16));
	s[1765] = ((160 : GoUInt16));
	s[1766] = ((160 : GoUInt16));
	s[1767] = ((160 : GoUInt16));
	s[1768] = ((160 : GoUInt16));
	s[1769] = ((160 : GoUInt16));
	s[1770] = ((160 : GoUInt16));
	s[1771] = ((160 : GoUInt16));
	s[1772] = ((160 : GoUInt16));
	s[1773] = ((160 : GoUInt16));
	s[1774] = ((160 : GoUInt16));
	s[1775] = ((160 : GoUInt16));
	s[1776] = ((160 : GoUInt16));
	s[1777] = ((160 : GoUInt16));
	s[1778] = ((160 : GoUInt16));
	s[1779] = ((160 : GoUInt16));
	s[1780] = ((160 : GoUInt16));
	s[1781] = ((160 : GoUInt16));
	s[1782] = ((160 : GoUInt16));
	s[1783] = ((160 : GoUInt16));
	s[1784] = ((160 : GoUInt16));
	s[1785] = ((160 : GoUInt16));
	s[1786] = ((160 : GoUInt16));
	s[1787] = ((160 : GoUInt16));
	s[1788] = ((160 : GoUInt16));
	s[1789] = ((160 : GoUInt16));
	s[1790] = ((160 : GoUInt16));
	s[1791] = ((160 : GoUInt16));
	s[1792] = ((160 : GoUInt16));
	s[1793] = ((160 : GoUInt16));
	s[1794] = ((160 : GoUInt16));
	s[1795] = ((160 : GoUInt16));
	s[1796] = ((160 : GoUInt16));
	s[1797] = ((160 : GoUInt16));
	s[1798] = ((160 : GoUInt16));
	s[1799] = ((160 : GoUInt16));
	s[1800] = ((160 : GoUInt16));
	s[1801] = ((160 : GoUInt16));
	s[1802] = ((160 : GoUInt16));
	s[1803] = ((160 : GoUInt16));
	s[1804] = ((160 : GoUInt16));
	s[1805] = ((160 : GoUInt16));
	s[1806] = ((160 : GoUInt16));
	s[1807] = ((160 : GoUInt16));
	s[1808] = ((160 : GoUInt16));
	s[1809] = ((160 : GoUInt16));
	s[1810] = ((160 : GoUInt16));
	s[1811] = ((160 : GoUInt16));
	s[1812] = ((160 : GoUInt16));
	s[1813] = ((160 : GoUInt16));
	s[1814] = ((160 : GoUInt16));
	s[1815] = ((160 : GoUInt16));
	s[1816] = ((160 : GoUInt16));
	s[1817] = ((160 : GoUInt16));
	s[1818] = ((160 : GoUInt16));
	s[1819] = ((160 : GoUInt16));
	s[1820] = ((160 : GoUInt16));
	s[1821] = ((160 : GoUInt16));
	s[1822] = ((160 : GoUInt16));
	s[1823] = ((160 : GoUInt16));
	s[1824] = ((160 : GoUInt16));
	s[1825] = ((160 : GoUInt16));
	s[1826] = ((160 : GoUInt16));
	s[1827] = ((160 : GoUInt16));
	s[1828] = ((160 : GoUInt16));
	s[1829] = ((160 : GoUInt16));
	s[1830] = ((160 : GoUInt16));
	s[1831] = ((160 : GoUInt16));
	s[1832] = ((160 : GoUInt16));
	s[1833] = ((160 : GoUInt16));
	s[1834] = ((160 : GoUInt16));
	s[1835] = ((160 : GoUInt16));
	s[1836] = ((160 : GoUInt16));
	s[1837] = ((160 : GoUInt16));
	s[1838] = ((160 : GoUInt16));
	s[1839] = ((160 : GoUInt16));
	s[1840] = ((160 : GoUInt16));
	s[1841] = ((160 : GoUInt16));
	s[1842] = ((160 : GoUInt16));
	s[1843] = ((160 : GoUInt16));
	s[1844] = ((160 : GoUInt16));
	s[1845] = ((160 : GoUInt16));
	s[1846] = ((160 : GoUInt16));
	s[1847] = ((160 : GoUInt16));
	s[1848] = ((160 : GoUInt16));
	s[1849] = ((160 : GoUInt16));
	s[1850] = ((409 : GoUInt16));
	s[1851] = ((160 : GoUInt16));
	s[1852] = ((160 : GoUInt16));
	s[1853] = ((160 : GoUInt16));
	s[1854] = ((160 : GoUInt16));
	s[1855] = ((160 : GoUInt16));
	s[1856] = ((160 : GoUInt16));
	s[1857] = ((160 : GoUInt16));
	s[1858] = ((160 : GoUInt16));
	s[1859] = ((160 : GoUInt16));
	s[1860] = ((160 : GoUInt16));
	s[1861] = ((160 : GoUInt16));
	s[1862] = ((160 : GoUInt16));
	s[1863] = ((160 : GoUInt16));
	s[1864] = ((160 : GoUInt16));
	s[1865] = ((160 : GoUInt16));
	s[1866] = ((160 : GoUInt16));
	s[1867] = ((160 : GoUInt16));
	s[1868] = ((160 : GoUInt16));
	s[1869] = ((160 : GoUInt16));
	s[1870] = ((160 : GoUInt16));
	s[1871] = ((160 : GoUInt16));
	s[1872] = ((160 : GoUInt16));
	s[1873] = ((160 : GoUInt16));
	s[1874] = ((160 : GoUInt16));
	s[1875] = ((160 : GoUInt16));
	s[1876] = ((160 : GoUInt16));
	s[1877] = ((160 : GoUInt16));
	s[1878] = ((160 : GoUInt16));
	s[1879] = ((160 : GoUInt16));
	s[1880] = ((160 : GoUInt16));
	s[1881] = ((160 : GoUInt16));
	s[1882] = ((160 : GoUInt16));
	s[1883] = ((160 : GoUInt16));
	s[1884] = ((160 : GoUInt16));
	s[1885] = ((160 : GoUInt16));
	s[1886] = ((160 : GoUInt16));
	s[1887] = ((160 : GoUInt16));
	s[1888] = ((160 : GoUInt16));
	s[1889] = ((160 : GoUInt16));
	s[1890] = ((160 : GoUInt16));
	s[1891] = ((160 : GoUInt16));
	s[1892] = ((160 : GoUInt16));
	s[1893] = ((160 : GoUInt16));
	s[1894] = ((160 : GoUInt16));
	s[1895] = ((160 : GoUInt16));
	s[1896] = ((160 : GoUInt16));
	s[1897] = ((160 : GoUInt16));
	s[1898] = ((160 : GoUInt16));
	s[1899] = ((160 : GoUInt16));
	s[1900] = ((160 : GoUInt16));
	s[1901] = ((160 : GoUInt16));
	s[1902] = ((160 : GoUInt16));
	s[1903] = ((410 : GoUInt16));
	s[1904] = ((251 : GoUInt16));
	s[1905] = ((251 : GoUInt16));
	s[1906] = ((251 : GoUInt16));
	s[1907] = ((251 : GoUInt16));
	s[1908] = ((251 : GoUInt16));
	s[1909] = ((251 : GoUInt16));
	s[1910] = ((251 : GoUInt16));
	s[1911] = ((251 : GoUInt16));
	s[1912] = ((251 : GoUInt16));
	s[1913] = ((251 : GoUInt16));
	s[1914] = ((251 : GoUInt16));
	s[1915] = ((251 : GoUInt16));
	s[1916] = ((251 : GoUInt16));
	s[1917] = ((251 : GoUInt16));
	s[1918] = ((251 : GoUInt16));
	s[1919] = ((251 : GoUInt16));
	s[1920] = ((251 : GoUInt16));
	s[1921] = ((251 : GoUInt16));
	s[1922] = ((251 : GoUInt16));
	s[1923] = ((251 : GoUInt16));
	s[1924] = ((251 : GoUInt16));
	s[1925] = ((251 : GoUInt16));
	s[1926] = ((251 : GoUInt16));
	s[1927] = ((251 : GoUInt16));
	s[1928] = ((251 : GoUInt16));
	s[1929] = ((251 : GoUInt16));
	s[1930] = ((251 : GoUInt16));
	s[1931] = ((251 : GoUInt16));
	s[1932] = ((251 : GoUInt16));
	s[1933] = ((251 : GoUInt16));
	s[1934] = ((251 : GoUInt16));
	s[1935] = ((251 : GoUInt16));
	s[1936] = ((251 : GoUInt16));
	s[1937] = ((251 : GoUInt16));
	s[1938] = ((251 : GoUInt16));
	s[1939] = ((251 : GoUInt16));
	s[1940] = ((251 : GoUInt16));
	s[1941] = ((251 : GoUInt16));
	s[1942] = ((251 : GoUInt16));
	s[1943] = ((251 : GoUInt16));
	s[1944] = ((251 : GoUInt16));
	s[1945] = ((251 : GoUInt16));
	s[1946] = ((251 : GoUInt16));
	s[1947] = ((251 : GoUInt16));
	s[1948] = ((251 : GoUInt16));
	s[1949] = ((251 : GoUInt16));
	s[1950] = ((251 : GoUInt16));
	s[1951] = ((251 : GoUInt16));
	s[1952] = ((119 : GoUInt16));
	s[1953] = ((120 : GoUInt16));
	s[1954] = ((121 : GoUInt16));
	s[1955] = ((411 : GoUInt16));
	s[1956] = ((122 : GoUInt16));
	s[1957] = ((123 : GoUInt16));
	s[1958] = ((412 : GoUInt16));
	s[1959] = ((124 : GoUInt16));
	s[1960] = ((125 : GoUInt16));
	s[1961] = ((251 : GoUInt16));
	s[1962] = ((251 : GoUInt16));
	s[1963] = ((251 : GoUInt16));
	s[1964] = ((251 : GoUInt16));
	s[1965] = ((251 : GoUInt16));
	s[1966] = ((251 : GoUInt16));
	s[1967] = ((251 : GoUInt16));
	s[1968] = ((251 : GoUInt16));
	s[1969] = ((251 : GoUInt16));
	s[1970] = ((251 : GoUInt16));
	s[1971] = ((251 : GoUInt16));
	s[1972] = ((251 : GoUInt16));
	s[1973] = ((251 : GoUInt16));
	s[1974] = ((251 : GoUInt16));
	s[1975] = ((251 : GoUInt16));
	s[1976] = ((251 : GoUInt16));
	s[1977] = ((251 : GoUInt16));
	s[1978] = ((251 : GoUInt16));
	s[1979] = ((251 : GoUInt16));
	s[1980] = ((251 : GoUInt16));
	s[1981] = ((251 : GoUInt16));
	s[1982] = ((251 : GoUInt16));
	s[1983] = ((251 : GoUInt16));
	s[1984] = ((160 : GoUInt16));
	s[1985] = ((160 : GoUInt16));
	s[1986] = ((160 : GoUInt16));
	s[1987] = ((160 : GoUInt16));
	s[1988] = ((160 : GoUInt16));
	s[1989] = ((160 : GoUInt16));
	s[1990] = ((160 : GoUInt16));
	s[1991] = ((160 : GoUInt16));
	s[1992] = ((160 : GoUInt16));
	s[1993] = ((160 : GoUInt16));
	s[1994] = ((160 : GoUInt16));
	s[1995] = ((160 : GoUInt16));
	s[1996] = ((160 : GoUInt16));
	s[1997] = ((413 : GoUInt16));
	s[1998] = ((251 : GoUInt16));
	s[1999] = ((251 : GoUInt16));
	s[2000] = ((251 : GoUInt16));
	s[2001] = ((251 : GoUInt16));
	s[2002] = ((251 : GoUInt16));
	s[2003] = ((251 : GoUInt16));
	s[2004] = ((251 : GoUInt16));
	s[2005] = ((251 : GoUInt16));
	s[2006] = ((251 : GoUInt16));
	s[2007] = ((251 : GoUInt16));
	s[2008] = ((251 : GoUInt16));
	s[2009] = ((251 : GoUInt16));
	s[2010] = ((251 : GoUInt16));
	s[2011] = ((251 : GoUInt16));
	s[2012] = ((251 : GoUInt16));
	s[2013] = ((251 : GoUInt16));
	s[2014] = ((251 : GoUInt16));
	s[2015] = ((251 : GoUInt16));
	s[2016] = ((251 : GoUInt16));
	s[2017] = ((251 : GoUInt16));
	s[2018] = ((251 : GoUInt16));
	s[2019] = ((251 : GoUInt16));
	s[2020] = ((251 : GoUInt16));
	s[2021] = ((251 : GoUInt16));
	s[2022] = ((251 : GoUInt16));
	s[2023] = ((251 : GoUInt16));
	s[2024] = ((251 : GoUInt16));
	s[2025] = ((251 : GoUInt16));
	s[2026] = ((251 : GoUInt16));
	s[2027] = ((251 : GoUInt16));
	s[2028] = ((251 : GoUInt16));
	s[2029] = ((251 : GoUInt16));
	s[2030] = ((251 : GoUInt16));
	s[2031] = ((251 : GoUInt16));
	s[2032] = ((251 : GoUInt16));
	s[2033] = ((251 : GoUInt16));
	s[2034] = ((251 : GoUInt16));
	s[2035] = ((251 : GoUInt16));
	s[2036] = ((251 : GoUInt16));
	s[2037] = ((251 : GoUInt16));
	s[2038] = ((251 : GoUInt16));
	s[2039] = ((251 : GoUInt16));
	s[2040] = ((251 : GoUInt16));
	s[2041] = ((251 : GoUInt16));
	s[2042] = ((251 : GoUInt16));
	s[2043] = ((251 : GoUInt16));
	s[2044] = ((251 : GoUInt16));
	s[2045] = ((251 : GoUInt16));
	s[2046] = ((251 : GoUInt16));
	s[2047] = ((251 : GoUInt16));
	s[2064] = ((13 : GoUInt16));
	s[2065] = ((14 : GoUInt16));
	s[2066] = ((15 : GoUInt16));
	s[2067] = ((16 : GoUInt16));
	s[2068] = ((17 : GoUInt16));
	s[2069] = ((11 : GoUInt16));
	s[2070] = ((18 : GoUInt16));
	s[2071] = ((7 : GoUInt16));
	s[2072] = ((19 : GoUInt16));
	s[2073] = ((11 : GoUInt16));
	s[2074] = ((11 : GoUInt16));
	s[2075] = ((20 : GoUInt16));
	s[2076] = ((11 : GoUInt16));
	s[2077] = ((21 : GoUInt16));
	s[2078] = ((22 : GoUInt16));
	s[2079] = ((23 : GoUInt16));
	s[2080] = ((7 : GoUInt16));
	s[2081] = ((7 : GoUInt16));
	s[2082] = ((7 : GoUInt16));
	s[2083] = ((7 : GoUInt16));
	s[2084] = ((7 : GoUInt16));
	s[2085] = ((7 : GoUInt16));
	s[2086] = ((7 : GoUInt16));
	s[2087] = ((7 : GoUInt16));
	s[2088] = ((7 : GoUInt16));
	s[2089] = ((7 : GoUInt16));
	s[2090] = ((24 : GoUInt16));
	s[2091] = ((25 : GoUInt16));
	s[2092] = ((26 : GoUInt16));
	s[2093] = ((7 : GoUInt16));
	s[2094] = ((27 : GoUInt16));
	s[2095] = ((28 : GoUInt16));
	s[2096] = ((7 : GoUInt16));
	s[2097] = ((29 : GoUInt16));
	s[2098] = ((11 : GoUInt16));
	s[2099] = ((11 : GoUInt16));
	s[2100] = ((11 : GoUInt16));
	s[2101] = ((11 : GoUInt16));
	s[2102] = ((11 : GoUInt16));
	s[2103] = ((11 : GoUInt16));
	s[2104] = ((11 : GoUInt16));
	s[2105] = ((11 : GoUInt16));
	s[2106] = ((11 : GoUInt16));
	s[2107] = ((11 : GoUInt16));
	s[2108] = ((11 : GoUInt16));
	s[2109] = ((11 : GoUInt16));
	s[2110] = ((11 : GoUInt16));
	s[2111] = ((11 : GoUInt16));
	s[2112] = ((11 : GoUInt16));
	s[2113] = ((11 : GoUInt16));
	s[2114] = ((11 : GoUInt16));
	s[2115] = ((11 : GoUInt16));
	s[2116] = ((11 : GoUInt16));
	s[2117] = ((11 : GoUInt16));
	s[2118] = ((11 : GoUInt16));
	s[2119] = ((11 : GoUInt16));
	s[2120] = ((11 : GoUInt16));
	s[2121] = ((11 : GoUInt16));
	s[2122] = ((11 : GoUInt16));
	s[2123] = ((11 : GoUInt16));
	s[2124] = ((11 : GoUInt16));
	s[2125] = ((11 : GoUInt16));
	s[2126] = ((11 : GoUInt16));
	s[2127] = ((11 : GoUInt16));
	s[2128] = ((11 : GoUInt16));
	s[2129] = ((11 : GoUInt16));
	s[2130] = ((11 : GoUInt16));
	s[2131] = ((11 : GoUInt16));
	s[2132] = ((11 : GoUInt16));
	s[2133] = ((11 : GoUInt16));
	s[2134] = ((11 : GoUInt16));
	s[2135] = ((11 : GoUInt16));
	s[2136] = ((11 : GoUInt16));
	s[2137] = ((11 : GoUInt16));
	s[2138] = ((11 : GoUInt16));
	s[2139] = ((11 : GoUInt16));
	s[2140] = ((11 : GoUInt16));
	s[2141] = ((11 : GoUInt16));
	s[2142] = ((11 : GoUInt16));
	s[2143] = ((11 : GoUInt16));
	s[2144] = ((11 : GoUInt16));
	s[2145] = ((11 : GoUInt16));
	s[2146] = ((11 : GoUInt16));
	s[2147] = ((11 : GoUInt16));
	s[2148] = ((11 : GoUInt16));
	s[2149] = ((11 : GoUInt16));
	s[2150] = ((11 : GoUInt16));
	s[2151] = ((11 : GoUInt16));
	s[2152] = ((11 : GoUInt16));
	s[2153] = ((11 : GoUInt16));
	s[2154] = ((11 : GoUInt16));
	s[2155] = ((11 : GoUInt16));
	s[2156] = ((11 : GoUInt16));
	s[2157] = ((11 : GoUInt16));
	s[2158] = ((11 : GoUInt16));
	s[2159] = ((11 : GoUInt16));
	s[2160] = ((11 : GoUInt16));
	s[2161] = ((11 : GoUInt16));
	s[2162] = ((11 : GoUInt16));
	s[2163] = ((11 : GoUInt16));
	s[2164] = ((11 : GoUInt16));
	s[2165] = ((11 : GoUInt16));
	s[2166] = ((11 : GoUInt16));
	s[2167] = ((11 : GoUInt16));
	s[2168] = ((11 : GoUInt16));
	s[2169] = ((11 : GoUInt16));
	s[2170] = ((11 : GoUInt16));
	s[2171] = ((11 : GoUInt16));
	s[2172] = ((11 : GoUInt16));
	s[2173] = ((11 : GoUInt16));
	s[2174] = ((11 : GoUInt16));
	s[2175] = ((11 : GoUInt16));
	s[2176] = ((414 : GoUInt16));
	s[2177] = ((415 : GoUInt16));
	s[2178] = ((251 : GoUInt16));
	s[2179] = ((251 : GoUInt16));
	s[2180] = ((416 : GoUInt16));
	s[2181] = ((416 : GoUInt16));
	s[2182] = ((416 : GoUInt16));
	s[2183] = ((417 : GoUInt16));
	s[2184] = ((251 : GoUInt16));
	s[2185] = ((251 : GoUInt16));
	s[2186] = ((251 : GoUInt16));
	s[2187] = ((251 : GoUInt16));
	s[2188] = ((251 : GoUInt16));
	s[2189] = ((251 : GoUInt16));
	s[2190] = ((251 : GoUInt16));
	s[2191] = ((251 : GoUInt16));
	s[2192] = ((251 : GoUInt16));
	s[2193] = ((251 : GoUInt16));
	s[2194] = ((251 : GoUInt16));
	s[2195] = ((251 : GoUInt16));
	s[2196] = ((251 : GoUInt16));
	s[2197] = ((251 : GoUInt16));
	s[2198] = ((251 : GoUInt16));
	s[2199] = ((251 : GoUInt16));
	s[2200] = ((251 : GoUInt16));
	s[2201] = ((251 : GoUInt16));
	s[2202] = ((251 : GoUInt16));
	s[2203] = ((251 : GoUInt16));
	s[2204] = ((251 : GoUInt16));
	s[2205] = ((251 : GoUInt16));
	s[2206] = ((251 : GoUInt16));
	s[2207] = ((251 : GoUInt16));
	s[2208] = ((251 : GoUInt16));
	s[2209] = ((251 : GoUInt16));
	s[2210] = ((251 : GoUInt16));
	s[2211] = ((251 : GoUInt16));
	s[2212] = ((251 : GoUInt16));
	s[2213] = ((251 : GoUInt16));
	s[2214] = ((251 : GoUInt16));
	s[2215] = ((251 : GoUInt16));
	s[2216] = ((251 : GoUInt16));
	s[2217] = ((251 : GoUInt16));
	s[2218] = ((251 : GoUInt16));
	s[2219] = ((251 : GoUInt16));
	s[2220] = ((251 : GoUInt16));
	s[2221] = ((251 : GoUInt16));
	s[2222] = ((251 : GoUInt16));
	s[2223] = ((251 : GoUInt16));
	s[2224] = ((251 : GoUInt16));
	s[2225] = ((251 : GoUInt16));
	s[2226] = ((251 : GoUInt16));
	s[2227] = ((251 : GoUInt16));
	s[2228] = ((251 : GoUInt16));
	s[2229] = ((251 : GoUInt16));
	s[2230] = ((251 : GoUInt16));
	s[2231] = ((251 : GoUInt16));
	s[2232] = ((251 : GoUInt16));
	s[2233] = ((251 : GoUInt16));
	s[2234] = ((251 : GoUInt16));
	s[2235] = ((251 : GoUInt16));
	s[2236] = ((251 : GoUInt16));
	s[2237] = ((251 : GoUInt16));
	s[2238] = ((251 : GoUInt16));
	s[2239] = ((251 : GoUInt16));
	s[2240] = ((11 : GoUInt16));
	s[2241] = ((11 : GoUInt16));
	s[2242] = ((11 : GoUInt16));
	s[2243] = ((11 : GoUInt16));
	s[2244] = ((11 : GoUInt16));
	s[2245] = ((11 : GoUInt16));
	s[2246] = ((11 : GoUInt16));
	s[2247] = ((11 : GoUInt16));
	s[2248] = ((11 : GoUInt16));
	s[2249] = ((11 : GoUInt16));
	s[2250] = ((11 : GoUInt16));
	s[2251] = ((11 : GoUInt16));
	s[2252] = ((11 : GoUInt16));
	s[2253] = ((11 : GoUInt16));
	s[2254] = ((11 : GoUInt16));
	s[2255] = ((11 : GoUInt16));
	s[2256] = ((11 : GoUInt16));
	s[2257] = ((11 : GoUInt16));
	s[2258] = ((11 : GoUInt16));
	s[2259] = ((11 : GoUInt16));
	s[2260] = ((11 : GoUInt16));
	s[2261] = ((11 : GoUInt16));
	s[2262] = ((11 : GoUInt16));
	s[2263] = ((11 : GoUInt16));
	s[2264] = ((11 : GoUInt16));
	s[2265] = ((11 : GoUInt16));
	s[2266] = ((11 : GoUInt16));
	s[2267] = ((11 : GoUInt16));
	s[2268] = ((11 : GoUInt16));
	s[2269] = ((11 : GoUInt16));
	s[2270] = ((11 : GoUInt16));
	s[2271] = ((11 : GoUInt16));
	s[2272] = ((32 : GoUInt16));
	s[2273] = ((11 : GoUInt16));
	s[2274] = ((11 : GoUInt16));
	s[2275] = ((11 : GoUInt16));
	s[2276] = ((11 : GoUInt16));
	s[2277] = ((11 : GoUInt16));
	s[2278] = ((11 : GoUInt16));
	s[2279] = ((11 : GoUInt16));
	s[2280] = ((11 : GoUInt16));
	s[2281] = ((11 : GoUInt16));
	s[2282] = ((11 : GoUInt16));
	s[2283] = ((11 : GoUInt16));
	s[2284] = ((11 : GoUInt16));
	s[2285] = ((11 : GoUInt16));
	s[2286] = ((11 : GoUInt16));
	s[2287] = ((11 : GoUInt16));
	s[2288] = ((11 : GoUInt16));
	s[2289] = ((11 : GoUInt16));
	s[2290] = ((11 : GoUInt16));
	s[2291] = ((11 : GoUInt16));
	s[2292] = ((11 : GoUInt16));
	s[2293] = ((11 : GoUInt16));
	s[2294] = ((11 : GoUInt16));
	s[2295] = ((11 : GoUInt16));
	s[2296] = ((11 : GoUInt16));
	s[2297] = ((11 : GoUInt16));
	s[2298] = ((11 : GoUInt16));
	s[2299] = ((11 : GoUInt16));
	s[2300] = ((11 : GoUInt16));
	s[2301] = ((11 : GoUInt16));
	s[2302] = ((11 : GoUInt16));
	s[2303] = ((11 : GoUInt16));
	s[2304] = ((11 : GoUInt16));
	s[2305] = ((11 : GoUInt16));
	s[2306] = ((11 : GoUInt16));
	s[2307] = ((11 : GoUInt16));
	s[2308] = ((11 : GoUInt16));
	s[2309] = ((11 : GoUInt16));
	s[2310] = ((11 : GoUInt16));
	s[2311] = ((11 : GoUInt16));
	s[2312] = ((11 : GoUInt16));
	s[2313] = ((11 : GoUInt16));
	s[2314] = ((11 : GoUInt16));
	s[2315] = ((11 : GoUInt16));
	s[2316] = ((11 : GoUInt16));
	s[2317] = ((11 : GoUInt16));
	s[2318] = ((11 : GoUInt16));
	s[2319] = ((11 : GoUInt16));
	s;
};

final _disallowedSTD3Mapped:T_category = new T_category(((2 : GoUInt16)));
final unicodeVersion:GoString = "13.0.0";
final _stateFAIL:T_joinState = new T_joinState((5 : GoUnTypedInt));
var _trie:Pointer<T_idnaTrie> = Go.pointer(new T_idnaTrie());

var _display:Pointer<Profile> = Go.pointer(new Profile((({
	_useSTD3Rules: true,
	_checkHyphens: true,
	_checkJoiners: true,
	_trie: _trie,
	_fromPuny: _validateFromPunycode,
	_mapping: _validateAndMap,
	_bidirule: _bidirule.validString,
	_transitional: false,
	_verifyDNSLength: false,
	_removeLeadingDots: false
} : T_options)).__copy__()));

var display:Pointer<Profile> = _display;

var _lookup:Pointer<Profile> = Go.pointer(new Profile((({
	_transitional: true,
	_useSTD3Rules: true,
	_checkHyphens: true,
	_checkJoiners: true,
	_trie: _trie,
	_fromPuny: _validateFromPunycode,
	_mapping: _validateAndMap,
	_bidirule: golang_org.x.text.secure.bidirule.Bidirule.validString,
	_verifyDNSLength: false,
	_removeLeadingDots: false
} : T_options)).__copy__()));

final _tmin:GoInt32 = ((1 : GoInt32));
final _joiningD = ((1 : GoUnTypedInt) + ((1 : GoUnTypedInt)));

var _xorData:GoString = (("" : GoString))
	+ (("\\x02\\x0c\\x09\\x02\\xb0\\xec\\x02\\xad\\xd8\\x02\\xad\\xd9\\x02\\x06\\x07\\x02\\x0f\\x12" : GoString))
	+ (("\\x02\\x0f\\x1f\\x02\\x0f\\x1d\\x02\\x01\\x13\\x02\\x0f\\x16\\x02\\x0f\\x0b\\x02\\x0f3" : GoString))
	+ (("\\x02\\x0f7\\x02\\x0f?\\x02\\x0f/\\x02\\x0f*\\x02\\x0c&\\x02\\x0c*\\x02\\x0c;\\x02\\x0c9" : GoString))
	+ (("\\x02\\x0c%\\x02\\xab\\xed\\x02\\xab\\xe2\\x02\\xab\\xe3\\x02\\xa9\\xe0\\x02\\xa9\\xe1" : GoString))
	+ (("\\x02\\xa9\\xe6\\x02\\xa3\\xcb\\x02\\xa3\\xc8\\x02\\xa3\\xc9\\x02\\x01#\\x02\\x01\\x08" : GoString))
	+ (("\\x02\\x0e>\\x02\\x0e\'\\x02\\x0f\\x03\\x02\\x03\\x0d\\x02\\x03\\x09\\x02\\x03\\x17\\x02" : GoString))
	+ (("\\x03\\x0e\\x02\\x02\\x03\\x02\\x011\\x02\\x01\\x00\\x02\\x01\\x10\\x02\\x03<\\x02\\x07" : GoString))
	+ (("\\x0d\\x02\\x02\\x0c\\x02\\x0c0\\x02\\x01\\x03\\x02\\x01\\x01\\x02\\x01 \\x02\\x01\\x22" : GoString))
	+ (("\\x02\\x01)\\x02\\x01\\x0a\\x02\\x01\\x0c\\x02\\x02\\x06\\x02\\x02\\x02\\x02\\x03\\x10" : GoString))
	+ (("\\x03\\x037 \\x03\\x0b+\\x03\\x021\\x00\\x02\\x01\\x04\\x02\\x01\\x02\\x02\\x019\\x02" : GoString))
	+ (("\\x03\\x1c\\x02\\x02$\\x03\\x80p$\\x02\\x03:\\x02\\x03\\x0a\\x03\\xc1r.\\x03\\xc1r,\\x03" : GoString))
	+ (("\\xc1r\\x02\\x02\\x02:\\x02\\x02>\\x02\\x02,\\x02\\x02\\x10\\x02\\x02\\x00\\x03\\xc1s<" : GoString))
	+ (("\\x03\\xc1s*\\x03\\xc2L$\\x03\\xc2L;\\x02\\x09)\\x02\\x0a\\x19\\x03\\x83\\xab\\xe3\\x03" : GoString))
	+ (("\\x83\\xab\\xf2\\x03 4\\xe0\\x03\\x81\\xab\\xea\\x03\\x81\\xab\\xf3\\x03 4\\xef\\x03\\x96" : GoString))
	+ (("\\xe1\\xcd\\x03\\x84\\xe5\\xc3\\x02\\x0d\\x11\\x03\\x8b\\xec\\xcb\\x03\\x94\\xec\\xcf\\x03" : GoString))
	+ (("\\x9a\\xec\\xc2\\x03\\x8b\\xec\\xdb\\x03\\x94\\xec\\xdf\\x03\\x9a\\xec\\xd2\\x03\\x01\\x0c" : GoString))
	+ (("!\\x03\\x01\\x0c#\\x03ʠ\\x9d\\x03ʣ\\x9c\\x03ʢ\\x9f\\x03ʥ\\x9e\\x03ʤ\\x91\\x03ʧ\\x90\\x03" : GoString))
	+ (("ʦ\\x93\\x03ʩ\\x92\\x03ʨ\\x95\\x03\\xca\\xf3\\xb5\\x03\\xca\\xf0\\xb4\\x03\\xca\\xf1\\xb7" : GoString))
	+ (("\\x03\\xca\\xf6\\xb6\\x03\\xca\\xf7\\x89\\x03\\xca\\xf4\\x88\\x03\\xca\\xf5\\x8b\\x03\\xca" : GoString))
	+ (("\\xfa\\x8a\\x03\\xca\\xfb\\x8d\\x03\\xca\\xf8\\x8c\\x03\\xca\\xf9\\x8f\\x03\\xca\\xfe\\x8e" : GoString))
	+ (("\\x03\\xca\\xff\\x81\\x03\\xca\\xfc\\x80\\x03\\xca\\xfd\\x83\\x03\\xca\\xe2\\x82\\x03\\xca" : GoString))
	+ (("\\xe3\\x85\\x03\\xca\\xe0\\x84\\x03\\xca\\xe1\\x87\\x03\\xca\\xe6\\x86\\x03\\xca\\xe7\\x99" : GoString))
	+ (("\\x03\\xca\\xe4\\x98\\x03\\xca\\xe5\\x9b\\x03\\xca\\xea\\x9a\\x03\\xca\\xeb\\x9d\\x03\\xca" : GoString))
	+ (("\\xe8\\x9c\\x03ؓ\\x89\\x03ߔ\\x8b\\x02\\x010\\x03\\x03\\x04\\x1e\\x03\\x04\\x15\\x12\\x03" : GoString))
	+ (("\\x0b\\x05,\\x03\\x06\\x04\\x00\\x03\\x06\\x04)\\x03\\x06\\x044\\x03\\x06\\x04<\\x03\\x06" : GoString))
	+ (("\\x05\\x1d\\x03\\x06\\x06\\x00\\x03\\x06\\x06\\x0a\\x03\\x06\\x06\'\\x03\\x06\\x062\\x03" : GoString))
	+ (("\\x0786\\x03\\x079/\\x03\\x079 \\x03\\x07:\\x0e\\x03\\x07:\\x1b\\x03\\x07:%\\x03\\x07;/" : GoString))
	+ (("\\x03\\x07;%\\x03\\x074\\x11\\x03\\x076\\x09\\x03\\x077*\\x03\\x070\\x01\\x03\\x070\\x0f" : GoString))
	+ (("\\x03\\x070.\\x03\\x071\\x16\\x03\\x071\\x04\\x03\\x0710\\x03\\x072\\x18\\x03\\x072-" : GoString))
	+ (("\\x03\\x073\\x14\\x03\\x073>\\x03\\x07\'\\x09\\x03\\x07 \\x00\\x03\\x07\\x1f\\x0b\\x03" : GoString))
	+ (("\\x07\\x18#\\x03\\x07\\x18(\\x03\\x07\\x186\\x03\\x07\\x18\\x03\\x03\\x07\\x19\\x16\\x03" : GoString))
	+ (("\\x07\\x116\\x03\\x07\\x12\'\\x03\\x07\\x13\\x10\\x03\\x07\\x0c&\\x03\\x07\\x0c\\x08\\x03" : GoString))
	+ (("\\x07\\x0c\\x13\\x03\\x07\\x0d\\x02\\x03\\x07\\x0d\\x1c\\x03\\x07\\x0b5\\x03\\x07\\x0b" : GoString))
	+ (("\\x0a\\x03\\x07\\x0b\\x01\\x03\\x07\\x0b\\x0f\\x03\\x07\\x05\\x00\\x03\\x07\\x05\\x09\\x03" : GoString))
	+ (("\\x07\\x05\\x0b\\x03\\x07\\x07\\x01\\x03\\x07\\x07\\x08\\x03\\x07\\x00<\\x03\\x07\\x00+" : GoString))
	+ (("\\x03\\x07\\x01)\\x03\\x07\\x01\\x1b\\x03\\x07\\x01\\x08\\x03\\x07\\x03?\\x03\\x0445\\x03" : GoString))
	+ (("\\x044\\x08\\x03\\x0454\\x03\\x04)/\\x03\\x04)5\\x03\\x04+\\x05\\x03\\x04+\\x14\\x03" : GoString))
	+ (("\\x04+ \\x03\\x04+<\\x03\\x04*&\\x03\\x04*\\x22\\x03\\x04&8\\x03\\x04!\\x01\\x03\\x04!" : GoString))
	+ (("\\x22\\x03\\x04\\x11+\\x03\\x04\\x10.\\x03\\x04\\x104\\x03\\x04\\x13=\\x03\\x04\\x12\\x04" : GoString))
	+ (("\\x03\\x04\\x12\\x0a\\x03\\x04\\x0d\\x1d\\x03\\x04\\x0d\\x07\\x03\\x04\\x0d \\x03\\x05<>" : GoString))
	+ (("\\x03\\x055<\\x03\\x055!\\x03\\x055#\\x03\\x055&\\x03\\x054\\x1d\\x03\\x054\\x02\\x03" : GoString))
	+ (("\\x054\\x07\\x03\\x0571\\x03\\x053\\x1a\\x03\\x053\\x16\\x03\\x05.<\\x03\\x05.\\x07\\x03" : GoString))
	+ (("\\x05):\\x03\\x05)<\\x03\\x05)\\x0c\\x03\\x05)\\x15\\x03\\x05+-\\x03\\x05+5\\x03\\x05$" : GoString))
	+ (("\\x1e\\x03\\x05$\\x14\\x03\\x05\'\\x04\\x03\\x05\'\\x14\\x03\\x05&\\x02\\x03\\x05\\x226" : GoString))
	+ (("\\x03\\x05\\x22\\x0c\\x03\\x05\\x22\\x1c\\x03\\x05\\x19\\x0a\\x03\\x05\\x1b\\x09\\x03\\x05" : GoString))
	+ (("\\x1b\\x0c\\x03\\x05\\x14\\x07\\x03\\x05\\x16?\\x03\\x05\\x16\\x0c\\x03\\x05\\x0c\\x05" : GoString))
	+ (("\\x03\\x05\\x0e\\x0f\\x03\\x05\\x01\\x0e\\x03\\x05\\x00(\\x03\\x05\\x030\\x03\\x05\\x03" : GoString))
	+ (("\\x06\\x03\\x0a==\\x03\\x0a=1\\x03\\x0a=,\\x03\\x0a=\\x0c\\x03\\x0a??\\x03\\x0a<\\x08" : GoString))
	+ (("\\x03\\x0a9!\\x03\\x0a9)\\x03\\x0a97\\x03\\x0a99\\x03\\x0a6\\x0a\\x03\\x0a6\\x1c\\x03" : GoString))
	+ (("\\x0a6\\x17\\x03\\x0a7\'\\x03\\x0a78\\x03\\x0a73\\x03\\x0a\'\\x01\\x03\\x0a\'&\\x03\\x0a" : GoString))
	+ (("\\x1f\\x0e\\x03\\x0a\\x1f\\x03\\x03\\x0a\\x1f3\\x03\\x0a\\x1b/\\x03\\x0a\\x18\\x19\\x03" : GoString))
	+ (("\\x0a\\x19\\x01\\x03\\x0a\\x16\\x14\\x03\\x0a\\x0e\\x22\\x03\\x0a\\x0f\\x10\\x03\\x0a\\x0f" : GoString))
	+ (("\\x02\\x03\\x0a\\x0f \\x03\\x0a\\x0c\\x04\\x03\\x0a\\x0b>\\x03\\x0a\\x0b+\\x03\\x0a\\x08/" : GoString))
	+ (("\\x03\\x0a\\x046\\x03\\x0a\\x05\\x14\\x03\\x0a\\x00\\x04\\x03\\x0a\\x00\\x10\\x03\\x0a" : GoString))
	+ (("\\x00\\x14\\x03\\x0b<3\\x03\\x0b;*\\x03\\x0b9\\x22\\x03\\x0b9)\\x03\\x0b97\\x03\\x0b+" : GoString))
	+ (("\\x10\\x03\\x0b((\\x03\\x0b&5\\x03\\x0b$\\x1c\\x03\\x0b$\\x12\\x03\\x0b%\\x04\\x03\\x0b#" : GoString))
	+ (("<\\x03\\x0b#0\\x03\\x0b#\\x0d\\x03\\x0b#\\x19\\x03\\x0b!:\\x03\\x0b!\\x1f\\x03\\x0b!" : GoString))
	+ (("\\x00\\x03\\x0b\\x1e5\\x03\\x0b\\x1c\\x1d\\x03\\x0b\\x1d-\\x03\\x0b\\x1d(\\x03\\x0b\\x18." : GoString))
	+ (("\\x03\\x0b\\x18 \\x03\\x0b\\x18\\x16\\x03\\x0b\\x14\\x13\\x03\\x0b\\x15$\\x03\\x0b\\x15" : GoString))
	+ (("\\x22\\x03\\x0b\\x12\\x1b\\x03\\x0b\\x12\\x10\\x03\\x0b\\x132\\x03\\x0b\\x13=\\x03\\x0b" : GoString))
	+ (("\\x12\\x18\\x03\\x0b\\x0c&\\x03\\x0b\\x061\\x03\\x0b\\x06:\\x03\\x0b\\x05#\\x03\\x0b\\x05" : GoString))
	+ (("<\\x03\\x0b\\x04\\x0b\\x03\\x0b\\x04\\x04\\x03\\x0b\\x04\\x1b\\x03\\x0b\\x042\\x03\\x0b" : GoString))
	+ (("\\x041\\x03\\x0b\\x03\\x03\\x03\\x0b\\x03\\x1d\\x03\\x0b\\x03/\\x03\\x0b\\x03+\\x03\\x0b" : GoString))
	+ (("\\x02\\x1b\\x03\\x0b\\x02\\x00\\x03\\x0b\\x01\\x1e\\x03\\x0b\\x01\\x08\\x03\\x0b\\x015" : GoString))
	+ (("\\x03\\x06\\x0d9\\x03\\x06\\x0d=\\x03\\x06\\x0d?\\x03\\x02\\x001\\x03\\x02\\x003\\x03" : GoString))
	+ (("\\x02\\x02\\x19\\x03\\x02\\x006\\x03\\x02\\x02\\x1b\\x03\\x02\\x004\\x03\\x02\\x00<\\x03" : GoString))
	+ (("\\x02\\x02\\x0a\\x03\\x02\\x02\\x0e\\x03\\x02\\x01\\x1a\\x03\\x02\\x01\\x07\\x03\\x02\\x01" : GoString))
	+ (("\\x05\\x03\\x02\\x01\\x0b\\x03\\x02\\x01%\\x03\\x02\\x01\\x0c\\x03\\x02\\x01\\x04\\x03" : GoString))
	+ (("\\x02\\x01\\x1c\\x03\\x02\\x00.\\x03\\x02\\x002\\x03\\x02\\x00>\\x03\\x02\\x00\\x12\\x03" : GoString))
	+ (("\\x02\\x00\\x16\\x03\\x02\\x011\\x03\\x02\\x013\\x03\\x02\\x02 \\x03\\x02\\x02%\\x03\\x02" : GoString))
	+ (("\\x02$\\x03\\x02\\x028\\x03\\x02\\x02;\\x03\\x02\\x024\\x03\\x02\\x012\\x03\\x02\\x022" : GoString))
	+ (("\\x03\\x02\\x02/\\x03\\x02\\x01,\\x03\\x02\\x01\\x13\\x03\\x02\\x01\\x16\\x03\\x02\\x01" : GoString))
	+ (("\\x11\\x03\\x02\\x01\\x1e\\x03\\x02\\x01\\x15\\x03\\x02\\x01\\x17\\x03\\x02\\x01\\x0f\\x03" : GoString))
	+ (("\\x02\\x01\\x08\\x03\\x02\\x00?\\x03\\x02\\x03\\x07\\x03\\x02\\x03\\x0d\\x03\\x02\\x03" : GoString))
	+ (("\\x13\\x03\\x02\\x03\\x1d\\x03\\x02\\x03\\x1f\\x03\\x02\\x00\\x03\\x03\\x02\\x00\\x0d\\x03" : GoString))
	+ (("\\x02\\x00\\x01\\x03\\x02\\x00\\x1b\\x03\\x02\\x00\\x19\\x03\\x02\\x00\\x18\\x03\\x02\\x00" : GoString))
	+ (("\\x13\\x03\\x02\\x00/\\x03\\x07>\\x12\\x03\\x07<\\x1f\\x03\\x07>\\x1d\\x03\\x06\\x1d\\x0e" : GoString))
	+ (("\\x03\\x07>\\x1c\\x03\\x07>:\\x03\\x07>\\x13\\x03\\x04\\x12+\\x03\\x07?\\x03\\x03\\x07>" : GoString))
	+ (("\\x02\\x03\\x06\\x224\\x03\\x06\\x1a.\\x03\\x07<%\\x03\\x06\\x1c\\x0b\\x03\\x0609\\x03" : GoString))
	+ (("\\x05\\x1f\\x01\\x03\\x04\'\\x08\\x03\\x93\\xfd\\xf5\\x03\\x02\\x0d \\x03\\x02\\x0d#\\x03" : GoString))
	+ (("\\x02\\x0d!\\x03\\x02\\x0d&\\x03\\x02\\x0d\\x22\\x03\\x02\\x0d/\\x03\\x02\\x0d,\\x03\\x02" : GoString))
	+ (("\\x0d$\\x03\\x02\\x0d\'\\x03\\x02\\x0d%\\x03\\x02\\x0d;\\x03\\x02\\x0d=\\x03\\x02\\x0d?" : GoString))
	+ (("\\x03\\x099.\\x03\\x08\\x0b7\\x03\\x08\\x02\\x14\\x03\\x08\\x14\\x0d\\x03\\x08.:\\x03" : GoString))
	+ (("\\x089\'\\x03\\x0f\\x0b\\x18\\x03\\x0f\\x1c1\\x03\\x0f\\x17&\\x03\\x0f9\\x1f\\x03\\x0f0" : GoString))
	+ (("\\x0c\\x03\\x0e\\x0a9\\x03\\x0e\\x056\\x03\\x0e\\x1c#\\x03\\x0f\\x13\\x0e\\x03\\x072\\x00" : GoString))
	+ (("\\x03\\x070\\x0d\\x03\\x072\\x0b\\x03\\x06\\x11\\x18\\x03\\x070\\x10\\x03\\x06\\x0f(\\x03" : GoString))
	+ (("\\x072\\x05\\x03\\x06\\x0f,\\x03\\x073\\x15\\x03\\x06\\x07\\x08\\x03\\x05\\x16\\x02\\x03" : GoString))
	+ (("\\x04\\x0b \\x03\\x05:8\\x03\\x05\\x16%\\x03\\x0a\\x0d\\x1f\\x03\\x06\\x16\\x10\\x03\\x05" : GoString))
	+ (("\\x1d5\\x03\\x05*;\\x03\\x05\\x16\\x1b\\x03\\x04.-\\x03\\x06\\x1a\\x19\\x03\\x04\\x03," : GoString))
	+ (("\\x03\\x0b87\\x03\\x04/\\x0a\\x03\\x06\\x00,\\x03\\x04-\\x01\\x03\\x04\\x1e-\\x03\\x06/(" : GoString))
	+ (("\\x03\\x0a\\x0b5\\x03\\x06\\x0e7\\x03\\x06\\x07.\\x03\\x0597\\x03\\x0a*%\\x03\\x0760" : GoString))
	+ (("\\x03\\x06\\x0c;\\x03\\x05\'\\x00\\x03\\x072.\\x03\\x072\\x08\\x03\\x06=\\x01\\x03\\x06" : GoString))
	+ (("\\x05\\x1b\\x03\\x06\\x06\\x12\\x03\\x06$=\\x03\\x06\'\\x0d\\x03\\x04\\x11\\x0f\\x03\\x076" : GoString))
	+ ((",\\x03\\x06\\x07;\\x03\\x06.,\\x03\\x86\\xf9\\xea\\x03\\x8f\\xff\\xeb\\x02\\x092\\x02" : GoString))
	+ (("\\x095\\x02\\x094\\x02\\x09;\\x02\\x09>\\x02\\x098\\x02\\x09*\\x02\\x09/\\x02\\x09,\\x02" : GoString))
	+ (("\\x09%\\x02\\x09&\\x02\\x09#\\x02\\x09 \\x02\\x08!\\x02\\x08%\\x02\\x08$\\x02\\x08+\\x02" : GoString))
	+ (("\\x08.\\x02\\x08*\\x02\\x08&\\x02\\x088\\x02\\x08>\\x02\\x084\\x02\\x086\\x02\\x080\\x02" : GoString))
	+ (("\\x08\\x10\\x02\\x08\\x17\\x02\\x08\\x12\\x02\\x08\\x1d\\x02\\x08\\x1f\\x02\\x08\\x13\\x02" : GoString))
	+ (("\\x08\\x15\\x02\\x08\\x14\\x02\\x08\\x0c\\x03\\x8b\\xfd\\xd0\\x03\\x81\\xec\\xc6\\x03\\x87" : GoString))
	+ (("\\xe0\\x8a\\x03-2\\xe3\\x03\\x80\\xef\\xe4\\x03-2\\xea\\x03\\x88\\xe6\\xeb\\x03\\x8e\\xe6" : GoString))
	+ (("\\xe8\\x03\\x84\\xe6\\xe9\\x03\\x97\\xe6\\xee\\x03-2\\xf9\\x03-2\\xf6\\x03\\x8e\\xe3\\xad" : GoString))
	+ (("\\x03\\x80\\xe3\\x92\\x03\\x88\\xe3\\x90\\x03\\x8e\\xe3\\x90\\x03\\x80\\xe3\\x97\\x03\\x88" : GoString))
	+ (("\\xe3\\x95\\x03\\x88\\xfe\\xcb\\x03\\x8e\\xfe\\xca\\x03\\x84\\xfe\\xcd\\x03\\x91\\xef\\xc9" : GoString))
	+ (("\\x03-2\\xc1\\x03-2\\xc0\\x03-2\\xcb\\x03\\x88@\\x09\\x03\\x8e@\\x08\\x03\\x8f\\xe0\\xf5" : GoString))
	+ (("\\x03\\x8e\\xe6\\xf9\\x03\\x8e\\xe0\\xfa\\x03\\x93\\xff\\xf4\\x03\\x84\\xee\\xd3\\x03\\x0b" : GoString))
	+ (("(\\x04\\x023 \\x03\\x0b)\\x08\\x021;\\x02\\x01*\\x03\\x0b#\\x10\\x03\\x0b 0\\x03\\x0b!" : GoString))
	+ (("\\x10\\x03\\x0b!0\\x03\\x07\\x15\\x08\\x03\\x09?5\\x03\\x07\\x1f\\x08\\x03\\x07\\x17\\x0b" : GoString))
	+ (("\\x03\\x09\\x1f\\x15\\x03\\x0b\\x1c7\\x03\\x0a+#\\x03\\x06\\x1a\\x1b\\x03\\x06\\x1a\\x14" : GoString))
	+ (("\\x03\\x0a\\x01\\x18\\x03\\x06#\\x1b\\x03\\x0a2\\x0c\\x03\\x0a\\x01\\x04\\x03\\x09#;\\x03" : GoString))
	+ (("\\x08=\'\\x03\\x08\\x1a\\x0a\\x03\\x07</\\x03\\x07:+\\x03\\x07\\x07*\\x03\\x06&\\x1c\\x03" : GoString))
	+ (("\\x09\\x0c\\x16\\x03\\x09\\x10\\x0e\\x03\\x08\'\\x0f\\x03\\x08+\\x09\\x03\\x074%\\x03\\x06" : GoString))
	+ (("!3\\x03\\x06\\x03+\\x03\\x0b\\x1e\\x19\\x03\\x0a))\\x03\\x09\\x08\\x19\\x03\\x08,\\x05" : GoString))
	+ (("\\x03\\x07<2\\x03\\x06\\x1c>\\x03\\x0a\\x111\\x03\\x09\\x1b\\x09\\x03\\x073.\\x03\\x07" : GoString))
	+ (("\\x01\\x00\\x03\\x09/,\\x03\\x07#>\\x03\\x07\\x048\\x03\\x0a\\x1f\\x22\\x03\\x098>\\x03" : GoString))
	+ (("\\x09\\x11\\x00\\x03\\x08/\\x17\\x03\\x06\'\\x22\\x03\\x0b\\x1a+\\x03\\x0a\\x22\\x19\\x03" : GoString))
	+ (("\\x0a/1\\x03\\x0974\\x03\\x09\\x0f\\x22\\x03\\x08,\\x22\\x03\\x08?\\x14\\x03\\x07$5\\x03" : GoString))
	+ (("\\x07<3\\x03\\x07=*\\x03\\x07\\x13\\x18\\x03\\x068\\x0a\\x03\\x06\\x09\\x16\\x03\\x06" : GoString))
	+ (("\\x13\\x00\\x03\\x08\\x067\\x03\\x08\\x01\\x03\\x03\\x08\\x12\\x1d\\x03\\x07+7\\x03\\x06(" : GoString))
	+ ((";\\x03\\x06\\x1c?\\x03\\x07\\x0e\\x17\\x03\\x0a\\x06\\x1d\\x03\\x0a\\x19\\x07\\x03\\x08" : GoString))
	+ (("\\x14$\\x03\\x07$;\\x03\\x08,$\\x03\\x08\\x06\\x0d\\x03\\x07\\x16\\x0a\\x03\\x06>>\\x03" : GoString))
	+ (("\\x0a\\x06\\x12\\x03\\x0a\\x14)\\x03\\x09\\x0d\\x1f\\x03\\x09\\x12\\x17\\x03\\x09\\x19" : GoString))
	+ (("\\x01\\x03\\x08\\x11 \\x03\\x08\\x1d\'\\x03\\x06<\\x1a\\x03\\x0a.\\x00\\x03\\x07\'\\x18" : GoString))
	+ (("\\x03\\x0a\\x22\\x08\\x03\\x08\\x0d\\x0a\\x03\\x08\\x13)\\x03\\x07*)\\x03\\x06<,\\x03" : GoString))
	+ (("\\x07\\x0b\\x1a\\x03\\x09.\\x14\\x03\\x09\\x0d\\x1e\\x03\\x07\\x0e#\\x03\\x0b\\x1d\'\\x03" : GoString))
	+ (("\\x0a\\x0a8\\x03\\x09%2\\x03\\x08+&\\x03\\x080\\x12\\x03\\x0a)4\\x03\\x08\\x06\\x1f\\x03" : GoString))
	+ (("\\x0b\\x1b\\x1a\\x03\\x0a\\x1b\\x0f\\x03\\x0b\\x1d*\\x03\\x09\\x16$\\x03\\x090\\x11\\x03" : GoString))
	+ (("\\x08\\x11\\x08\\x03\\x0a*(\\x03\\x0a\\x042\\x03\\x089,\\x03\\x074\'\\x03\\x07\\x0f\\x05" : GoString))
	+ (("\\x03\\x09\\x0b\\x0a\\x03\\x07\\x1b\\x01\\x03\\x09\\x17:\\x03\\x09.\\x0d\\x03\\x07.\\x11" : GoString))
	+ (("\\x03\\x09+\\x15\\x03\\x080\\x13\\x03\\x0b\\x1f\\x19\\x03\\x0a \\x11\\x03\\x0a\\x220\\x03" : GoString))
	+ (("\\x09\\x07;\\x03\\x08\\x16\\x1c\\x03\\x07,\\x13\\x03\\x07\\x0e/\\x03\\x06\\x221\\x03\\x0a" : GoString))
	+ ((".\\x0a\\x03\\x0a7\\x02\\x03\\x0a\\x032\\x03\\x0a\\x1d.\\x03\\x091\\x06\\x03\\x09\\x19:" : GoString))
	+ (("\\x03\\x08\\x02/\\x03\\x060+\\x03\\x06\\x0f-\\x03\\x06\\x1c\\x1f\\x03\\x06\\x1d\\x07\\x03" : GoString))
	+ (("\\x0a,\\x11\\x03\\x09=\\x0d\\x03\\x09\\x0b;\\x03\\x07\\x1b/\\x03\\x0a\\x1f:\\x03\\x09 " : GoString))
	+ (("\\x1f\\x03\\x09.\\x10\\x03\\x094\\x0b\\x03\\x09\\x1a1\\x03\\x08#\\x1a\\x03\\x084\\x1d" : GoString))
	+ (("\\x03\\x08\\x01\\x1f\\x03\\x08\\x11\\x22\\x03\\x07\'8\\x03\\x07\\x1a>\\x03\\x0757\\x03" : GoString))
	+ (("\\x06&9\\x03\\x06+\\x11\\x03\\x0a.\\x0b\\x03\\x0a,>\\x03\\x0a4#\\x03\\x08%\\x17\\x03" : GoString))
	+ (("\\x07\\x05\\x22\\x03\\x07\\x0c\\x0b\\x03\\x0a\\x1d+\\x03\\x0a\\x19\\x16\\x03\\x09+\\x1f" : GoString))
	+ (("\\x03\\x09\\x08\\x0b\\x03\\x08\\x16\\x18\\x03\\x08+\\x12\\x03\\x0b\\x1d\\x0c\\x03\\x0a=" : GoString))
	+ (("\\x10\\x03\\x0a\\x09\\x0d\\x03\\x0a\\x10\\x11\\x03\\x09&0\\x03\\x08(\\x1f\\x03\\x087\\x07" : GoString))
	+ (("\\x03\\x08\\x185\\x03\\x07\'6\\x03\\x06.\\x05\\x03\\x06=\\x04\\x03\\x06;;\\x03\\x06\\x06," : GoString))
	+ (("\\x03\\x0b\\x18>\\x03\\x08\\x00\\x18\\x03\\x06 \\x03\\x03\\x06<\\x00\\x03\\x09%\\x18\\x03" : GoString))
	+ (("\\x0b\\x1c<\\x03\\x0a%!\\x03\\x0a\\x09\\x12\\x03\\x0a\\x16\\x02\\x03\\x090\'\\x03\\x09" : GoString))
	+ (("\\x0e=\\x03\\x08 \\x0e\\x03\\x08>\\x03\\x03\\x074>\\x03\\x06&?\\x03\\x06\\x19\\x09\\x03" : GoString))
	+ (("\\x06?(\\x03\\x0a-\\x0e\\x03\\x09:3\\x03\\x098:\\x03\\x09\\x12\\x0b\\x03\\x09\\x1d\\x17" : GoString))
	+ (("\\x03\\x087\\x05\\x03\\x082\\x14\\x03\\x08\\x06%\\x03\\x08\\x13\\x1f\\x03\\x06\\x06\\x0e" : GoString))
	+ (("\\x03\\x0a\\x22<\\x03\\x09/<\\x03\\x06>+\\x03\\x0a\'?\\x03\\x0a\\x13\\x0c\\x03\\x09\\x10<" : GoString))
	+ (("\\x03\\x07\\x1b=\\x03\\x0a\\x19\\x13\\x03\\x09\\x22\\x1d\\x03\\x09\\x07\\x0d\\x03\\x08)" : GoString))
	+ (("\\x1c\\x03\\x06=\\x1a\\x03\\x0a/4\\x03\\x0a7\\x11\\x03\\x0a\\x16:\\x03\\x09?3\\x03\\x09:" : GoString))
	+ (("/\\x03\\x09\\x05\\x0a\\x03\\x09\\x14\\x06\\x03\\x087\\x22\\x03\\x080\\x07\\x03\\x08\\x1a" : GoString))
	+ (("\\x1f\\x03\\x07\\x04(\\x03\\x07\\x04\\x09\\x03\\x06 %\\x03\\x06<\\x08\\x03\\x0a+\\x14" : GoString))
	+ (("\\x03\\x09\\x1d\\x16\\x03\\x0a70\\x03\\x08 >\\x03\\x0857\\x03\\x070\\x0a\\x03\\x06=\\x12" : GoString))
	+ (("\\x03\\x06\\x16%\\x03\\x06\\x1d,\\x03\\x099#\\x03\\x09\\x10>\\x03\\x07 \\x1e\\x03\\x08" : GoString))
	+ (("\\x0c<\\x03\\x08\\x0b\\x18\\x03\\x08\\x15+\\x03\\x08,:\\x03\\x08%\\x22\\x03\\x07\\x0a$" : GoString))
	+ (("\\x03\\x0b\\x1c=\\x03\\x07+\\x08\\x03\\x0a/\\x05\\x03\\x0a \\x07\\x03\\x0a\\x12\'\\x03" : GoString))
	+ (("\\x09#\\x11\\x03\\x08\\x1b\\x15\\x03\\x0a\\x06\\x01\\x03\\x09\\x1c\\x1b\\x03\\x0922\\x03" : GoString))
	+ (("\\x07\\x14<\\x03\\x07\\x09\\x04\\x03\\x061\\x04\\x03\\x07\\x0e\\x01\\x03\\x0a\\x13\\x18" : GoString))
	+ (("\\x03\\x0a-\\x0c\\x03\\x0a?\\x0d\\x03\\x0a\\x09\\x0a\\x03\\x091&\\x03\\x0a/\\x0b\\x03" : GoString))
	+ (("\\x08$<\\x03\\x083\\x1d\\x03\\x08\\x0c$\\x03\\x08\\x0d\\x07\\x03\\x08\\x0d?\\x03\\x08" : GoString))
	+ (("\\x0e\\x14\\x03\\x065\\x0a\\x03\\x08\\x1a#\\x03\\x08\\x16#\\x03\\x0702\\x03\\x07\\x03" : GoString))
	+ (("\\x1a\\x03\\x06(\\x1d\\x03\\x06+\\x1b\\x03\\x06\\x0b\\x05\\x03\\x06\\x0b\\x17\\x03\\x06" : GoString))
	+ (("\\x0c\\x04\\x03\\x06\\x1e\\x19\\x03\\x06+0\\x03\\x062\\x18\\x03\\x0b\\x16\\x1e\\x03\\x0a+" : GoString))
	+ (("\\x16\\x03\\x0a-?\\x03\\x0a#:\\x03\\x0a#\\x10\\x03\\x0a%$\\x03\\x0a>+\\x03\\x0a01\\x03" : GoString))
	+ (("\\x0a1\\x10\\x03\\x0a\\x099\\x03\\x0a\\x0a\\x12\\x03\\x0a\\x19\\x1f\\x03\\x0a\\x19\\x12" : GoString))
	+ (("\\x03\\x09*)\\x03\\x09-\\x16\\x03\\x09.1\\x03\\x09.2\\x03\\x09<\\x0e\\x03\\x09> \\x03" : GoString))
	+ (("\\x093\\x12\\x03\\x09\\x0b\\x01\\x03\\x09\\x1c2\\x03\\x09\\x11\\x1c\\x03\\x09\\x15%\\x03" : GoString))
	+ (("\\x08,&\\x03\\x08!\\x22\\x03\\x089(\\x03\\x08\\x0b\\x1a\\x03\\x08\\x0d2\\x03\\x08\\x0c" : GoString))
	+ (("\\x04\\x03\\x08\\x0c\\x06\\x03\\x08\\x0c\\x1f\\x03\\x08\\x0c\\x0c\\x03\\x08\\x0f\\x1f\\x03" : GoString))
	+ (("\\x08\\x0f\\x1d\\x03\\x08\\x00\\x14\\x03\\x08\\x03\\x14\\x03\\x08\\x06\\x16\\x03\\x08\\x1e" : GoString))
	+ (("#\\x03\\x08\\x11\\x11\\x03\\x08\\x10\\x18\\x03\\x08\\x14(\\x03\\x07)\\x1e\\x03\\x07.1" : GoString))
	+ (("\\x03\\x07 $\\x03\\x07 \'\\x03\\x078\\x08\\x03\\x07\\x0d0\\x03\\x07\\x0f7\\x03\\x07\\x05#" : GoString))
	+ (("\\x03\\x07\\x05\\x1a\\x03\\x07\\x1a7\\x03\\x07\\x1d-\\x03\\x07\\x17\\x10\\x03\\x06)\\x1f" : GoString))
	+ (("\\x03\\x062\\x0b\\x03\\x066\\x16\\x03\\x06\\x09\\x11\\x03\\x09(\\x1e\\x03\\x07!5\\x03" : GoString))
	+ (("\\x0b\\x11\\x16\\x03\\x0a/\\x04\\x03\\x0a,\\x1a\\x03\\x0b\\x173\\x03\\x0a,1\\x03\\x0a/5" : GoString))
	+ (("\\x03\\x0a\\x221\\x03\\x0a\\x22\\x0d\\x03\\x0a?%\\x03\\x0a<,\\x03\\x0a?#\\x03\\x0a>\\x19" : GoString))
	+ (("\\x03\\x0a\\x08&\\x03\\x0a\\x0b\\x0e\\x03\\x0a\\x0c:\\x03\\x0a\\x0c+\\x03\\x0a\\x03\\x22" : GoString))
	+ (("\\x03\\x0a\\x06)\\x03\\x0a\\x11\\x10\\x03\\x0a\\x11\\x1a\\x03\\x0a\\x17-\\x03\\x0a\\x14(" : GoString))
	+ (("\\x03\\x09)\\x1e\\x03\\x09/\\x09\\x03\\x09.\\x00\\x03\\x09,\\x07\\x03\\x09/*\\x03\\x09-9" : GoString))
	+ (("\\x03\\x09\\x228\\x03\\x09%\\x09\\x03\\x09:\\x12\\x03\\x09;\\x1d\\x03\\x09?\\x06\\x03" : GoString))
	+ (("\\x093%\\x03\\x096\\x05\\x03\\x096\\x08\\x03\\x097\\x02\\x03\\x09\\x07,\\x03\\x09\\x04," : GoString))
	+ (("\\x03\\x09\\x1f\\x16\\x03\\x09\\x11\\x03\\x03\\x09\\x11\\x12\\x03\\x09\\x168\\x03\\x08*" : GoString))
	+ (("\\x05\\x03\\x08/2\\x03\\x084:\\x03\\x08\\x22+\\x03\\x08 0\\x03\\x08&\\x0a\\x03\\x08;" : GoString))
	+ (("\\x10\\x03\\x08>$\\x03\\x08>\\x18\\x03\\x0829\\x03\\x082:\\x03\\x081,\\x03\\x081<\\x03" : GoString))
	+ (("\\x081\\x1c\\x03\\x087#\\x03\\x087*\\x03\\x08\\x09\'\\x03\\x08\\x00\\x1d\\x03\\x08\\x05-" : GoString))
	+ (("\\x03\\x08\\x1f4\\x03\\x08\\x1d\\x04\\x03\\x08\\x16\\x0f\\x03\\x07*7\\x03\\x07\'!\\x03" : GoString))
	+ (("\\x07%\\x1b\\x03\\x077\\x0c\\x03\\x07\\x0c1\\x03\\x07\\x0c.\\x03\\x07\\x00\\x06\\x03\\x07" : GoString))
	+ (("\\x01\\x02\\x03\\x07\\x010\\x03\\x07\\x06=\\x03\\x07\\x01\\x03\\x03\\x07\\x01\\x13\\x03" : GoString))
	+ (("\\x07\\x06\\x06\\x03\\x07\\x05\\x0a\\x03\\x07\\x1f\\x09\\x03\\x07\\x17:\\x03\\x06*1\\x03" : GoString))
	+ (("\\x06-\\x1d\\x03\\x06\\x223\\x03\\x062:\\x03\\x060$\\x03\\x066\\x1e\\x03\\x064\\x12\\x03" : GoString))
	+ (("\\x0645\\x03\\x06\\x0b\\x00\\x03\\x06\\x0b7\\x03\\x06\\x07\\x1f\\x03\\x06\\x15\\x12\\x03" : GoString))
	+ (("\\x0c\\x05\\x0f\\x03\\x0b+\\x0b\\x03\\x0b+-\\x03\\x06\\x16\\x1b\\x03\\x06\\x15\\x17\\x03" : GoString))
	+ (("\\x89\\xca\\xea\\x03\\x89\\xca\\xe8\\x03\\x0c8\\x10\\x03\\x0c8\\x01\\x03\\x0c8\\x0f\\x03" : GoString))
	+ (("\\x0d8%\\x03\\x0d8!\\x03\\x0c8-\\x03\\x0c8/\\x03\\x0c8+\\x03\\x0c87\\x03\\x0c85\\x03" : GoString))
	+ (("\\x0c9\\x09\\x03\\x0c9\\x0d\\x03\\x0c9\\x0f\\x03\\x0c9\\x0b\\x03\\xcfu\\x0c\\x03\\xcfu" : GoString))
	+ (("\\x0f\\x03\\xcfu\\x0e\\x03\\xcfu\\x09\\x03\\x0c9\\x10\\x03\\x0d9\\x0c\\x03\\xcf`;\\x03" : GoString))
	+ (("\\xcf`>\\x03\\xcf`9\\x03\\xcf`8\\x03\\xcf`7\\x03\\xcf`*\\x03\\xcf`-\\x03\\xcf`,\\x03" : GoString))
	+ (("\\x0d\\x1b\\x1a\\x03\\x0d\\x1b&\\x03\\x0c=.\\x03\\x0c=%\\x03\\x0c>\\x1e\\x03\\x0c>\\x14" : GoString))
	+ (("\\x03\\x0c?\\x06\\x03\\x0c?\\x0b\\x03\\x0c?\\x0c\\x03\\x0c?\\x0d\\x03\\x0c?\\x02\\x03" : GoString))
	+ (("\\x0c>\\x0f\\x03\\x0c>\\x08\\x03\\x0c>\\x09\\x03\\x0c>,\\x03\\x0c>\\x0c\\x03\\x0c?\\x13" : GoString))
	+ (("\\x03\\x0c?\\x16\\x03\\x0c?\\x15\\x03\\x0c?\\x1c\\x03\\x0c?\\x1f\\x03\\x0c?\\x1d\\x03" : GoString))
	+ (("\\x0c?\\x1a\\x03\\x0c?\\x17\\x03\\x0c?\\x08\\x03\\x0c?\\x09\\x03\\x0c?\\x0e\\x03\\x0c?" : GoString))
	+ (("\\x04\\x03\\x0c?\\x05\\x03\\x0c<?\\x03\\x0c=\\x00\\x03\\x0c=\\x06\\x03\\x0c=\\x05\\x03" : GoString))
	+ (("\\x0c=\\x0c\\x03\\x0c=\\x0f\\x03\\x0c=\\x0d\\x03\\x0c=\\x0b\\x03\\x0c=\\x07\\x03\\x0c=" : GoString))
	+ (("\\x19\\x03\\x0c=\\x15\\x03\\x0c=\\x11\\x03\\x0c=1\\x03\\x0c=3\\x03\\x0c=0\\x03\\x0c=>" : GoString))
	+ (("\\x03\\x0c=2\\x03\\x0c=6\\x03\\x0c<\\x07\\x03\\x0c<\\x05\\x03\\x0e:!\\x03\\x0e:#\\x03" : GoString))
	+ (("\\x0e8\\x09\\x03\\x0e:&\\x03\\x0e8\\x0b\\x03\\x0e:$\\x03\\x0e:,\\x03\\x0e8\\x1a\\x03" : GoString))
	+ (("\\x0e8\\x1e\\x03\\x0e:*\\x03\\x0e:7\\x03\\x0e:5\\x03\\x0e:;\\x03\\x0e:\\x15\\x03\\x0e:<" : GoString))
	+ (("\\x03\\x0e:4\\x03\\x0e:\'\\x03\\x0e:-\\x03\\x0e:%\\x03\\x0e:?\\x03\\x0e:=\\x03\\x0e:)" : GoString))
	+ (("\\x03\\x0e:/\\x03\\xcfs\'\\x03\\x0d=\\x0f\\x03\\x0d+*\\x03\\x0d99\\x03\\x0d9;\\x03\\x0d9" : GoString))
	+ (("?\\x03\\x0d)\\x0d\\x03\\x0d(%\\x02\\x01\\x18\\x02\\x01(\\x02\\x01\\x1e\\x03\\x0f$!\\x03" : GoString))
	+ (("\\x0f87\\x03\\x0f4\\x0e\\x03\\x0f5\\x1d\\x03\\x06\'\\x03\\x03\\x0f\\x08\\x18\\x03\\x0f" : GoString))
	+ (("\\x0d\\x1b\\x03\\x0e2=\\x03\\x0e;\\x08\\x03\\x0e:\\x0b\\x03\\x0e\\x06$\\x03\\x0e\\x0d)" : GoString))
	+ (("\\x03\\x0e\\x16\\x1f\\x03\\x0e\\x16\\x1b\\x03\\x0d$\\x0a\\x03\\x05,\\x1d\\x03\\x0d. \\x03" : GoString))
	+ (("\\x0d.#\\x03\\x0c(/\\x03\\x09%\\x02\\x03\\x0d90\\x03\\x0d\\x0e4\\x03\\x0d\\x0d\\x0f\\x03" : GoString))
	+ (("\\x0c#\\x00\\x03\\x0c,\\x1e\\x03\\x0c2\\x0e\\x03\\x0c\\x01\\x17\\x03\\x0c\\x09:\\x03\\x0e" : GoString))
	+ (("\\x173\\x03\\x0c\\x08\\x03\\x03\\x0c\\x11\\x07\\x03\\x0c\\x10\\x18\\x03\\x0c\\x1f\\x1c" : GoString))
	+ (("\\x03\\x0c\\x19\\x0e\\x03\\x0c\\x1a\\x1f\\x03\\x0f0>\\x03\\x0b->\\x03\\x0b<+\\x03\\x0b8" : GoString))
	+ (("\\x13\\x03\\x0b\\x043\\x03\\x0b\\x14\\x03\\x03\\x0b\\x16%\\x03\\x0d\\x22&\\x03\\x0b\\x1a" : GoString))
	+ (("\\x1a\\x03\\x0b\\x1a\\x04\\x03\\x0a%9\\x03\\x0a&2\\x03\\x0a&0\\x03\\x0a!\\x1a\\x03\\x0a!" : GoString))
	+ (("7\\x03\\x0a5\\x10\\x03\\x0a=4\\x03\\x0a?\\x0e\\x03\\x0a>\\x10\\x03\\x0a\\x00 \\x03\\x0a" : GoString))
	+ (("\\x0f:\\x03\\x0a\\x0f9\\x03\\x0a\\x0b\\x0a\\x03\\x0a\\x17%\\x03\\x0a\\x1b-\\x03\\x09-" : GoString))
	+ (("\\x1a\\x03\\x09,4\\x03\\x09.,\\x03\\x09)\\x09\\x03\\x096!\\x03\\x091\\x1f\\x03\\x093" : GoString))
	+ (("\\x16\\x03\\x0c+\\x1f\\x03\\x098 \\x03\\x098=\\x03\\x0c(\\x1a\\x03\\x0c(\\x16\\x03\\x09" : GoString))
	+ (("\\x0a+\\x03\\x09\\x16\\x12\\x03\\x09\\x13\\x0e\\x03\\x09\\x153\\x03\\x08)!\\x03\\x09\\x1a" : GoString))
	+ (("\\x01\\x03\\x09\\x18\\x01\\x03\\x08%#\\x03\\x08>\\x22\\x03\\x08\\x05%\\x03\\x08\\x02*" : GoString))
	+ (("\\x03\\x08\\x15;\\x03\\x08\\x1b7\\x03\\x0f\\x07\\x1d\\x03\\x0f\\x04\\x03\\x03\\x070\\x0c" : GoString))
	+ (("\\x03\\x07;\\x0b\\x03\\x07\\x08\\x17\\x03\\x07\\x12\\x06\\x03\\x06/-\\x03\\x0671\\x03" : GoString))
	+ (("\\x065+\\x03\\x06>7\\x03\\x06\\x049\\x03\\x05+\\x1e\\x03\\x05,\\x17\\x03\\x05 \\x1d\\x03" : GoString))
	+ (("\\x05\\x22\\x05\\x03\\x050\\x1d" : GoString));

final _validXV8:T_category = new T_category(((40 : GoUInt16)));

var _idnaSparseValues:GoArray<T_valueRange> = new GoArray<T_valueRange>((({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57605 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57605 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((31 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57373 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((821 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((845 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((869 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((585 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((893 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((601 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((617 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((845 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((917 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57789 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((633 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((649 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((1013 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57605 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1181 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57733 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1349 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1025 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2112 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((13 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2289 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2401 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2457 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57405 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((13 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1373 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1373 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57605 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8216 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8216 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8216 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57413 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13120 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((536 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13248 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((520 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((520 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((520 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((520 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((3625 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3649 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3673 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3697 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3721 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3745 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3769 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1405 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1437 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1437 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57413 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57413 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57413 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57413 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((9409 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((9457 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((9513 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((9593 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((9649 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((128 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((128 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2525 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2557 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10433 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3710 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10538 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3742 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10561 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57733 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1013 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3773 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57461 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3829 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3861 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((3893 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((5941 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((6421 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((7957 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10722 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10762 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10801 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10857 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10805 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10837 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10869 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10901 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10869 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10933 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10965 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10997 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((11029 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((11061 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((11029 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((48 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((10914 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12378 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12450 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57357 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1013 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((4905 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17533 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57469 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57373 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57373 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8201 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28353 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((520 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((264 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17565 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17589 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((10609 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57453 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28377 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17613 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((17645 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17677 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17709 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((17677 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((17741 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((19789 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((19213 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((20461 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((21805 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((23853 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((22157 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24013 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((27533 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((27981 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28045 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28401 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28909 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28941 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((29453 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((25965 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((30925 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((28557 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((31149 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((31857 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((31793 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((31977 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((56 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((40449 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40617 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40673 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40729 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((41177 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((41457 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((41681 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40337 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((40449 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((42969 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((43193 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((43081 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((43305 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57669 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57797 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57669 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((35597 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((35621 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((35621 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((35597 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57669 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57797 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57669 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((989 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2312 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2584 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3096 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3080 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((3096 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2584 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2328 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((7 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((14344 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((1181 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((12 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((13 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((148 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((149 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((15112 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((832 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57605 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12296 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((149 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((150 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((167 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((168 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((9 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((155 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((156 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((960 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((14 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((46601 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((158 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((46673 : GoUInt16)), _lo: ((159 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((46745 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((46849 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((46953 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47057 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47161 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12312 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((12312 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((832 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((11 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((169 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((170 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47265 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47337 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47409 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47513 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((47617 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((47721 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13080 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((10 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((154 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((155 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((164 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((165 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((141 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((142 : GoUInt8)), _hi: ((142 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((143 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2568 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((13064 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2824 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2056 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((2072 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((189 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((190 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((174 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((175 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((49705 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((51281 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51361 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51441 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51521 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((131 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51601 : GoUInt16)), _lo: ((132 : GoUInt8)), _hi: ((132 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51681 : GoUInt16)), _lo: ((133 : GoUInt8)), _hi: ((133 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51761 : GoUInt16)), _lo: ((134 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51841 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((51921 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((136 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((137 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((52001 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((144 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((52033 : GoUInt16)), _lo: ((145 : GoUInt8)), _hi: ((145 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((146 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((165 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((166 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((188 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((189 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((152 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((153 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((5 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((153 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((154 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((135 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((136 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((140 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((141 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((8 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((6 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((168 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((169 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((130 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((131 : GoUInt8)), _hi: ((143 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((144 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((146 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((147 : GoUInt8)), _hi: ((147 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((148 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((13 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((24 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8001 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((201 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((105 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((178 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((121 : GoUInt16)), _lo: ((179 : GoUInt8)), _hi: ((179 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8017 : GoUInt16)), _lo: ((180 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8033 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((181 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8049 : GoUInt16)), _lo: ((182 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8065 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((183 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8081 : GoUInt16)), _lo: ((184 : GoUInt8)), _hi: ((184 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8097 : GoUInt16)), _lo: ((185 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((180 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((181 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((3 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((161 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((162 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((160 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((161 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((15 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((57121 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((137 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36405 : GoUInt16)), _lo: ((138 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((57441 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((156 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36437 : GoUInt16)), _lo: ((157 : GoUInt8)), _hi: ((157 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58017 : GoUInt16)), _lo: ((158 : GoUInt8)), _hi: ((162 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36469 : GoUInt16)), _lo: ((163 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58177 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32525 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58433 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36501 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((176 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58529 : GoUInt16)), _lo: ((177 : GoUInt8)), _hi: ((182 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36533 : GoUInt16)), _lo: ((183 : GoUInt8)), _hi: ((185 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58721 : GoUInt16)), _lo: ((186 : GoUInt8)), _hi: ((186 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((36629 : GoUInt16)), _lo: ((187 : GoUInt8)), _hi: ((187 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((58753 : GoUInt16)), _lo: ((188 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((32 : GoUInt16)), _lo: ((16 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((37813 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((61697 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((134 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((37845 : GoUInt16)), _lo: ((135 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((55905 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((139 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((61889 : GoUInt16)), _lo: ((140 : GoUInt8)), _hi: ((150 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((37973 : GoUInt16)), _lo: ((151 : GoUInt8)), _hi: ((151 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((62241 : GoUInt16)), _lo: ((152 : GoUInt8)), _hi: ((163 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((38005 : GoUInt16)), _lo: ((164 : GoUInt8)), _hi: ((166 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((62625 : GoUInt16)), _lo: ((167 : GoUInt8)), _hi: ((170 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((38101 : GoUInt16)), _lo: ((171 : GoUInt8)), _hi: ((171 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((62753 : GoUInt16)), _lo: ((172 : GoUInt8)), _hi: ((172 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((38133 : GoUInt16)), _lo: ((173 : GoUInt8)), _hi: ((173 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((62785 : GoUInt16)), _lo: ((174 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((38165 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((177 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((62849 : GoUInt16)), _lo: ((178 : GoUInt8)), _hi: ((190 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((8256 : GoUInt16)), _lo: ((191 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((8 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((138 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((139 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((4 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((128 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((832 : GoUInt16)), _lo: ((129 : GoUInt8)), _hi: ((129 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((130 : GoUInt8)), _hi: ((159 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((832 : GoUInt16)), _lo: ((160 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((832 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((1 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13248 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((0 : GoUInt16)), _lo: ((2 : GoUInt8)), _hi: 0} : T_valueRange)).__copy__(),
	(({_value: ((13248 : GoUInt16)), _lo: ((128 : GoUInt8)), _hi: ((175 : GoUInt8))} : T_valueRange)).__copy__(),
	(({_value: ((64 : GoUInt16)), _lo: ((176 : GoUInt8)), _hi: ((191 : GoUInt8))} : T_valueRange)).__copy__()).copy();

var _idnaSparseOffset:Slice<GoUInt16> = new Slice<GoUInt16>(((0 : GoUInt16)), ((8 : GoUInt16)), ((25 : GoUInt16)), ((37 : GoUInt16)), ((39 : GoUInt16)),
	((44 : GoUInt16)), ((51 : GoUInt16)), ((62 : GoUInt16)), ((74 : GoUInt16)), ((78 : GoUInt16)), ((93 : GoUInt16)), ((98 : GoUInt16)), ((108 : GoUInt16)),
	((120 : GoUInt16)), ((133 : GoUInt16)), ((139 : GoUInt16)), ((148 : GoUInt16)), ((164 : GoUInt16)), ((178 : GoUInt16)), ((189 : GoUInt16)),
	((202 : GoUInt16)), ((219 : GoUInt16)), ((229 : GoUInt16)), ((236 : GoUInt16)), ((249 : GoUInt16)), ((266 : GoUInt16)), ((273 : GoUInt16)),
	((284 : GoUInt16)), ((299 : GoUInt16)), ((313 : GoUInt16)), ((323 : GoUInt16)), ((325 : GoUInt16)), ((330 : GoUInt16)), ((333 : GoUInt16)),
	((336 : GoUInt16)), ((338 : GoUInt16)), ((350 : GoUInt16)), ((361 : GoUInt16)), ((369 : GoUInt16)), ((375 : GoUInt16)), ((381 : GoUInt16)),
	((386 : GoUInt16)), ((391 : GoUInt16)), ((394 : GoUInt16)), ((398 : GoUInt16)), ((404 : GoUInt16)), ((409 : GoUInt16)), ((421 : GoUInt16)),
	((431 : GoUInt16)), ((437 : GoUInt16)), ((454 : GoUInt16)), ((464 : GoUInt16)), ((467 : GoUInt16)), ((475 : GoUInt16)), ((478 : GoUInt16)),
	((491 : GoUInt16)), ((499 : GoUInt16)), ((503 : GoUInt16)), ((510 : GoUInt16)), ((518 : GoUInt16)), ((534 : GoUInt16)), ((546 : GoUInt16)),
	((549 : GoUInt16)), ((559 : GoUInt16)), ((571 : GoUInt16)), ((583 : GoUInt16)), ((595 : GoUInt16)), ((603 : GoUInt16)), ((608 : GoUInt16)),
	((621 : GoUInt16)), ((638 : GoUInt16)), ((642 : GoUInt16)), ((653 : GoUInt16)), ((657 : GoUInt16)), ((666 : GoUInt16)), ((674 : GoUInt16)),
	((680 : GoUInt16)), ((685 : GoUInt16)), ((688 : GoUInt16)), ((692 : GoUInt16)), ((698 : GoUInt16)), ((702 : GoUInt16)), ((706 : GoUInt16)),
	((710 : GoUInt16)), ((716 : GoUInt16)), ((724 : GoUInt16)), ((731 : GoUInt16)), ((742 : GoUInt16)), ((752 : GoUInt16)), ((756 : GoUInt16)),
	((759 : GoUInt16)), ((765 : GoUInt16)), ((769 : GoUInt16)), ((771 : GoUInt16)), ((774 : GoUInt16)), ((776 : GoUInt16)), ((779 : GoUInt16)),
	((789 : GoUInt16)), ((792 : GoUInt16)), ((807 : GoUInt16)), ((811 : GoUInt16)), ((816 : GoUInt16)), ((819 : GoUInt16)), ((823 : GoUInt16)),
	((828 : GoUInt16)), ((833 : GoUInt16)), ((839 : GoUInt16)), ((856 : GoUInt16)), ((872 : GoUInt16)), ((878 : GoUInt16)), ((882 : GoUInt16)),
	((897 : GoUInt16)), ((902 : GoUInt16)), ((910 : GoUInt16)), ((920 : GoUInt16)), ((931 : GoUInt16)), ((939 : GoUInt16)), ((956 : GoUInt16)),
	((965 : GoUInt16)), ((981 : GoUInt16)), ((994 : GoUInt16)), ((1006 : GoUInt16)), ((1011 : GoUInt16)), ((1024 : GoUInt16)), ((1028 : GoUInt16)),
	((1033 : GoUInt16)), ((1035 : GoUInt16)), ((1037 : GoUInt16)), ((1041 : GoUInt16)), ((1043 : GoUInt16)), ((1047 : GoUInt16)), ((1056 : GoUInt16)),
	((1062 : GoUInt16)), ((1066 : GoUInt16)), ((1082 : GoUInt16)), ((1092 : GoUInt16)), ((1097 : GoUInt16)), ((1100 : GoUInt16)), ((1106 : GoUInt16)),
	((1113 : GoUInt16)), ((1118 : GoUInt16)), ((1122 : GoUInt16)), ((1128 : GoUInt16)), ((1133 : GoUInt16)), ((1142 : GoUInt16)), ((1147 : GoUInt16)),
	((1153 : GoUInt16)), ((1160 : GoUInt16)), ((1167 : GoUInt16)), ((1174 : GoUInt16)), ((1178 : GoUInt16)), ((1183 : GoUInt16)), ((1186 : GoUInt16)),
	((1191 : GoUInt16)), ((1203 : GoUInt16)), ((1209 : GoUInt16)), ((1214 : GoUInt16)), ((1221 : GoUInt16)), ((1229 : GoUInt16)), ((1234 : GoUInt16)),
	((1238 : GoUInt16)), ((1254 : GoUInt16)), ((1261 : GoUInt16)), ((1265 : GoUInt16)), ((1269 : GoUInt16)), ((1276 : GoUInt16)), ((1278 : GoUInt16)),
	((1281 : GoUInt16)), ((1284 : GoUInt16)), ((1288 : GoUInt16)), ((1297 : GoUInt16)), ((1301 : GoUInt16)), ((1309 : GoUInt16)), ((1317 : GoUInt16)),
	((1325 : GoUInt16)), ((1337 : GoUInt16)), ((1349 : GoUInt16)), ((1355 : GoUInt16)), ((1364 : GoUInt16)), ((1376 : GoUInt16)), ((1383 : GoUInt16)),
	((1392 : GoUInt16)), ((1403 : GoUInt16)), ((1410 : GoUInt16)), ((1425 : GoUInt16)), ((1438 : GoUInt16)), ((1451 : GoUInt16)), ((1460 : GoUInt16)),
	((1464 : GoUInt16)), ((1479 : GoUInt16)), ((1487 : GoUInt16)), ((1498 : GoUInt16)), ((1507 : GoUInt16)), ((1513 : GoUInt16)), ((1521 : GoUInt16)),
	((1530 : GoUInt16)), ((1541 : GoUInt16)), ((1544 : GoUInt16)), ((1556 : GoUInt16)), ((1565 : GoUInt16)), ((1568 : GoUInt16)), ((1573 : GoUInt16)),
	((1582 : GoUInt16)), ((1587 : GoUInt16)), ((1600 : GoUInt16)), ((1611 : GoUInt16)), ((1620 : GoUInt16)), ((1630 : GoUInt16)), ((1633 : GoUInt16)),
	((1643 : GoUInt16)), ((1652 : GoUInt16)), ((1664 : GoUInt16)), ((1677 : GoUInt16)), ((1690 : GoUInt16)), ((1704 : GoUInt16)), ((1711 : GoUInt16)),
	((1715 : GoUInt16)), ((1719 : GoUInt16)), ((1722 : GoUInt16)), ((1727 : GoUInt16)), ((1730 : GoUInt16)), ((1735 : GoUInt16)), ((1738 : GoUInt16)),
	((1745 : GoUInt16)), ((1752 : GoUInt16)), ((1756 : GoUInt16)), ((1767 : GoUInt16)), ((1770 : GoUInt16)), ((1773 : GoUInt16)), ((1776 : GoUInt16)),
	((1782 : GoUInt16)), ((1788 : GoUInt16)), ((1797 : GoUInt16)), ((1800 : GoUInt16)), ((1803 : GoUInt16)), ((1806 : GoUInt16)), ((1809 : GoUInt16)),
	((1816 : GoUInt16)), ((1819 : GoUInt16)), ((1824 : GoUInt16)), ((1834 : GoUInt16)), ((1837 : GoUInt16)), ((1841 : GoUInt16)), ((1856 : GoUInt16)),
	((1868 : GoUInt16)), ((1872 : GoUInt16)), ((1877 : GoUInt16)), ((1881 : GoUInt16)), ((1886 : GoUInt16)), ((1890 : GoUInt16)), ((1895 : GoUInt16)),
	((1904 : GoUInt16)), ((1915 : GoUInt16)), ((1921 : GoUInt16)), ((1927 : GoUInt16)), ((1933 : GoUInt16)), ((1939 : GoUInt16)), ((1948 : GoUInt16)),
	((1951 : GoUInt16)), ((1954 : GoUInt16)), ((1958 : GoUInt16)), ((1962 : GoUInt16)), ((1966 : GoUInt16)), ((1972 : GoUInt16)), ((1978 : GoUInt16)),
	((1983 : GoUInt16)), ((1986 : GoUInt16)), ((2002 : GoUInt16)), ((2009 : GoUInt16)), ((2012 : GoUInt16)), ((2017 : GoUInt16)), ((2021 : GoUInt16)),
	((2027 : GoUInt16)), ((2034 : GoUInt16)), ((2038 : GoUInt16)), ((2042 : GoUInt16)), ((2051 : GoUInt16)), ((2058 : GoUInt16)), ((2063 : GoUInt16)),
	((2067 : GoUInt16)), ((2081 : GoUInt16)), ((2084 : GoUInt16)), ((2087 : GoUInt16)), ((2091 : GoUInt16)), ((2095 : GoUInt16)), ((2098 : GoUInt16)),
	((2114 : GoUInt16)), ((2131 : GoUInt16)), ((2134 : GoUInt16)), ((2139 : GoUInt16)), ((2141 : GoUInt16)), ((2143 : GoUInt16)));

var _idnaSparse:T_sparseBlocks = (({_values: _idnaSparseValues.__slice__(0), _offset: _idnaSparseOffset.__slice__(0)} : T_sparseBlocks)).__copy__();
final _tmax:GoInt32 = ((26 : GoInt32));

var _idnaValues:GoArray<GoUInt16> = {
	var s = new GoArray<GoUInt16>(...[for (i in 0...8192) 0]);
	s[0] = ((128 : GoUInt16));
	s[1] = ((128 : GoUInt16));
	s[2] = ((128 : GoUInt16));
	s[3] = ((128 : GoUInt16));
	s[4] = ((128 : GoUInt16));
	s[5] = ((128 : GoUInt16));
	s[6] = ((128 : GoUInt16));
	s[7] = ((128 : GoUInt16));
	s[8] = ((128 : GoUInt16));
	s[9] = ((128 : GoUInt16));
	s[10] = ((128 : GoUInt16));
	s[11] = ((128 : GoUInt16));
	s[12] = ((128 : GoUInt16));
	s[13] = ((128 : GoUInt16));
	s[14] = ((128 : GoUInt16));
	s[15] = ((128 : GoUInt16));
	s[16] = ((128 : GoUInt16));
	s[17] = ((128 : GoUInt16));
	s[18] = ((128 : GoUInt16));
	s[19] = ((128 : GoUInt16));
	s[20] = ((128 : GoUInt16));
	s[21] = ((128 : GoUInt16));
	s[22] = ((128 : GoUInt16));
	s[23] = ((128 : GoUInt16));
	s[24] = ((128 : GoUInt16));
	s[25] = ((128 : GoUInt16));
	s[26] = ((128 : GoUInt16));
	s[27] = ((128 : GoUInt16));
	s[28] = ((128 : GoUInt16));
	s[29] = ((128 : GoUInt16));
	s[30] = ((128 : GoUInt16));
	s[31] = ((128 : GoUInt16));
	s[32] = ((128 : GoUInt16));
	s[33] = ((128 : GoUInt16));
	s[34] = ((128 : GoUInt16));
	s[35] = ((128 : GoUInt16));
	s[36] = ((128 : GoUInt16));
	s[37] = ((128 : GoUInt16));
	s[38] = ((128 : GoUInt16));
	s[39] = ((128 : GoUInt16));
	s[40] = ((128 : GoUInt16));
	s[41] = ((128 : GoUInt16));
	s[42] = ((128 : GoUInt16));
	s[43] = ((128 : GoUInt16));
	s[44] = ((128 : GoUInt16));
	s[45] = ((8 : GoUInt16));
	s[46] = ((8 : GoUInt16));
	s[47] = ((128 : GoUInt16));
	s[48] = ((8 : GoUInt16));
	s[49] = ((8 : GoUInt16));
	s[50] = ((8 : GoUInt16));
	s[51] = ((8 : GoUInt16));
	s[52] = ((8 : GoUInt16));
	s[53] = ((8 : GoUInt16));
	s[54] = ((8 : GoUInt16));
	s[55] = ((8 : GoUInt16));
	s[56] = ((8 : GoUInt16));
	s[57] = ((8 : GoUInt16));
	s[58] = ((128 : GoUInt16));
	s[59] = ((128 : GoUInt16));
	s[60] = ((128 : GoUInt16));
	s[61] = ((128 : GoUInt16));
	s[62] = ((128 : GoUInt16));
	s[63] = ((128 : GoUInt16));
	s[64] = ((128 : GoUInt16));
	s[65] = ((57605 : GoUInt16));
	s[66] = ((57605 : GoUInt16));
	s[67] = ((57605 : GoUInt16));
	s[68] = ((57605 : GoUInt16));
	s[69] = ((57605 : GoUInt16));
	s[70] = ((57605 : GoUInt16));
	s[71] = ((57605 : GoUInt16));
	s[72] = ((57605 : GoUInt16));
	s[73] = ((57605 : GoUInt16));
	s[74] = ((57605 : GoUInt16));
	s[75] = ((57605 : GoUInt16));
	s[76] = ((57605 : GoUInt16));
	s[77] = ((57605 : GoUInt16));
	s[78] = ((57605 : GoUInt16));
	s[79] = ((57605 : GoUInt16));
	s[80] = ((57605 : GoUInt16));
	s[81] = ((57605 : GoUInt16));
	s[82] = ((57605 : GoUInt16));
	s[83] = ((57605 : GoUInt16));
	s[84] = ((57605 : GoUInt16));
	s[85] = ((57605 : GoUInt16));
	s[86] = ((57605 : GoUInt16));
	s[87] = ((57605 : GoUInt16));
	s[88] = ((57605 : GoUInt16));
	s[89] = ((57605 : GoUInt16));
	s[90] = ((57605 : GoUInt16));
	s[91] = ((128 : GoUInt16));
	s[92] = ((128 : GoUInt16));
	s[93] = ((128 : GoUInt16));
	s[94] = ((128 : GoUInt16));
	s[95] = ((128 : GoUInt16));
	s[96] = ((128 : GoUInt16));
	s[97] = ((8 : GoUInt16));
	s[98] = ((8 : GoUInt16));
	s[99] = ((8 : GoUInt16));
	s[100] = ((8 : GoUInt16));
	s[101] = ((8 : GoUInt16));
	s[102] = ((8 : GoUInt16));
	s[103] = ((8 : GoUInt16));
	s[104] = ((8 : GoUInt16));
	s[105] = ((8 : GoUInt16));
	s[106] = ((8 : GoUInt16));
	s[107] = ((8 : GoUInt16));
	s[108] = ((8 : GoUInt16));
	s[109] = ((8 : GoUInt16));
	s[110] = ((8 : GoUInt16));
	s[111] = ((8 : GoUInt16));
	s[112] = ((8 : GoUInt16));
	s[113] = ((8 : GoUInt16));
	s[114] = ((8 : GoUInt16));
	s[115] = ((8 : GoUInt16));
	s[116] = ((8 : GoUInt16));
	s[117] = ((8 : GoUInt16));
	s[118] = ((8 : GoUInt16));
	s[119] = ((8 : GoUInt16));
	s[120] = ((8 : GoUInt16));
	s[121] = ((8 : GoUInt16));
	s[122] = ((8 : GoUInt16));
	s[123] = ((128 : GoUInt16));
	s[124] = ((128 : GoUInt16));
	s[125] = ((128 : GoUInt16));
	s[126] = ((128 : GoUInt16));
	s[127] = ((128 : GoUInt16));
	s[192] = ((64 : GoUInt16));
	s[193] = ((64 : GoUInt16));
	s[194] = ((64 : GoUInt16));
	s[195] = ((64 : GoUInt16));
	s[196] = ((64 : GoUInt16));
	s[197] = ((64 : GoUInt16));
	s[198] = ((64 : GoUInt16));
	s[199] = ((64 : GoUInt16));
	s[200] = ((64 : GoUInt16));
	s[201] = ((64 : GoUInt16));
	s[202] = ((64 : GoUInt16));
	s[203] = ((64 : GoUInt16));
	s[204] = ((64 : GoUInt16));
	s[205] = ((64 : GoUInt16));
	s[206] = ((64 : GoUInt16));
	s[207] = ((64 : GoUInt16));
	s[208] = ((64 : GoUInt16));
	s[209] = ((64 : GoUInt16));
	s[210] = ((64 : GoUInt16));
	s[211] = ((64 : GoUInt16));
	s[212] = ((64 : GoUInt16));
	s[213] = ((64 : GoUInt16));
	s[214] = ((64 : GoUInt16));
	s[215] = ((64 : GoUInt16));
	s[216] = ((64 : GoUInt16));
	s[217] = ((64 : GoUInt16));
	s[218] = ((64 : GoUInt16));
	s[219] = ((64 : GoUInt16));
	s[220] = ((64 : GoUInt16));
	s[221] = ((64 : GoUInt16));
	s[222] = ((64 : GoUInt16));
	s[223] = ((64 : GoUInt16));
	s[224] = ((10 : GoUInt16));
	s[225] = ((24 : GoUInt16));
	s[226] = ((24 : GoUInt16));
	s[227] = ((24 : GoUInt16));
	s[228] = ((24 : GoUInt16));
	s[229] = ((24 : GoUInt16));
	s[230] = ((24 : GoUInt16));
	s[231] = ((24 : GoUInt16));
	s[232] = ((26 : GoUInt16));
	s[233] = ((24 : GoUInt16));
	s[234] = ((57 : GoUInt16));
	s[235] = ((24 : GoUInt16));
	s[236] = ((24 : GoUInt16));
	s[237] = ((960 : GoUInt16));
	s[238] = ((24 : GoUInt16));
	s[239] = ((74 : GoUInt16));
	s[240] = ((24 : GoUInt16));
	s[241] = ((24 : GoUInt16));
	s[242] = ((105 : GoUInt16));
	s[243] = ((121 : GoUInt16));
	s[244] = ((138 : GoUInt16));
	s[245] = ((5 : GoUInt16));
	s[246] = ((24 : GoUInt16));
	s[247] = ((8 : GoUInt16));
	s[248] = ((170 : GoUInt16));
	s[249] = ((201 : GoUInt16));
	s[250] = ((217 : GoUInt16));
	s[251] = ((24 : GoUInt16));
	s[252] = ((233 : GoUInt16));
	s[253] = ((281 : GoUInt16));
	s[254] = ((329 : GoUInt16));
	s[255] = ((24 : GoUInt16));
	s[256] = ((57357 : GoUInt16));
	s[257] = ((8 : GoUInt16));
	s[258] = ((57357 : GoUInt16));
	s[259] = ((8 : GoUInt16));
	s[260] = ((57357 : GoUInt16));
	s[261] = ((8 : GoUInt16));
	s[262] = ((57357 : GoUInt16));
	s[263] = ((8 : GoUInt16));
	s[264] = ((57357 : GoUInt16));
	s[265] = ((8 : GoUInt16));
	s[266] = ((57357 : GoUInt16));
	s[267] = ((8 : GoUInt16));
	s[268] = ((57357 : GoUInt16));
	s[269] = ((8 : GoUInt16));
	s[270] = ((57357 : GoUInt16));
	s[271] = ((8 : GoUInt16));
	s[272] = ((57357 : GoUInt16));
	s[273] = ((8 : GoUInt16));
	s[274] = ((57357 : GoUInt16));
	s[275] = ((8 : GoUInt16));
	s[276] = ((57357 : GoUInt16));
	s[277] = ((8 : GoUInt16));
	s[278] = ((57357 : GoUInt16));
	s[279] = ((8 : GoUInt16));
	s[280] = ((57357 : GoUInt16));
	s[281] = ((8 : GoUInt16));
	s[282] = ((57357 : GoUInt16));
	s[283] = ((8 : GoUInt16));
	s[284] = ((57357 : GoUInt16));
	s[285] = ((8 : GoUInt16));
	s[286] = ((57357 : GoUInt16));
	s[287] = ((8 : GoUInt16));
	s[288] = ((57357 : GoUInt16));
	s[289] = ((8 : GoUInt16));
	s[290] = ((57357 : GoUInt16));
	s[291] = ((8 : GoUInt16));
	s[292] = ((57357 : GoUInt16));
	s[293] = ((8 : GoUInt16));
	s[294] = ((57357 : GoUInt16));
	s[295] = ((8 : GoUInt16));
	s[296] = ((57357 : GoUInt16));
	s[297] = ((8 : GoUInt16));
	s[298] = ((57357 : GoUInt16));
	s[299] = ((8 : GoUInt16));
	s[300] = ((57357 : GoUInt16));
	s[301] = ((8 : GoUInt16));
	s[302] = ((57357 : GoUInt16));
	s[303] = ((8 : GoUInt16));
	s[304] = ((377 : GoUInt16));
	s[305] = ((8 : GoUInt16));
	s[306] = ((53 : GoUInt16));
	s[307] = ((77 : GoUInt16));
	s[308] = ((57357 : GoUInt16));
	s[309] = ((8 : GoUInt16));
	s[310] = ((57357 : GoUInt16));
	s[311] = ((8 : GoUInt16));
	s[312] = ((8 : GoUInt16));
	s[313] = ((57373 : GoUInt16));
	s[314] = ((8 : GoUInt16));
	s[315] = ((57405 : GoUInt16));
	s[316] = ((8 : GoUInt16));
	s[317] = ((57373 : GoUInt16));
	s[318] = ((8 : GoUInt16));
	s[319] = ((409 : GoUInt16));
	s[320] = ((409 : GoUInt16));
	s[321] = ((57373 : GoUInt16));
	s[322] = ((8 : GoUInt16));
	s[323] = ((57405 : GoUInt16));
	s[324] = ((8 : GoUInt16));
	s[325] = ((57373 : GoUInt16));
	s[326] = ((8 : GoUInt16));
	s[327] = ((57469 : GoUInt16));
	s[328] = ((8 : GoUInt16));
	s[329] = ((441 : GoUInt16));
	s[330] = ((57357 : GoUInt16));
	s[331] = ((8 : GoUInt16));
	s[332] = ((57357 : GoUInt16));
	s[333] = ((8 : GoUInt16));
	s[334] = ((57357 : GoUInt16));
	s[335] = ((8 : GoUInt16));
	s[336] = ((57357 : GoUInt16));
	s[337] = ((8 : GoUInt16));
	s[338] = ((57357 : GoUInt16));
	s[339] = ((8 : GoUInt16));
	s[340] = ((57357 : GoUInt16));
	s[341] = ((8 : GoUInt16));
	s[342] = ((57357 : GoUInt16));
	s[343] = ((8 : GoUInt16));
	s[344] = ((57357 : GoUInt16));
	s[345] = ((8 : GoUInt16));
	s[346] = ((57357 : GoUInt16));
	s[347] = ((8 : GoUInt16));
	s[348] = ((57357 : GoUInt16));
	s[349] = ((8 : GoUInt16));
	s[350] = ((57357 : GoUInt16));
	s[351] = ((8 : GoUInt16));
	s[352] = ((57357 : GoUInt16));
	s[353] = ((8 : GoUInt16));
	s[354] = ((57357 : GoUInt16));
	s[355] = ((8 : GoUInt16));
	s[356] = ((57357 : GoUInt16));
	s[357] = ((8 : GoUInt16));
	s[358] = ((57357 : GoUInt16));
	s[359] = ((8 : GoUInt16));
	s[360] = ((57357 : GoUInt16));
	s[361] = ((8 : GoUInt16));
	s[362] = ((57357 : GoUInt16));
	s[363] = ((8 : GoUInt16));
	s[364] = ((57357 : GoUInt16));
	s[365] = ((8 : GoUInt16));
	s[366] = ((57357 : GoUInt16));
	s[367] = ((8 : GoUInt16));
	s[368] = ((57357 : GoUInt16));
	s[369] = ((8 : GoUInt16));
	s[370] = ((57357 : GoUInt16));
	s[371] = ((8 : GoUInt16));
	s[372] = ((57357 : GoUInt16));
	s[373] = ((8 : GoUInt16));
	s[374] = ((57357 : GoUInt16));
	s[375] = ((8 : GoUInt16));
	s[376] = ((101 : GoUInt16));
	s[377] = ((57373 : GoUInt16));
	s[378] = ((8 : GoUInt16));
	s[379] = ((57405 : GoUInt16));
	s[380] = ((8 : GoUInt16));
	s[381] = ((57373 : GoUInt16));
	s[382] = ((8 : GoUInt16));
	s[383] = ((473 : GoUInt16));
	s[384] = ((8 : GoUInt16));
	s[385] = ((125 : GoUInt16));
	s[386] = ((57357 : GoUInt16));
	s[387] = ((8 : GoUInt16));
	s[388] = ((57357 : GoUInt16));
	s[389] = ((8 : GoUInt16));
	s[390] = ((125 : GoUInt16));
	s[391] = ((57469 : GoUInt16));
	s[392] = ((8 : GoUInt16));
	s[393] = ((149 : GoUInt16));
	s[394] = ((173 : GoUInt16));
	s[395] = ((57405 : GoUInt16));
	s[396] = ((8 : GoUInt16));
	s[397] = ((8 : GoUInt16));
	s[398] = ((197 : GoUInt16));
	s[399] = ((221 : GoUInt16));
	s[400] = ((245 : GoUInt16));
	s[401] = ((57373 : GoUInt16));
	s[402] = ((8 : GoUInt16));
	s[403] = ((269 : GoUInt16));
	s[404] = ((293 : GoUInt16));
	s[405] = ((8 : GoUInt16));
	s[406] = ((317 : GoUInt16));
	s[407] = ((317 : GoUInt16));
	s[408] = ((57357 : GoUInt16));
	s[409] = ((8 : GoUInt16));
	s[410] = ((8 : GoUInt16));
	s[411] = ((8 : GoUInt16));
	s[412] = ((269 : GoUInt16));
	s[413] = ((341 : GoUInt16));
	s[414] = ((8 : GoUInt16));
	s[415] = ((365 : GoUInt16));
	s[416] = ((57357 : GoUInt16));
	s[417] = ((8 : GoUInt16));
	s[418] = ((57357 : GoUInt16));
	s[419] = ((8 : GoUInt16));
	s[420] = ((57357 : GoUInt16));
	s[421] = ((8 : GoUInt16));
	s[422] = ((389 : GoUInt16));
	s[423] = ((57469 : GoUInt16));
	s[424] = ((8 : GoUInt16));
	s[425] = ((413 : GoUInt16));
	s[426] = ((8 : GoUInt16));
	s[427] = ((8 : GoUInt16));
	s[428] = ((57357 : GoUInt16));
	s[429] = ((8 : GoUInt16));
	s[430] = ((389 : GoUInt16));
	s[431] = ((57597 : GoUInt16));
	s[432] = ((8 : GoUInt16));
	s[433] = ((437 : GoUInt16));
	s[434] = ((461 : GoUInt16));
	s[435] = ((57405 : GoUInt16));
	s[436] = ((8 : GoUInt16));
	s[437] = ((57373 : GoUInt16));
	s[438] = ((8 : GoUInt16));
	s[439] = ((485 : GoUInt16));
	s[440] = ((57357 : GoUInt16));
	s[441] = ((8 : GoUInt16));
	s[442] = ((8 : GoUInt16));
	s[443] = ((8 : GoUInt16));
	s[444] = ((57357 : GoUInt16));
	s[445] = ((8 : GoUInt16));
	s[446] = ((8 : GoUInt16));
	s[447] = ((8 : GoUInt16));
	s[448] = ((8 : GoUInt16));
	s[449] = ((8 : GoUInt16));
	s[450] = ((8 : GoUInt16));
	s[451] = ((8 : GoUInt16));
	s[452] = ((489 : GoUInt16));
	s[453] = ((489 : GoUInt16));
	s[454] = ((489 : GoUInt16));
	s[455] = ((509 : GoUInt16));
	s[456] = ((533 : GoUInt16));
	s[457] = ((557 : GoUInt16));
	s[458] = ((581 : GoUInt16));
	s[459] = ((605 : GoUInt16));
	s[460] = ((629 : GoUInt16));
	s[461] = ((57373 : GoUInt16));
	s[462] = ((8 : GoUInt16));
	s[463] = ((57597 : GoUInt16));
	s[464] = ((8 : GoUInt16));
	s[465] = ((57373 : GoUInt16));
	s[466] = ((8 : GoUInt16));
	s[467] = ((57405 : GoUInt16));
	s[468] = ((8 : GoUInt16));
	s[469] = ((57373 : GoUInt16));
	s[470] = ((8 : GoUInt16));
	s[471] = ((57469 : GoUInt16));
	s[472] = ((8 : GoUInt16));
	s[473] = ((57373 : GoUInt16));
	s[474] = ((8 : GoUInt16));
	s[475] = ((57405 : GoUInt16));
	s[476] = ((8 : GoUInt16));
	s[477] = ((8 : GoUInt16));
	s[478] = ((57357 : GoUInt16));
	s[479] = ((8 : GoUInt16));
	s[480] = ((57357 : GoUInt16));
	s[481] = ((8 : GoUInt16));
	s[482] = ((57357 : GoUInt16));
	s[483] = ((8 : GoUInt16));
	s[484] = ((57357 : GoUInt16));
	s[485] = ((8 : GoUInt16));
	s[486] = ((57357 : GoUInt16));
	s[487] = ((8 : GoUInt16));
	s[488] = ((57357 : GoUInt16));
	s[489] = ((8 : GoUInt16));
	s[490] = ((57357 : GoUInt16));
	s[491] = ((8 : GoUInt16));
	s[492] = ((57357 : GoUInt16));
	s[493] = ((8 : GoUInt16));
	s[494] = ((57357 : GoUInt16));
	s[495] = ((8 : GoUInt16));
	s[496] = ((8 : GoUInt16));
	s[497] = ((653 : GoUInt16));
	s[498] = ((677 : GoUInt16));
	s[499] = ((701 : GoUInt16));
	s[500] = ((57357 : GoUInt16));
	s[501] = ((8 : GoUInt16));
	s[502] = ((725 : GoUInt16));
	s[503] = ((749 : GoUInt16));
	s[504] = ((57357 : GoUInt16));
	s[505] = ((8 : GoUInt16));
	s[506] = ((57357 : GoUInt16));
	s[507] = ((8 : GoUInt16));
	s[508] = ((57357 : GoUInt16));
	s[509] = ((8 : GoUInt16));
	s[510] = ((57357 : GoUInt16));
	s[511] = ((8 : GoUInt16));
	s[512] = ((57357 : GoUInt16));
	s[513] = ((8 : GoUInt16));
	s[514] = ((57357 : GoUInt16));
	s[515] = ((8 : GoUInt16));
	s[516] = ((57357 : GoUInt16));
	s[517] = ((8 : GoUInt16));
	s[518] = ((57357 : GoUInt16));
	s[519] = ((8 : GoUInt16));
	s[520] = ((57357 : GoUInt16));
	s[521] = ((8 : GoUInt16));
	s[522] = ((57357 : GoUInt16));
	s[523] = ((8 : GoUInt16));
	s[524] = ((57357 : GoUInt16));
	s[525] = ((8 : GoUInt16));
	s[526] = ((57357 : GoUInt16));
	s[527] = ((8 : GoUInt16));
	s[528] = ((57357 : GoUInt16));
	s[529] = ((8 : GoUInt16));
	s[530] = ((57357 : GoUInt16));
	s[531] = ((8 : GoUInt16));
	s[532] = ((57357 : GoUInt16));
	s[533] = ((8 : GoUInt16));
	s[534] = ((57357 : GoUInt16));
	s[535] = ((8 : GoUInt16));
	s[536] = ((57357 : GoUInt16));
	s[537] = ((8 : GoUInt16));
	s[538] = ((57357 : GoUInt16));
	s[539] = ((8 : GoUInt16));
	s[540] = ((57357 : GoUInt16));
	s[541] = ((8 : GoUInt16));
	s[542] = ((57357 : GoUInt16));
	s[543] = ((8 : GoUInt16));
	s[544] = ((773 : GoUInt16));
	s[545] = ((8 : GoUInt16));
	s[546] = ((57357 : GoUInt16));
	s[547] = ((8 : GoUInt16));
	s[548] = ((57357 : GoUInt16));
	s[549] = ((8 : GoUInt16));
	s[550] = ((57357 : GoUInt16));
	s[551] = ((8 : GoUInt16));
	s[552] = ((57357 : GoUInt16));
	s[553] = ((8 : GoUInt16));
	s[554] = ((57357 : GoUInt16));
	s[555] = ((8 : GoUInt16));
	s[556] = ((57357 : GoUInt16));
	s[557] = ((8 : GoUInt16));
	s[558] = ((57357 : GoUInt16));
	s[559] = ((8 : GoUInt16));
	s[560] = ((57357 : GoUInt16));
	s[561] = ((8 : GoUInt16));
	s[562] = ((57357 : GoUInt16));
	s[563] = ((8 : GoUInt16));
	s[564] = ((8 : GoUInt16));
	s[565] = ((8 : GoUInt16));
	s[566] = ((8 : GoUInt16));
	s[567] = ((8 : GoUInt16));
	s[568] = ((8 : GoUInt16));
	s[569] = ((8 : GoUInt16));
	s[570] = ((521 : GoUInt16));
	s[571] = ((57405 : GoUInt16));
	s[572] = ((8 : GoUInt16));
	s[573] = ((797 : GoUInt16));
	s[574] = ((553 : GoUInt16));
	s[575] = ((8 : GoUInt16));
	s[576] = ((8 : GoUInt16));
	s[577] = ((8 : GoUInt16));
	s[578] = ((24 : GoUInt16));
	s[579] = ((24 : GoUInt16));
	s[580] = ((24 : GoUInt16));
	s[581] = ((24 : GoUInt16));
	s[582] = ((8 : GoUInt16));
	s[583] = ((8 : GoUInt16));
	s[584] = ((8 : GoUInt16));
	s[585] = ((8 : GoUInt16));
	s[586] = ((8 : GoUInt16));
	s[587] = ((8 : GoUInt16));
	s[588] = ((8 : GoUInt16));
	s[589] = ((8 : GoUInt16));
	s[590] = ((8 : GoUInt16));
	s[591] = ((8 : GoUInt16));
	s[592] = ((8 : GoUInt16));
	s[593] = ((8 : GoUInt16));
	s[594] = ((24 : GoUInt16));
	s[595] = ((24 : GoUInt16));
	s[596] = ((24 : GoUInt16));
	s[597] = ((24 : GoUInt16));
	s[598] = ((24 : GoUInt16));
	s[599] = ((24 : GoUInt16));
	s[600] = ((666 : GoUInt16));
	s[601] = ((698 : GoUInt16));
	s[602] = ((730 : GoUInt16));
	s[603] = ((762 : GoUInt16));
	s[604] = ((794 : GoUInt16));
	s[605] = ((826 : GoUInt16));
	s[606] = ((24 : GoUInt16));
	s[607] = ((24 : GoUInt16));
	s[608] = ((941 : GoUInt16));
	s[609] = ((857 : GoUInt16));
	s[610] = ((473 : GoUInt16));
	s[611] = ((873 : GoUInt16));
	s[612] = ((965 : GoUInt16));
	s[613] = ((24 : GoUInt16));
	s[614] = ((24 : GoUInt16));
	s[615] = ((24 : GoUInt16));
	s[616] = ((24 : GoUInt16));
	s[617] = ((24 : GoUInt16));
	s[618] = ((24 : GoUInt16));
	s[619] = ((24 : GoUInt16));
	s[620] = ((8 : GoUInt16));
	s[621] = ((24 : GoUInt16));
	s[622] = ((8 : GoUInt16));
	s[623] = ((24 : GoUInt16));
	s[624] = ((24 : GoUInt16));
	s[625] = ((24 : GoUInt16));
	s[626] = ((24 : GoUInt16));
	s[627] = ((24 : GoUInt16));
	s[628] = ((24 : GoUInt16));
	s[629] = ((24 : GoUInt16));
	s[630] = ((24 : GoUInt16));
	s[631] = ((24 : GoUInt16));
	s[632] = ((24 : GoUInt16));
	s[633] = ((24 : GoUInt16));
	s[634] = ((24 : GoUInt16));
	s[635] = ((24 : GoUInt16));
	s[636] = ((24 : GoUInt16));
	s[637] = ((24 : GoUInt16));
	s[638] = ((24 : GoUInt16));
	s[639] = ((24 : GoUInt16));
	s[640] = ((989 : GoUInt16));
	s[641] = ((989 : GoUInt16));
	s[642] = ((13064 : GoUInt16));
	s[643] = ((1013 : GoUInt16));
	s[644] = ((889 : GoUInt16));
	s[645] = ((1037 : GoUInt16));
	s[646] = ((13064 : GoUInt16));
	s[647] = ((13064 : GoUInt16));
	s[648] = ((13064 : GoUInt16));
	s[649] = ((13064 : GoUInt16));
	s[650] = ((13064 : GoUInt16));
	s[651] = ((13064 : GoUInt16));
	s[652] = ((13064 : GoUInt16));
	s[653] = ((13064 : GoUInt16));
	s[654] = ((13064 : GoUInt16));
	s[655] = ((13248 : GoUInt16));
	s[656] = ((13064 : GoUInt16));
	s[657] = ((13064 : GoUInt16));
	s[658] = ((13064 : GoUInt16));
	s[659] = ((13064 : GoUInt16));
	s[660] = ((13064 : GoUInt16));
	s[661] = ((13064 : GoUInt16));
	s[662] = ((13064 : GoUInt16));
	s[663] = ((13064 : GoUInt16));
	s[664] = ((13064 : GoUInt16));
	s[665] = ((13064 : GoUInt16));
	s[666] = ((13064 : GoUInt16));
	s[667] = ((13064 : GoUInt16));
	s[668] = ((13064 : GoUInt16));
	s[669] = ((13064 : GoUInt16));
	s[670] = ((13064 : GoUInt16));
	s[671] = ((13064 : GoUInt16));
	s[672] = ((13064 : GoUInt16));
	s[673] = ((13064 : GoUInt16));
	s[674] = ((13064 : GoUInt16));
	s[675] = ((13064 : GoUInt16));
	s[676] = ((13064 : GoUInt16));
	s[677] = ((13064 : GoUInt16));
	s[678] = ((13064 : GoUInt16));
	s[679] = ((13064 : GoUInt16));
	s[680] = ((13064 : GoUInt16));
	s[681] = ((13064 : GoUInt16));
	s[682] = ((13064 : GoUInt16));
	s[683] = ((13064 : GoUInt16));
	s[684] = ((13064 : GoUInt16));
	s[685] = ((13064 : GoUInt16));
	s[686] = ((13064 : GoUInt16));
	s[687] = ((13064 : GoUInt16));
	s[688] = ((57357 : GoUInt16));
	s[689] = ((8 : GoUInt16));
	s[690] = ((57357 : GoUInt16));
	s[691] = ((8 : GoUInt16));
	s[692] = ((1061 : GoUInt16));
	s[693] = ((8 : GoUInt16));
	s[694] = ((57357 : GoUInt16));
	s[695] = ((8 : GoUInt16));
	s[696] = ((64 : GoUInt16));
	s[697] = ((64 : GoUInt16));
	s[698] = ((930 : GoUInt16));
	s[699] = ((8 : GoUInt16));
	s[700] = ((8 : GoUInt16));
	s[701] = ((8 : GoUInt16));
	s[702] = ((962 : GoUInt16));
	s[703] = ((1085 : GoUInt16));
	s[704] = ((64 : GoUInt16));
	s[705] = ((64 : GoUInt16));
	s[706] = ((64 : GoUInt16));
	s[707] = ((64 : GoUInt16));
	s[708] = ((138 : GoUInt16));
	s[709] = ((978 : GoUInt16));
	s[710] = ((57685 : GoUInt16));
	s[711] = ((1109 : GoUInt16));
	s[712] = ((57645 : GoUInt16));
	s[713] = ((57661 : GoUInt16));
	s[714] = ((57645 : GoUInt16));
	s[715] = ((64 : GoUInt16));
	s[716] = ((989 : GoUInt16));
	s[717] = ((64 : GoUInt16));
	s[718] = ((1133 : GoUInt16));
	s[719] = ((1157 : GoUInt16));
	s[720] = ((8 : GoUInt16));
	s[721] = ((57605 : GoUInt16));
	s[722] = ((57605 : GoUInt16));
	s[723] = ((57605 : GoUInt16));
	s[724] = ((57605 : GoUInt16));
	s[725] = ((57605 : GoUInt16));
	s[726] = ((57605 : GoUInt16));
	s[727] = ((57605 : GoUInt16));
	s[728] = ((57605 : GoUInt16));
	s[729] = ((57605 : GoUInt16));
	s[730] = ((57605 : GoUInt16));
	s[731] = ((57605 : GoUInt16));
	s[732] = ((57605 : GoUInt16));
	s[733] = ((57605 : GoUInt16));
	s[734] = ((57605 : GoUInt16));
	s[735] = ((57605 : GoUInt16));
	s[736] = ((1181 : GoUInt16));
	s[737] = ((1181 : GoUInt16));
	s[738] = ((64 : GoUInt16));
	s[739] = ((1181 : GoUInt16));
	s[740] = ((1181 : GoUInt16));
	s[741] = ((1181 : GoUInt16));
	s[742] = ((1181 : GoUInt16));
	s[743] = ((1181 : GoUInt16));
	s[744] = ((1181 : GoUInt16));
	s[745] = ((1181 : GoUInt16));
	s[746] = ((1181 : GoUInt16));
	s[747] = ((1181 : GoUInt16));
	s[748] = ((8 : GoUInt16));
	s[749] = ((8 : GoUInt16));
	s[750] = ((8 : GoUInt16));
	s[751] = ((8 : GoUInt16));
	s[752] = ((8 : GoUInt16));
	s[753] = ((8 : GoUInt16));
	s[754] = ((8 : GoUInt16));
	s[755] = ((8 : GoUInt16));
	s[756] = ((8 : GoUInt16));
	s[757] = ((8 : GoUInt16));
	s[758] = ((8 : GoUInt16));
	s[759] = ((8 : GoUInt16));
	s[760] = ((8 : GoUInt16));
	s[761] = ((8 : GoUInt16));
	s[762] = ((8 : GoUInt16));
	s[763] = ((8 : GoUInt16));
	s[764] = ((8 : GoUInt16));
	s[765] = ((8 : GoUInt16));
	s[766] = ((8 : GoUInt16));
	s[767] = ((8 : GoUInt16));
	s[768] = ((8 : GoUInt16));
	s[769] = ((8 : GoUInt16));
	s[770] = ((57359 : GoUInt16));
	s[771] = ((8 : GoUInt16));
	s[772] = ((8 : GoUInt16));
	s[773] = ((8 : GoUInt16));
	s[774] = ((8 : GoUInt16));
	s[775] = ((8 : GoUInt16));
	s[776] = ((8 : GoUInt16));
	s[777] = ((8 : GoUInt16));
	s[778] = ((8 : GoUInt16));
	s[779] = ((8 : GoUInt16));
	s[780] = ((8 : GoUInt16));
	s[781] = ((8 : GoUInt16));
	s[782] = ((8 : GoUInt16));
	s[783] = ((57541 : GoUInt16));
	s[784] = ((1205 : GoUInt16));
	s[785] = ((1229 : GoUInt16));
	s[786] = ((57533 : GoUInt16));
	s[787] = ((57589 : GoUInt16));
	s[788] = ((57597 : GoUInt16));
	s[789] = ((57501 : GoUInt16));
	s[790] = ((57525 : GoUInt16));
	s[791] = ((8 : GoUInt16));
	s[792] = ((57357 : GoUInt16));
	s[793] = ((8 : GoUInt16));
	s[794] = ((57357 : GoUInt16));
	s[795] = ((8 : GoUInt16));
	s[796] = ((57357 : GoUInt16));
	s[797] = ((8 : GoUInt16));
	s[798] = ((57357 : GoUInt16));
	s[799] = ((8 : GoUInt16));
	s[800] = ((57357 : GoUInt16));
	s[801] = ((8 : GoUInt16));
	s[802] = ((57357 : GoUInt16));
	s[803] = ((8 : GoUInt16));
	s[804] = ((57357 : GoUInt16));
	s[805] = ((8 : GoUInt16));
	s[806] = ((57357 : GoUInt16));
	s[807] = ((8 : GoUInt16));
	s[808] = ((57357 : GoUInt16));
	s[809] = ((8 : GoUInt16));
	s[810] = ((57357 : GoUInt16));
	s[811] = ((8 : GoUInt16));
	s[812] = ((57357 : GoUInt16));
	s[813] = ((8 : GoUInt16));
	s[814] = ((57357 : GoUInt16));
	s[815] = ((8 : GoUInt16));
	s[816] = ((1253 : GoUInt16));
	s[817] = ((57733 : GoUInt16));
	s[818] = ((57741 : GoUInt16));
	s[819] = ((8 : GoUInt16));
	s[820] = ((1277 : GoUInt16));
	s[821] = ((989 : GoUInt16));
	s[822] = ((24 : GoUInt16));
	s[823] = ((57469 : GoUInt16));
	s[824] = ((8 : GoUInt16));
	s[825] = ((57813 : GoUInt16));
	s[826] = ((57357 : GoUInt16));
	s[827] = ((8 : GoUInt16));
	s[828] = ((8 : GoUInt16));
	s[829] = ((1301 : GoUInt16));
	s[830] = ((1325 : GoUInt16));
	s[831] = ((1325 : GoUInt16));
	s[832] = ((8 : GoUInt16));
	s[833] = ((8 : GoUInt16));
	s[834] = ((8 : GoUInt16));
	s[835] = ((8 : GoUInt16));
	s[836] = ((8 : GoUInt16));
	s[837] = ((8 : GoUInt16));
	s[838] = ((8 : GoUInt16));
	s[839] = ((8 : GoUInt16));
	s[840] = ((8 : GoUInt16));
	s[841] = ((8 : GoUInt16));
	s[842] = ((8 : GoUInt16));
	s[843] = ((8 : GoUInt16));
	s[844] = ((8 : GoUInt16));
	s[845] = ((8 : GoUInt16));
	s[846] = ((8 : GoUInt16));
	s[847] = ((8 : GoUInt16));
	s[848] = ((8 : GoUInt16));
	s[849] = ((8 : GoUInt16));
	s[850] = ((8 : GoUInt16));
	s[851] = ((8 : GoUInt16));
	s[852] = ((8 : GoUInt16));
	s[853] = ((8 : GoUInt16));
	s[854] = ((8 : GoUInt16));
	s[855] = ((8 : GoUInt16));
	s[856] = ((8 : GoUInt16));
	s[857] = ((8 : GoUInt16));
	s[858] = ((8 : GoUInt16));
	s[859] = ((8 : GoUInt16));
	s[860] = ((8 : GoUInt16));
	s[861] = ((8 : GoUInt16));
	s[862] = ((8 : GoUInt16));
	s[863] = ((8 : GoUInt16));
	s[864] = ((57357 : GoUInt16));
	s[865] = ((8 : GoUInt16));
	s[866] = ((57357 : GoUInt16));
	s[867] = ((8 : GoUInt16));
	s[868] = ((57357 : GoUInt16));
	s[869] = ((8 : GoUInt16));
	s[870] = ((57357 : GoUInt16));
	s[871] = ((8 : GoUInt16));
	s[872] = ((57357 : GoUInt16));
	s[873] = ((8 : GoUInt16));
	s[874] = ((57357 : GoUInt16));
	s[875] = ((8 : GoUInt16));
	s[876] = ((57357 : GoUInt16));
	s[877] = ((8 : GoUInt16));
	s[878] = ((57357 : GoUInt16));
	s[879] = ((8 : GoUInt16));
	s[880] = ((57357 : GoUInt16));
	s[881] = ((8 : GoUInt16));
	s[882] = ((57357 : GoUInt16));
	s[883] = ((8 : GoUInt16));
	s[884] = ((57357 : GoUInt16));
	s[885] = ((8 : GoUInt16));
	s[886] = ((57357 : GoUInt16));
	s[887] = ((8 : GoUInt16));
	s[888] = ((57357 : GoUInt16));
	s[889] = ((8 : GoUInt16));
	s[890] = ((57357 : GoUInt16));
	s[891] = ((8 : GoUInt16));
	s[892] = ((57357 : GoUInt16));
	s[893] = ((8 : GoUInt16));
	s[894] = ((57357 : GoUInt16));
	s[895] = ((8 : GoUInt16));
	s[896] = ((57357 : GoUInt16));
	s[897] = ((8 : GoUInt16));
	s[898] = ((24 : GoUInt16));
	s[899] = ((13064 : GoUInt16));
	s[900] = ((13064 : GoUInt16));
	s[901] = ((13064 : GoUInt16));
	s[902] = ((13064 : GoUInt16));
	s[903] = ((13064 : GoUInt16));
	s[904] = ((13080 : GoUInt16));
	s[905] = ((13080 : GoUInt16));
	s[906] = ((57357 : GoUInt16));
	s[907] = ((8 : GoUInt16));
	s[908] = ((57357 : GoUInt16));
	s[909] = ((8 : GoUInt16));
	s[910] = ((57357 : GoUInt16));
	s[911] = ((8 : GoUInt16));
	s[912] = ((57357 : GoUInt16));
	s[913] = ((8 : GoUInt16));
	s[914] = ((57357 : GoUInt16));
	s[915] = ((8 : GoUInt16));
	s[916] = ((57357 : GoUInt16));
	s[917] = ((8 : GoUInt16));
	s[918] = ((57357 : GoUInt16));
	s[919] = ((8 : GoUInt16));
	s[920] = ((57357 : GoUInt16));
	s[921] = ((8 : GoUInt16));
	s[922] = ((57357 : GoUInt16));
	s[923] = ((8 : GoUInt16));
	s[924] = ((57357 : GoUInt16));
	s[925] = ((8 : GoUInt16));
	s[926] = ((57357 : GoUInt16));
	s[927] = ((8 : GoUInt16));
	s[928] = ((57357 : GoUInt16));
	s[929] = ((8 : GoUInt16));
	s[930] = ((57357 : GoUInt16));
	s[931] = ((8 : GoUInt16));
	s[932] = ((57357 : GoUInt16));
	s[933] = ((8 : GoUInt16));
	s[934] = ((57357 : GoUInt16));
	s[935] = ((8 : GoUInt16));
	s[936] = ((57357 : GoUInt16));
	s[937] = ((8 : GoUInt16));
	s[938] = ((57357 : GoUInt16));
	s[939] = ((8 : GoUInt16));
	s[940] = ((57357 : GoUInt16));
	s[941] = ((8 : GoUInt16));
	s[942] = ((57357 : GoUInt16));
	s[943] = ((8 : GoUInt16));
	s[944] = ((57357 : GoUInt16));
	s[945] = ((8 : GoUInt16));
	s[946] = ((57357 : GoUInt16));
	s[947] = ((8 : GoUInt16));
	s[948] = ((57357 : GoUInt16));
	s[949] = ((8 : GoUInt16));
	s[950] = ((57357 : GoUInt16));
	s[951] = ((8 : GoUInt16));
	s[952] = ((57357 : GoUInt16));
	s[953] = ((8 : GoUInt16));
	s[954] = ((57357 : GoUInt16));
	s[955] = ((8 : GoUInt16));
	s[956] = ((57357 : GoUInt16));
	s[957] = ((8 : GoUInt16));
	s[958] = ((57357 : GoUInt16));
	s[959] = ((8 : GoUInt16));
	s[960] = ((64 : GoUInt16));
	s[961] = ((57373 : GoUInt16));
	s[962] = ((8 : GoUInt16));
	s[963] = ((57405 : GoUInt16));
	s[964] = ((8 : GoUInt16));
	s[965] = ((57373 : GoUInt16));
	s[966] = ((8 : GoUInt16));
	s[967] = ((57469 : GoUInt16));
	s[968] = ((8 : GoUInt16));
	s[969] = ((57373 : GoUInt16));
	s[970] = ((8 : GoUInt16));
	s[971] = ((57405 : GoUInt16));
	s[972] = ((8 : GoUInt16));
	s[973] = ((57373 : GoUInt16));
	s[974] = ((8 : GoUInt16));
	s[975] = ((8 : GoUInt16));
	s[976] = ((57357 : GoUInt16));
	s[977] = ((8 : GoUInt16));
	s[978] = ((57357 : GoUInt16));
	s[979] = ((8 : GoUInt16));
	s[980] = ((57357 : GoUInt16));
	s[981] = ((8 : GoUInt16));
	s[982] = ((57357 : GoUInt16));
	s[983] = ((8 : GoUInt16));
	s[984] = ((57357 : GoUInt16));
	s[985] = ((8 : GoUInt16));
	s[986] = ((57357 : GoUInt16));
	s[987] = ((8 : GoUInt16));
	s[988] = ((57357 : GoUInt16));
	s[989] = ((8 : GoUInt16));
	s[990] = ((57357 : GoUInt16));
	s[991] = ((8 : GoUInt16));
	s[992] = ((57357 : GoUInt16));
	s[993] = ((8 : GoUInt16));
	s[994] = ((57357 : GoUInt16));
	s[995] = ((8 : GoUInt16));
	s[996] = ((57357 : GoUInt16));
	s[997] = ((8 : GoUInt16));
	s[998] = ((57357 : GoUInt16));
	s[999] = ((8 : GoUInt16));
	s[1000] = ((57357 : GoUInt16));
	s[1001] = ((8 : GoUInt16));
	s[1002] = ((57357 : GoUInt16));
	s[1003] = ((8 : GoUInt16));
	s[1004] = ((57357 : GoUInt16));
	s[1005] = ((8 : GoUInt16));
	s[1006] = ((57357 : GoUInt16));
	s[1007] = ((8 : GoUInt16));
	s[1008] = ((57357 : GoUInt16));
	s[1009] = ((8 : GoUInt16));
	s[1010] = ((57357 : GoUInt16));
	s[1011] = ((8 : GoUInt16));
	s[1012] = ((57357 : GoUInt16));
	s[1013] = ((8 : GoUInt16));
	s[1014] = ((57357 : GoUInt16));
	s[1015] = ((8 : GoUInt16));
	s[1016] = ((57357 : GoUInt16));
	s[1017] = ((8 : GoUInt16));
	s[1018] = ((57357 : GoUInt16));
	s[1019] = ((8 : GoUInt16));
	s[1020] = ((57357 : GoUInt16));
	s[1021] = ((8 : GoUInt16));
	s[1022] = ((57357 : GoUInt16));
	s[1023] = ((8 : GoUInt16));
	s[1024] = ((57357 : GoUInt16));
	s[1025] = ((8 : GoUInt16));
	s[1026] = ((57357 : GoUInt16));
	s[1027] = ((8 : GoUInt16));
	s[1028] = ((57357 : GoUInt16));
	s[1029] = ((8 : GoUInt16));
	s[1030] = ((57357 : GoUInt16));
	s[1031] = ((8 : GoUInt16));
	s[1032] = ((57357 : GoUInt16));
	s[1033] = ((8 : GoUInt16));
	s[1034] = ((57357 : GoUInt16));
	s[1035] = ((8 : GoUInt16));
	s[1036] = ((57357 : GoUInt16));
	s[1037] = ((8 : GoUInt16));
	s[1038] = ((57357 : GoUInt16));
	s[1039] = ((8 : GoUInt16));
	s[1040] = ((57357 : GoUInt16));
	s[1041] = ((8 : GoUInt16));
	s[1042] = ((57357 : GoUInt16));
	s[1043] = ((8 : GoUInt16));
	s[1044] = ((57357 : GoUInt16));
	s[1045] = ((8 : GoUInt16));
	s[1046] = ((57357 : GoUInt16));
	s[1047] = ((8 : GoUInt16));
	s[1048] = ((57357 : GoUInt16));
	s[1049] = ((8 : GoUInt16));
	s[1050] = ((57357 : GoUInt16));
	s[1051] = ((8 : GoUInt16));
	s[1052] = ((57357 : GoUInt16));
	s[1053] = ((8 : GoUInt16));
	s[1054] = ((57357 : GoUInt16));
	s[1055] = ((8 : GoUInt16));
	s[1056] = ((57357 : GoUInt16));
	s[1057] = ((8 : GoUInt16));
	s[1058] = ((57357 : GoUInt16));
	s[1059] = ((8 : GoUInt16));
	s[1060] = ((57357 : GoUInt16));
	s[1061] = ((8 : GoUInt16));
	s[1062] = ((57357 : GoUInt16));
	s[1063] = ((8 : GoUInt16));
	s[1064] = ((57357 : GoUInt16));
	s[1065] = ((8 : GoUInt16));
	s[1066] = ((57357 : GoUInt16));
	s[1067] = ((8 : GoUInt16));
	s[1068] = ((57357 : GoUInt16));
	s[1069] = ((8 : GoUInt16));
	s[1070] = ((57357 : GoUInt16));
	s[1071] = ((8 : GoUInt16));
	s[1072] = ((64 : GoUInt16));
	s[1073] = ((1013 : GoUInt16));
	s[1074] = ((1013 : GoUInt16));
	s[1075] = ((1013 : GoUInt16));
	s[1076] = ((1013 : GoUInt16));
	s[1077] = ((1013 : GoUInt16));
	s[1078] = ((1013 : GoUInt16));
	s[1079] = ((1013 : GoUInt16));
	s[1080] = ((1013 : GoUInt16));
	s[1081] = ((1013 : GoUInt16));
	s[1082] = ((1013 : GoUInt16));
	s[1083] = ((1013 : GoUInt16));
	s[1084] = ((1013 : GoUInt16));
	s[1085] = ((1013 : GoUInt16));
	s[1086] = ((1013 : GoUInt16));
	s[1087] = ((1013 : GoUInt16));
	s[1088] = ((2112 : GoUInt16));
	s[1089] = ((2112 : GoUInt16));
	s[1090] = ((2112 : GoUInt16));
	s[1091] = ((2112 : GoUInt16));
	s[1092] = ((2112 : GoUInt16));
	s[1093] = ((2112 : GoUInt16));
	s[1094] = ((24 : GoUInt16));
	s[1095] = ((24 : GoUInt16));
	s[1096] = ((2072 : GoUInt16));
	s[1097] = ((24 : GoUInt16));
	s[1098] = ((24 : GoUInt16));
	s[1099] = ((2072 : GoUInt16));
	s[1100] = ((24 : GoUInt16));
	s[1101] = ((2072 : GoUInt16));
	s[1102] = ((24 : GoUInt16));
	s[1103] = ((24 : GoUInt16));
	s[1104] = ((13064 : GoUInt16));
	s[1105] = ((13064 : GoUInt16));
	s[1106] = ((13064 : GoUInt16));
	s[1107] = ((13064 : GoUInt16));
	s[1108] = ((13064 : GoUInt16));
	s[1109] = ((13064 : GoUInt16));
	s[1110] = ((13064 : GoUInt16));
	s[1111] = ((13064 : GoUInt16));
	s[1112] = ((13064 : GoUInt16));
	s[1113] = ((13064 : GoUInt16));
	s[1114] = ((13064 : GoUInt16));
	s[1115] = ((2072 : GoUInt16));
	s[1116] = ((2880 : GoUInt16));
	s[1117] = ((64 : GoUInt16));
	s[1118] = ((2072 : GoUInt16));
	s[1119] = ((2072 : GoUInt16));
	s[1120] = ((2568 : GoUInt16));
	s[1121] = ((2056 : GoUInt16));
	s[1122] = ((3080 : GoUInt16));
	s[1123] = ((3080 : GoUInt16));
	s[1124] = ((3080 : GoUInt16));
	s[1125] = ((3080 : GoUInt16));
	s[1126] = ((2568 : GoUInt16));
	s[1127] = ((3080 : GoUInt16));
	s[1128] = ((2568 : GoUInt16));
	s[1129] = ((3080 : GoUInt16));
	s[1130] = ((2568 : GoUInt16));
	s[1131] = ((2568 : GoUInt16));
	s[1132] = ((2568 : GoUInt16));
	s[1133] = ((2568 : GoUInt16));
	s[1134] = ((2568 : GoUInt16));
	s[1135] = ((3080 : GoUInt16));
	s[1136] = ((3080 : GoUInt16));
	s[1137] = ((3080 : GoUInt16));
	s[1138] = ((3080 : GoUInt16));
	s[1139] = ((2568 : GoUInt16));
	s[1140] = ((2568 : GoUInt16));
	s[1141] = ((2568 : GoUInt16));
	s[1142] = ((2568 : GoUInt16));
	s[1143] = ((2568 : GoUInt16));
	s[1144] = ((2568 : GoUInt16));
	s[1145] = ((2568 : GoUInt16));
	s[1146] = ((2568 : GoUInt16));
	s[1147] = ((2568 : GoUInt16));
	s[1148] = ((2568 : GoUInt16));
	s[1149] = ((2568 : GoUInt16));
	s[1150] = ((2568 : GoUInt16));
	s[1151] = ((2568 : GoUInt16));
	s[1152] = ((2072 : GoUInt16));
	s[1153] = ((2568 : GoUInt16));
	s[1154] = ((2568 : GoUInt16));
	s[1155] = ((2568 : GoUInt16));
	s[1156] = ((2568 : GoUInt16));
	s[1157] = ((2568 : GoUInt16));
	s[1158] = ((2568 : GoUInt16));
	s[1159] = ((2568 : GoUInt16));
	s[1160] = ((3080 : GoUInt16));
	s[1161] = ((2568 : GoUInt16));
	s[1162] = ((2568 : GoUInt16));
	s[1163] = ((13064 : GoUInt16));
	s[1164] = ((13064 : GoUInt16));
	s[1165] = ((13064 : GoUInt16));
	s[1166] = ((13064 : GoUInt16));
	s[1167] = ((13064 : GoUInt16));
	s[1168] = ((13064 : GoUInt16));
	s[1169] = ((13064 : GoUInt16));
	s[1170] = ((13064 : GoUInt16));
	s[1171] = ((13064 : GoUInt16));
	s[1172] = ((13064 : GoUInt16));
	s[1173] = ((13064 : GoUInt16));
	s[1174] = ((13064 : GoUInt16));
	s[1175] = ((13064 : GoUInt16));
	s[1176] = ((13064 : GoUInt16));
	s[1177] = ((13064 : GoUInt16));
	s[1178] = ((13064 : GoUInt16));
	s[1179] = ((13064 : GoUInt16));
	s[1180] = ((13064 : GoUInt16));
	s[1181] = ((13064 : GoUInt16));
	s[1182] = ((13064 : GoUInt16));
	s[1183] = ((13064 : GoUInt16));
	s[1184] = ((2056 : GoUInt16));
	s[1185] = ((2056 : GoUInt16));
	s[1186] = ((2056 : GoUInt16));
	s[1187] = ((2056 : GoUInt16));
	s[1188] = ((2056 : GoUInt16));
	s[1189] = ((2056 : GoUInt16));
	s[1190] = ((2056 : GoUInt16));
	s[1191] = ((2056 : GoUInt16));
	s[1192] = ((2056 : GoUInt16));
	s[1193] = ((2056 : GoUInt16));
	s[1194] = ((24 : GoUInt16));
	s[1195] = ((2072 : GoUInt16));
	s[1196] = ((2072 : GoUInt16));
	s[1197] = ((2072 : GoUInt16));
	s[1198] = ((2568 : GoUInt16));
	s[1199] = ((2568 : GoUInt16));
	s[1200] = ((13064 : GoUInt16));
	s[1201] = ((3080 : GoUInt16));
	s[1202] = ((3080 : GoUInt16));
	s[1203] = ((3080 : GoUInt16));
	s[1204] = ((2056 : GoUInt16));
	s[1205] = ((1065 : GoUInt16));
	s[1206] = ((1105 : GoUInt16));
	s[1207] = ((1145 : GoUInt16));
	s[1208] = ((1185 : GoUInt16));
	s[1209] = ((2568 : GoUInt16));
	s[1210] = ((2568 : GoUInt16));
	s[1211] = ((2568 : GoUInt16));
	s[1212] = ((2568 : GoUInt16));
	s[1213] = ((2568 : GoUInt16));
	s[1214] = ((2568 : GoUInt16));
	s[1215] = ((2568 : GoUInt16));
	s[1216] = ((3080 : GoUInt16));
	s[1217] = ((2568 : GoUInt16));
	s[1218] = ((2568 : GoUInt16));
	s[1219] = ((3080 : GoUInt16));
	s[1220] = ((3080 : GoUInt16));
	s[1221] = ((3080 : GoUInt16));
	s[1222] = ((3080 : GoUInt16));
	s[1223] = ((3080 : GoUInt16));
	s[1224] = ((3080 : GoUInt16));
	s[1225] = ((3080 : GoUInt16));
	s[1226] = ((3080 : GoUInt16));
	s[1227] = ((3080 : GoUInt16));
	s[1228] = ((2568 : GoUInt16));
	s[1229] = ((3080 : GoUInt16));
	s[1230] = ((2568 : GoUInt16));
	s[1231] = ((3080 : GoUInt16));
	s[1232] = ((2568 : GoUInt16));
	s[1233] = ((2568 : GoUInt16));
	s[1234] = ((3080 : GoUInt16));
	s[1235] = ((3080 : GoUInt16));
	s[1236] = ((2072 : GoUInt16));
	s[1237] = ((3080 : GoUInt16));
	s[1238] = ((13064 : GoUInt16));
	s[1239] = ((13064 : GoUInt16));
	s[1240] = ((13064 : GoUInt16));
	s[1241] = ((13064 : GoUInt16));
	s[1242] = ((13064 : GoUInt16));
	s[1243] = ((13064 : GoUInt16));
	s[1244] = ((13064 : GoUInt16));
	s[1245] = ((2112 : GoUInt16));
	s[1246] = ((24 : GoUInt16));
	s[1247] = ((13064 : GoUInt16));
	s[1248] = ((13064 : GoUInt16));
	s[1249] = ((13064 : GoUInt16));
	s[1250] = ((13064 : GoUInt16));
	s[1251] = ((13064 : GoUInt16));
	s[1252] = ((13064 : GoUInt16));
	s[1253] = ((2056 : GoUInt16));
	s[1254] = ((2056 : GoUInt16));
	s[1255] = ((13064 : GoUInt16));
	s[1256] = ((13064 : GoUInt16));
	s[1257] = ((24 : GoUInt16));
	s[1258] = ((13064 : GoUInt16));
	s[1259] = ((13064 : GoUInt16));
	s[1260] = ((13064 : GoUInt16));
	s[1261] = ((13064 : GoUInt16));
	s[1262] = ((3080 : GoUInt16));
	s[1263] = ((3080 : GoUInt16));
	s[1264] = ((8 : GoUInt16));
	s[1265] = ((8 : GoUInt16));
	s[1266] = ((8 : GoUInt16));
	s[1267] = ((8 : GoUInt16));
	s[1268] = ((8 : GoUInt16));
	s[1269] = ((8 : GoUInt16));
	s[1270] = ((8 : GoUInt16));
	s[1271] = ((8 : GoUInt16));
	s[1272] = ((8 : GoUInt16));
	s[1273] = ((8 : GoUInt16));
	s[1274] = ((2568 : GoUInt16));
	s[1275] = ((2568 : GoUInt16));
	s[1276] = ((2568 : GoUInt16));
	s[1277] = ((2056 : GoUInt16));
	s[1278] = ((2056 : GoUInt16));
	s[1279] = ((2568 : GoUInt16));
	s[1280] = ((2072 : GoUInt16));
	s[1281] = ((2072 : GoUInt16));
	s[1282] = ((2072 : GoUInt16));
	s[1283] = ((2072 : GoUInt16));
	s[1284] = ((2072 : GoUInt16));
	s[1285] = ((2072 : GoUInt16));
	s[1286] = ((2072 : GoUInt16));
	s[1287] = ((2072 : GoUInt16));
	s[1288] = ((2072 : GoUInt16));
	s[1289] = ((2072 : GoUInt16));
	s[1290] = ((2072 : GoUInt16));
	s[1291] = ((2072 : GoUInt16));
	s[1292] = ((2072 : GoUInt16));
	s[1293] = ((2072 : GoUInt16));
	s[1294] = ((64 : GoUInt16));
	s[1295] = ((2880 : GoUInt16));
	s[1296] = ((3080 : GoUInt16));
	s[1297] = ((13064 : GoUInt16));
	s[1298] = ((2568 : GoUInt16));
	s[1299] = ((2568 : GoUInt16));
	s[1300] = ((2568 : GoUInt16));
	s[1301] = ((3080 : GoUInt16));
	s[1302] = ((3080 : GoUInt16));
	s[1303] = ((3080 : GoUInt16));
	s[1304] = ((3080 : GoUInt16));
	s[1305] = ((3080 : GoUInt16));
	s[1306] = ((2568 : GoUInt16));
	s[1307] = ((2568 : GoUInt16));
	s[1308] = ((2568 : GoUInt16));
	s[1309] = ((2568 : GoUInt16));
	s[1310] = ((3080 : GoUInt16));
	s[1311] = ((2568 : GoUInt16));
	s[1312] = ((2568 : GoUInt16));
	s[1313] = ((2568 : GoUInt16));
	s[1314] = ((2568 : GoUInt16));
	s[1315] = ((2568 : GoUInt16));
	s[1316] = ((2568 : GoUInt16));
	s[1317] = ((2568 : GoUInt16));
	s[1318] = ((2568 : GoUInt16));
	s[1319] = ((2568 : GoUInt16));
	s[1320] = ((3080 : GoUInt16));
	s[1321] = ((2568 : GoUInt16));
	s[1322] = ((3080 : GoUInt16));
	s[1323] = ((2568 : GoUInt16));
	s[1324] = ((3080 : GoUInt16));
	s[1325] = ((2568 : GoUInt16));
	s[1326] = ((2568 : GoUInt16));
	s[1327] = ((3080 : GoUInt16));
	s[1328] = ((13064 : GoUInt16));
	s[1329] = ((13064 : GoUInt16));
	s[1330] = ((13064 : GoUInt16));
	s[1331] = ((13064 : GoUInt16));
	s[1332] = ((13064 : GoUInt16));
	s[1333] = ((13064 : GoUInt16));
	s[1334] = ((13064 : GoUInt16));
	s[1335] = ((13064 : GoUInt16));
	s[1336] = ((13064 : GoUInt16));
	s[1337] = ((13064 : GoUInt16));
	s[1338] = ((13064 : GoUInt16));
	s[1339] = ((13064 : GoUInt16));
	s[1340] = ((13064 : GoUInt16));
	s[1341] = ((13064 : GoUInt16));
	s[1342] = ((13064 : GoUInt16));
	s[1343] = ((13064 : GoUInt16));
	s[1344] = ((3080 : GoUInt16));
	s[1345] = ((2568 : GoUInt16));
	s[1346] = ((2568 : GoUInt16));
	s[1347] = ((2568 : GoUInt16));
	s[1348] = ((2568 : GoUInt16));
	s[1349] = ((2568 : GoUInt16));
	s[1350] = ((3080 : GoUInt16));
	s[1351] = ((3080 : GoUInt16));
	s[1352] = ((2568 : GoUInt16));
	s[1353] = ((3080 : GoUInt16));
	s[1354] = ((2568 : GoUInt16));
	s[1355] = ((2568 : GoUInt16));
	s[1356] = ((2568 : GoUInt16));
	s[1357] = ((2568 : GoUInt16));
	s[1358] = ((2568 : GoUInt16));
	s[1359] = ((2568 : GoUInt16));
	s[1360] = ((2568 : GoUInt16));
	s[1361] = ((2568 : GoUInt16));
	s[1362] = ((2568 : GoUInt16));
	s[1363] = ((2568 : GoUInt16));
	s[1364] = ((3080 : GoUInt16));
	s[1365] = ((2568 : GoUInt16));
	s[1366] = ((3080 : GoUInt16));
	s[1367] = ((3080 : GoUInt16));
	s[1368] = ((3080 : GoUInt16));
	s[1369] = ((13064 : GoUInt16));
	s[1370] = ((13064 : GoUInt16));
	s[1371] = ((13064 : GoUInt16));
	s[1372] = ((64 : GoUInt16));
	s[1373] = ((64 : GoUInt16));
	s[1374] = ((2072 : GoUInt16));
	s[1375] = ((64 : GoUInt16));
	s[1376] = ((2568 : GoUInt16));
	s[1377] = ((2056 : GoUInt16));
	s[1378] = ((2568 : GoUInt16));
	s[1379] = ((2568 : GoUInt16));
	s[1380] = ((2568 : GoUInt16));
	s[1381] = ((2568 : GoUInt16));
	s[1382] = ((2056 : GoUInt16));
	s[1383] = ((3080 : GoUInt16));
	s[1384] = ((2568 : GoUInt16));
	s[1385] = ((3080 : GoUInt16));
	s[1386] = ((3080 : GoUInt16));
	s[1387] = ((64 : GoUInt16));
	s[1388] = ((64 : GoUInt16));
	s[1389] = ((64 : GoUInt16));
	s[1390] = ((64 : GoUInt16));
	s[1391] = ((64 : GoUInt16));
	s[1392] = ((64 : GoUInt16));
	s[1393] = ((64 : GoUInt16));
	s[1394] = ((64 : GoUInt16));
	s[1395] = ((64 : GoUInt16));
	s[1396] = ((64 : GoUInt16));
	s[1397] = ((64 : GoUInt16));
	s[1398] = ((64 : GoUInt16));
	s[1399] = ((64 : GoUInt16));
	s[1400] = ((64 : GoUInt16));
	s[1401] = ((64 : GoUInt16));
	s[1402] = ((64 : GoUInt16));
	s[1403] = ((64 : GoUInt16));
	s[1404] = ((64 : GoUInt16));
	s[1405] = ((64 : GoUInt16));
	s[1406] = ((64 : GoUInt16));
	s[1407] = ((64 : GoUInt16));
	s[1408] = ((12296 : GoUInt16));
	s[1409] = ((13064 : GoUInt16));
	s[1410] = ((13064 : GoUInt16));
	s[1411] = ((13064 : GoUInt16));
	s[1412] = ((13064 : GoUInt16));
	s[1413] = ((13064 : GoUInt16));
	s[1414] = ((13064 : GoUInt16));
	s[1415] = ((13064 : GoUInt16));
	s[1416] = ((13064 : GoUInt16));
	s[1417] = ((12296 : GoUInt16));
	s[1418] = ((12296 : GoUInt16));
	s[1419] = ((12296 : GoUInt16));
	s[1420] = ((12296 : GoUInt16));
	s[1421] = ((15112 : GoUInt16));
	s[1422] = ((12296 : GoUInt16));
	s[1423] = ((12296 : GoUInt16));
	s[1424] = ((8 : GoUInt16));
	s[1425] = ((13064 : GoUInt16));
	s[1426] = ((13064 : GoUInt16));
	s[1427] = ((13064 : GoUInt16));
	s[1428] = ((13064 : GoUInt16));
	s[1429] = ((13064 : GoUInt16));
	s[1430] = ((13064 : GoUInt16));
	s[1431] = ((13064 : GoUInt16));
	s[1432] = ((1225 : GoUInt16));
	s[1433] = ((1281 : GoUInt16));
	s[1434] = ((1337 : GoUInt16));
	s[1435] = ((1393 : GoUInt16));
	s[1436] = ((1449 : GoUInt16));
	s[1437] = ((1505 : GoUInt16));
	s[1438] = ((1561 : GoUInt16));
	s[1439] = ((1617 : GoUInt16));
	s[1440] = ((8 : GoUInt16));
	s[1441] = ((8 : GoUInt16));
	s[1442] = ((13064 : GoUInt16));
	s[1443] = ((13064 : GoUInt16));
	s[1444] = ((24 : GoUInt16));
	s[1445] = ((24 : GoUInt16));
	s[1446] = ((8 : GoUInt16));
	s[1447] = ((8 : GoUInt16));
	s[1448] = ((8 : GoUInt16));
	s[1449] = ((8 : GoUInt16));
	s[1450] = ((8 : GoUInt16));
	s[1451] = ((8 : GoUInt16));
	s[1452] = ((8 : GoUInt16));
	s[1453] = ((8 : GoUInt16));
	s[1454] = ((8 : GoUInt16));
	s[1455] = ((8 : GoUInt16));
	s[1456] = ((24 : GoUInt16));
	s[1457] = ((8 : GoUInt16));
	s[1458] = ((8 : GoUInt16));
	s[1459] = ((8 : GoUInt16));
	s[1460] = ((8 : GoUInt16));
	s[1461] = ((8 : GoUInt16));
	s[1462] = ((8 : GoUInt16));
	s[1463] = ((8 : GoUInt16));
	s[1464] = ((8 : GoUInt16));
	s[1465] = ((8 : GoUInt16));
	s[1466] = ((8 : GoUInt16));
	s[1467] = ((8 : GoUInt16));
	s[1468] = ((8 : GoUInt16));
	s[1469] = ((8 : GoUInt16));
	s[1470] = ((8 : GoUInt16));
	s[1471] = ((8 : GoUInt16));
	s[1472] = ((8 : GoUInt16));
	s[1473] = ((13064 : GoUInt16));
	s[1474] = ((12296 : GoUInt16));
	s[1475] = ((12296 : GoUInt16));
	s[1476] = ((64 : GoUInt16));
	s[1477] = ((8 : GoUInt16));
	s[1478] = ((8 : GoUInt16));
	s[1479] = ((8 : GoUInt16));
	s[1480] = ((8 : GoUInt16));
	s[1481] = ((8 : GoUInt16));
	s[1482] = ((8 : GoUInt16));
	s[1483] = ((8 : GoUInt16));
	s[1484] = ((8 : GoUInt16));
	s[1485] = ((64 : GoUInt16));
	s[1486] = ((64 : GoUInt16));
	s[1487] = ((8 : GoUInt16));
	s[1488] = ((8 : GoUInt16));
	s[1489] = ((64 : GoUInt16));
	s[1490] = ((64 : GoUInt16));
	s[1491] = ((8 : GoUInt16));
	s[1492] = ((8 : GoUInt16));
	s[1493] = ((8 : GoUInt16));
	s[1494] = ((8 : GoUInt16));
	s[1495] = ((8 : GoUInt16));
	s[1496] = ((8 : GoUInt16));
	s[1497] = ((8 : GoUInt16));
	s[1498] = ((8 : GoUInt16));
	s[1499] = ((8 : GoUInt16));
	s[1500] = ((8 : GoUInt16));
	s[1501] = ((8 : GoUInt16));
	s[1502] = ((8 : GoUInt16));
	s[1503] = ((8 : GoUInt16));
	s[1504] = ((8 : GoUInt16));
	s[1505] = ((8 : GoUInt16));
	s[1506] = ((8 : GoUInt16));
	s[1507] = ((8 : GoUInt16));
	s[1508] = ((8 : GoUInt16));
	s[1509] = ((8 : GoUInt16));
	s[1510] = ((8 : GoUInt16));
	s[1511] = ((8 : GoUInt16));
	s[1512] = ((8 : GoUInt16));
	s[1513] = ((64 : GoUInt16));
	s[1514] = ((8 : GoUInt16));
	s[1515] = ((8 : GoUInt16));
	s[1516] = ((8 : GoUInt16));
	s[1517] = ((8 : GoUInt16));
	s[1518] = ((8 : GoUInt16));
	s[1519] = ((8 : GoUInt16));
	s[1520] = ((8 : GoUInt16));
	s[1521] = ((64 : GoUInt16));
	s[1522] = ((8 : GoUInt16));
	s[1523] = ((64 : GoUInt16));
	s[1524] = ((64 : GoUInt16));
	s[1525] = ((64 : GoUInt16));
	s[1526] = ((8 : GoUInt16));
	s[1527] = ((8 : GoUInt16));
	s[1528] = ((8 : GoUInt16));
	s[1529] = ((8 : GoUInt16));
	s[1530] = ((64 : GoUInt16));
	s[1531] = ((64 : GoUInt16));
	s[1532] = ((13064 : GoUInt16));
	s[1533] = ((8 : GoUInt16));
	s[1534] = ((12296 : GoUInt16));
	s[1535] = ((12296 : GoUInt16));
	s[1536] = ((12296 : GoUInt16));
	s[1537] = ((13064 : GoUInt16));
	s[1538] = ((13064 : GoUInt16));
	s[1539] = ((13064 : GoUInt16));
	s[1540] = ((13064 : GoUInt16));
	s[1541] = ((64 : GoUInt16));
	s[1542] = ((64 : GoUInt16));
	s[1543] = ((12296 : GoUInt16));
	s[1544] = ((12296 : GoUInt16));
	s[1545] = ((64 : GoUInt16));
	s[1546] = ((64 : GoUInt16));
	s[1547] = ((12296 : GoUInt16));
	s[1548] = ((12296 : GoUInt16));
	s[1549] = ((15112 : GoUInt16));
	s[1550] = ((8 : GoUInt16));
	s[1551] = ((64 : GoUInt16));
	s[1552] = ((64 : GoUInt16));
	s[1553] = ((64 : GoUInt16));
	s[1554] = ((64 : GoUInt16));
	s[1555] = ((64 : GoUInt16));
	s[1556] = ((64 : GoUInt16));
	s[1557] = ((64 : GoUInt16));
	s[1558] = ((64 : GoUInt16));
	s[1559] = ((12296 : GoUInt16));
	s[1560] = ((64 : GoUInt16));
	s[1561] = ((64 : GoUInt16));
	s[1562] = ((64 : GoUInt16));
	s[1563] = ((64 : GoUInt16));
	s[1564] = ((1673 : GoUInt16));
	s[1565] = ((1729 : GoUInt16));
	s[1566] = ((64 : GoUInt16));
	s[1567] = ((1785 : GoUInt16));
	s[1568] = ((8 : GoUInt16));
	s[1569] = ((8 : GoUInt16));
	s[1570] = ((13064 : GoUInt16));
	s[1571] = ((13064 : GoUInt16));
	s[1572] = ((64 : GoUInt16));
	s[1573] = ((64 : GoUInt16));
	s[1574] = ((8 : GoUInt16));
	s[1575] = ((8 : GoUInt16));
	s[1576] = ((8 : GoUInt16));
	s[1577] = ((8 : GoUInt16));
	s[1578] = ((8 : GoUInt16));
	s[1579] = ((8 : GoUInt16));
	s[1580] = ((8 : GoUInt16));
	s[1581] = ((8 : GoUInt16));
	s[1582] = ((8 : GoUInt16));
	s[1583] = ((8 : GoUInt16));
	s[1584] = ((8 : GoUInt16));
	s[1585] = ((8 : GoUInt16));
	s[1586] = ((24 : GoUInt16));
	s[1587] = ((24 : GoUInt16));
	s[1588] = ((24 : GoUInt16));
	s[1589] = ((24 : GoUInt16));
	s[1590] = ((24 : GoUInt16));
	s[1591] = ((24 : GoUInt16));
	s[1592] = ((24 : GoUInt16));
	s[1593] = ((24 : GoUInt16));
	s[1594] = ((24 : GoUInt16));
	s[1595] = ((24 : GoUInt16));
	s[1596] = ((8 : GoUInt16));
	s[1597] = ((24 : GoUInt16));
	s[1598] = ((13064 : GoUInt16));
	s[1599] = ((64 : GoUInt16));
	s[1600] = ((64 : GoUInt16));
	s[1601] = ((13064 : GoUInt16));
	s[1602] = ((13064 : GoUInt16));
	s[1603] = ((12296 : GoUInt16));
	s[1604] = ((64 : GoUInt16));
	s[1605] = ((8 : GoUInt16));
	s[1606] = ((8 : GoUInt16));
	s[1607] = ((8 : GoUInt16));
	s[1608] = ((8 : GoUInt16));
	s[1609] = ((8 : GoUInt16));
	s[1610] = ((8 : GoUInt16));
	s[1611] = ((64 : GoUInt16));
	s[1612] = ((64 : GoUInt16));
	s[1613] = ((64 : GoUInt16));
	s[1614] = ((64 : GoUInt16));
	s[1615] = ((8 : GoUInt16));
	s[1616] = ((8 : GoUInt16));
	s[1617] = ((64 : GoUInt16));
	s[1618] = ((64 : GoUInt16));
	s[1619] = ((8 : GoUInt16));
	s[1620] = ((8 : GoUInt16));
	s[1621] = ((8 : GoUInt16));
	s[1622] = ((8 : GoUInt16));
	s[1623] = ((8 : GoUInt16));
	s[1624] = ((8 : GoUInt16));
	s[1625] = ((8 : GoUInt16));
	s[1626] = ((8 : GoUInt16));
	s[1627] = ((8 : GoUInt16));
	s[1628] = ((8 : GoUInt16));
	s[1629] = ((8 : GoUInt16));
	s[1630] = ((8 : GoUInt16));
	s[1631] = ((8 : GoUInt16));
	s[1632] = ((8 : GoUInt16));
	s[1633] = ((8 : GoUInt16));
	s[1634] = ((8 : GoUInt16));
	s[1635] = ((8 : GoUInt16));
	s[1636] = ((8 : GoUInt16));
	s[1637] = ((8 : GoUInt16));
	s[1638] = ((8 : GoUInt16));
	s[1639] = ((8 : GoUInt16));
	s[1640] = ((8 : GoUInt16));
	s[1641] = ((64 : GoUInt16));
	s[1642] = ((8 : GoUInt16));
	s[1643] = ((8 : GoUInt16));
	s[1644] = ((8 : GoUInt16));
	s[1645] = ((8 : GoUInt16));
	s[1646] = ((8 : GoUInt16));
	s[1647] = ((8 : GoUInt16));
	s[1648] = ((8 : GoUInt16));
	s[1649] = ((64 : GoUInt16));
	s[1650] = ((8 : GoUInt16));
	s[1651] = ((1841 : GoUInt16));
	s[1652] = ((64 : GoUInt16));
	s[1653] = ((8 : GoUInt16));
	s[1654] = ((1897 : GoUInt16));
	s[1655] = ((64 : GoUInt16));
	s[1656] = ((8 : GoUInt16));
	s[1657] = ((8 : GoUInt16));
	s[1658] = ((64 : GoUInt16));
	s[1659] = ((64 : GoUInt16));
	s[1660] = ((13064 : GoUInt16));
	s[1661] = ((64 : GoUInt16));
	s[1662] = ((12296 : GoUInt16));
	s[1663] = ((12296 : GoUInt16));
	s[1664] = ((12296 : GoUInt16));
	s[1665] = ((13064 : GoUInt16));
	s[1666] = ((13064 : GoUInt16));
	s[1667] = ((64 : GoUInt16));
	s[1668] = ((64 : GoUInt16));
	s[1669] = ((64 : GoUInt16));
	s[1670] = ((64 : GoUInt16));
	s[1671] = ((13064 : GoUInt16));
	s[1672] = ((13064 : GoUInt16));
	s[1673] = ((64 : GoUInt16));
	s[1674] = ((64 : GoUInt16));
	s[1675] = ((13064 : GoUInt16));
	s[1676] = ((13064 : GoUInt16));
	s[1677] = ((15112 : GoUInt16));
	s[1678] = ((64 : GoUInt16));
	s[1679] = ((64 : GoUInt16));
	s[1680] = ((64 : GoUInt16));
	s[1681] = ((13064 : GoUInt16));
	s[1682] = ((64 : GoUInt16));
	s[1683] = ((64 : GoUInt16));
	s[1684] = ((64 : GoUInt16));
	s[1685] = ((64 : GoUInt16));
	s[1686] = ((64 : GoUInt16));
	s[1687] = ((64 : GoUInt16));
	s[1688] = ((64 : GoUInt16));
	s[1689] = ((1953 : GoUInt16));
	s[1690] = ((2009 : GoUInt16));
	s[1691] = ((2065 : GoUInt16));
	s[1692] = ((8 : GoUInt16));
	s[1693] = ((64 : GoUInt16));
	s[1694] = ((2121 : GoUInt16));
	s[1695] = ((64 : GoUInt16));
	s[1696] = ((64 : GoUInt16));
	s[1697] = ((64 : GoUInt16));
	s[1698] = ((64 : GoUInt16));
	s[1699] = ((64 : GoUInt16));
	s[1700] = ((64 : GoUInt16));
	s[1701] = ((64 : GoUInt16));
	s[1702] = ((8 : GoUInt16));
	s[1703] = ((8 : GoUInt16));
	s[1704] = ((8 : GoUInt16));
	s[1705] = ((8 : GoUInt16));
	s[1706] = ((8 : GoUInt16));
	s[1707] = ((8 : GoUInt16));
	s[1708] = ((8 : GoUInt16));
	s[1709] = ((8 : GoUInt16));
	s[1710] = ((8 : GoUInt16));
	s[1711] = ((8 : GoUInt16));
	s[1712] = ((13064 : GoUInt16));
	s[1713] = ((13064 : GoUInt16));
	s[1714] = ((8 : GoUInt16));
	s[1715] = ((8 : GoUInt16));
	s[1716] = ((8 : GoUInt16));
	s[1717] = ((13064 : GoUInt16));
	s[1718] = ((24 : GoUInt16));
	s[1719] = ((64 : GoUInt16));
	s[1720] = ((64 : GoUInt16));
	s[1721] = ((64 : GoUInt16));
	s[1722] = ((64 : GoUInt16));
	s[1723] = ((64 : GoUInt16));
	s[1724] = ((64 : GoUInt16));
	s[1725] = ((64 : GoUInt16));
	s[1726] = ((64 : GoUInt16));
	s[1727] = ((64 : GoUInt16));
	s[1728] = ((64 : GoUInt16));
	s[1729] = ((13064 : GoUInt16));
	s[1730] = ((13064 : GoUInt16));
	s[1731] = ((12296 : GoUInt16));
	s[1732] = ((64 : GoUInt16));
	s[1733] = ((8 : GoUInt16));
	s[1734] = ((8 : GoUInt16));
	s[1735] = ((8 : GoUInt16));
	s[1736] = ((8 : GoUInt16));
	s[1737] = ((8 : GoUInt16));
	s[1738] = ((8 : GoUInt16));
	s[1739] = ((8 : GoUInt16));
	s[1740] = ((8 : GoUInt16));
	s[1741] = ((8 : GoUInt16));
	s[1742] = ((64 : GoUInt16));
	s[1743] = ((8 : GoUInt16));
	s[1744] = ((8 : GoUInt16));
	s[1745] = ((8 : GoUInt16));
	s[1746] = ((64 : GoUInt16));
	s[1747] = ((8 : GoUInt16));
	s[1748] = ((8 : GoUInt16));
	s[1749] = ((8 : GoUInt16));
	s[1750] = ((8 : GoUInt16));
	s[1751] = ((8 : GoUInt16));
	s[1752] = ((8 : GoUInt16));
	s[1753] = ((8 : GoUInt16));
	s[1754] = ((8 : GoUInt16));
	s[1755] = ((8 : GoUInt16));
	s[1756] = ((8 : GoUInt16));
	s[1757] = ((8 : GoUInt16));
	s[1758] = ((8 : GoUInt16));
	s[1759] = ((8 : GoUInt16));
	s[1760] = ((8 : GoUInt16));
	s[1761] = ((8 : GoUInt16));
	s[1762] = ((8 : GoUInt16));
	s[1763] = ((8 : GoUInt16));
	s[1764] = ((8 : GoUInt16));
	s[1765] = ((8 : GoUInt16));
	s[1766] = ((8 : GoUInt16));
	s[1767] = ((8 : GoUInt16));
	s[1768] = ((8 : GoUInt16));
	s[1769] = ((64 : GoUInt16));
	s[1770] = ((8 : GoUInt16));
	s[1771] = ((8 : GoUInt16));
	s[1772] = ((8 : GoUInt16));
	s[1773] = ((8 : GoUInt16));
	s[1774] = ((8 : GoUInt16));
	s[1775] = ((8 : GoUInt16));
	s[1776] = ((8 : GoUInt16));
	s[1777] = ((64 : GoUInt16));
	s[1778] = ((8 : GoUInt16));
	s[1779] = ((8 : GoUInt16));
	s[1780] = ((64 : GoUInt16));
	s[1781] = ((8 : GoUInt16));
	s[1782] = ((8 : GoUInt16));
	s[1783] = ((8 : GoUInt16));
	s[1784] = ((8 : GoUInt16));
	s[1785] = ((8 : GoUInt16));
	s[1786] = ((64 : GoUInt16));
	s[1787] = ((64 : GoUInt16));
	s[1788] = ((13064 : GoUInt16));
	s[1789] = ((8 : GoUInt16));
	s[1790] = ((12296 : GoUInt16));
	s[1791] = ((12296 : GoUInt16));
	s[1792] = ((12296 : GoUInt16));
	s[1793] = ((13064 : GoUInt16));
	s[1794] = ((13064 : GoUInt16));
	s[1795] = ((13064 : GoUInt16));
	s[1796] = ((13064 : GoUInt16));
	s[1797] = ((13064 : GoUInt16));
	s[1798] = ((64 : GoUInt16));
	s[1799] = ((13064 : GoUInt16));
	s[1800] = ((13064 : GoUInt16));
	s[1801] = ((12296 : GoUInt16));
	s[1802] = ((64 : GoUInt16));
	s[1803] = ((12296 : GoUInt16));
	s[1804] = ((12296 : GoUInt16));
	s[1805] = ((15112 : GoUInt16));
	s[1806] = ((64 : GoUInt16));
	s[1807] = ((64 : GoUInt16));
	s[1808] = ((8 : GoUInt16));
	s[1809] = ((64 : GoUInt16));
	s[1810] = ((64 : GoUInt16));
	s[1811] = ((64 : GoUInt16));
	s[1812] = ((64 : GoUInt16));
	s[1813] = ((64 : GoUInt16));
	s[1814] = ((64 : GoUInt16));
	s[1815] = ((64 : GoUInt16));
	s[1816] = ((64 : GoUInt16));
	s[1817] = ((64 : GoUInt16));
	s[1818] = ((64 : GoUInt16));
	s[1819] = ((64 : GoUInt16));
	s[1820] = ((64 : GoUInt16));
	s[1821] = ((64 : GoUInt16));
	s[1822] = ((64 : GoUInt16));
	s[1823] = ((64 : GoUInt16));
	s[1824] = ((8 : GoUInt16));
	s[1825] = ((8 : GoUInt16));
	s[1826] = ((13064 : GoUInt16));
	s[1827] = ((13064 : GoUInt16));
	s[1828] = ((64 : GoUInt16));
	s[1829] = ((64 : GoUInt16));
	s[1830] = ((8 : GoUInt16));
	s[1831] = ((8 : GoUInt16));
	s[1832] = ((8 : GoUInt16));
	s[1833] = ((8 : GoUInt16));
	s[1834] = ((8 : GoUInt16));
	s[1835] = ((8 : GoUInt16));
	s[1836] = ((8 : GoUInt16));
	s[1837] = ((8 : GoUInt16));
	s[1838] = ((8 : GoUInt16));
	s[1839] = ((8 : GoUInt16));
	s[1840] = ((24 : GoUInt16));
	s[1841] = ((24 : GoUInt16));
	s[1842] = ((64 : GoUInt16));
	s[1843] = ((64 : GoUInt16));
	s[1844] = ((64 : GoUInt16));
	s[1845] = ((64 : GoUInt16));
	s[1846] = ((64 : GoUInt16));
	s[1847] = ((64 : GoUInt16));
	s[1848] = ((64 : GoUInt16));
	s[1849] = ((8 : GoUInt16));
	s[1850] = ((13064 : GoUInt16));
	s[1851] = ((13064 : GoUInt16));
	s[1852] = ((13064 : GoUInt16));
	s[1853] = ((13064 : GoUInt16));
	s[1854] = ((13064 : GoUInt16));
	s[1855] = ((13064 : GoUInt16));
	s[1856] = ((64 : GoUInt16));
	s[1857] = ((13064 : GoUInt16));
	s[1858] = ((12296 : GoUInt16));
	s[1859] = ((12296 : GoUInt16));
	s[1860] = ((64 : GoUInt16));
	s[1861] = ((8 : GoUInt16));
	s[1862] = ((8 : GoUInt16));
	s[1863] = ((8 : GoUInt16));
	s[1864] = ((8 : GoUInt16));
	s[1865] = ((8 : GoUInt16));
	s[1866] = ((8 : GoUInt16));
	s[1867] = ((8 : GoUInt16));
	s[1868] = ((8 : GoUInt16));
	s[1869] = ((64 : GoUInt16));
	s[1870] = ((64 : GoUInt16));
	s[1871] = ((8 : GoUInt16));
	s[1872] = ((8 : GoUInt16));
	s[1873] = ((64 : GoUInt16));
	s[1874] = ((64 : GoUInt16));
	s[1875] = ((8 : GoUInt16));
	s[1876] = ((8 : GoUInt16));
	s[1877] = ((8 : GoUInt16));
	s[1878] = ((8 : GoUInt16));
	s[1879] = ((8 : GoUInt16));
	s[1880] = ((8 : GoUInt16));
	s[1881] = ((8 : GoUInt16));
	s[1882] = ((8 : GoUInt16));
	s[1883] = ((8 : GoUInt16));
	s[1884] = ((8 : GoUInt16));
	s[1885] = ((8 : GoUInt16));
	s[1886] = ((8 : GoUInt16));
	s[1887] = ((8 : GoUInt16));
	s[1888] = ((8 : GoUInt16));
	s[1889] = ((8 : GoUInt16));
	s[1890] = ((8 : GoUInt16));
	s[1891] = ((8 : GoUInt16));
	s[1892] = ((8 : GoUInt16));
	s[1893] = ((8 : GoUInt16));
	s[1894] = ((8 : GoUInt16));
	s[1895] = ((8 : GoUInt16));
	s[1896] = ((8 : GoUInt16));
	s[1897] = ((64 : GoUInt16));
	s[1898] = ((8 : GoUInt16));
	s[1899] = ((8 : GoUInt16));
	s[1900] = ((8 : GoUInt16));
	s[1901] = ((8 : GoUInt16));
	s[1902] = ((8 : GoUInt16));
	s[1903] = ((8 : GoUInt16));
	s[1904] = ((8 : GoUInt16));
	s[1905] = ((64 : GoUInt16));
	s[1906] = ((8 : GoUInt16));
	s[1907] = ((8 : GoUInt16));
	s[1908] = ((64 : GoUInt16));
	s[1909] = ((8 : GoUInt16));
	s[1910] = ((8 : GoUInt16));
	s[1911] = ((8 : GoUInt16));
	s[1912] = ((8 : GoUInt16));
	s[1913] = ((8 : GoUInt16));
	s[1914] = ((64 : GoUInt16));
	s[1915] = ((64 : GoUInt16));
	s[1916] = ((13064 : GoUInt16));
	s[1917] = ((8 : GoUInt16));
	s[1918] = ((12296 : GoUInt16));
	s[1919] = ((13064 : GoUInt16));
	s[1920] = ((12296 : GoUInt16));
	s[1921] = ((13064 : GoUInt16));
	s[1922] = ((13064 : GoUInt16));
	s[1923] = ((13064 : GoUInt16));
	s[1924] = ((13064 : GoUInt16));
	s[1925] = ((64 : GoUInt16));
	s[1926] = ((64 : GoUInt16));
	s[1927] = ((12296 : GoUInt16));
	s[1928] = ((12296 : GoUInt16));
	s[1929] = ((64 : GoUInt16));
	s[1930] = ((64 : GoUInt16));
	s[1931] = ((12296 : GoUInt16));
	s[1932] = ((12296 : GoUInt16));
	s[1933] = ((15112 : GoUInt16));
	s[1934] = ((64 : GoUInt16));
	s[1935] = ((64 : GoUInt16));
	s[1936] = ((64 : GoUInt16));
	s[1937] = ((64 : GoUInt16));
	s[1938] = ((64 : GoUInt16));
	s[1939] = ((64 : GoUInt16));
	s[1940] = ((64 : GoUInt16));
	s[1941] = ((13064 : GoUInt16));
	s[1942] = ((13064 : GoUInt16));
	s[1943] = ((12296 : GoUInt16));
	s[1944] = ((64 : GoUInt16));
	s[1945] = ((64 : GoUInt16));
	s[1946] = ((64 : GoUInt16));
	s[1947] = ((64 : GoUInt16));
	s[1948] = ((2177 : GoUInt16));
	s[1949] = ((2233 : GoUInt16));
	s[1950] = ((64 : GoUInt16));
	s[1951] = ((8 : GoUInt16));
	s[1952] = ((8 : GoUInt16));
	s[1953] = ((8 : GoUInt16));
	s[1954] = ((13064 : GoUInt16));
	s[1955] = ((13064 : GoUInt16));
	s[1956] = ((64 : GoUInt16));
	s[1957] = ((64 : GoUInt16));
	s[1958] = ((8 : GoUInt16));
	s[1959] = ((8 : GoUInt16));
	s[1960] = ((8 : GoUInt16));
	s[1961] = ((8 : GoUInt16));
	s[1962] = ((8 : GoUInt16));
	s[1963] = ((8 : GoUInt16));
	s[1964] = ((8 : GoUInt16));
	s[1965] = ((8 : GoUInt16));
	s[1966] = ((8 : GoUInt16));
	s[1967] = ((8 : GoUInt16));
	s[1968] = ((24 : GoUInt16));
	s[1969] = ((8 : GoUInt16));
	s[1970] = ((24 : GoUInt16));
	s[1971] = ((24 : GoUInt16));
	s[1972] = ((24 : GoUInt16));
	s[1973] = ((24 : GoUInt16));
	s[1974] = ((24 : GoUInt16));
	s[1975] = ((24 : GoUInt16));
	s[1976] = ((64 : GoUInt16));
	s[1977] = ((64 : GoUInt16));
	s[1978] = ((64 : GoUInt16));
	s[1979] = ((64 : GoUInt16));
	s[1980] = ((64 : GoUInt16));
	s[1981] = ((64 : GoUInt16));
	s[1982] = ((64 : GoUInt16));
	s[1983] = ((64 : GoUInt16));
	s[1984] = ((64 : GoUInt16));
	s[1985] = ((64 : GoUInt16));
	s[1986] = ((13064 : GoUInt16));
	s[1987] = ((8 : GoUInt16));
	s[1988] = ((64 : GoUInt16));
	s[1989] = ((8 : GoUInt16));
	s[1990] = ((8 : GoUInt16));
	s[1991] = ((8 : GoUInt16));
	s[1992] = ((8 : GoUInt16));
	s[1993] = ((8 : GoUInt16));
	s[1994] = ((8 : GoUInt16));
	s[1995] = ((64 : GoUInt16));
	s[1996] = ((64 : GoUInt16));
	s[1997] = ((64 : GoUInt16));
	s[1998] = ((8 : GoUInt16));
	s[1999] = ((8 : GoUInt16));
	s[2000] = ((8 : GoUInt16));
	s[2001] = ((64 : GoUInt16));
	s[2002] = ((8 : GoUInt16));
	s[2003] = ((8 : GoUInt16));
	s[2004] = ((8 : GoUInt16));
	s[2005] = ((8 : GoUInt16));
	s[2006] = ((64 : GoUInt16));
	s[2007] = ((64 : GoUInt16));
	s[2008] = ((64 : GoUInt16));
	s[2009] = ((8 : GoUInt16));
	s[2010] = ((8 : GoUInt16));
	s[2011] = ((64 : GoUInt16));
	s[2012] = ((8 : GoUInt16));
	s[2013] = ((64 : GoUInt16));
	s[2014] = ((8 : GoUInt16));
	s[2015] = ((8 : GoUInt16));
	s[2016] = ((64 : GoUInt16));
	s[2017] = ((64 : GoUInt16));
	s[2018] = ((64 : GoUInt16));
	s[2019] = ((8 : GoUInt16));
	s[2020] = ((8 : GoUInt16));
	s[2021] = ((64 : GoUInt16));
	s[2022] = ((64 : GoUInt16));
	s[2023] = ((64 : GoUInt16));
	s[2024] = ((8 : GoUInt16));
	s[2025] = ((8 : GoUInt16));
	s[2026] = ((8 : GoUInt16));
	s[2027] = ((64 : GoUInt16));
	s[2028] = ((64 : GoUInt16));
	s[2029] = ((64 : GoUInt16));
	s[2030] = ((8 : GoUInt16));
	s[2031] = ((8 : GoUInt16));
	s[2032] = ((8 : GoUInt16));
	s[2033] = ((8 : GoUInt16));
	s[2034] = ((8 : GoUInt16));
	s[2035] = ((8 : GoUInt16));
	s[2036] = ((8 : GoUInt16));
	s[2037] = ((8 : GoUInt16));
	s[2038] = ((8 : GoUInt16));
	s[2039] = ((8 : GoUInt16));
	s[2040] = ((8 : GoUInt16));
	s[2041] = ((8 : GoUInt16));
	s[2042] = ((64 : GoUInt16));
	s[2043] = ((64 : GoUInt16));
	s[2044] = ((64 : GoUInt16));
	s[2045] = ((64 : GoUInt16));
	s[2046] = ((12296 : GoUInt16));
	s[2047] = ((12296 : GoUInt16));
	s[2048] = ((13064 : GoUInt16));
	s[2049] = ((12296 : GoUInt16));
	s[2050] = ((12296 : GoUInt16));
	s[2051] = ((12296 : GoUInt16));
	s[2052] = ((12296 : GoUInt16));
	s[2053] = ((64 : GoUInt16));
	s[2054] = ((13064 : GoUInt16));
	s[2055] = ((13064 : GoUInt16));
	s[2056] = ((13064 : GoUInt16));
	s[2057] = ((64 : GoUInt16));
	s[2058] = ((13064 : GoUInt16));
	s[2059] = ((13064 : GoUInt16));
	s[2060] = ((13064 : GoUInt16));
	s[2061] = ((15112 : GoUInt16));
	s[2062] = ((64 : GoUInt16));
	s[2063] = ((64 : GoUInt16));
	s[2064] = ((64 : GoUInt16));
	s[2065] = ((64 : GoUInt16));
	s[2066] = ((64 : GoUInt16));
	s[2067] = ((64 : GoUInt16));
	s[2068] = ((64 : GoUInt16));
	s[2069] = ((13064 : GoUInt16));
	s[2070] = ((13064 : GoUInt16));
	s[2071] = ((64 : GoUInt16));
	s[2072] = ((8 : GoUInt16));
	s[2073] = ((8 : GoUInt16));
	s[2074] = ((8 : GoUInt16));
	s[2075] = ((64 : GoUInt16));
	s[2076] = ((64 : GoUInt16));
	s[2077] = ((64 : GoUInt16));
	s[2078] = ((64 : GoUInt16));
	s[2079] = ((64 : GoUInt16));
	s[2080] = ((8 : GoUInt16));
	s[2081] = ((8 : GoUInt16));
	s[2082] = ((13064 : GoUInt16));
	s[2083] = ((13064 : GoUInt16));
	s[2084] = ((64 : GoUInt16));
	s[2085] = ((64 : GoUInt16));
	s[2086] = ((8 : GoUInt16));
	s[2087] = ((8 : GoUInt16));
	s[2088] = ((8 : GoUInt16));
	s[2089] = ((8 : GoUInt16));
	s[2090] = ((8 : GoUInt16));
	s[2091] = ((8 : GoUInt16));
	s[2092] = ((8 : GoUInt16));
	s[2093] = ((8 : GoUInt16));
	s[2094] = ((8 : GoUInt16));
	s[2095] = ((8 : GoUInt16));
	s[2096] = ((64 : GoUInt16));
	s[2097] = ((64 : GoUInt16));
	s[2098] = ((64 : GoUInt16));
	s[2099] = ((64 : GoUInt16));
	s[2100] = ((64 : GoUInt16));
	s[2101] = ((64 : GoUInt16));
	s[2102] = ((64 : GoUInt16));
	s[2103] = ((24 : GoUInt16));
	s[2104] = ((24 : GoUInt16));
	s[2105] = ((24 : GoUInt16));
	s[2106] = ((24 : GoUInt16));
	s[2107] = ((24 : GoUInt16));
	s[2108] = ((24 : GoUInt16));
	s[2109] = ((24 : GoUInt16));
	s[2110] = ((24 : GoUInt16));
	s[2111] = ((24 : GoUInt16));
	s[2112] = ((8 : GoUInt16));
	s[2113] = ((13064 : GoUInt16));
	s[2114] = ((12296 : GoUInt16));
	s[2115] = ((12296 : GoUInt16));
	s[2116] = ((24 : GoUInt16));
	s[2117] = ((8 : GoUInt16));
	s[2118] = ((8 : GoUInt16));
	s[2119] = ((8 : GoUInt16));
	s[2120] = ((8 : GoUInt16));
	s[2121] = ((8 : GoUInt16));
	s[2122] = ((8 : GoUInt16));
	s[2123] = ((8 : GoUInt16));
	s[2124] = ((8 : GoUInt16));
	s[2125] = ((64 : GoUInt16));
	s[2126] = ((8 : GoUInt16));
	s[2127] = ((8 : GoUInt16));
	s[2128] = ((8 : GoUInt16));
	s[2129] = ((64 : GoUInt16));
	s[2130] = ((8 : GoUInt16));
	s[2131] = ((8 : GoUInt16));
	s[2132] = ((8 : GoUInt16));
	s[2133] = ((8 : GoUInt16));
	s[2134] = ((8 : GoUInt16));
	s[2135] = ((8 : GoUInt16));
	s[2136] = ((8 : GoUInt16));
	s[2137] = ((8 : GoUInt16));
	s[2138] = ((8 : GoUInt16));
	s[2139] = ((8 : GoUInt16));
	s[2140] = ((8 : GoUInt16));
	s[2141] = ((8 : GoUInt16));
	s[2142] = ((8 : GoUInt16));
	s[2143] = ((8 : GoUInt16));
	s[2144] = ((8 : GoUInt16));
	s[2145] = ((8 : GoUInt16));
	s[2146] = ((8 : GoUInt16));
	s[2147] = ((8 : GoUInt16));
	s[2148] = ((8 : GoUInt16));
	s[2149] = ((8 : GoUInt16));
	s[2150] = ((8 : GoUInt16));
	s[2151] = ((8 : GoUInt16));
	s[2152] = ((8 : GoUInt16));
	s[2153] = ((64 : GoUInt16));
	s[2154] = ((8 : GoUInt16));
	s[2155] = ((8 : GoUInt16));
	s[2156] = ((8 : GoUInt16));
	s[2157] = ((8 : GoUInt16));
	s[2158] = ((8 : GoUInt16));
	s[2159] = ((8 : GoUInt16));
	s[2160] = ((8 : GoUInt16));
	s[2161] = ((8 : GoUInt16));
	s[2162] = ((8 : GoUInt16));
	s[2163] = ((8 : GoUInt16));
	s[2164] = ((64 : GoUInt16));
	s[2165] = ((8 : GoUInt16));
	s[2166] = ((8 : GoUInt16));
	s[2167] = ((8 : GoUInt16));
	s[2168] = ((8 : GoUInt16));
	s[2169] = ((8 : GoUInt16));
	s[2170] = ((64 : GoUInt16));
	s[2171] = ((64 : GoUInt16));
	s[2172] = ((13064 : GoUInt16));
	s[2173] = ((8 : GoUInt16));
	s[2174] = ((12296 : GoUInt16));
	s[2175] = ((13064 : GoUInt16));
	s[2176] = ((12296 : GoUInt16));
	s[2177] = ((12296 : GoUInt16));
	s[2178] = ((12296 : GoUInt16));
	s[2179] = ((12296 : GoUInt16));
	s[2180] = ((12296 : GoUInt16));
	s[2181] = ((64 : GoUInt16));
	s[2182] = ((13064 : GoUInt16));
	s[2183] = ((12296 : GoUInt16));
	s[2184] = ((12296 : GoUInt16));
	s[2185] = ((64 : GoUInt16));
	s[2186] = ((12296 : GoUInt16));
	s[2187] = ((12296 : GoUInt16));
	s[2188] = ((13064 : GoUInt16));
	s[2189] = ((15112 : GoUInt16));
	s[2190] = ((64 : GoUInt16));
	s[2191] = ((64 : GoUInt16));
	s[2192] = ((64 : GoUInt16));
	s[2193] = ((64 : GoUInt16));
	s[2194] = ((64 : GoUInt16));
	s[2195] = ((64 : GoUInt16));
	s[2196] = ((64 : GoUInt16));
	s[2197] = ((12296 : GoUInt16));
	s[2198] = ((12296 : GoUInt16));
	s[2199] = ((64 : GoUInt16));
	s[2200] = ((64 : GoUInt16));
	s[2201] = ((64 : GoUInt16));
	s[2202] = ((64 : GoUInt16));
	s[2203] = ((64 : GoUInt16));
	s[2204] = ((64 : GoUInt16));
	s[2205] = ((64 : GoUInt16));
	s[2206] = ((8 : GoUInt16));
	s[2207] = ((64 : GoUInt16));
	s[2208] = ((8 : GoUInt16));
	s[2209] = ((8 : GoUInt16));
	s[2210] = ((13064 : GoUInt16));
	s[2211] = ((13064 : GoUInt16));
	s[2212] = ((64 : GoUInt16));
	s[2213] = ((64 : GoUInt16));
	s[2214] = ((8 : GoUInt16));
	s[2215] = ((8 : GoUInt16));
	s[2216] = ((8 : GoUInt16));
	s[2217] = ((8 : GoUInt16));
	s[2218] = ((8 : GoUInt16));
	s[2219] = ((8 : GoUInt16));
	s[2220] = ((8 : GoUInt16));
	s[2221] = ((8 : GoUInt16));
	s[2222] = ((8 : GoUInt16));
	s[2223] = ((8 : GoUInt16));
	s[2224] = ((64 : GoUInt16));
	s[2225] = ((8 : GoUInt16));
	s[2226] = ((8 : GoUInt16));
	s[2227] = ((64 : GoUInt16));
	s[2228] = ((64 : GoUInt16));
	s[2229] = ((64 : GoUInt16));
	s[2230] = ((64 : GoUInt16));
	s[2231] = ((64 : GoUInt16));
	s[2232] = ((64 : GoUInt16));
	s[2233] = ((64 : GoUInt16));
	s[2234] = ((64 : GoUInt16));
	s[2235] = ((64 : GoUInt16));
	s[2236] = ((64 : GoUInt16));
	s[2237] = ((64 : GoUInt16));
	s[2238] = ((64 : GoUInt16));
	s[2239] = ((64 : GoUInt16));
	s[2240] = ((12296 : GoUInt16));
	s[2241] = ((13064 : GoUInt16));
	s[2242] = ((13064 : GoUInt16));
	s[2243] = ((13064 : GoUInt16));
	s[2244] = ((13064 : GoUInt16));
	s[2245] = ((64 : GoUInt16));
	s[2246] = ((12296 : GoUInt16));
	s[2247] = ((12296 : GoUInt16));
	s[2248] = ((12296 : GoUInt16));
	s[2249] = ((64 : GoUInt16));
	s[2250] = ((12296 : GoUInt16));
	s[2251] = ((12296 : GoUInt16));
	s[2252] = ((12296 : GoUInt16));
	s[2253] = ((15112 : GoUInt16));
	s[2254] = ((8 : GoUInt16));
	s[2255] = ((24 : GoUInt16));
	s[2256] = ((64 : GoUInt16));
	s[2257] = ((64 : GoUInt16));
	s[2258] = ((64 : GoUInt16));
	s[2259] = ((64 : GoUInt16));
	s[2260] = ((8 : GoUInt16));
	s[2261] = ((8 : GoUInt16));
	s[2262] = ((8 : GoUInt16));
	s[2263] = ((12296 : GoUInt16));
	s[2264] = ((24 : GoUInt16));
	s[2265] = ((24 : GoUInt16));
	s[2266] = ((24 : GoUInt16));
	s[2267] = ((24 : GoUInt16));
	s[2268] = ((24 : GoUInt16));
	s[2269] = ((24 : GoUInt16));
	s[2270] = ((24 : GoUInt16));
	s[2271] = ((8 : GoUInt16));
	s[2272] = ((8 : GoUInt16));
	s[2273] = ((8 : GoUInt16));
	s[2274] = ((13064 : GoUInt16));
	s[2275] = ((13064 : GoUInt16));
	s[2276] = ((64 : GoUInt16));
	s[2277] = ((64 : GoUInt16));
	s[2278] = ((8 : GoUInt16));
	s[2279] = ((8 : GoUInt16));
	s[2280] = ((8 : GoUInt16));
	s[2281] = ((8 : GoUInt16));
	s[2282] = ((8 : GoUInt16));
	s[2283] = ((8 : GoUInt16));
	s[2284] = ((8 : GoUInt16));
	s[2285] = ((8 : GoUInt16));
	s[2286] = ((8 : GoUInt16));
	s[2287] = ((8 : GoUInt16));
	s[2288] = ((24 : GoUInt16));
	s[2289] = ((24 : GoUInt16));
	s[2290] = ((24 : GoUInt16));
	s[2291] = ((24 : GoUInt16));
	s[2292] = ((24 : GoUInt16));
	s[2293] = ((24 : GoUInt16));
	s[2294] = ((24 : GoUInt16));
	s[2295] = ((24 : GoUInt16));
	s[2296] = ((24 : GoUInt16));
	s[2297] = ((24 : GoUInt16));
	s[2298] = ((8 : GoUInt16));
	s[2299] = ((8 : GoUInt16));
	s[2300] = ((8 : GoUInt16));
	s[2301] = ((8 : GoUInt16));
	s[2302] = ((8 : GoUInt16));
	s[2303] = ((8 : GoUInt16));
	s[2304] = ((64 : GoUInt16));
	s[2305] = ((8 : GoUInt16));
	s[2306] = ((8 : GoUInt16));
	s[2307] = ((64 : GoUInt16));
	s[2308] = ((8 : GoUInt16));
	s[2309] = ((64 : GoUInt16));
	s[2310] = ((8 : GoUInt16));
	s[2311] = ((8 : GoUInt16));
	s[2312] = ((8 : GoUInt16));
	s[2313] = ((8 : GoUInt16));
	s[2314] = ((8 : GoUInt16));
	s[2315] = ((64 : GoUInt16));
	s[2316] = ((8 : GoUInt16));
	s[2317] = ((8 : GoUInt16));
	s[2318] = ((8 : GoUInt16));
	s[2319] = ((8 : GoUInt16));
	s[2320] = ((8 : GoUInt16));
	s[2321] = ((8 : GoUInt16));
	s[2322] = ((8 : GoUInt16));
	s[2323] = ((8 : GoUInt16));
	s[2324] = ((8 : GoUInt16));
	s[2325] = ((8 : GoUInt16));
	s[2326] = ((8 : GoUInt16));
	s[2327] = ((8 : GoUInt16));
	s[2328] = ((8 : GoUInt16));
	s[2329] = ((8 : GoUInt16));
	s[2330] = ((8 : GoUInt16));
	s[2331] = ((8 : GoUInt16));
	s[2332] = ((8 : GoUInt16));
	s[2333] = ((8 : GoUInt16));
	s[2334] = ((8 : GoUInt16));
	s[2335] = ((8 : GoUInt16));
	s[2336] = ((8 : GoUInt16));
	s[2337] = ((8 : GoUInt16));
	s[2338] = ((8 : GoUInt16));
	s[2339] = ((8 : GoUInt16));
	s[2340] = ((64 : GoUInt16));
	s[2341] = ((8 : GoUInt16));
	s[2342] = ((64 : GoUInt16));
	s[2343] = ((8 : GoUInt16));
	s[2344] = ((8 : GoUInt16));
	s[2345] = ((8 : GoUInt16));
	s[2346] = ((8 : GoUInt16));
	s[2347] = ((8 : GoUInt16));
	s[2348] = ((8 : GoUInt16));
	s[2349] = ((8 : GoUInt16));
	s[2350] = ((8 : GoUInt16));
	s[2351] = ((8 : GoUInt16));
	s[2352] = ((8 : GoUInt16));
	s[2353] = ((13064 : GoUInt16));
	s[2354] = ((8 : GoUInt16));
	s[2355] = ((2345 : GoUInt16));
	s[2356] = ((13064 : GoUInt16));
	s[2357] = ((13064 : GoUInt16));
	s[2358] = ((13064 : GoUInt16));
	s[2359] = ((13064 : GoUInt16));
	s[2360] = ((13064 : GoUInt16));
	s[2361] = ((13064 : GoUInt16));
	s[2362] = ((15112 : GoUInt16));
	s[2363] = ((13064 : GoUInt16));
	s[2364] = ((13064 : GoUInt16));
	s[2365] = ((8 : GoUInt16));
	s[2366] = ((64 : GoUInt16));
	s[2367] = ((64 : GoUInt16));
	s[2368] = ((8 : GoUInt16));
	s[2369] = ((8 : GoUInt16));
	s[2370] = ((8 : GoUInt16));
	s[2371] = ((2513 : GoUInt16));
	s[2372] = ((8 : GoUInt16));
	s[2373] = ((8 : GoUInt16));
	s[2374] = ((8 : GoUInt16));
	s[2375] = ((8 : GoUInt16));
	s[2376] = ((64 : GoUInt16));
	s[2377] = ((8 : GoUInt16));
	s[2378] = ((8 : GoUInt16));
	s[2379] = ((8 : GoUInt16));
	s[2380] = ((8 : GoUInt16));
	s[2381] = ((2569 : GoUInt16));
	s[2382] = ((8 : GoUInt16));
	s[2383] = ((8 : GoUInt16));
	s[2384] = ((8 : GoUInt16));
	s[2385] = ((8 : GoUInt16));
	s[2386] = ((2625 : GoUInt16));
	s[2387] = ((8 : GoUInt16));
	s[2388] = ((8 : GoUInt16));
	s[2389] = ((8 : GoUInt16));
	s[2390] = ((8 : GoUInt16));
	s[2391] = ((2681 : GoUInt16));
	s[2392] = ((8 : GoUInt16));
	s[2393] = ((8 : GoUInt16));
	s[2394] = ((8 : GoUInt16));
	s[2395] = ((8 : GoUInt16));
	s[2396] = ((2737 : GoUInt16));
	s[2397] = ((8 : GoUInt16));
	s[2398] = ((8 : GoUInt16));
	s[2399] = ((8 : GoUInt16));
	s[2400] = ((8 : GoUInt16));
	s[2401] = ((8 : GoUInt16));
	s[2402] = ((8 : GoUInt16));
	s[2403] = ((8 : GoUInt16));
	s[2404] = ((8 : GoUInt16));
	s[2405] = ((8 : GoUInt16));
	s[2406] = ((8 : GoUInt16));
	s[2407] = ((8 : GoUInt16));
	s[2408] = ((8 : GoUInt16));
	s[2409] = ((2793 : GoUInt16));
	s[2410] = ((8 : GoUInt16));
	s[2411] = ((8 : GoUInt16));
	s[2412] = ((8 : GoUInt16));
	s[2413] = ((64 : GoUInt16));
	s[2414] = ((64 : GoUInt16));
	s[2415] = ((64 : GoUInt16));
	s[2416] = ((64 : GoUInt16));
	s[2417] = ((13064 : GoUInt16));
	s[2418] = ((13064 : GoUInt16));
	s[2419] = ((2849 : GoUInt16));
	s[2420] = ((13064 : GoUInt16));
	s[2421] = ((2905 : GoUInt16));
	s[2422] = ((2961 : GoUInt16));
	s[2423] = ((3017 : GoUInt16));
	s[2424] = ((3097 : GoUInt16));
	s[2425] = ((3153 : GoUInt16));
	s[2426] = ((13064 : GoUInt16));
	s[2427] = ((13064 : GoUInt16));
	s[2428] = ((13064 : GoUInt16));
	s[2429] = ((13064 : GoUInt16));
	s[2430] = ((13064 : GoUInt16));
	s[2431] = ((12296 : GoUInt16));
	s[2432] = ((13064 : GoUInt16));
	s[2433] = ((3233 : GoUInt16));
	s[2434] = ((13064 : GoUInt16));
	s[2435] = ((13064 : GoUInt16));
	s[2436] = ((15112 : GoUInt16));
	s[2437] = ((24 : GoUInt16));
	s[2438] = ((13064 : GoUInt16));
	s[2439] = ((13064 : GoUInt16));
	s[2440] = ((8 : GoUInt16));
	s[2441] = ((8 : GoUInt16));
	s[2442] = ((8 : GoUInt16));
	s[2443] = ((8 : GoUInt16));
	s[2444] = ((8 : GoUInt16));
	s[2445] = ((13064 : GoUInt16));
	s[2446] = ((13064 : GoUInt16));
	s[2447] = ((13064 : GoUInt16));
	s[2448] = ((13064 : GoUInt16));
	s[2449] = ((13064 : GoUInt16));
	s[2450] = ((13064 : GoUInt16));
	s[2451] = ((3289 : GoUInt16));
	s[2452] = ((13064 : GoUInt16));
	s[2453] = ((13064 : GoUInt16));
	s[2454] = ((13064 : GoUInt16));
	s[2455] = ((13064 : GoUInt16));
	s[2456] = ((64 : GoUInt16));
	s[2457] = ((13064 : GoUInt16));
	s[2458] = ((13064 : GoUInt16));
	s[2459] = ((13064 : GoUInt16));
	s[2460] = ((13064 : GoUInt16));
	s[2461] = ((3345 : GoUInt16));
	s[2462] = ((13064 : GoUInt16));
	s[2463] = ((13064 : GoUInt16));
	s[2464] = ((13064 : GoUInt16));
	s[2465] = ((13064 : GoUInt16));
	s[2466] = ((3401 : GoUInt16));
	s[2467] = ((13064 : GoUInt16));
	s[2468] = ((13064 : GoUInt16));
	s[2469] = ((13064 : GoUInt16));
	s[2470] = ((13064 : GoUInt16));
	s[2471] = ((3457 : GoUInt16));
	s[2472] = ((13064 : GoUInt16));
	s[2473] = ((13064 : GoUInt16));
	s[2474] = ((13064 : GoUInt16));
	s[2475] = ((13064 : GoUInt16));
	s[2476] = ((3513 : GoUInt16));
	s[2477] = ((13064 : GoUInt16));
	s[2478] = ((13064 : GoUInt16));
	s[2479] = ((13064 : GoUInt16));
	s[2480] = ((13064 : GoUInt16));
	s[2481] = ((13064 : GoUInt16));
	s[2482] = ((13064 : GoUInt16));
	s[2483] = ((13064 : GoUInt16));
	s[2484] = ((13064 : GoUInt16));
	s[2485] = ((13064 : GoUInt16));
	s[2486] = ((13064 : GoUInt16));
	s[2487] = ((13064 : GoUInt16));
	s[2488] = ((13064 : GoUInt16));
	s[2489] = ((3569 : GoUInt16));
	s[2490] = ((13064 : GoUInt16));
	s[2491] = ((13064 : GoUInt16));
	s[2492] = ((13064 : GoUInt16));
	s[2493] = ((64 : GoUInt16));
	s[2494] = ((24 : GoUInt16));
	s[2495] = ((24 : GoUInt16));
	s[2496] = ((8 : GoUInt16));
	s[2497] = ((8 : GoUInt16));
	s[2498] = ((8 : GoUInt16));
	s[2499] = ((8 : GoUInt16));
	s[2500] = ((8 : GoUInt16));
	s[2501] = ((8 : GoUInt16));
	s[2502] = ((8 : GoUInt16));
	s[2503] = ((8 : GoUInt16));
	s[2504] = ((8 : GoUInt16));
	s[2505] = ((8 : GoUInt16));
	s[2506] = ((8 : GoUInt16));
	s[2507] = ((8 : GoUInt16));
	s[2508] = ((8 : GoUInt16));
	s[2509] = ((8 : GoUInt16));
	s[2510] = ((8 : GoUInt16));
	s[2511] = ((8 : GoUInt16));
	s[2512] = ((8 : GoUInt16));
	s[2513] = ((8 : GoUInt16));
	s[2514] = ((8 : GoUInt16));
	s[2515] = ((8 : GoUInt16));
	s[2516] = ((8 : GoUInt16));
	s[2517] = ((8 : GoUInt16));
	s[2518] = ((8 : GoUInt16));
	s[2519] = ((8 : GoUInt16));
	s[2520] = ((8 : GoUInt16));
	s[2521] = ((8 : GoUInt16));
	s[2522] = ((8 : GoUInt16));
	s[2523] = ((8 : GoUInt16));
	s[2524] = ((8 : GoUInt16));
	s[2525] = ((8 : GoUInt16));
	s[2526] = ((8 : GoUInt16));
	s[2527] = ((8 : GoUInt16));
	s[2528] = ((8 : GoUInt16));
	s[2529] = ((8 : GoUInt16));
	s[2530] = ((8 : GoUInt16));
	s[2531] = ((8 : GoUInt16));
	s[2532] = ((8 : GoUInt16));
	s[2533] = ((8 : GoUInt16));
	s[2534] = ((8 : GoUInt16));
	s[2535] = ((8 : GoUInt16));
	s[2536] = ((8 : GoUInt16));
	s[2537] = ((8 : GoUInt16));
	s[2538] = ((8 : GoUInt16));
	s[2539] = ((8 : GoUInt16));
	s[2540] = ((57 : GoUInt16));
	s[2541] = ((3793 : GoUInt16));
	s[2542] = ((3817 : GoUInt16));
	s[2543] = ((8 : GoUInt16));
	s[2544] = ((3833 : GoUInt16));
	s[2545] = ((3849 : GoUInt16));
	s[2546] = ((3865 : GoUInt16));
	s[2547] = ((3889 : GoUInt16));
	s[2548] = ((585 : GoUInt16));
	s[2549] = ((3905 : GoUInt16));
	s[2550] = ((601 : GoUInt16));
	s[2551] = ((3921 : GoUInt16));
	s[2552] = ((857 : GoUInt16));
	s[2553] = ((3937 : GoUInt16));
	s[2554] = ((3953 : GoUInt16));
	s[2555] = ((8 : GoUInt16));
	s[2556] = ((217 : GoUInt16));
	s[2557] = ((3969 : GoUInt16));
	s[2558] = ((3993 : GoUInt16));
	s[2559] = ((617 : GoUInt16));
	s[2560] = ((4009 : GoUInt16));
	s[2561] = ((4025 : GoUInt16));
	s[2562] = ((633 : GoUInt16));
	s[2563] = ((57 : GoUInt16));
	s[2564] = ((4041 : GoUInt16));
	s[2565] = ((4065 : GoUInt16));
	s[2566] = ((1461 : GoUInt16));
	s[2567] = ((3817 : GoUInt16));
	s[2568] = ((3833 : GoUInt16));
	s[2569] = ((3849 : GoUInt16));
	s[2570] = ((4089 : GoUInt16));
	s[2571] = ((4113 : GoUInt16));
	s[2572] = ((4137 : GoUInt16));
	s[2573] = ((3889 : GoUInt16));
	s[2574] = ((8 : GoUInt16));
	s[2575] = ((3921 : GoUInt16));
	s[2576] = ((3937 : GoUInt16));
	s[2577] = ((4161 : GoUInt16));
	s[2578] = ((217 : GoUInt16));
	s[2579] = ((4185 : GoUInt16));
	s[2580] = ((1485 : GoUInt16));
	s[2581] = ((1485 : GoUInt16));
	s[2582] = ((3993 : GoUInt16));
	s[2583] = ((4009 : GoUInt16));
	s[2584] = ((4025 : GoUInt16));
	s[2585] = ((1461 : GoUInt16));
	s[2586] = ((4209 : GoUInt16));
	s[2587] = ((4233 : GoUInt16));
	s[2588] = ((1509 : GoUInt16));
	s[2589] = ((4249 : GoUInt16));
	s[2590] = ((4273 : GoUInt16));
	s[2591] = ((4297 : GoUInt16));
	s[2592] = ((4321 : GoUInt16));
	s[2593] = ((4345 : GoUInt16));
	s[2594] = ((3905 : GoUInt16));
	s[2595] = ((617 : GoUInt16));
	s[2596] = ((4025 : GoUInt16));
	s[2597] = ((4233 : GoUInt16));
	s[2598] = ((4249 : GoUInt16));
	s[2599] = ((4273 : GoUInt16));
	s[2600] = ((4369 : GoUInt16));
	s[2601] = ((4321 : GoUInt16));
	s[2602] = ((4345 : GoUInt16));
	s[2603] = ((8 : GoUInt16));
	s[2604] = ((8 : GoUInt16));
	s[2605] = ((8 : GoUInt16));
	s[2606] = ((8 : GoUInt16));
	s[2607] = ((8 : GoUInt16));
	s[2608] = ((8 : GoUInt16));
	s[2609] = ((8 : GoUInt16));
	s[2610] = ((8 : GoUInt16));
	s[2611] = ((8 : GoUInt16));
	s[2612] = ((8 : GoUInt16));
	s[2613] = ((8 : GoUInt16));
	s[2614] = ((8 : GoUInt16));
	s[2615] = ((8 : GoUInt16));
	s[2616] = ((4393 : GoUInt16));
	s[2617] = ((8 : GoUInt16));
	s[2618] = ((8 : GoUInt16));
	s[2619] = ((8 : GoUInt16));
	s[2620] = ((8 : GoUInt16));
	s[2621] = ((8 : GoUInt16));
	s[2622] = ((8 : GoUInt16));
	s[2623] = ((8 : GoUInt16));
	s[2624] = ((8 : GoUInt16));
	s[2625] = ((8 : GoUInt16));
	s[2626] = ((8 : GoUInt16));
	s[2627] = ((8 : GoUInt16));
	s[2628] = ((8 : GoUInt16));
	s[2629] = ((8 : GoUInt16));
	s[2630] = ((8 : GoUInt16));
	s[2631] = ((8 : GoUInt16));
	s[2632] = ((8 : GoUInt16));
	s[2633] = ((8 : GoUInt16));
	s[2634] = ((8 : GoUInt16));
	s[2635] = ((8 : GoUInt16));
	s[2636] = ((8 : GoUInt16));
	s[2637] = ((8 : GoUInt16));
	s[2638] = ((8 : GoUInt16));
	s[2639] = ((8 : GoUInt16));
	s[2640] = ((8 : GoUInt16));
	s[2641] = ((8 : GoUInt16));
	s[2642] = ((8 : GoUInt16));
	s[2643] = ((8 : GoUInt16));
	s[2644] = ((8 : GoUInt16));
	s[2645] = ((8 : GoUInt16));
	s[2646] = ((8 : GoUInt16));
	s[2647] = ((8 : GoUInt16));
	s[2648] = ((8 : GoUInt16));
	s[2649] = ((8 : GoUInt16));
	s[2650] = ((8 : GoUInt16));
	s[2651] = ((4417 : GoUInt16));
	s[2652] = ((4441 : GoUInt16));
	s[2653] = ((4457 : GoUInt16));
	s[2654] = ((4481 : GoUInt16));
	s[2655] = ((4137 : GoUInt16));
	s[2656] = ((4505 : GoUInt16));
	s[2657] = ((4521 : GoUInt16));
	s[2658] = ((4545 : GoUInt16));
	s[2659] = ((4569 : GoUInt16));
	s[2660] = ((4593 : GoUInt16));
	s[2661] = ((4617 : GoUInt16));
	s[2662] = ((4641 : GoUInt16));
	s[2663] = ((1533 : GoUInt16));
	s[2664] = ((4665 : GoUInt16));
	s[2665] = ((4689 : GoUInt16));
	s[2666] = ((57725 : GoUInt16));
	s[2667] = ((4713 : GoUInt16));
	s[2668] = ((4737 : GoUInt16));
	s[2669] = ((4761 : GoUInt16));
	s[2670] = ((4785 : GoUInt16));
	s[2671] = ((4809 : GoUInt16));
	s[2672] = ((4833 : GoUInt16));
	s[2673] = ((4857 : GoUInt16));
	s[2674] = ((4881 : GoUInt16));
	s[2675] = ((4905 : GoUInt16));
	s[2676] = ((4929 : GoUInt16));
	s[2677] = ((4953 : GoUInt16));
	s[2678] = ((4977 : GoUInt16));
	s[2679] = ((5001 : GoUInt16));
	s[2680] = ((1557 : GoUInt16));
	s[2681] = ((5025 : GoUInt16));
	s[2682] = ((5049 : GoUInt16));
	s[2683] = ((5073 : GoUInt16));
	s[2684] = ((5089 : GoUInt16));
	s[2685] = ((5113 : GoUInt16));
	s[2686] = ((5137 : GoUInt16));
	s[2687] = ((5161 : GoUInt16));
	s[2688] = ((57357 : GoUInt16));
	s[2689] = ((8 : GoUInt16));
	s[2690] = ((57357 : GoUInt16));
	s[2691] = ((8 : GoUInt16));
	s[2692] = ((57357 : GoUInt16));
	s[2693] = ((8 : GoUInt16));
	s[2694] = ((57357 : GoUInt16));
	s[2695] = ((8 : GoUInt16));
	s[2696] = ((57357 : GoUInt16));
	s[2697] = ((8 : GoUInt16));
	s[2698] = ((57357 : GoUInt16));
	s[2699] = ((8 : GoUInt16));
	s[2700] = ((57357 : GoUInt16));
	s[2701] = ((8 : GoUInt16));
	s[2702] = ((57357 : GoUInt16));
	s[2703] = ((8 : GoUInt16));
	s[2704] = ((57357 : GoUInt16));
	s[2705] = ((8 : GoUInt16));
	s[2706] = ((57357 : GoUInt16));
	s[2707] = ((8 : GoUInt16));
	s[2708] = ((57357 : GoUInt16));
	s[2709] = ((8 : GoUInt16));
	s[2710] = ((57357 : GoUInt16));
	s[2711] = ((8 : GoUInt16));
	s[2712] = ((57357 : GoUInt16));
	s[2713] = ((8 : GoUInt16));
	s[2714] = ((57357 : GoUInt16));
	s[2715] = ((8 : GoUInt16));
	s[2716] = ((57357 : GoUInt16));
	s[2717] = ((8 : GoUInt16));
	s[2718] = ((57357 : GoUInt16));
	s[2719] = ((8 : GoUInt16));
	s[2720] = ((57357 : GoUInt16));
	s[2721] = ((8 : GoUInt16));
	s[2722] = ((57357 : GoUInt16));
	s[2723] = ((8 : GoUInt16));
	s[2724] = ((57357 : GoUInt16));
	s[2725] = ((8 : GoUInt16));
	s[2726] = ((57357 : GoUInt16));
	s[2727] = ((8 : GoUInt16));
	s[2728] = ((57357 : GoUInt16));
	s[2729] = ((8 : GoUInt16));
	s[2730] = ((57357 : GoUInt16));
	s[2731] = ((8 : GoUInt16));
	s[2732] = ((57357 : GoUInt16));
	s[2733] = ((8 : GoUInt16));
	s[2734] = ((57357 : GoUInt16));
	s[2735] = ((8 : GoUInt16));
	s[2736] = ((57357 : GoUInt16));
	s[2737] = ((8 : GoUInt16));
	s[2738] = ((57357 : GoUInt16));
	s[2739] = ((8 : GoUInt16));
	s[2740] = ((57357 : GoUInt16));
	s[2741] = ((8 : GoUInt16));
	s[2742] = ((57357 : GoUInt16));
	s[2743] = ((8 : GoUInt16));
	s[2744] = ((57357 : GoUInt16));
	s[2745] = ((8 : GoUInt16));
	s[2746] = ((57357 : GoUInt16));
	s[2747] = ((8 : GoUInt16));
	s[2748] = ((57357 : GoUInt16));
	s[2749] = ((8 : GoUInt16));
	s[2750] = ((57357 : GoUInt16));
	s[2751] = ((8 : GoUInt16));
	s[2752] = ((57357 : GoUInt16));
	s[2753] = ((8 : GoUInt16));
	s[2754] = ((57357 : GoUInt16));
	s[2755] = ((8 : GoUInt16));
	s[2756] = ((57357 : GoUInt16));
	s[2757] = ((8 : GoUInt16));
	s[2758] = ((57357 : GoUInt16));
	s[2759] = ((8 : GoUInt16));
	s[2760] = ((57357 : GoUInt16));
	s[2761] = ((8 : GoUInt16));
	s[2762] = ((57357 : GoUInt16));
	s[2763] = ((8 : GoUInt16));
	s[2764] = ((57357 : GoUInt16));
	s[2765] = ((8 : GoUInt16));
	s[2766] = ((57357 : GoUInt16));
	s[2767] = ((8 : GoUInt16));
	s[2768] = ((57357 : GoUInt16));
	s[2769] = ((8 : GoUInt16));
	s[2770] = ((57357 : GoUInt16));
	s[2771] = ((8 : GoUInt16));
	s[2772] = ((57357 : GoUInt16));
	s[2773] = ((8 : GoUInt16));
	s[2774] = ((8 : GoUInt16));
	s[2775] = ((8 : GoUInt16));
	s[2776] = ((8 : GoUInt16));
	s[2777] = ((8 : GoUInt16));
	s[2778] = ((1581 : GoUInt16));
	s[2779] = ((1613 : GoUInt16));
	s[2780] = ((8 : GoUInt16));
	s[2781] = ((8 : GoUInt16));
	s[2782] = ((5185 : GoUInt16));
	s[2783] = ((8 : GoUInt16));
	s[2784] = ((57357 : GoUInt16));
	s[2785] = ((8 : GoUInt16));
	s[2786] = ((57357 : GoUInt16));
	s[2787] = ((8 : GoUInt16));
	s[2788] = ((57357 : GoUInt16));
	s[2789] = ((8 : GoUInt16));
	s[2790] = ((57357 : GoUInt16));
	s[2791] = ((8 : GoUInt16));
	s[2792] = ((57357 : GoUInt16));
	s[2793] = ((8 : GoUInt16));
	s[2794] = ((57357 : GoUInt16));
	s[2795] = ((8 : GoUInt16));
	s[2796] = ((57357 : GoUInt16));
	s[2797] = ((8 : GoUInt16));
	s[2798] = ((57357 : GoUInt16));
	s[2799] = ((8 : GoUInt16));
	s[2800] = ((57357 : GoUInt16));
	s[2801] = ((8 : GoUInt16));
	s[2802] = ((57357 : GoUInt16));
	s[2803] = ((8 : GoUInt16));
	s[2804] = ((57357 : GoUInt16));
	s[2805] = ((8 : GoUInt16));
	s[2806] = ((57357 : GoUInt16));
	s[2807] = ((8 : GoUInt16));
	s[2808] = ((57357 : GoUInt16));
	s[2809] = ((8 : GoUInt16));
	s[2810] = ((57357 : GoUInt16));
	s[2811] = ((8 : GoUInt16));
	s[2812] = ((57357 : GoUInt16));
	s[2813] = ((8 : GoUInt16));
	s[2814] = ((57357 : GoUInt16));
	s[2815] = ((8 : GoUInt16));
	s[2816] = ((8 : GoUInt16));
	s[2817] = ((8 : GoUInt16));
	s[2818] = ((8 : GoUInt16));
	s[2819] = ((8 : GoUInt16));
	s[2820] = ((8 : GoUInt16));
	s[2821] = ((8 : GoUInt16));
	s[2822] = ((64 : GoUInt16));
	s[2823] = ((64 : GoUInt16));
	s[2824] = ((57413 : GoUInt16));
	s[2825] = ((57413 : GoUInt16));
	s[2826] = ((57413 : GoUInt16));
	s[2827] = ((57413 : GoUInt16));
	s[2828] = ((57413 : GoUInt16));
	s[2829] = ((57413 : GoUInt16));
	s[2830] = ((64 : GoUInt16));
	s[2831] = ((64 : GoUInt16));
	s[2832] = ((8 : GoUInt16));
	s[2833] = ((8 : GoUInt16));
	s[2834] = ((8 : GoUInt16));
	s[2835] = ((8 : GoUInt16));
	s[2836] = ((8 : GoUInt16));
	s[2837] = ((8 : GoUInt16));
	s[2838] = ((8 : GoUInt16));
	s[2839] = ((8 : GoUInt16));
	s[2840] = ((64 : GoUInt16));
	s[2841] = ((57413 : GoUInt16));
	s[2842] = ((64 : GoUInt16));
	s[2843] = ((57413 : GoUInt16));
	s[2844] = ((64 : GoUInt16));
	s[2845] = ((57413 : GoUInt16));
	s[2846] = ((64 : GoUInt16));
	s[2847] = ((57413 : GoUInt16));
	s[2848] = ((8 : GoUInt16));
	s[2849] = ((8 : GoUInt16));
	s[2850] = ((8 : GoUInt16));
	s[2851] = ((8 : GoUInt16));
	s[2852] = ((8 : GoUInt16));
	s[2853] = ((8 : GoUInt16));
	s[2854] = ((8 : GoUInt16));
	s[2855] = ((8 : GoUInt16));
	s[2856] = ((57413 : GoUInt16));
	s[2857] = ((57413 : GoUInt16));
	s[2858] = ((57413 : GoUInt16));
	s[2859] = ((57413 : GoUInt16));
	s[2860] = ((57413 : GoUInt16));
	s[2861] = ((57413 : GoUInt16));
	s[2862] = ((57413 : GoUInt16));
	s[2863] = ((57413 : GoUInt16));
	s[2864] = ((8 : GoUInt16));
	s[2865] = ((5209 : GoUInt16));
	s[2866] = ((8 : GoUInt16));
	s[2867] = ((5233 : GoUInt16));
	s[2868] = ((8 : GoUInt16));
	s[2869] = ((5257 : GoUInt16));
	s[2870] = ((8 : GoUInt16));
	s[2871] = ((5281 : GoUInt16));
	s[2872] = ((8 : GoUInt16));
	s[2873] = ((5305 : GoUInt16));
	s[2874] = ((8 : GoUInt16));
	s[2875] = ((5329 : GoUInt16));
	s[2876] = ((8 : GoUInt16));
	s[2877] = ((5353 : GoUInt16));
	s[2878] = ((64 : GoUInt16));
	s[2879] = ((64 : GoUInt16));
	s[2880] = ((5377 : GoUInt16));
	s[2881] = ((5425 : GoUInt16));
	s[2882] = ((5473 : GoUInt16));
	s[2883] = ((5521 : GoUInt16));
	s[2884] = ((5569 : GoUInt16));
	s[2885] = ((5617 : GoUInt16));
	s[2886] = ((5665 : GoUInt16));
	s[2887] = ((5713 : GoUInt16));
	s[2888] = ((5377 : GoUInt16));
	s[2889] = ((5425 : GoUInt16));
	s[2890] = ((5473 : GoUInt16));
	s[2891] = ((5521 : GoUInt16));
	s[2892] = ((5569 : GoUInt16));
	s[2893] = ((5617 : GoUInt16));
	s[2894] = ((5665 : GoUInt16));
	s[2895] = ((5713 : GoUInt16));
	s[2896] = ((5761 : GoUInt16));
	s[2897] = ((5809 : GoUInt16));
	s[2898] = ((5857 : GoUInt16));
	s[2899] = ((5905 : GoUInt16));
	s[2900] = ((5953 : GoUInt16));
	s[2901] = ((6001 : GoUInt16));
	s[2902] = ((6049 : GoUInt16));
	s[2903] = ((6097 : GoUInt16));
	s[2904] = ((5761 : GoUInt16));
	s[2905] = ((5809 : GoUInt16));
	s[2906] = ((5857 : GoUInt16));
	s[2907] = ((5905 : GoUInt16));
	s[2908] = ((5953 : GoUInt16));
	s[2909] = ((6001 : GoUInt16));
	s[2910] = ((6049 : GoUInt16));
	s[2911] = ((6097 : GoUInt16));
	s[2912] = ((6145 : GoUInt16));
	s[2913] = ((6193 : GoUInt16));
	s[2914] = ((6241 : GoUInt16));
	s[2915] = ((6289 : GoUInt16));
	s[2916] = ((6337 : GoUInt16));
	s[2917] = ((6385 : GoUInt16));
	s[2918] = ((6433 : GoUInt16));
	s[2919] = ((6481 : GoUInt16));
	s[2920] = ((6145 : GoUInt16));
	s[2921] = ((6193 : GoUInt16));
	s[2922] = ((6241 : GoUInt16));
	s[2923] = ((6289 : GoUInt16));
	s[2924] = ((6337 : GoUInt16));
	s[2925] = ((6385 : GoUInt16));
	s[2926] = ((6433 : GoUInt16));
	s[2927] = ((6481 : GoUInt16));
	s[2928] = ((8 : GoUInt16));
	s[2929] = ((8 : GoUInt16));
	s[2930] = ((6529 : GoUInt16));
	s[2931] = ((6577 : GoUInt16));
	s[2932] = ((6617 : GoUInt16));
	s[2933] = ((64 : GoUInt16));
	s[2934] = ((8 : GoUInt16));
	s[2935] = ((6657 : GoUInt16));
	s[2936] = ((57413 : GoUInt16));
	s[2937] = ((57413 : GoUInt16));
	s[2938] = ((1637 : GoUInt16));
	s[2939] = ((5209 : GoUInt16));
	s[2940] = ((6577 : GoUInt16));
	s[2941] = ((1662 : GoUInt16));
	s[2942] = ((6705 : GoUInt16));
	s[2943] = ((1694 : GoUInt16));
	s[2944] = ((1726 : GoUInt16));
	s[2945] = ((6730 : GoUInt16));
	s[2946] = ((6777 : GoUInt16));
	s[2947] = ((6825 : GoUInt16));
	s[2948] = ((6865 : GoUInt16));
	s[2949] = ((64 : GoUInt16));
	s[2950] = ((8 : GoUInt16));
	s[2951] = ((6905 : GoUInt16));
	s[2952] = ((1757 : GoUInt16));
	s[2953] = ((5233 : GoUInt16));
	s[2954] = ((1781 : GoUInt16));
	s[2955] = ((5257 : GoUInt16));
	s[2956] = ((6825 : GoUInt16));
	s[2957] = ((6954 : GoUInt16));
	s[2958] = ((7002 : GoUInt16));
	s[2959] = ((7050 : GoUInt16));
	s[2960] = ((8 : GoUInt16));
	s[2961] = ((8 : GoUInt16));
	s[2962] = ((8 : GoUInt16));
	s[2963] = ((7097 : GoUInt16));
	s[2964] = ((64 : GoUInt16));
	s[2965] = ((64 : GoUInt16));
	s[2966] = ((8 : GoUInt16));
	s[2967] = ((8 : GoUInt16));
	s[2968] = ((57413 : GoUInt16));
	s[2969] = ((57413 : GoUInt16));
	s[2970] = ((1805 : GoUInt16));
	s[2971] = ((5281 : GoUInt16));
	s[2972] = ((64 : GoUInt16));
	s[2973] = ((7122 : GoUInt16));
	s[2974] = ((7170 : GoUInt16));
	s[2975] = ((7218 : GoUInt16));
	s[2976] = ((8 : GoUInt16));
	s[2977] = ((8 : GoUInt16));
	s[2978] = ((8 : GoUInt16));
	s[2979] = ((7265 : GoUInt16));
	s[2980] = ((8 : GoUInt16));
	s[2981] = ((8 : GoUInt16));
	s[2982] = ((8 : GoUInt16));
	s[2983] = ((8 : GoUInt16));
	s[2984] = ((57413 : GoUInt16));
	s[2985] = ((57413 : GoUInt16));
	s[2986] = ((1829 : GoUInt16));
	s[2987] = ((5329 : GoUInt16));
	s[2988] = ((57421 : GoUInt16));
	s[2989] = ((7290 : GoUInt16));
	s[2990] = ((978 : GoUInt16));
	s[2991] = ((7338 : GoUInt16));
	s[2992] = ((64 : GoUInt16));
	s[2993] = ((64 : GoUInt16));
	s[2994] = ((7353 : GoUInt16));
	s[2995] = ((7401 : GoUInt16));
	s[2996] = ((7441 : GoUInt16));
	s[2997] = ((64 : GoUInt16));
	s[2998] = ((8 : GoUInt16));
	s[2999] = ((7481 : GoUInt16));
	s[3000] = ((1853 : GoUInt16));
	s[3001] = ((5305 : GoUInt16));
	s[3002] = ((1301 : GoUInt16));
	s[3003] = ((5353 : GoUInt16));
	s[3004] = ((7401 : GoUInt16));
	s[3005] = ((1878 : GoUInt16));
	s[3006] = ((1910 : GoUInt16));
	s[3007] = ((64 : GoUInt16));
	s[3008] = ((10 : GoUInt16));
	s[3009] = ((10 : GoUInt16));
	s[3010] = ((10 : GoUInt16));
	s[3011] = ((10 : GoUInt16));
	s[3012] = ((10 : GoUInt16));
	s[3013] = ((10 : GoUInt16));
	s[3014] = ((10 : GoUInt16));
	s[3015] = ((10 : GoUInt16));
	s[3016] = ((10 : GoUInt16));
	s[3017] = ((10 : GoUInt16));
	s[3018] = ((10 : GoUInt16));
	s[3019] = ((960 : GoUInt16));
	s[3020] = ((3 : GoUInt16));
	s[3021] = ((3 : GoUInt16));
	s[3022] = ((832 : GoUInt16));
	s[3023] = ((2880 : GoUInt16));
	s[3024] = ((24 : GoUInt16));
	s[3025] = ((57357 : GoUInt16));
	s[3026] = ((24 : GoUInt16));
	s[3027] = ((24 : GoUInt16));
	s[3028] = ((24 : GoUInt16));
	s[3029] = ((24 : GoUInt16));
	s[3030] = ((24 : GoUInt16));
	s[3031] = ((1942 : GoUInt16));
	s[3032] = ((24 : GoUInt16));
	s[3033] = ((24 : GoUInt16));
	s[3034] = ((24 : GoUInt16));
	s[3035] = ((24 : GoUInt16));
	s[3036] = ((24 : GoUInt16));
	s[3037] = ((24 : GoUInt16));
	s[3038] = ((24 : GoUInt16));
	s[3039] = ((24 : GoUInt16));
	s[3040] = ((24 : GoUInt16));
	s[3041] = ((24 : GoUInt16));
	s[3042] = ((24 : GoUInt16));
	s[3043] = ((24 : GoUInt16));
	s[3044] = ((64 : GoUInt16));
	s[3045] = ((64 : GoUInt16));
	s[3046] = ((64 : GoUInt16));
	s[3047] = ((24 : GoUInt16));
	s[3048] = ((64 : GoUInt16));
	s[3049] = ((64 : GoUInt16));
	s[3050] = ((832 : GoUInt16));
	s[3051] = ((832 : GoUInt16));
	s[3052] = ((832 : GoUInt16));
	s[3053] = ((832 : GoUInt16));
	s[3054] = ((832 : GoUInt16));
	s[3055] = ((10 : GoUInt16));
	s[3056] = ((24 : GoUInt16));
	s[3057] = ((24 : GoUInt16));
	s[3058] = ((24 : GoUInt16));
	s[3059] = ((7529 : GoUInt16));
	s[3060] = ((7585 : GoUInt16));
	s[3061] = ((24 : GoUInt16));
	s[3062] = ((7665 : GoUInt16));
	s[3063] = ((7721 : GoUInt16));
	s[3064] = ((24 : GoUInt16));
	s[3065] = ((24 : GoUInt16));
	s[3066] = ((24 : GoUInt16));
	s[3067] = ((24 : GoUInt16));
	s[3068] = ((7802 : GoUInt16));
	s[3069] = ((24 : GoUInt16));
	s[3070] = ((1974 : GoUInt16));
	s[3071] = ((24 : GoUInt16));
	s[3072] = ((24 : GoUInt16));
	s[3073] = ((24 : GoUInt16));
	s[3074] = ((24 : GoUInt16));
	s[3075] = ((24 : GoUInt16));
	s[3076] = ((24 : GoUInt16));
	s[3077] = ((24 : GoUInt16));
	s[3078] = ((24 : GoUInt16));
	s[3079] = ((7826 : GoUInt16));
	s[3080] = ((7850 : GoUInt16));
	s[3081] = ((7874 : GoUInt16));
	s[3082] = ((24 : GoUInt16));
	s[3083] = ((24 : GoUInt16));
	s[3084] = ((24 : GoUInt16));
	s[3085] = ((24 : GoUInt16));
	s[3086] = ((24 : GoUInt16));
	s[3087] = ((24 : GoUInt16));
	s[3088] = ((24 : GoUInt16));
	s[3089] = ((24 : GoUInt16));
	s[3090] = ((24 : GoUInt16));
	s[3091] = ((24 : GoUInt16));
	s[3092] = ((24 : GoUInt16));
	s[3093] = ((24 : GoUInt16));
	s[3094] = ((24 : GoUInt16));
	s[3095] = ((7897 : GoUInt16));
	s[3096] = ((24 : GoUInt16));
	s[3097] = ((24 : GoUInt16));
	s[3098] = ((24 : GoUInt16));
	s[3099] = ((24 : GoUInt16));
	s[3100] = ((24 : GoUInt16));
	s[3101] = ((24 : GoUInt16));
	s[3102] = ((24 : GoUInt16));
	s[3103] = ((10 : GoUInt16));
	s[3104] = ((960 : GoUInt16));
	s[3105] = ((832 : GoUInt16));
	s[3106] = ((832 : GoUInt16));
	s[3107] = ((832 : GoUInt16));
	s[3108] = ((960 : GoUInt16));
	s[3109] = ((64 : GoUInt16));
	s[3110] = ((64 : GoUInt16));
	s[3111] = ((64 : GoUInt16));
	s[3112] = ((64 : GoUInt16));
	s[3113] = ((64 : GoUInt16));
	s[3114] = ((832 : GoUInt16));
	s[3115] = ((832 : GoUInt16));
	s[3116] = ((832 : GoUInt16));
	s[3117] = ((832 : GoUInt16));
	s[3118] = ((832 : GoUInt16));
	s[3119] = ((832 : GoUInt16));
	s[3120] = ((8001 : GoUInt16));
	s[3121] = ((3905 : GoUInt16));
	s[3122] = ((64 : GoUInt16));
	s[3123] = ((64 : GoUInt16));
	s[3124] = ((8017 : GoUInt16));
	s[3125] = ((8033 : GoUInt16));
	s[3126] = ((8049 : GoUInt16));
	s[3127] = ((8065 : GoUInt16));
	s[3128] = ((8081 : GoUInt16));
	s[3129] = ((8097 : GoUInt16));
	s[3130] = ((8114 : GoUInt16));
	s[3131] = ((2005 : GoUInt16));
	s[3132] = ((8130 : GoUInt16));
	s[3133] = ((8146 : GoUInt16));
	s[3134] = ((8162 : GoUInt16));
	s[3135] = ((3953 : GoUInt16));
	s[3136] = ((8001 : GoUInt16));
	s[3137] = ((201 : GoUInt16));
	s[3138] = ((105 : GoUInt16));
	s[3139] = ((121 : GoUInt16));
	s[3140] = ((8017 : GoUInt16));
	s[3141] = ((8033 : GoUInt16));
	s[3142] = ((8049 : GoUInt16));
	s[3143] = ((8065 : GoUInt16));
	s[3144] = ((8081 : GoUInt16));
	s[3145] = ((8097 : GoUInt16));
	s[3146] = ((8114 : GoUInt16));
	s[3147] = ((2029 : GoUInt16));
	s[3148] = ((8130 : GoUInt16));
	s[3149] = ((8146 : GoUInt16));
	s[3150] = ((8162 : GoUInt16));
	s[3151] = ((64 : GoUInt16));
	s[3152] = ((57 : GoUInt16));
	s[3153] = ((3849 : GoUInt16));
	s[3154] = ((217 : GoUInt16));
	s[3155] = ((873 : GoUInt16));
	s[3156] = ((4089 : GoUInt16));
	s[3157] = ((585 : GoUInt16));
	s[3158] = ((3921 : GoUInt16));
	s[3159] = ((857 : GoUInt16));
	s[3160] = ((3937 : GoUInt16));
	s[3161] = ((3953 : GoUInt16));
	s[3162] = ((3993 : GoUInt16));
	s[3163] = ((473 : GoUInt16));
	s[3164] = ((4009 : GoUInt16));
	s[3165] = ((64 : GoUInt16));
	s[3166] = ((64 : GoUInt16));
	s[3167] = ((64 : GoUInt16));
	s[3168] = ((24 : GoUInt16));
	s[3169] = ((24 : GoUInt16));
	s[3170] = ((24 : GoUInt16));
	s[3171] = ((24 : GoUInt16));
	s[3172] = ((24 : GoUInt16));
	s[3173] = ((24 : GoUInt16));
	s[3174] = ((24 : GoUInt16));
	s[3175] = ((24 : GoUInt16));
	s[3176] = ((8177 : GoUInt16));
	s[3177] = ((24 : GoUInt16));
	s[3178] = ((24 : GoUInt16));
	s[3179] = ((24 : GoUInt16));
	s[3180] = ((24 : GoUInt16));
	s[3181] = ((24 : GoUInt16));
	s[3182] = ((24 : GoUInt16));
	s[3183] = ((24 : GoUInt16));
	s[3184] = ((24 : GoUInt16));
	s[3185] = ((24 : GoUInt16));
	s[3186] = ((24 : GoUInt16));
	s[3187] = ((24 : GoUInt16));
	s[3188] = ((24 : GoUInt16));
	s[3189] = ((24 : GoUInt16));
	s[3190] = ((24 : GoUInt16));
	s[3191] = ((24 : GoUInt16));
	s[3192] = ((24 : GoUInt16));
	s[3193] = ((24 : GoUInt16));
	s[3194] = ((24 : GoUInt16));
	s[3195] = ((24 : GoUInt16));
	s[3196] = ((24 : GoUInt16));
	s[3197] = ((24 : GoUInt16));
	s[3198] = ((24 : GoUInt16));
	s[3199] = ((24 : GoUInt16));
	s[3200] = ((2054 : GoUInt16));
	s[3201] = ((2086 : GoUInt16));
	s[3202] = ((4441 : GoUInt16));
	s[3203] = ((2117 : GoUInt16));
	s[3204] = ((24 : GoUInt16));
	s[3205] = ((2150 : GoUInt16));
	s[3206] = ((2182 : GoUInt16));
	s[3207] = ((4113 : GoUInt16));
	s[3208] = ((24 : GoUInt16));
	s[3209] = ((2213 : GoUInt16));
	s[3210] = ((3889 : GoUInt16));
	s[3211] = ((585 : GoUInt16));
	s[3212] = ((585 : GoUInt16));
	s[3213] = ((585 : GoUInt16));
	s[3214] = ((585 : GoUInt16));
	s[3215] = ((8201 : GoUInt16));
	s[3216] = ((3905 : GoUInt16));
	s[3217] = ((3905 : GoUInt16));
	s[3218] = ((857 : GoUInt16));
	s[3219] = ((857 : GoUInt16));
	s[3220] = ((24 : GoUInt16));
	s[3221] = ((3953 : GoUInt16));
	s[3222] = ((8225 : GoUInt16));
	s[3223] = ((24 : GoUInt16));
	s[3224] = ((24 : GoUInt16));
	s[3225] = ((3993 : GoUInt16));
	s[3226] = ((8249 : GoUInt16));
	s[3227] = ((617 : GoUInt16));
	s[3228] = ((617 : GoUInt16));
	s[3229] = ((617 : GoUInt16));
	s[3230] = ((24 : GoUInt16));
	s[3231] = ((24 : GoUInt16));
	s[3232] = ((8265 : GoUInt16));
	s[3233] = ((2245 : GoUInt16));
	s[3234] = ((8289 : GoUInt16));
	s[3235] = ((24 : GoUInt16));
	s[3236] = ((5073 : GoUInt16));
	s[3237] = ((24 : GoUInt16));
	s[3238] = ((8313 : GoUInt16));
	s[3239] = ((24 : GoUInt16));
	s[3240] = ((5073 : GoUInt16));
	s[3241] = ((24 : GoUInt16));
	s[3242] = ((3921 : GoUInt16));
	s[3243] = ((8337 : GoUInt16));
	s[3244] = ((3817 : GoUInt16));
	s[3245] = ((4441 : GoUInt16));
	s[3246] = ((24 : GoUInt16));
	s[3247] = ((3849 : GoUInt16));
	s[3248] = ((3849 : GoUInt16));
	s[3249] = ((4505 : GoUInt16));
	s[3250] = ((64 : GoUInt16));
	s[3251] = ((3937 : GoUInt16));
	s[3252] = ((217 : GoUInt16));
	s[3253] = ((8361 : GoUInt16));
	s[3254] = ((8385 : GoUInt16));
	s[3255] = ((8409 : GoUInt16));
	s[3256] = ((8433 : GoUInt16));
	s[3257] = ((3905 : GoUInt16));
	s[3258] = ((24 : GoUInt16));
	s[3259] = ((2277 : GoUInt16));
	s[3260] = ((8457 : GoUInt16));
	s[3261] = ((4273 : GoUInt16));
	s[3262] = ((4273 : GoUInt16));
	s[3263] = ((8457 : GoUInt16));
	s[3264] = ((2309 : GoUInt16));
	s[3265] = ((24 : GoUInt16));
	s[3266] = ((24 : GoUInt16));
	s[3267] = ((24 : GoUInt16));
	s[3268] = ((24 : GoUInt16));
	s[3269] = ((3833 : GoUInt16));
	s[3270] = ((3833 : GoUInt16));
	s[3271] = ((3849 : GoUInt16));
	s[3272] = ((3905 : GoUInt16));
	s[3273] = ((601 : GoUInt16));
	s[3274] = ((24 : GoUInt16));
	s[3275] = ((24 : GoUInt16));
	s[3276] = ((24 : GoUInt16));
	s[3277] = ((24 : GoUInt16));
	s[3278] = ((8 : GoUInt16));
	s[3279] = ((24 : GoUInt16));
	s[3280] = ((8481 : GoUInt16));
	s[3281] = ((8529 : GoUInt16));
	s[3282] = ((8577 : GoUInt16));
	s[3283] = ((8633 : GoUInt16));
	s[3284] = ((8681 : GoUInt16));
	s[3285] = ((8729 : GoUInt16));
	s[3286] = ((8777 : GoUInt16));
	s[3287] = ((8825 : GoUInt16));
	s[3288] = ((8873 : GoUInt16));
	s[3289] = ((8921 : GoUInt16));
	s[3290] = ((8969 : GoUInt16));
	s[3291] = ((9017 : GoUInt16));
	s[3292] = ((9065 : GoUInt16));
	s[3293] = ((9113 : GoUInt16));
	s[3294] = ((9161 : GoUInt16));
	s[3295] = ((9209 : GoUInt16));
	s[3296] = ((3905 : GoUInt16));
	s[3297] = ((9249 : GoUInt16));
	s[3298] = ((2333 : GoUInt16));
	s[3299] = ((9273 : GoUInt16));
	s[3300] = ((4233 : GoUInt16));
	s[3301] = ((9297 : GoUInt16));
	s[3302] = ((2365 : GoUInt16));
	s[3303] = ((9321 : GoUInt16));
	s[3304] = ((9361 : GoUInt16));
	s[3305] = ((873 : GoUInt16));
	s[3306] = ((9385 : GoUInt16));
	s[3307] = ((2397 : GoUInt16));
	s[3308] = ((857 : GoUInt16));
	s[3309] = ((4441 : GoUInt16));
	s[3310] = ((3833 : GoUInt16));
	s[3311] = ((3937 : GoUInt16));
	s[3312] = ((3905 : GoUInt16));
	s[3313] = ((9249 : GoUInt16));
	s[3314] = ((2429 : GoUInt16));
	s[3315] = ((9273 : GoUInt16));
	s[3316] = ((4233 : GoUInt16));
	s[3317] = ((9297 : GoUInt16));
	s[3318] = ((2461 : GoUInt16));
	s[3319] = ((9321 : GoUInt16));
	s[3320] = ((9361 : GoUInt16));
	s[3321] = ((873 : GoUInt16));
	s[3322] = ((9385 : GoUInt16));
	s[3323] = ((2493 : GoUInt16));
	s[3324] = ((857 : GoUInt16));
	s[3325] = ((4441 : GoUInt16));
	s[3326] = ((3833 : GoUInt16));
	s[3327] = ((3937 : GoUInt16));
	s[3328] = ((24 : GoUInt16));
	s[3329] = ((24 : GoUInt16));
	s[3330] = ((24 : GoUInt16));
	s[3331] = ((24 : GoUInt16));
	s[3332] = ((24 : GoUInt16));
	s[3333] = ((24 : GoUInt16));
	s[3334] = ((24 : GoUInt16));
	s[3335] = ((24 : GoUInt16));
	s[3336] = ((24 : GoUInt16));
	s[3337] = ((24 : GoUInt16));
	s[3338] = ((24 : GoUInt16));
	s[3339] = ((64 : GoUInt16));
	s[3340] = ((64 : GoUInt16));
	s[3341] = ((64 : GoUInt16));
	s[3342] = ((64 : GoUInt16));
	s[3343] = ((64 : GoUInt16));
	s[3344] = ((64 : GoUInt16));
	s[3345] = ((64 : GoUInt16));
	s[3346] = ((64 : GoUInt16));
	s[3347] = ((64 : GoUInt16));
	s[3348] = ((64 : GoUInt16));
	s[3349] = ((64 : GoUInt16));
	s[3350] = ((64 : GoUInt16));
	s[3351] = ((64 : GoUInt16));
	s[3352] = ((64 : GoUInt16));
	s[3353] = ((64 : GoUInt16));
	s[3354] = ((64 : GoUInt16));
	s[3355] = ((64 : GoUInt16));
	s[3356] = ((64 : GoUInt16));
	s[3357] = ((64 : GoUInt16));
	s[3358] = ((64 : GoUInt16));
	s[3359] = ((64 : GoUInt16));
	s[3360] = ((201 : GoUInt16));
	s[3361] = ((105 : GoUInt16));
	s[3362] = ((121 : GoUInt16));
	s[3363] = ((8017 : GoUInt16));
	s[3364] = ((8033 : GoUInt16));
	s[3365] = ((8049 : GoUInt16));
	s[3366] = ((8065 : GoUInt16));
	s[3367] = ((8081 : GoUInt16));
	s[3368] = ((8097 : GoUInt16));
	s[3369] = ((9729 : GoUInt16));
	s[3370] = ((9753 : GoUInt16));
	s[3371] = ((9777 : GoUInt16));
	s[3372] = ((9801 : GoUInt16));
	s[3373] = ((9825 : GoUInt16));
	s[3374] = ((9849 : GoUInt16));
	s[3375] = ((9873 : GoUInt16));
	s[3376] = ((9897 : GoUInt16));
	s[3377] = ((9921 : GoUInt16));
	s[3378] = ((9945 : GoUInt16));
	s[3379] = ((9969 : GoUInt16));
	s[3380] = ((2590 : GoUInt16));
	s[3381] = ((2622 : GoUInt16));
	s[3382] = ((2654 : GoUInt16));
	s[3383] = ((2686 : GoUInt16));
	s[3384] = ((2718 : GoUInt16));
	s[3385] = ((2750 : GoUInt16));
	s[3386] = ((2782 : GoUInt16));
	s[3387] = ((2814 : GoUInt16));
	s[3388] = ((2846 : GoUInt16));
	s[3389] = ((9994 : GoUInt16));
	s[3390] = ((10034 : GoUInt16));
	s[3391] = ((10074 : GoUInt16));
	s[3392] = ((10114 : GoUInt16));
	s[3393] = ((10154 : GoUInt16));
	s[3394] = ((10194 : GoUInt16));
	s[3395] = ((10234 : GoUInt16));
	s[3396] = ((10274 : GoUInt16));
	s[3397] = ((10314 : GoUInt16));
	s[3398] = ((10354 : GoUInt16));
	s[3399] = ((10394 : GoUInt16));
	s[3400] = ((64 : GoUInt16));
	s[3401] = ((64 : GoUInt16));
	s[3402] = ((64 : GoUInt16));
	s[3403] = ((64 : GoUInt16));
	s[3404] = ((64 : GoUInt16));
	s[3405] = ((64 : GoUInt16));
	s[3406] = ((64 : GoUInt16));
	s[3407] = ((64 : GoUInt16));
	s[3408] = ((64 : GoUInt16));
	s[3409] = ((64 : GoUInt16));
	s[3410] = ((64 : GoUInt16));
	s[3411] = ((64 : GoUInt16));
	s[3412] = ((64 : GoUInt16));
	s[3413] = ((64 : GoUInt16));
	s[3414] = ((64 : GoUInt16));
	s[3415] = ((64 : GoUInt16));
	s[3416] = ((64 : GoUInt16));
	s[3417] = ((64 : GoUInt16));
	s[3418] = ((64 : GoUInt16));
	s[3419] = ((64 : GoUInt16));
	s[3420] = ((2878 : GoUInt16));
	s[3421] = ((2910 : GoUInt16));
	s[3422] = ((2942 : GoUInt16));
	s[3423] = ((2974 : GoUInt16));
	s[3424] = ((3006 : GoUInt16));
	s[3425] = ((3038 : GoUInt16));
	s[3426] = ((3070 : GoUInt16));
	s[3427] = ((3102 : GoUInt16));
	s[3428] = ((3134 : GoUInt16));
	s[3429] = ((3166 : GoUInt16));
	s[3430] = ((3198 : GoUInt16));
	s[3431] = ((3230 : GoUInt16));
	s[3432] = ((3262 : GoUInt16));
	s[3433] = ((3294 : GoUInt16));
	s[3434] = ((3326 : GoUInt16));
	s[3435] = ((3358 : GoUInt16));
	s[3436] = ((3390 : GoUInt16));
	s[3437] = ((3422 : GoUInt16));
	s[3438] = ((3454 : GoUInt16));
	s[3439] = ((3486 : GoUInt16));
	s[3440] = ((3518 : GoUInt16));
	s[3441] = ((3550 : GoUInt16));
	s[3442] = ((3582 : GoUInt16));
	s[3443] = ((3614 : GoUInt16));
	s[3444] = ((3646 : GoUInt16));
	s[3445] = ((3678 : GoUInt16));
	s[3446] = ((57 : GoUInt16));
	s[3447] = ((3817 : GoUInt16));
	s[3448] = ((4441 : GoUInt16));
	s[3449] = ((3833 : GoUInt16));
	s[3450] = ((3849 : GoUInt16));
	s[3451] = ((4505 : GoUInt16));
	s[3452] = ((3889 : GoUInt16));
	s[3453] = ((585 : GoUInt16));
	s[3454] = ((3905 : GoUInt16));
	s[3455] = ((601 : GoUInt16));
	s[3456] = ((3921 : GoUInt16));
	s[3457] = ((857 : GoUInt16));
	s[3458] = ((3937 : GoUInt16));
	s[3459] = ((3953 : GoUInt16));
	s[3460] = ((217 : GoUInt16));
	s[3461] = ((3993 : GoUInt16));
	s[3462] = ((8249 : GoUInt16));
	s[3463] = ((617 : GoUInt16));
	s[3464] = ((473 : GoUInt16));
	s[3465] = ((4009 : GoUInt16));
	s[3466] = ((4025 : GoUInt16));
	s[3467] = ((4233 : GoUInt16));
	s[3468] = ((633 : GoUInt16));
	s[3469] = ((873 : GoUInt16));
	s[3470] = ((649 : GoUInt16));
	s[3471] = ((5073 : GoUInt16));
	s[3472] = ((57 : GoUInt16));
	s[3473] = ((3817 : GoUInt16));
	s[3474] = ((4441 : GoUInt16));
	s[3475] = ((3833 : GoUInt16));
	s[3476] = ((3849 : GoUInt16));
	s[3477] = ((4505 : GoUInt16));
	s[3478] = ((3889 : GoUInt16));
	s[3479] = ((585 : GoUInt16));
	s[3480] = ((3905 : GoUInt16));
	s[3481] = ((601 : GoUInt16));
	s[3482] = ((3921 : GoUInt16));
	s[3483] = ((857 : GoUInt16));
	s[3484] = ((3937 : GoUInt16));
	s[3485] = ((3953 : GoUInt16));
	s[3486] = ((217 : GoUInt16));
	s[3487] = ((3993 : GoUInt16));
	s[3488] = ((8249 : GoUInt16));
	s[3489] = ((617 : GoUInt16));
	s[3490] = ((473 : GoUInt16));
	s[3491] = ((4009 : GoUInt16));
	s[3492] = ((4025 : GoUInt16));
	s[3493] = ((4233 : GoUInt16));
	s[3494] = ((633 : GoUInt16));
	s[3495] = ((873 : GoUInt16));
	s[3496] = ((649 : GoUInt16));
	s[3497] = ((5073 : GoUInt16));
	s[3498] = ((8001 : GoUInt16));
	s[3499] = ((24 : GoUInt16));
	s[3500] = ((24 : GoUInt16));
	s[3501] = ((24 : GoUInt16));
	s[3502] = ((24 : GoUInt16));
	s[3503] = ((24 : GoUInt16));
	s[3504] = ((24 : GoUInt16));
	s[3505] = ((24 : GoUInt16));
	s[3506] = ((24 : GoUInt16));
	s[3507] = ((24 : GoUInt16));
	s[3508] = ((24 : GoUInt16));
	s[3509] = ((24 : GoUInt16));
	s[3510] = ((24 : GoUInt16));
	s[3511] = ((24 : GoUInt16));
	s[3512] = ((24 : GoUInt16));
	s[3513] = ((24 : GoUInt16));
	s[3514] = ((24 : GoUInt16));
	s[3515] = ((24 : GoUInt16));
	s[3516] = ((24 : GoUInt16));
	s[3517] = ((24 : GoUInt16));
	s[3518] = ((24 : GoUInt16));
	s[3519] = ((24 : GoUInt16));
	s[3520] = ((8 : GoUInt16));
	s[3521] = ((8 : GoUInt16));
	s[3522] = ((8 : GoUInt16));
	s[3523] = ((8 : GoUInt16));
	s[3524] = ((8 : GoUInt16));
	s[3525] = ((8 : GoUInt16));
	s[3526] = ((8 : GoUInt16));
	s[3527] = ((8 : GoUInt16));
	s[3528] = ((8 : GoUInt16));
	s[3529] = ((8 : GoUInt16));
	s[3530] = ((8 : GoUInt16));
	s[3531] = ((8 : GoUInt16));
	s[3532] = ((8 : GoUInt16));
	s[3533] = ((8 : GoUInt16));
	s[3534] = ((8 : GoUInt16));
	s[3535] = ((8 : GoUInt16));
	s[3536] = ((8 : GoUInt16));
	s[3537] = ((8 : GoUInt16));
	s[3538] = ((8 : GoUInt16));
	s[3539] = ((8 : GoUInt16));
	s[3540] = ((8 : GoUInt16));
	s[3541] = ((8 : GoUInt16));
	s[3542] = ((8 : GoUInt16));
	s[3543] = ((8 : GoUInt16));
	s[3544] = ((8 : GoUInt16));
	s[3545] = ((8 : GoUInt16));
	s[3546] = ((8 : GoUInt16));
	s[3547] = ((8 : GoUInt16));
	s[3548] = ((8 : GoUInt16));
	s[3549] = ((8 : GoUInt16));
	s[3550] = ((8 : GoUInt16));
	s[3551] = ((64 : GoUInt16));
	s[3552] = ((57357 : GoUInt16));
	s[3553] = ((8 : GoUInt16));
	s[3554] = ((10609 : GoUInt16));
	s[3555] = ((3797 : GoUInt16));
	s[3556] = ((10633 : GoUInt16));
	s[3557] = ((8 : GoUInt16));
	s[3558] = ((8 : GoUInt16));
	s[3559] = ((57469 : GoUInt16));
	s[3560] = ((8 : GoUInt16));
	s[3561] = ((57373 : GoUInt16));
	s[3562] = ((8 : GoUInt16));
	s[3563] = ((57405 : GoUInt16));
	s[3564] = ((8 : GoUInt16));
	s[3565] = ((4065 : GoUInt16));
	s[3566] = ((4737 : GoUInt16));
	s[3567] = ((4041 : GoUInt16));
	s[3568] = ((4417 : GoUInt16));
	s[3569] = ((8 : GoUInt16));
	s[3570] = ((57357 : GoUInt16));
	s[3571] = ((8 : GoUInt16));
	s[3572] = ((8 : GoUInt16));
	s[3573] = ((57373 : GoUInt16));
	s[3574] = ((8 : GoUInt16));
	s[3575] = ((8 : GoUInt16));
	s[3576] = ((8 : GoUInt16));
	s[3577] = ((8 : GoUInt16));
	s[3578] = ((8 : GoUInt16));
	s[3579] = ((8 : GoUInt16));
	s[3580] = ((601 : GoUInt16));
	s[3581] = ((4233 : GoUInt16));
	s[3582] = ((10657 : GoUInt16));
	s[3583] = ((10681 : GoUInt16));
	s[3584] = ((57357 : GoUInt16));
	s[3585] = ((8 : GoUInt16));
	s[3586] = ((57357 : GoUInt16));
	s[3587] = ((8 : GoUInt16));
	s[3588] = ((57357 : GoUInt16));
	s[3589] = ((8 : GoUInt16));
	s[3590] = ((57357 : GoUInt16));
	s[3591] = ((8 : GoUInt16));
	s[3592] = ((57357 : GoUInt16));
	s[3593] = ((8 : GoUInt16));
	s[3594] = ((57357 : GoUInt16));
	s[3595] = ((8 : GoUInt16));
	s[3596] = ((57357 : GoUInt16));
	s[3597] = ((8 : GoUInt16));
	s[3598] = ((57357 : GoUInt16));
	s[3599] = ((8 : GoUInt16));
	s[3600] = ((57357 : GoUInt16));
	s[3601] = ((8 : GoUInt16));
	s[3602] = ((57357 : GoUInt16));
	s[3603] = ((8 : GoUInt16));
	s[3604] = ((57357 : GoUInt16));
	s[3605] = ((8 : GoUInt16));
	s[3606] = ((57357 : GoUInt16));
	s[3607] = ((8 : GoUInt16));
	s[3608] = ((57357 : GoUInt16));
	s[3609] = ((8 : GoUInt16));
	s[3610] = ((57357 : GoUInt16));
	s[3611] = ((8 : GoUInt16));
	s[3612] = ((57357 : GoUInt16));
	s[3613] = ((8 : GoUInt16));
	s[3614] = ((57357 : GoUInt16));
	s[3615] = ((8 : GoUInt16));
	s[3616] = ((57357 : GoUInt16));
	s[3617] = ((8 : GoUInt16));
	s[3618] = ((57357 : GoUInt16));
	s[3619] = ((8 : GoUInt16));
	s[3620] = ((8 : GoUInt16));
	s[3621] = ((24 : GoUInt16));
	s[3622] = ((24 : GoUInt16));
	s[3623] = ((24 : GoUInt16));
	s[3624] = ((24 : GoUInt16));
	s[3625] = ((24 : GoUInt16));
	s[3626] = ((24 : GoUInt16));
	s[3627] = ((57405 : GoUInt16));
	s[3628] = ((8 : GoUInt16));
	s[3629] = ((57373 : GoUInt16));
	s[3630] = ((8 : GoUInt16));
	s[3631] = ((13064 : GoUInt16));
	s[3632] = ((13064 : GoUInt16));
	s[3633] = ((13064 : GoUInt16));
	s[3634] = ((57357 : GoUInt16));
	s[3635] = ((8 : GoUInt16));
	s[3636] = ((64 : GoUInt16));
	s[3637] = ((64 : GoUInt16));
	s[3638] = ((64 : GoUInt16));
	s[3639] = ((64 : GoUInt16));
	s[3640] = ((64 : GoUInt16));
	s[3641] = ((24 : GoUInt16));
	s[3642] = ((24 : GoUInt16));
	s[3643] = ((24 : GoUInt16));
	s[3644] = ((24 : GoUInt16));
	s[3645] = ((24 : GoUInt16));
	s[3646] = ((24 : GoUInt16));
	s[3647] = ((24 : GoUInt16));
	s[3648] = ((10005 : GoUInt16));
	s[3649] = ((10037 : GoUInt16));
	s[3650] = ((10069 : GoUInt16));
	s[3651] = ((10101 : GoUInt16));
	s[3652] = ((10133 : GoUInt16));
	s[3653] = ((10165 : GoUInt16));
	s[3654] = ((10197 : GoUInt16));
	s[3655] = ((10229 : GoUInt16));
	s[3656] = ((10261 : GoUInt16));
	s[3657] = ((10293 : GoUInt16));
	s[3658] = ((10325 : GoUInt16));
	s[3659] = ((10357 : GoUInt16));
	s[3660] = ((10389 : GoUInt16));
	s[3661] = ((10421 : GoUInt16));
	s[3662] = ((10453 : GoUInt16));
	s[3663] = ((10485 : GoUInt16));
	s[3664] = ((10517 : GoUInt16));
	s[3665] = ((10549 : GoUInt16));
	s[3666] = ((10581 : GoUInt16));
	s[3667] = ((10613 : GoUInt16));
	s[3668] = ((10645 : GoUInt16));
	s[3669] = ((10677 : GoUInt16));
	s[3670] = ((64 : GoUInt16));
	s[3671] = ((64 : GoUInt16));
	s[3672] = ((64 : GoUInt16));
	s[3673] = ((64 : GoUInt16));
	s[3674] = ((64 : GoUInt16));
	s[3675] = ((64 : GoUInt16));
	s[3676] = ((64 : GoUInt16));
	s[3677] = ((64 : GoUInt16));
	s[3678] = ((64 : GoUInt16));
	s[3679] = ((64 : GoUInt16));
	s[3680] = ((64 : GoUInt16));
	s[3681] = ((64 : GoUInt16));
	s[3682] = ((64 : GoUInt16));
	s[3683] = ((64 : GoUInt16));
	s[3684] = ((64 : GoUInt16));
	s[3685] = ((64 : GoUInt16));
	s[3686] = ((64 : GoUInt16));
	s[3687] = ((64 : GoUInt16));
	s[3688] = ((64 : GoUInt16));
	s[3689] = ((64 : GoUInt16));
	s[3690] = ((64 : GoUInt16));
	s[3691] = ((64 : GoUInt16));
	s[3692] = ((64 : GoUInt16));
	s[3693] = ((64 : GoUInt16));
	s[3694] = ((64 : GoUInt16));
	s[3695] = ((64 : GoUInt16));
	s[3696] = ((64 : GoUInt16));
	s[3697] = ((64 : GoUInt16));
	s[3698] = ((64 : GoUInt16));
	s[3699] = ((64 : GoUInt16));
	s[3700] = ((64 : GoUInt16));
	s[3701] = ((64 : GoUInt16));
	s[3702] = ((64 : GoUInt16));
	s[3703] = ((64 : GoUInt16));
	s[3704] = ((64 : GoUInt16));
	s[3705] = ((64 : GoUInt16));
	s[3706] = ((64 : GoUInt16));
	s[3707] = ((64 : GoUInt16));
	s[3708] = ((64 : GoUInt16));
	s[3709] = ((64 : GoUInt16));
	s[3710] = ((64 : GoUInt16));
	s[3711] = ((64 : GoUInt16));
	s[3712] = ((10 : GoUInt16));
	s[3713] = ((24 : GoUInt16));
	s[3714] = ((10705 : GoUInt16));
	s[3715] = ((24 : GoUInt16));
	s[3716] = ((24 : GoUInt16));
	s[3717] = ((8 : GoUInt16));
	s[3718] = ((8 : GoUInt16));
	s[3719] = ((8 : GoUInt16));
	s[3720] = ((24 : GoUInt16));
	s[3721] = ((24 : GoUInt16));
	s[3722] = ((24 : GoUInt16));
	s[3723] = ((24 : GoUInt16));
	s[3724] = ((24 : GoUInt16));
	s[3725] = ((24 : GoUInt16));
	s[3726] = ((24 : GoUInt16));
	s[3727] = ((24 : GoUInt16));
	s[3728] = ((24 : GoUInt16));
	s[3729] = ((24 : GoUInt16));
	s[3730] = ((24 : GoUInt16));
	s[3731] = ((24 : GoUInt16));
	s[3732] = ((24 : GoUInt16));
	s[3733] = ((24 : GoUInt16));
	s[3734] = ((24 : GoUInt16));
	s[3735] = ((24 : GoUInt16));
	s[3736] = ((24 : GoUInt16));
	s[3737] = ((24 : GoUInt16));
	s[3738] = ((24 : GoUInt16));
	s[3739] = ((24 : GoUInt16));
	s[3740] = ((24 : GoUInt16));
	s[3741] = ((24 : GoUInt16));
	s[3742] = ((24 : GoUInt16));
	s[3743] = ((24 : GoUInt16));
	s[3744] = ((24 : GoUInt16));
	s[3745] = ((24 : GoUInt16));
	s[3746] = ((24 : GoUInt16));
	s[3747] = ((24 : GoUInt16));
	s[3748] = ((24 : GoUInt16));
	s[3749] = ((24 : GoUInt16));
	s[3750] = ((24 : GoUInt16));
	s[3751] = ((24 : GoUInt16));
	s[3752] = ((24 : GoUInt16));
	s[3753] = ((24 : GoUInt16));
	s[3754] = ((13064 : GoUInt16));
	s[3755] = ((13064 : GoUInt16));
	s[3756] = ((13064 : GoUInt16));
	s[3757] = ((13064 : GoUInt16));
	s[3758] = ((12312 : GoUInt16));
	s[3759] = ((12312 : GoUInt16));
	s[3760] = ((24 : GoUInt16));
	s[3761] = ((24 : GoUInt16));
	s[3762] = ((24 : GoUInt16));
	s[3763] = ((24 : GoUInt16));
	s[3764] = ((24 : GoUInt16));
	s[3765] = ((24 : GoUInt16));
	s[3766] = ((57637 : GoUInt16));
	s[3767] = ((24 : GoUInt16));
	s[3768] = ((10709 : GoUInt16));
	s[3769] = ((10741 : GoUInt16));
	s[3770] = ((10773 : GoUInt16));
	s[3771] = ((24 : GoUInt16));
	s[3772] = ((8 : GoUInt16));
	s[3773] = ((24 : GoUInt16));
	s[3774] = ((24 : GoUInt16));
	s[3775] = ((24 : GoUInt16));
	s[3776] = ((11093 : GoUInt16));
	s[3777] = ((11125 : GoUInt16));
	s[3778] = ((11157 : GoUInt16));
	s[3779] = ((11189 : GoUInt16));
	s[3780] = ((11221 : GoUInt16));
	s[3781] = ((11253 : GoUInt16));
	s[3782] = ((11253 : GoUInt16));
	s[3783] = ((11253 : GoUInt16));
	s[3784] = ((11285 : GoUInt16));
	s[3785] = ((11285 : GoUInt16));
	s[3786] = ((11285 : GoUInt16));
	s[3787] = ((11285 : GoUInt16));
	s[3788] = ((11317 : GoUInt16));
	s[3789] = ((11317 : GoUInt16));
	s[3790] = ((11317 : GoUInt16));
	s[3791] = ((11349 : GoUInt16));
	s[3792] = ((11381 : GoUInt16));
	s[3793] = ((11381 : GoUInt16));
	s[3794] = ((10901 : GoUInt16));
	s[3795] = ((10901 : GoUInt16));
	s[3796] = ((11381 : GoUInt16));
	s[3797] = ((11381 : GoUInt16));
	s[3798] = ((11413 : GoUInt16));
	s[3799] = ((11413 : GoUInt16));
	s[3800] = ((11381 : GoUInt16));
	s[3801] = ((11381 : GoUInt16));
	s[3802] = ((10901 : GoUInt16));
	s[3803] = ((10901 : GoUInt16));
	s[3804] = ((11381 : GoUInt16));
	s[3805] = ((11381 : GoUInt16));
	s[3806] = ((11349 : GoUInt16));
	s[3807] = ((11349 : GoUInt16));
	s[3808] = ((11445 : GoUInt16));
	s[3809] = ((11445 : GoUInt16));
	s[3810] = ((11477 : GoUInt16));
	s[3811] = ((11477 : GoUInt16));
	s[3812] = ((64 : GoUInt16));
	s[3813] = ((11509 : GoUInt16));
	s[3814] = ((11541 : GoUInt16));
	s[3815] = ((11573 : GoUInt16));
	s[3816] = ((11573 : GoUInt16));
	s[3817] = ((11605 : GoUInt16));
	s[3818] = ((11637 : GoUInt16));
	s[3819] = ((11669 : GoUInt16));
	s[3820] = ((11701 : GoUInt16));
	s[3821] = ((11733 : GoUInt16));
	s[3822] = ((11765 : GoUInt16));
	s[3823] = ((11797 : GoUInt16));
	s[3824] = ((11829 : GoUInt16));
	s[3825] = ((11861 : GoUInt16));
	s[3826] = ((11861 : GoUInt16));
	s[3827] = ((11893 : GoUInt16));
	s[3828] = ((11925 : GoUInt16));
	s[3829] = ((11925 : GoUInt16));
	s[3830] = ((11957 : GoUInt16));
	s[3831] = ((11989 : GoUInt16));
	s[3832] = ((11893 : GoUInt16));
	s[3833] = ((12021 : GoUInt16));
	s[3834] = ((12053 : GoUInt16));
	s[3835] = ((12021 : GoUInt16));
	s[3836] = ((11893 : GoUInt16));
	s[3837] = ((12085 : GoUInt16));
	s[3838] = ((12117 : GoUInt16));
	s[3839] = ((12149 : GoUInt16));
	s[3840] = ((12181 : GoUInt16));
	s[3841] = ((12213 : GoUInt16));
	s[3842] = ((11541 : GoUInt16));
	s[3843] = ((11509 : GoUInt16));
	s[3844] = ((12245 : GoUInt16));
	s[3845] = ((12277 : GoUInt16));
	s[3846] = ((12309 : GoUInt16));
	s[3847] = ((12341 : GoUInt16));
	s[3848] = ((12373 : GoUInt16));
	s[3849] = ((12405 : GoUInt16));
	s[3850] = ((12437 : GoUInt16));
	s[3851] = ((12469 : GoUInt16));
	s[3852] = ((12501 : GoUInt16));
	s[3853] = ((12533 : GoUInt16));
	s[3854] = ((12565 : GoUInt16));
	s[3855] = ((64 : GoUInt16));
	s[3856] = ((24 : GoUInt16));
	s[3857] = ((24 : GoUInt16));
	s[3858] = ((12597 : GoUInt16));
	s[3859] = ((12629 : GoUInt16));
	s[3860] = ((12661 : GoUInt16));
	s[3861] = ((12693 : GoUInt16));
	s[3862] = ((12725 : GoUInt16));
	s[3863] = ((12757 : GoUInt16));
	s[3864] = ((12789 : GoUInt16));
	s[3865] = ((12821 : GoUInt16));
	s[3866] = ((12853 : GoUInt16));
	s[3867] = ((12885 : GoUInt16));
	s[3868] = ((12661 : GoUInt16));
	s[3869] = ((12917 : GoUInt16));
	s[3870] = ((12949 : GoUInt16));
	s[3871] = ((12981 : GoUInt16));
	s[3872] = ((8 : GoUInt16));
	s[3873] = ((8 : GoUInt16));
	s[3874] = ((8 : GoUInt16));
	s[3875] = ((8 : GoUInt16));
	s[3876] = ((8 : GoUInt16));
	s[3877] = ((8 : GoUInt16));
	s[3878] = ((8 : GoUInt16));
	s[3879] = ((8 : GoUInt16));
	s[3880] = ((8 : GoUInt16));
	s[3881] = ((8 : GoUInt16));
	s[3882] = ((8 : GoUInt16));
	s[3883] = ((8 : GoUInt16));
	s[3884] = ((8 : GoUInt16));
	s[3885] = ((8 : GoUInt16));
	s[3886] = ((8 : GoUInt16));
	s[3887] = ((8 : GoUInt16));
	s[3888] = ((8 : GoUInt16));
	s[3889] = ((8 : GoUInt16));
	s[3890] = ((8 : GoUInt16));
	s[3891] = ((8 : GoUInt16));
	s[3892] = ((8 : GoUInt16));
	s[3893] = ((8 : GoUInt16));
	s[3894] = ((8 : GoUInt16));
	s[3895] = ((8 : GoUInt16));
	s[3896] = ((8 : GoUInt16));
	s[3897] = ((8 : GoUInt16));
	s[3898] = ((8 : GoUInt16));
	s[3899] = ((8 : GoUInt16));
	s[3900] = ((8 : GoUInt16));
	s[3901] = ((8 : GoUInt16));
	s[3902] = ((8 : GoUInt16));
	s[3903] = ((8 : GoUInt16));
	s[3904] = ((13986 : GoUInt16));
	s[3905] = ((14034 : GoUInt16));
	s[3906] = ((14082 : GoUInt16));
	s[3907] = ((14130 : GoUInt16));
	s[3908] = ((13013 : GoUInt16));
	s[3909] = ((13045 : GoUInt16));
	s[3910] = ((13077 : GoUInt16));
	s[3911] = ((13109 : GoUInt16));
	s[3912] = ((24 : GoUInt16));
	s[3913] = ((24 : GoUInt16));
	s[3914] = ((24 : GoUInt16));
	s[3915] = ((24 : GoUInt16));
	s[3916] = ((24 : GoUInt16));
	s[3917] = ((24 : GoUInt16));
	s[3918] = ((24 : GoUInt16));
	s[3919] = ((24 : GoUInt16));
	s[3920] = ((13141 : GoUInt16));
	s[3921] = ((14177 : GoUInt16));
	s[3922] = ((14201 : GoUInt16));
	s[3923] = ((14225 : GoUInt16));
	s[3924] = ((14249 : GoUInt16));
	s[3925] = ((14273 : GoUInt16));
	s[3926] = ((14297 : GoUInt16));
	s[3927] = ((14321 : GoUInt16));
	s[3928] = ((14345 : GoUInt16));
	s[3929] = ((14369 : GoUInt16));
	s[3930] = ((14393 : GoUInt16));
	s[3931] = ((14417 : GoUInt16));
	s[3932] = ((14441 : GoUInt16));
	s[3933] = ((14465 : GoUInt16));
	s[3934] = ((14489 : GoUInt16));
	s[3935] = ((14513 : GoUInt16));
	s[3936] = ((13173 : GoUInt16));
	s[3937] = ((13205 : GoUInt16));
	s[3938] = ((13237 : GoUInt16));
	s[3939] = ((13269 : GoUInt16));
	s[3940] = ((13301 : GoUInt16));
	s[3941] = ((13301 : GoUInt16));
	s[3942] = ((13333 : GoUInt16));
	s[3943] = ((13365 : GoUInt16));
	s[3944] = ((13397 : GoUInt16));
	s[3945] = ((13429 : GoUInt16));
	s[3946] = ((13461 : GoUInt16));
	s[3947] = ((13493 : GoUInt16));
	s[3948] = ((13525 : GoUInt16));
	s[3949] = ((13557 : GoUInt16));
	s[3950] = ((13589 : GoUInt16));
	s[3951] = ((13621 : GoUInt16));
	s[3952] = ((13653 : GoUInt16));
	s[3953] = ((13685 : GoUInt16));
	s[3954] = ((13717 : GoUInt16));
	s[3955] = ((13749 : GoUInt16));
	s[3956] = ((13781 : GoUInt16));
	s[3957] = ((13813 : GoUInt16));
	s[3958] = ((13845 : GoUInt16));
	s[3959] = ((13877 : GoUInt16));
	s[3960] = ((13909 : GoUInt16));
	s[3961] = ((13941 : GoUInt16));
	s[3962] = ((13973 : GoUInt16));
	s[3963] = ((14005 : GoUInt16));
	s[3964] = ((14537 : GoUInt16));
	s[3965] = ((14593 : GoUInt16));
	s[3966] = ((14037 : GoUInt16));
	s[3967] = ((24 : GoUInt16));
	s[3968] = ((14069 : GoUInt16));
	s[3969] = ((14101 : GoUInt16));
	s[3970] = ((14133 : GoUInt16));
	s[3971] = ((14165 : GoUInt16));
	s[3972] = ((14197 : GoUInt16));
	s[3973] = ((14229 : GoUInt16));
	s[3974] = ((14261 : GoUInt16));
	s[3975] = ((14293 : GoUInt16));
	s[3976] = ((14325 : GoUInt16));
	s[3977] = ((14357 : GoUInt16));
	s[3978] = ((14389 : GoUInt16));
	s[3979] = ((14421 : GoUInt16));
	s[3980] = ((14453 : GoUInt16));
	s[3981] = ((14485 : GoUInt16));
	s[3982] = ((14517 : GoUInt16));
	s[3983] = ((14549 : GoUInt16));
	s[3984] = ((14581 : GoUInt16));
	s[3985] = ((14613 : GoUInt16));
	s[3986] = ((14645 : GoUInt16));
	s[3987] = ((14677 : GoUInt16));
	s[3988] = ((14709 : GoUInt16));
	s[3989] = ((14741 : GoUInt16));
	s[3990] = ((14773 : GoUInt16));
	s[3991] = ((14805 : GoUInt16));
	s[3992] = ((14837 : GoUInt16));
	s[3993] = ((14869 : GoUInt16));
	s[3994] = ((14901 : GoUInt16));
	s[3995] = ((14933 : GoUInt16));
	s[3996] = ((14965 : GoUInt16));
	s[3997] = ((14997 : GoUInt16));
	s[3998] = ((15029 : GoUInt16));
	s[3999] = ((15061 : GoUInt16));
	s[4000] = ((15093 : GoUInt16));
	s[4001] = ((15125 : GoUInt16));
	s[4002] = ((15157 : GoUInt16));
	s[4003] = ((15189 : GoUInt16));
	s[4004] = ((15221 : GoUInt16));
	s[4005] = ((15253 : GoUInt16));
	s[4006] = ((4757 : GoUInt16));
	s[4007] = ((15285 : GoUInt16));
	s[4008] = ((15317 : GoUInt16));
	s[4009] = ((15349 : GoUInt16));
	s[4010] = ((15381 : GoUInt16));
	s[4011] = ((15413 : GoUInt16));
	s[4012] = ((15445 : GoUInt16));
	s[4013] = ((15477 : GoUInt16));
	s[4014] = ((9141 : GoUInt16));
	s[4015] = ((15509 : GoUInt16));
	s[4016] = ((15541 : GoUInt16));
	s[4017] = ((14649 : GoUInt16));
	s[4018] = ((14673 : GoUInt16));
	s[4019] = ((14697 : GoUInt16));
	s[4020] = ((14721 : GoUInt16));
	s[4021] = ((14745 : GoUInt16));
	s[4022] = ((14769 : GoUInt16));
	s[4023] = ((14793 : GoUInt16));
	s[4024] = ((14817 : GoUInt16));
	s[4025] = ((14841 : GoUInt16));
	s[4026] = ((14865 : GoUInt16));
	s[4027] = ((14889 : GoUInt16));
	s[4028] = ((14913 : GoUInt16));
	s[4029] = ((14937 : GoUInt16));
	s[4030] = ((14961 : GoUInt16));
	s[4031] = ((14985 : GoUInt16));
	s[4032] = ((15009 : GoUInt16));
	s[4033] = ((15049 : GoUInt16));
	s[4034] = ((15089 : GoUInt16));
	s[4035] = ((15129 : GoUInt16));
	s[4036] = ((15169 : GoUInt16));
	s[4037] = ((15209 : GoUInt16));
	s[4038] = ((15249 : GoUInt16));
	s[4039] = ((15289 : GoUInt16));
	s[4040] = ((15329 : GoUInt16));
	s[4041] = ((15369 : GoUInt16));
	s[4042] = ((15417 : GoUInt16));
	s[4043] = ((15465 : GoUInt16));
	s[4044] = ((15513 : GoUInt16));
	s[4045] = ((15573 : GoUInt16));
	s[4046] = ((15537 : GoUInt16));
	s[4047] = ((15605 : GoUInt16));
	s[4048] = ((15637 : GoUInt16));
	s[4049] = ((15661 : GoUInt16));
	s[4050] = ((15685 : GoUInt16));
	s[4051] = ((15709 : GoUInt16));
	s[4052] = ((15733 : GoUInt16));
	s[4053] = ((15733 : GoUInt16));
	s[4054] = ((15709 : GoUInt16));
	s[4055] = ((15757 : GoUInt16));
	s[4056] = ((2005 : GoUInt16));
	s[4057] = ((15781 : GoUInt16));
	s[4058] = ((15805 : GoUInt16));
	s[4059] = ((15829 : GoUInt16));
	s[4060] = ((15853 : GoUInt16));
	s[4061] = ((15877 : GoUInt16));
	s[4062] = ((15901 : GoUInt16));
	s[4063] = ((15925 : GoUInt16));
	s[4064] = ((15949 : GoUInt16));
	s[4065] = ((15973 : GoUInt16));
	s[4066] = ((15997 : GoUInt16));
	s[4067] = ((16021 : GoUInt16));
	s[4068] = ((16045 : GoUInt16));
	s[4069] = ((16045 : GoUInt16));
	s[4070] = ((16069 : GoUInt16));
	s[4071] = ((16069 : GoUInt16));
	s[4072] = ((16093 : GoUInt16));
	s[4073] = ((16093 : GoUInt16));
	s[4074] = ((16117 : GoUInt16));
	s[4075] = ((16141 : GoUInt16));
	s[4076] = ((16165 : GoUInt16));
	s[4077] = ((16189 : GoUInt16));
	s[4078] = ((16213 : GoUInt16));
	s[4079] = ((16213 : GoUInt16));
	s[4080] = ((16237 : GoUInt16));
	s[4081] = ((16237 : GoUInt16));
	s[4082] = ((16237 : GoUInt16));
	s[4083] = ((16261 : GoUInt16));
	s[4084] = ((16285 : GoUInt16));
	s[4085] = ((16309 : GoUInt16));
	s[4086] = ((16333 : GoUInt16));
	s[4087] = ((16309 : GoUInt16));
	s[4088] = ((16357 : GoUInt16));
	s[4089] = ((16381 : GoUInt16));
	s[4090] = ((16261 : GoUInt16));
	s[4091] = ((16405 : GoUInt16));
	s[4092] = ((16429 : GoUInt16));
	s[4093] = ((16429 : GoUInt16));
	s[4094] = ((16429 : GoUInt16));
	s[4095] = ((15561 : GoUInt16));
	s[4096] = ((15617 : GoUInt16));
	s[4097] = ((15721 : GoUInt16));
	s[4098] = ((15825 : GoUInt16));
	s[4099] = ((15929 : GoUInt16));
	s[4100] = ((16009 : GoUInt16));
	s[4101] = ((16113 : GoUInt16));
	s[4102] = ((16193 : GoUInt16));
	s[4103] = ((16273 : GoUInt16));
	s[4104] = ((16401 : GoUInt16));
	s[4105] = ((16505 : GoUInt16));
	s[4106] = ((16585 : GoUInt16));
	s[4107] = ((16665 : GoUInt16));
	s[4108] = ((16745 : GoUInt16));
	s[4109] = ((16849 : GoUInt16));
	s[4110] = ((16953 : GoUInt16));
	s[4111] = ((17033 : GoUInt16));
	s[4112] = ((17113 : GoUInt16));
	s[4113] = ((17169 : GoUInt16));
	s[4114] = ((17249 : GoUInt16));
	s[4115] = ((17353 : GoUInt16));
	s[4116] = ((17457 : GoUInt16));
	s[4117] = ((17513 : GoUInt16));
	s[4118] = ((17641 : GoUInt16));
	s[4119] = ((17793 : GoUInt16));
	s[4120] = ((17921 : GoUInt16));
	s[4121] = ((18001 : GoUInt16));
	s[4122] = ((18129 : GoUInt16));
	s[4123] = ((18257 : GoUInt16));
	s[4124] = ((18361 : GoUInt16));
	s[4125] = ((18441 : GoUInt16));
	s[4126] = ((18521 : GoUInt16));
	s[4127] = ((18601 : GoUInt16));
	s[4128] = ((18705 : GoUInt16));
	s[4129] = ((18833 : GoUInt16));
	s[4130] = ((18937 : GoUInt16));
	s[4131] = ((19017 : GoUInt16));
	s[4132] = ((19097 : GoUInt16));
	s[4133] = ((19177 : GoUInt16));
	s[4134] = ((19233 : GoUInt16));
	s[4135] = ((19289 : GoUInt16));
	s[4136] = ((19345 : GoUInt16));
	s[4137] = ((19401 : GoUInt16));
	s[4138] = ((19481 : GoUInt16));
	s[4139] = ((19561 : GoUInt16));
	s[4140] = ((19689 : GoUInt16));
	s[4141] = ((19769 : GoUInt16));
	s[4142] = ((19873 : GoUInt16));
	s[4143] = ((20001 : GoUInt16));
	s[4144] = ((20081 : GoUInt16));
	s[4145] = ((20137 : GoUInt16));
	s[4146] = ((20193 : GoUInt16));
	s[4147] = ((20321 : GoUInt16));
	s[4148] = ((20425 : GoUInt16));
	s[4149] = ((20553 : GoUInt16));
	s[4150] = ((20633 : GoUInt16));
	s[4151] = ((20761 : GoUInt16));
	s[4152] = ((20817 : GoUInt16));
	s[4153] = ((20897 : GoUInt16));
	s[4154] = ((20977 : GoUInt16));
	s[4155] = ((21057 : GoUInt16));
	s[4156] = ((21137 : GoUInt16));
	s[4157] = ((21217 : GoUInt16));
	s[4158] = ((21321 : GoUInt16));
	s[4159] = ((21401 : GoUInt16));
	s[4160] = ((21457 : GoUInt16));
	s[4161] = ((21537 : GoUInt16));
	s[4162] = ((21617 : GoUInt16));
	s[4163] = ((21697 : GoUInt16));
	s[4164] = ((21801 : GoUInt16));
	s[4165] = ((21881 : GoUInt16));
	s[4166] = ((21961 : GoUInt16));
	s[4167] = ((22041 : GoUInt16));
	s[4168] = ((22169 : GoUInt16));
	s[4169] = ((22273 : GoUInt16));
	s[4170] = ((22329 : GoUInt16));
	s[4171] = ((22457 : GoUInt16));
	s[4172] = ((22513 : GoUInt16));
	s[4173] = ((22617 : GoUInt16));
	s[4174] = ((22721 : GoUInt16));
	s[4175] = ((22801 : GoUInt16));
	s[4176] = ((22881 : GoUInt16));
	s[4177] = ((22961 : GoUInt16));
	s[4178] = ((23065 : GoUInt16));
	s[4179] = ((23121 : GoUInt16));
	s[4180] = ((23201 : GoUInt16));
	s[4181] = ((23305 : GoUInt16));
	s[4182] = ((23361 : GoUInt16));
	s[4183] = ((23489 : GoUInt16));
	s[4184] = ((23569 : GoUInt16));
	s[4185] = ((23609 : GoUInt16));
	s[4186] = ((23649 : GoUInt16));
	s[4187] = ((23689 : GoUInt16));
	s[4188] = ((23729 : GoUInt16));
	s[4189] = ((23769 : GoUInt16));
	s[4190] = ((23809 : GoUInt16));
	s[4191] = ((23849 : GoUInt16));
	s[4192] = ((23889 : GoUInt16));
	s[4193] = ((23929 : GoUInt16));
	s[4194] = ((23969 : GoUInt16));
	s[4195] = ((24017 : GoUInt16));
	s[4196] = ((24065 : GoUInt16));
	s[4197] = ((24113 : GoUInt16));
	s[4198] = ((24161 : GoUInt16));
	s[4199] = ((24209 : GoUInt16));
	s[4200] = ((24257 : GoUInt16));
	s[4201] = ((24305 : GoUInt16));
	s[4202] = ((24353 : GoUInt16));
	s[4203] = ((24401 : GoUInt16));
	s[4204] = ((24449 : GoUInt16));
	s[4205] = ((24497 : GoUInt16));
	s[4206] = ((24545 : GoUInt16));
	s[4207] = ((24593 : GoUInt16));
	s[4208] = ((24641 : GoUInt16));
	s[4209] = ((16453 : GoUInt16));
	s[4210] = ((24689 : GoUInt16));
	s[4211] = ((24713 : GoUInt16));
	s[4212] = ((16485 : GoUInt16));
	s[4213] = ((24737 : GoUInt16));
	s[4214] = ((24761 : GoUInt16));
	s[4215] = ((24785 : GoUInt16));
	s[4216] = ((16517 : GoUInt16));
	s[4217] = ((16517 : GoUInt16));
	s[4218] = ((24809 : GoUInt16));
	s[4219] = ((24833 : GoUInt16));
	s[4220] = ((24889 : GoUInt16));
	s[4221] = ((24945 : GoUInt16));
	s[4222] = ((25001 : GoUInt16));
	s[4223] = ((25057 : GoUInt16));
	s[4224] = ((25161 : GoUInt16));
	s[4225] = ((25185 : GoUInt16));
	s[4226] = ((16549 : GoUInt16));
	s[4227] = ((25209 : GoUInt16));
	s[4228] = ((25233 : GoUInt16));
	s[4229] = ((25257 : GoUInt16));
	s[4230] = ((25281 : GoUInt16));
	s[4231] = ((25305 : GoUInt16));
	s[4232] = ((16581 : GoUInt16));
	s[4233] = ((25329 : GoUInt16));
	s[4234] = ((25369 : GoUInt16));
	s[4235] = ((25393 : GoUInt16));
	s[4236] = ((16613 : GoUInt16));
	s[4237] = ((16613 : GoUInt16));
	s[4238] = ((25417 : GoUInt16));
	s[4239] = ((25441 : GoUInt16));
	s[4240] = ((25465 : GoUInt16));
	s[4241] = ((16645 : GoUInt16));
	s[4242] = ((16677 : GoUInt16));
	s[4243] = ((16709 : GoUInt16));
	s[4244] = ((16741 : GoUInt16));
	s[4245] = ((16773 : GoUInt16));
	s[4246] = ((25489 : GoUInt16));
	s[4247] = ((25513 : GoUInt16));
	s[4248] = ((25537 : GoUInt16));
	s[4249] = ((25561 : GoUInt16));
	s[4250] = ((25585 : GoUInt16));
	s[4251] = ((16805 : GoUInt16));
	s[4252] = ((25609 : GoUInt16));
	s[4253] = ((25633 : GoUInt16));
	s[4254] = ((25657 : GoUInt16));
	s[4255] = ((16837 : GoUInt16));
	s[4256] = ((16869 : GoUInt16));
	s[4257] = ((25681 : GoUInt16));
	s[4258] = ((16901 : GoUInt16));
	s[4259] = ((16933 : GoUInt16));
	s[4260] = ((16965 : GoUInt16));
	s[4261] = ((25705 : GoUInt16));
	s[4262] = ((16997 : GoUInt16));
	s[4263] = ((25729 : GoUInt16));
	s[4264] = ((25777 : GoUInt16));
	s[4265] = ((25161 : GoUInt16));
	s[4266] = ((17029 : GoUInt16));
	s[4267] = ((17061 : GoUInt16));
	s[4268] = ((17093 : GoUInt16));
	s[4269] = ((17125 : GoUInt16));
	s[4270] = ((25833 : GoUInt16));
	s[4271] = ((25897 : GoUInt16));
	s[4272] = ((25969 : GoUInt16));
	s[4273] = ((25993 : GoUInt16));
	s[4274] = ((17157 : GoUInt16));
	s[4275] = ((26017 : GoUInt16));
	s[4276] = ((26041 : GoUInt16));
	s[4277] = ((26065 : GoUInt16));
	s[4278] = ((17189 : GoUInt16));
	s[4279] = ((26089 : GoUInt16));
	s[4280] = ((26113 : GoUInt16));
	s[4281] = ((26089 : GoUInt16));
	s[4282] = ((26137 : GoUInt16));
	s[4283] = ((26161 : GoUInt16));
	s[4284] = ((17221 : GoUInt16));
	s[4285] = ((26185 : GoUInt16));
	s[4286] = ((26209 : GoUInt16));
	s[4287] = ((26185 : GoUInt16));
	s[4288] = ((17253 : GoUInt16));
	s[4289] = ((17285 : GoUInt16));
	s[4290] = ((64 : GoUInt16));
	s[4291] = ((26233 : GoUInt16));
	s[4292] = ((26257 : GoUInt16));
	s[4293] = ((26281 : GoUInt16));
	s[4294] = ((26305 : GoUInt16));
	s[4295] = ((64 : GoUInt16));
	s[4296] = ((26361 : GoUInt16));
	s[4297] = ((26385 : GoUInt16));
	s[4298] = ((26409 : GoUInt16));
	s[4299] = ((26433 : GoUInt16));
	s[4300] = ((26457 : GoUInt16));
	s[4301] = ((26481 : GoUInt16));
	s[4302] = ((25657 : GoUInt16));
	s[4303] = ((26505 : GoUInt16));
	s[4304] = ((26529 : GoUInt16));
	s[4305] = ((26553 : GoUInt16));
	s[4306] = ((17317 : GoUInt16));
	s[4307] = ((26577 : GoUInt16));
	s[4308] = ((25281 : GoUInt16));
	s[4309] = ((17349 : GoUInt16));
	s[4310] = ((17381 : GoUInt16));
	s[4311] = ((26601 : GoUInt16));
	s[4312] = ((64 : GoUInt16));
	s[4313] = ((17413 : GoUInt16));
	s[4314] = ((26625 : GoUInt16));
	s[4315] = ((26649 : GoUInt16));
	s[4316] = ((26673 : GoUInt16));
	s[4317] = ((26697 : GoUInt16));
	s[4318] = ((26721 : GoUInt16));
	s[4319] = ((26769 : GoUInt16));
	s[4320] = ((26817 : GoUInt16));
	s[4321] = ((26857 : GoUInt16));
	s[4322] = ((26897 : GoUInt16));
	s[4323] = ((26937 : GoUInt16));
	s[4324] = ((26977 : GoUInt16));
	s[4325] = ((27017 : GoUInt16));
	s[4326] = ((27057 : GoUInt16));
	s[4327] = ((27097 : GoUInt16));
	s[4328] = ((27137 : GoUInt16));
	s[4329] = ((27177 : GoUInt16));
	s[4330] = ((27225 : GoUInt16));
	s[4331] = ((27273 : GoUInt16));
	s[4332] = ((27321 : GoUInt16));
	s[4333] = ((27369 : GoUInt16));
	s[4334] = ((27417 : GoUInt16));
	s[4335] = ((27465 : GoUInt16));
	s[4336] = ((27513 : GoUInt16));
	s[4337] = ((27561 : GoUInt16));
	s[4338] = ((27609 : GoUInt16));
	s[4339] = ((27657 : GoUInt16));
	s[4340] = ((27705 : GoUInt16));
	s[4341] = ((27753 : GoUInt16));
	s[4342] = ((27801 : GoUInt16));
	s[4343] = ((27849 : GoUInt16));
	s[4344] = ((27897 : GoUInt16));
	s[4345] = ((27945 : GoUInt16));
	s[4346] = ((27993 : GoUInt16));
	s[4347] = ((28041 : GoUInt16));
	s[4348] = ((28089 : GoUInt16));
	s[4349] = ((28137 : GoUInt16));
	s[4350] = ((28185 : GoUInt16));
	s[4351] = ((17445 : GoUInt16));
	s[4352] = ((57357 : GoUInt16));
	s[4353] = ((8 : GoUInt16));
	s[4354] = ((57357 : GoUInt16));
	s[4355] = ((8 : GoUInt16));
	s[4356] = ((57357 : GoUInt16));
	s[4357] = ((8 : GoUInt16));
	s[4358] = ((57357 : GoUInt16));
	s[4359] = ((8 : GoUInt16));
	s[4360] = ((57357 : GoUInt16));
	s[4361] = ((8 : GoUInt16));
	s[4362] = ((57357 : GoUInt16));
	s[4363] = ((8 : GoUInt16));
	s[4364] = ((57357 : GoUInt16));
	s[4365] = ((8 : GoUInt16));
	s[4366] = ((57357 : GoUInt16));
	s[4367] = ((8 : GoUInt16));
	s[4368] = ((57357 : GoUInt16));
	s[4369] = ((8 : GoUInt16));
	s[4370] = ((57357 : GoUInt16));
	s[4371] = ((8 : GoUInt16));
	s[4372] = ((57357 : GoUInt16));
	s[4373] = ((8 : GoUInt16));
	s[4374] = ((57357 : GoUInt16));
	s[4375] = ((8 : GoUInt16));
	s[4376] = ((57357 : GoUInt16));
	s[4377] = ((8 : GoUInt16));
	s[4378] = ((57357 : GoUInt16));
	s[4379] = ((8 : GoUInt16));
	s[4380] = ((57357 : GoUInt16));
	s[4381] = ((8 : GoUInt16));
	s[4382] = ((57357 : GoUInt16));
	s[4383] = ((8 : GoUInt16));
	s[4384] = ((57357 : GoUInt16));
	s[4385] = ((8 : GoUInt16));
	s[4386] = ((57357 : GoUInt16));
	s[4387] = ((8 : GoUInt16));
	s[4388] = ((57357 : GoUInt16));
	s[4389] = ((8 : GoUInt16));
	s[4390] = ((57357 : GoUInt16));
	s[4391] = ((8 : GoUInt16));
	s[4392] = ((57357 : GoUInt16));
	s[4393] = ((8 : GoUInt16));
	s[4394] = ((57357 : GoUInt16));
	s[4395] = ((8 : GoUInt16));
	s[4396] = ((57357 : GoUInt16));
	s[4397] = ((8 : GoUInt16));
	s[4398] = ((8 : GoUInt16));
	s[4399] = ((13064 : GoUInt16));
	s[4400] = ((13080 : GoUInt16));
	s[4401] = ((13080 : GoUInt16));
	s[4402] = ((13080 : GoUInt16));
	s[4403] = ((24 : GoUInt16));
	s[4404] = ((13064 : GoUInt16));
	s[4405] = ((13064 : GoUInt16));
	s[4406] = ((13064 : GoUInt16));
	s[4407] = ((13064 : GoUInt16));
	s[4408] = ((13064 : GoUInt16));
	s[4409] = ((13064 : GoUInt16));
	s[4410] = ((13064 : GoUInt16));
	s[4411] = ((13064 : GoUInt16));
	s[4412] = ((13064 : GoUInt16));
	s[4413] = ((13064 : GoUInt16));
	s[4414] = ((24 : GoUInt16));
	s[4415] = ((8 : GoUInt16));
	s[4416] = ((57357 : GoUInt16));
	s[4417] = ((8 : GoUInt16));
	s[4418] = ((57357 : GoUInt16));
	s[4419] = ((8 : GoUInt16));
	s[4420] = ((57357 : GoUInt16));
	s[4421] = ((8 : GoUInt16));
	s[4422] = ((57357 : GoUInt16));
	s[4423] = ((8 : GoUInt16));
	s[4424] = ((57357 : GoUInt16));
	s[4425] = ((8 : GoUInt16));
	s[4426] = ((57357 : GoUInt16));
	s[4427] = ((8 : GoUInt16));
	s[4428] = ((57357 : GoUInt16));
	s[4429] = ((8 : GoUInt16));
	s[4430] = ((57357 : GoUInt16));
	s[4431] = ((8 : GoUInt16));
	s[4432] = ((57357 : GoUInt16));
	s[4433] = ((8 : GoUInt16));
	s[4434] = ((57357 : GoUInt16));
	s[4435] = ((8 : GoUInt16));
	s[4436] = ((57357 : GoUInt16));
	s[4437] = ((8 : GoUInt16));
	s[4438] = ((57357 : GoUInt16));
	s[4439] = ((8 : GoUInt16));
	s[4440] = ((57357 : GoUInt16));
	s[4441] = ((8 : GoUInt16));
	s[4442] = ((57357 : GoUInt16));
	s[4443] = ((8 : GoUInt16));
	s[4444] = ((3745 : GoUInt16));
	s[4445] = ((28233 : GoUInt16));
	s[4446] = ((13064 : GoUInt16));
	s[4447] = ((13064 : GoUInt16));
	s[4448] = ((8 : GoUInt16));
	s[4449] = ((8 : GoUInt16));
	s[4450] = ((8 : GoUInt16));
	s[4451] = ((8 : GoUInt16));
	s[4452] = ((8 : GoUInt16));
	s[4453] = ((8 : GoUInt16));
	s[4454] = ((8 : GoUInt16));
	s[4455] = ((8 : GoUInt16));
	s[4456] = ((8 : GoUInt16));
	s[4457] = ((8 : GoUInt16));
	s[4458] = ((8 : GoUInt16));
	s[4459] = ((8 : GoUInt16));
	s[4460] = ((8 : GoUInt16));
	s[4461] = ((8 : GoUInt16));
	s[4462] = ((8 : GoUInt16));
	s[4463] = ((8 : GoUInt16));
	s[4464] = ((8 : GoUInt16));
	s[4465] = ((8 : GoUInt16));
	s[4466] = ((8 : GoUInt16));
	s[4467] = ((8 : GoUInt16));
	s[4468] = ((8 : GoUInt16));
	s[4469] = ((8 : GoUInt16));
	s[4470] = ((8 : GoUInt16));
	s[4471] = ((8 : GoUInt16));
	s[4472] = ((8 : GoUInt16));
	s[4473] = ((8 : GoUInt16));
	s[4474] = ((8 : GoUInt16));
	s[4475] = ((8 : GoUInt16));
	s[4476] = ((8 : GoUInt16));
	s[4477] = ((8 : GoUInt16));
	s[4478] = ((8 : GoUInt16));
	s[4479] = ((8 : GoUInt16));
	s[4480] = ((24 : GoUInt16));
	s[4481] = ((24 : GoUInt16));
	s[4482] = ((24 : GoUInt16));
	s[4483] = ((24 : GoUInt16));
	s[4484] = ((24 : GoUInt16));
	s[4485] = ((24 : GoUInt16));
	s[4486] = ((24 : GoUInt16));
	s[4487] = ((24 : GoUInt16));
	s[4488] = ((24 : GoUInt16));
	s[4489] = ((24 : GoUInt16));
	s[4490] = ((24 : GoUInt16));
	s[4491] = ((24 : GoUInt16));
	s[4492] = ((24 : GoUInt16));
	s[4493] = ((24 : GoUInt16));
	s[4494] = ((24 : GoUInt16));
	s[4495] = ((24 : GoUInt16));
	s[4496] = ((24 : GoUInt16));
	s[4497] = ((24 : GoUInt16));
	s[4498] = ((24 : GoUInt16));
	s[4499] = ((24 : GoUInt16));
	s[4500] = ((24 : GoUInt16));
	s[4501] = ((24 : GoUInt16));
	s[4502] = ((24 : GoUInt16));
	s[4503] = ((8 : GoUInt16));
	s[4504] = ((8 : GoUInt16));
	s[4505] = ((8 : GoUInt16));
	s[4506] = ((8 : GoUInt16));
	s[4507] = ((8 : GoUInt16));
	s[4508] = ((8 : GoUInt16));
	s[4509] = ((8 : GoUInt16));
	s[4510] = ((8 : GoUInt16));
	s[4511] = ((8 : GoUInt16));
	s[4512] = ((24 : GoUInt16));
	s[4513] = ((24 : GoUInt16));
	s[4514] = ((57357 : GoUInt16));
	s[4515] = ((8 : GoUInt16));
	s[4516] = ((57357 : GoUInt16));
	s[4517] = ((8 : GoUInt16));
	s[4518] = ((57357 : GoUInt16));
	s[4519] = ((8 : GoUInt16));
	s[4520] = ((57357 : GoUInt16));
	s[4521] = ((8 : GoUInt16));
	s[4522] = ((57357 : GoUInt16));
	s[4523] = ((8 : GoUInt16));
	s[4524] = ((57357 : GoUInt16));
	s[4525] = ((8 : GoUInt16));
	s[4526] = ((57357 : GoUInt16));
	s[4527] = ((8 : GoUInt16));
	s[4528] = ((8 : GoUInt16));
	s[4529] = ((8 : GoUInt16));
	s[4530] = ((57357 : GoUInt16));
	s[4531] = ((8 : GoUInt16));
	s[4532] = ((57357 : GoUInt16));
	s[4533] = ((8 : GoUInt16));
	s[4534] = ((57357 : GoUInt16));
	s[4535] = ((8 : GoUInt16));
	s[4536] = ((57357 : GoUInt16));
	s[4537] = ((8 : GoUInt16));
	s[4538] = ((57357 : GoUInt16));
	s[4539] = ((8 : GoUInt16));
	s[4540] = ((57357 : GoUInt16));
	s[4541] = ((8 : GoUInt16));
	s[4542] = ((57357 : GoUInt16));
	s[4543] = ((8 : GoUInt16));
	s[4544] = ((57357 : GoUInt16));
	s[4545] = ((8 : GoUInt16));
	s[4546] = ((57357 : GoUInt16));
	s[4547] = ((8 : GoUInt16));
	s[4548] = ((57357 : GoUInt16));
	s[4549] = ((8 : GoUInt16));
	s[4550] = ((57357 : GoUInt16));
	s[4551] = ((8 : GoUInt16));
	s[4552] = ((57357 : GoUInt16));
	s[4553] = ((8 : GoUInt16));
	s[4554] = ((57357 : GoUInt16));
	s[4555] = ((8 : GoUInt16));
	s[4556] = ((57357 : GoUInt16));
	s[4557] = ((8 : GoUInt16));
	s[4558] = ((57357 : GoUInt16));
	s[4559] = ((8 : GoUInt16));
	s[4560] = ((57357 : GoUInt16));
	s[4561] = ((8 : GoUInt16));
	s[4562] = ((57357 : GoUInt16));
	s[4563] = ((8 : GoUInt16));
	s[4564] = ((57357 : GoUInt16));
	s[4565] = ((8 : GoUInt16));
	s[4566] = ((57357 : GoUInt16));
	s[4567] = ((8 : GoUInt16));
	s[4568] = ((57357 : GoUInt16));
	s[4569] = ((8 : GoUInt16));
	s[4570] = ((57357 : GoUInt16));
	s[4571] = ((8 : GoUInt16));
	s[4572] = ((57357 : GoUInt16));
	s[4573] = ((8 : GoUInt16));
	s[4574] = ((57357 : GoUInt16));
	s[4575] = ((8 : GoUInt16));
	s[4576] = ((57357 : GoUInt16));
	s[4577] = ((8 : GoUInt16));
	s[4578] = ((57357 : GoUInt16));
	s[4579] = ((8 : GoUInt16));
	s[4580] = ((57357 : GoUInt16));
	s[4581] = ((8 : GoUInt16));
	s[4582] = ((57357 : GoUInt16));
	s[4583] = ((8 : GoUInt16));
	s[4584] = ((57357 : GoUInt16));
	s[4585] = ((8 : GoUInt16));
	s[4586] = ((57357 : GoUInt16));
	s[4587] = ((8 : GoUInt16));
	s[4588] = ((57357 : GoUInt16));
	s[4589] = ((8 : GoUInt16));
	s[4590] = ((57357 : GoUInt16));
	s[4591] = ((8 : GoUInt16));
	s[4592] = ((57597 : GoUInt16));
	s[4593] = ((8 : GoUInt16));
	s[4594] = ((8 : GoUInt16));
	s[4595] = ((8 : GoUInt16));
	s[4596] = ((8 : GoUInt16));
	s[4597] = ((8 : GoUInt16));
	s[4598] = ((8 : GoUInt16));
	s[4599] = ((8 : GoUInt16));
	s[4600] = ((8 : GoUInt16));
	s[4601] = ((57373 : GoUInt16));
	s[4602] = ((8 : GoUInt16));
	s[4603] = ((57405 : GoUInt16));
	s[4604] = ((8 : GoUInt16));
	s[4605] = ((17477 : GoUInt16));
	s[4606] = ((57357 : GoUInt16));
	s[4607] = ((8 : GoUInt16));
	s[4608] = ((57357 : GoUInt16));
	s[4609] = ((8 : GoUInt16));
	s[4610] = ((57357 : GoUInt16));
	s[4611] = ((8 : GoUInt16));
	s[4612] = ((57357 : GoUInt16));
	s[4613] = ((8 : GoUInt16));
	s[4614] = ((57357 : GoUInt16));
	s[4615] = ((8 : GoUInt16));
	s[4616] = ((8 : GoUInt16));
	s[4617] = ((24 : GoUInt16));
	s[4618] = ((24 : GoUInt16));
	s[4619] = ((57405 : GoUInt16));
	s[4620] = ((8 : GoUInt16));
	s[4621] = ((4569 : GoUInt16));
	s[4622] = ((8 : GoUInt16));
	s[4623] = ((8 : GoUInt16));
	s[4624] = ((57357 : GoUInt16));
	s[4625] = ((8 : GoUInt16));
	s[4626] = ((57357 : GoUInt16));
	s[4627] = ((8 : GoUInt16));
	s[4628] = ((8 : GoUInt16));
	s[4629] = ((8 : GoUInt16));
	s[4630] = ((57357 : GoUInt16));
	s[4631] = ((8 : GoUInt16));
	s[4632] = ((57357 : GoUInt16));
	s[4633] = ((8 : GoUInt16));
	s[4634] = ((57357 : GoUInt16));
	s[4635] = ((8 : GoUInt16));
	s[4636] = ((57357 : GoUInt16));
	s[4637] = ((8 : GoUInt16));
	s[4638] = ((57357 : GoUInt16));
	s[4639] = ((8 : GoUInt16));
	s[4640] = ((57357 : GoUInt16));
	s[4641] = ((8 : GoUInt16));
	s[4642] = ((57357 : GoUInt16));
	s[4643] = ((8 : GoUInt16));
	s[4644] = ((57357 : GoUInt16));
	s[4645] = ((8 : GoUInt16));
	s[4646] = ((57357 : GoUInt16));
	s[4647] = ((8 : GoUInt16));
	s[4648] = ((57357 : GoUInt16));
	s[4649] = ((8 : GoUInt16));
	s[4650] = ((28257 : GoUInt16));
	s[4651] = ((4137 : GoUInt16));
	s[4652] = ((4545 : GoUInt16));
	s[4653] = ((28281 : GoUInt16));
	s[4654] = ((4641 : GoUInt16));
	s[4655] = ((8 : GoUInt16));
	s[4656] = ((28305 : GoUInt16));
	s[4657] = ((28329 : GoUInt16));
	s[4658] = ((4665 : GoUInt16));
	s[4659] = ((17509 : GoUInt16));
	s[4660] = ((57357 : GoUInt16));
	s[4661] = ((8 : GoUInt16));
	s[4662] = ((57357 : GoUInt16));
	s[4663] = ((8 : GoUInt16));
	s[4664] = ((57357 : GoUInt16));
	s[4665] = ((8 : GoUInt16));
	s[4666] = ((57357 : GoUInt16));
	s[4667] = ((8 : GoUInt16));
	s[4668] = ((57357 : GoUInt16));
	s[4669] = ((8 : GoUInt16));
	s[4670] = ((57357 : GoUInt16));
	s[4671] = ((8 : GoUInt16));
	s[4672] = ((25869 : GoUInt16));
	s[4673] = ((25901 : GoUInt16));
	s[4674] = ((25933 : GoUInt16));
	s[4675] = ((25965 : GoUInt16));
	s[4676] = ((25997 : GoUInt16));
	s[4677] = ((26029 : GoUInt16));
	s[4678] = ((26061 : GoUInt16));
	s[4679] = ((26093 : GoUInt16));
	s[4680] = ((26125 : GoUInt16));
	s[4681] = ((26157 : GoUInt16));
	s[4682] = ((26189 : GoUInt16));
	s[4683] = ((26221 : GoUInt16));
	s[4684] = ((26253 : GoUInt16));
	s[4685] = ((26285 : GoUInt16));
	s[4686] = ((8 : GoUInt16));
	s[4687] = ((8 : GoUInt16));
	s[4688] = ((26317 : GoUInt16));
	s[4689] = ((8 : GoUInt16));
	s[4690] = ((26349 : GoUInt16));
	s[4691] = ((8 : GoUInt16));
	s[4692] = ((8 : GoUInt16));
	s[4693] = ((26381 : GoUInt16));
	s[4694] = ((26413 : GoUInt16));
	s[4695] = ((26445 : GoUInt16));
	s[4696] = ((26477 : GoUInt16));
	s[4697] = ((26509 : GoUInt16));
	s[4698] = ((26541 : GoUInt16));
	s[4699] = ((26573 : GoUInt16));
	s[4700] = ((26605 : GoUInt16));
	s[4701] = ((26637 : GoUInt16));
	s[4702] = ((26669 : GoUInt16));
	s[4703] = ((8 : GoUInt16));
	s[4704] = ((26701 : GoUInt16));
	s[4705] = ((8 : GoUInt16));
	s[4706] = ((26733 : GoUInt16));
	s[4707] = ((8 : GoUInt16));
	s[4708] = ((8 : GoUInt16));
	s[4709] = ((26765 : GoUInt16));
	s[4710] = ((26797 : GoUInt16));
	s[4711] = ((8 : GoUInt16));
	s[4712] = ((8 : GoUInt16));
	s[4713] = ((8 : GoUInt16));
	s[4714] = ((26829 : GoUInt16));
	s[4715] = ((26861 : GoUInt16));
	s[4716] = ((26893 : GoUInt16));
	s[4717] = ((26925 : GoUInt16));
	s[4718] = ((26957 : GoUInt16));
	s[4719] = ((26989 : GoUInt16));
	s[4720] = ((27021 : GoUInt16));
	s[4721] = ((27053 : GoUInt16));
	s[4722] = ((27085 : GoUInt16));
	s[4723] = ((27117 : GoUInt16));
	s[4724] = ((27149 : GoUInt16));
	s[4725] = ((27181 : GoUInt16));
	s[4726] = ((27213 : GoUInt16));
	s[4727] = ((27245 : GoUInt16));
	s[4728] = ((27277 : GoUInt16));
	s[4729] = ((27309 : GoUInt16));
	s[4730] = ((27341 : GoUInt16));
	s[4731] = ((27373 : GoUInt16));
	s[4732] = ((27405 : GoUInt16));
	s[4733] = ((27437 : GoUInt16));
	s[4734] = ((27469 : GoUInt16));
	s[4735] = ((27501 : GoUInt16));
	s[4736] = ((31437 : GoUInt16));
	s[4737] = ((31469 : GoUInt16));
	s[4738] = ((31501 : GoUInt16));
	s[4739] = ((31533 : GoUInt16));
	s[4740] = ((31565 : GoUInt16));
	s[4741] = ((31597 : GoUInt16));
	s[4742] = ((31629 : GoUInt16));
	s[4743] = ((31661 : GoUInt16));
	s[4744] = ((31693 : GoUInt16));
	s[4745] = ((31725 : GoUInt16));
	s[4746] = ((31757 : GoUInt16));
	s[4747] = ((31789 : GoUInt16));
	s[4748] = ((31821 : GoUInt16));
	s[4749] = ((31853 : GoUInt16));
	s[4750] = ((31885 : GoUInt16));
	s[4751] = ((28441 : GoUInt16));
	s[4752] = ((28481 : GoUInt16));
	s[4753] = ((28521 : GoUInt16));
	s[4754] = ((31917 : GoUInt16));
	s[4755] = ((31949 : GoUInt16));
	s[4756] = ((31981 : GoUInt16));
	s[4757] = ((28561 : GoUInt16));
	s[4758] = ((28601 : GoUInt16));
	s[4759] = ((28641 : GoUInt16));
	s[4760] = ((32013 : GoUInt16));
	s[4761] = ((32045 : GoUInt16));
	s[4762] = ((64 : GoUInt16));
	s[4763] = ((64 : GoUInt16));
	s[4764] = ((64 : GoUInt16));
	s[4765] = ((64 : GoUInt16));
	s[4766] = ((64 : GoUInt16));
	s[4767] = ((64 : GoUInt16));
	s[4768] = ((64 : GoUInt16));
	s[4769] = ((64 : GoUInt16));
	s[4770] = ((64 : GoUInt16));
	s[4771] = ((64 : GoUInt16));
	s[4772] = ((64 : GoUInt16));
	s[4773] = ((64 : GoUInt16));
	s[4774] = ((64 : GoUInt16));
	s[4775] = ((64 : GoUInt16));
	s[4776] = ((64 : GoUInt16));
	s[4777] = ((64 : GoUInt16));
	s[4778] = ((64 : GoUInt16));
	s[4779] = ((64 : GoUInt16));
	s[4780] = ((64 : GoUInt16));
	s[4781] = ((64 : GoUInt16));
	s[4782] = ((64 : GoUInt16));
	s[4783] = ((64 : GoUInt16));
	s[4784] = ((64 : GoUInt16));
	s[4785] = ((64 : GoUInt16));
	s[4786] = ((64 : GoUInt16));
	s[4787] = ((64 : GoUInt16));
	s[4788] = ((64 : GoUInt16));
	s[4789] = ((64 : GoUInt16));
	s[4790] = ((64 : GoUInt16));
	s[4791] = ((64 : GoUInt16));
	s[4792] = ((64 : GoUInt16));
	s[4793] = ((64 : GoUInt16));
	s[4794] = ((64 : GoUInt16));
	s[4795] = ((64 : GoUInt16));
	s[4796] = ((64 : GoUInt16));
	s[4797] = ((64 : GoUInt16));
	s[4798] = ((64 : GoUInt16));
	s[4799] = ((64 : GoUInt16));
	s[4800] = ((28681 : GoUInt16));
	s[4801] = ((28705 : GoUInt16));
	s[4802] = ((28729 : GoUInt16));
	s[4803] = ((32077 : GoUInt16));
	s[4804] = ((32109 : GoUInt16));
	s[4805] = ((28753 : GoUInt16));
	s[4806] = ((28753 : GoUInt16));
	s[4807] = ((64 : GoUInt16));
	s[4808] = ((64 : GoUInt16));
	s[4809] = ((64 : GoUInt16));
	s[4810] = ((64 : GoUInt16));
	s[4811] = ((64 : GoUInt16));
	s[4812] = ((64 : GoUInt16));
	s[4813] = ((64 : GoUInt16));
	s[4814] = ((64 : GoUInt16));
	s[4815] = ((64 : GoUInt16));
	s[4816] = ((64 : GoUInt16));
	s[4817] = ((64 : GoUInt16));
	s[4818] = ((64 : GoUInt16));
	s[4819] = ((28777 : GoUInt16));
	s[4820] = ((28817 : GoUInt16));
	s[4821] = ((28857 : GoUInt16));
	s[4822] = ((28897 : GoUInt16));
	s[4823] = ((28937 : GoUInt16));
	s[4824] = ((64 : GoUInt16));
	s[4825] = ((64 : GoUInt16));
	s[4826] = ((64 : GoUInt16));
	s[4827] = ((64 : GoUInt16));
	s[4828] = ((64 : GoUInt16));
	s[4829] = ((28977 : GoUInt16));
	s[4830] = ((13064 : GoUInt16));
	s[4831] = ((29017 : GoUInt16));
	s[4832] = ((29057 : GoUInt16));
	s[4833] = ((8361 : GoUInt16));
	s[4834] = ((8433 : GoUInt16));
	s[4835] = ((29081 : GoUInt16));
	s[4836] = ((29105 : GoUInt16));
	s[4837] = ((29129 : GoUInt16));
	s[4838] = ((29153 : GoUInt16));
	s[4839] = ((29177 : GoUInt16));
	s[4840] = ((29201 : GoUInt16));
	s[4841] = ((8114 : GoUInt16));
	s[4842] = ((29225 : GoUInt16));
	s[4843] = ((29265 : GoUInt16));
	s[4844] = ((29305 : GoUInt16));
	s[4845] = ((29361 : GoUInt16));
	s[4846] = ((29417 : GoUInt16));
	s[4847] = ((29457 : GoUInt16));
	s[4848] = ((29497 : GoUInt16));
	s[4849] = ((29537 : GoUInt16));
	s[4850] = ((29577 : GoUInt16));
	s[4851] = ((29617 : GoUInt16));
	s[4852] = ((29657 : GoUInt16));
	s[4853] = ((29697 : GoUInt16));
	s[4854] = ((29737 : GoUInt16));
	s[4855] = ((64 : GoUInt16));
	s[4856] = ((29777 : GoUInt16));
	s[4857] = ((29817 : GoUInt16));
	s[4858] = ((29857 : GoUInt16));
	s[4859] = ((29897 : GoUInt16));
	s[4860] = ((29937 : GoUInt16));
	s[4861] = ((64 : GoUInt16));
	s[4862] = ((29977 : GoUInt16));
	s[4863] = ((64 : GoUInt16));
	s[4864] = ((30017 : GoUInt16));
	s[4865] = ((30057 : GoUInt16));
	s[4866] = ((64 : GoUInt16));
	s[4867] = ((30097 : GoUInt16));
	s[4868] = ((30137 : GoUInt16));
	s[4869] = ((64 : GoUInt16));
	s[4870] = ((30177 : GoUInt16));
	s[4871] = ((30217 : GoUInt16));
	s[4872] = ((30257 : GoUInt16));
	s[4873] = ((30297 : GoUInt16));
	s[4874] = ((30337 : GoUInt16));
	s[4875] = ((30377 : GoUInt16));
	s[4876] = ((30417 : GoUInt16));
	s[4877] = ((30457 : GoUInt16));
	s[4878] = ((30497 : GoUInt16));
	s[4879] = ((30537 : GoUInt16));
	s[4880] = ((30577 : GoUInt16));
	s[4881] = ((30577 : GoUInt16));
	s[4882] = ((30601 : GoUInt16));
	s[4883] = ((30601 : GoUInt16));
	s[4884] = ((30601 : GoUInt16));
	s[4885] = ((30601 : GoUInt16));
	s[4886] = ((30625 : GoUInt16));
	s[4887] = ((30625 : GoUInt16));
	s[4888] = ((30625 : GoUInt16));
	s[4889] = ((30625 : GoUInt16));
	s[4890] = ((30649 : GoUInt16));
	s[4891] = ((30649 : GoUInt16));
	s[4892] = ((30649 : GoUInt16));
	s[4893] = ((30649 : GoUInt16));
	s[4894] = ((30673 : GoUInt16));
	s[4895] = ((30673 : GoUInt16));
	s[4896] = ((30673 : GoUInt16));
	s[4897] = ((30673 : GoUInt16));
	s[4898] = ((30697 : GoUInt16));
	s[4899] = ((30697 : GoUInt16));
	s[4900] = ((30697 : GoUInt16));
	s[4901] = ((30697 : GoUInt16));
	s[4902] = ((30721 : GoUInt16));
	s[4903] = ((30721 : GoUInt16));
	s[4904] = ((30721 : GoUInt16));
	s[4905] = ((30721 : GoUInt16));
	s[4906] = ((30745 : GoUInt16));
	s[4907] = ((30745 : GoUInt16));
	s[4908] = ((30745 : GoUInt16));
	s[4909] = ((30745 : GoUInt16));
	s[4910] = ((30769 : GoUInt16));
	s[4911] = ((30769 : GoUInt16));
	s[4912] = ((30769 : GoUInt16));
	s[4913] = ((30769 : GoUInt16));
	s[4914] = ((30793 : GoUInt16));
	s[4915] = ((30793 : GoUInt16));
	s[4916] = ((30793 : GoUInt16));
	s[4917] = ((30793 : GoUInt16));
	s[4918] = ((30817 : GoUInt16));
	s[4919] = ((30817 : GoUInt16));
	s[4920] = ((30817 : GoUInt16));
	s[4921] = ((30817 : GoUInt16));
	s[4922] = ((30841 : GoUInt16));
	s[4923] = ((30841 : GoUInt16));
	s[4924] = ((30841 : GoUInt16));
	s[4925] = ((30841 : GoUInt16));
	s[4926] = ((30865 : GoUInt16));
	s[4927] = ((30865 : GoUInt16));
	s[4928] = ((30865 : GoUInt16));
	s[4929] = ((30865 : GoUInt16));
	s[4930] = ((30889 : GoUInt16));
	s[4931] = ((30889 : GoUInt16));
	s[4932] = ((30913 : GoUInt16));
	s[4933] = ((30913 : GoUInt16));
	s[4934] = ((30937 : GoUInt16));
	s[4935] = ((30937 : GoUInt16));
	s[4936] = ((30961 : GoUInt16));
	s[4937] = ((30961 : GoUInt16));
	s[4938] = ((30985 : GoUInt16));
	s[4939] = ((30985 : GoUInt16));
	s[4940] = ((31009 : GoUInt16));
	s[4941] = ((31009 : GoUInt16));
	s[4942] = ((31033 : GoUInt16));
	s[4943] = ((31033 : GoUInt16));
	s[4944] = ((31033 : GoUInt16));
	s[4945] = ((31033 : GoUInt16));
	s[4946] = ((31057 : GoUInt16));
	s[4947] = ((31057 : GoUInt16));
	s[4948] = ((31057 : GoUInt16));
	s[4949] = ((31057 : GoUInt16));
	s[4950] = ((31081 : GoUInt16));
	s[4951] = ((31081 : GoUInt16));
	s[4952] = ((31081 : GoUInt16));
	s[4953] = ((31081 : GoUInt16));
	s[4954] = ((31105 : GoUInt16));
	s[4955] = ((31105 : GoUInt16));
	s[4956] = ((31105 : GoUInt16));
	s[4957] = ((31105 : GoUInt16));
	s[4958] = ((31129 : GoUInt16));
	s[4959] = ((31129 : GoUInt16));
	s[4960] = ((31153 : GoUInt16));
	s[4961] = ((31153 : GoUInt16));
	s[4962] = ((31153 : GoUInt16));
	s[4963] = ((31153 : GoUInt16));
	s[4964] = ((31177 : GoUInt16));
	s[4965] = ((31177 : GoUInt16));
	s[4966] = ((31201 : GoUInt16));
	s[4967] = ((31201 : GoUInt16));
	s[4968] = ((31201 : GoUInt16));
	s[4969] = ((31201 : GoUInt16));
	s[4970] = ((31225 : GoUInt16));
	s[4971] = ((31225 : GoUInt16));
	s[4972] = ((31225 : GoUInt16));
	s[4973] = ((31225 : GoUInt16));
	s[4974] = ((31249 : GoUInt16));
	s[4975] = ((31249 : GoUInt16));
	s[4976] = ((31273 : GoUInt16));
	s[4977] = ((31273 : GoUInt16));
	s[4978] = ((2072 : GoUInt16));
	s[4979] = ((2072 : GoUInt16));
	s[4980] = ((2072 : GoUInt16));
	s[4981] = ((2072 : GoUInt16));
	s[4982] = ((2072 : GoUInt16));
	s[4983] = ((2072 : GoUInt16));
	s[4984] = ((2072 : GoUInt16));
	s[4985] = ((2072 : GoUInt16));
	s[4986] = ((2072 : GoUInt16));
	s[4987] = ((2072 : GoUInt16));
	s[4988] = ((2072 : GoUInt16));
	s[4989] = ((2072 : GoUInt16));
	s[4990] = ((2072 : GoUInt16));
	s[4991] = ((2072 : GoUInt16));
	s[4992] = ((2072 : GoUInt16));
	s[4993] = ((2072 : GoUInt16));
	s[4994] = ((64 : GoUInt16));
	s[4995] = ((64 : GoUInt16));
	s[4996] = ((64 : GoUInt16));
	s[4997] = ((64 : GoUInt16));
	s[4998] = ((64 : GoUInt16));
	s[4999] = ((64 : GoUInt16));
	s[5000] = ((64 : GoUInt16));
	s[5001] = ((64 : GoUInt16));
	s[5002] = ((64 : GoUInt16));
	s[5003] = ((64 : GoUInt16));
	s[5004] = ((64 : GoUInt16));
	s[5005] = ((64 : GoUInt16));
	s[5006] = ((64 : GoUInt16));
	s[5007] = ((64 : GoUInt16));
	s[5008] = ((64 : GoUInt16));
	s[5009] = ((64 : GoUInt16));
	s[5010] = ((64 : GoUInt16));
	s[5011] = ((31297 : GoUInt16));
	s[5012] = ((31297 : GoUInt16));
	s[5013] = ((31297 : GoUInt16));
	s[5014] = ((31297 : GoUInt16));
	s[5015] = ((31321 : GoUInt16));
	s[5016] = ((31321 : GoUInt16));
	s[5017] = ((31345 : GoUInt16));
	s[5018] = ((31345 : GoUInt16));
	s[5019] = ((31369 : GoUInt16));
	s[5020] = ((31369 : GoUInt16));
	s[5021] = ((1145 : GoUInt16));
	s[5022] = ((31393 : GoUInt16));
	s[5023] = ((31393 : GoUInt16));
	s[5024] = ((31417 : GoUInt16));
	s[5025] = ((31417 : GoUInt16));
	s[5026] = ((31441 : GoUInt16));
	s[5027] = ((31441 : GoUInt16));
	s[5028] = ((31465 : GoUInt16));
	s[5029] = ((31465 : GoUInt16));
	s[5030] = ((31465 : GoUInt16));
	s[5031] = ((31465 : GoUInt16));
	s[5032] = ((31489 : GoUInt16));
	s[5033] = ((31489 : GoUInt16));
	s[5034] = ((31513 : GoUInt16));
	s[5035] = ((31513 : GoUInt16));
	s[5036] = ((31553 : GoUInt16));
	s[5037] = ((31553 : GoUInt16));
	s[5038] = ((31593 : GoUInt16));
	s[5039] = ((31593 : GoUInt16));
	s[5040] = ((31633 : GoUInt16));
	s[5041] = ((31633 : GoUInt16));
	s[5042] = ((31673 : GoUInt16));
	s[5043] = ((31673 : GoUInt16));
	s[5044] = ((31713 : GoUInt16));
	s[5045] = ((31713 : GoUInt16));
	s[5046] = ((31753 : GoUInt16));
	s[5047] = ((31753 : GoUInt16));
	s[5048] = ((31753 : GoUInt16));
	s[5049] = ((31793 : GoUInt16));
	s[5050] = ((31793 : GoUInt16));
	s[5051] = ((31793 : GoUInt16));
	s[5052] = ((31833 : GoUInt16));
	s[5053] = ((31833 : GoUInt16));
	s[5054] = ((31833 : GoUInt16));
	s[5055] = ((31833 : GoUInt16));
	s[5056] = ((34377 : GoUInt16));
	s[5057] = ((34417 : GoUInt16));
	s[5058] = ((34457 : GoUInt16));
	s[5059] = ((34497 : GoUInt16));
	s[5060] = ((34537 : GoUInt16));
	s[5061] = ((34577 : GoUInt16));
	s[5062] = ((34617 : GoUInt16));
	s[5063] = ((34657 : GoUInt16));
	s[5064] = ((34697 : GoUInt16));
	s[5065] = ((34737 : GoUInt16));
	s[5066] = ((34777 : GoUInt16));
	s[5067] = ((34817 : GoUInt16));
	s[5068] = ((34857 : GoUInt16));
	s[5069] = ((34897 : GoUInt16));
	s[5070] = ((34937 : GoUInt16));
	s[5071] = ((34977 : GoUInt16));
	s[5072] = ((35017 : GoUInt16));
	s[5073] = ((35057 : GoUInt16));
	s[5074] = ((35097 : GoUInt16));
	s[5075] = ((35137 : GoUInt16));
	s[5076] = ((35177 : GoUInt16));
	s[5077] = ((35217 : GoUInt16));
	s[5078] = ((35257 : GoUInt16));
	s[5079] = ((35297 : GoUInt16));
	s[5080] = ((35337 : GoUInt16));
	s[5081] = ((35377 : GoUInt16));
	s[5082] = ((35417 : GoUInt16));
	s[5083] = ((35457 : GoUInt16));
	s[5084] = ((35497 : GoUInt16));
	s[5085] = ((35537 : GoUInt16));
	s[5086] = ((35578 : GoUInt16));
	s[5087] = ((35626 : GoUInt16));
	s[5088] = ((35674 : GoUInt16));
	s[5089] = ((35722 : GoUInt16));
	s[5090] = ((35770 : GoUInt16));
	s[5091] = ((35818 : GoUInt16));
	s[5092] = ((35865 : GoUInt16));
	s[5093] = ((35905 : GoUInt16));
	s[5094] = ((31937 : GoUInt16));
	s[5095] = ((35945 : GoUInt16));
	s[5096] = ((31793 : GoUInt16));
	s[5097] = ((31977 : GoUInt16));
	s[5098] = ((35985 : GoUInt16));
	s[5099] = ((36025 : GoUInt16));
	s[5100] = ((32137 : GoUInt16));
	s[5101] = ((36065 : GoUInt16));
	s[5102] = ((32177 : GoUInt16));
	s[5103] = ((32217 : GoUInt16));
	s[5104] = ((36105 : GoUInt16));
	s[5105] = ((36145 : GoUInt16));
	s[5106] = ((32377 : GoUInt16));
	s[5107] = ((36185 : GoUInt16));
	s[5108] = ((32417 : GoUInt16));
	s[5109] = ((32457 : GoUInt16));
	s[5110] = ((36225 : GoUInt16));
	s[5111] = ((36265 : GoUInt16));
	s[5112] = ((32537 : GoUInt16));
	s[5113] = ((36305 : GoUInt16));
	s[5114] = ((32577 : GoUInt16));
	s[5115] = ((32617 : GoUInt16));
	s[5116] = ((33777 : GoUInt16));
	s[5117] = ((33817 : GoUInt16));
	s[5118] = ((33937 : GoUInt16));
	s[5119] = ((33977 : GoUInt16));
	s[5120] = ((34017 : GoUInt16));
	s[5121] = ((34177 : GoUInt16));
	s[5122] = ((34217 : GoUInt16));
	s[5123] = ((34257 : GoUInt16));
	s[5124] = ((34297 : GoUInt16));
	s[5125] = ((34457 : GoUInt16));
	s[5126] = ((34497 : GoUInt16));
	s[5127] = ((34537 : GoUInt16));
	s[5128] = ((36345 : GoUInt16));
	s[5129] = ((34697 : GoUInt16));
	s[5130] = ((36385 : GoUInt16));
	s[5131] = ((36425 : GoUInt16));
	s[5132] = ((34937 : GoUInt16));
	s[5133] = ((36465 : GoUInt16));
	s[5134] = ((34977 : GoUInt16));
	s[5135] = ((35017 : GoUInt16));
	s[5136] = ((35537 : GoUInt16));
	s[5137] = ((36505 : GoUInt16));
	s[5138] = ((36545 : GoUInt16));
	s[5139] = ((35337 : GoUInt16));
	s[5140] = ((36585 : GoUInt16));
	s[5141] = ((35377 : GoUInt16));
	s[5142] = ((35417 : GoUInt16));
	s[5143] = ((31857 : GoUInt16));
	s[5144] = ((31897 : GoUInt16));
	s[5145] = ((36625 : GoUInt16));
	s[5146] = ((31937 : GoUInt16));
	s[5147] = ((36665 : GoUInt16));
	s[5148] = ((32017 : GoUInt16));
	s[5149] = ((32057 : GoUInt16));
	s[5150] = ((32097 : GoUInt16));
	s[5151] = ((32137 : GoUInt16));
	s[5152] = ((36705 : GoUInt16));
	s[5153] = ((32257 : GoUInt16));
	s[5154] = ((32297 : GoUInt16));
	s[5155] = ((32337 : GoUInt16));
	s[5156] = ((32377 : GoUInt16));
	s[5157] = ((36745 : GoUInt16));
	s[5158] = ((32537 : GoUInt16));
	s[5159] = ((32657 : GoUInt16));
	s[5160] = ((32697 : GoUInt16));
	s[5161] = ((32737 : GoUInt16));
	s[5162] = ((32777 : GoUInt16));
	s[5163] = ((32817 : GoUInt16));
	s[5164] = ((32897 : GoUInt16));
	s[5165] = ((32937 : GoUInt16));
	s[5166] = ((32977 : GoUInt16));
	s[5167] = ((33017 : GoUInt16));
	s[5168] = ((33057 : GoUInt16));
	s[5169] = ((33097 : GoUInt16));
	s[5170] = ((36785 : GoUInt16));
	s[5171] = ((33137 : GoUInt16));
	s[5172] = ((33177 : GoUInt16));
	s[5173] = ((33217 : GoUInt16));
	s[5174] = ((33257 : GoUInt16));
	s[5175] = ((33297 : GoUInt16));
	s[5176] = ((33337 : GoUInt16));
	s[5177] = ((33417 : GoUInt16));
	s[5178] = ((33457 : GoUInt16));
	s[5179] = ((33497 : GoUInt16));
	s[5180] = ((33537 : GoUInt16));
	s[5181] = ((33577 : GoUInt16));
	s[5182] = ((33617 : GoUInt16));
	s[5183] = ((33657 : GoUInt16));
	s[5184] = ((33697 : GoUInt16));
	s[5185] = ((33737 : GoUInt16));
	s[5186] = ((33857 : GoUInt16));
	s[5187] = ((33897 : GoUInt16));
	s[5188] = ((34057 : GoUInt16));
	s[5189] = ((34097 : GoUInt16));
	s[5190] = ((34137 : GoUInt16));
	s[5191] = ((34177 : GoUInt16));
	s[5192] = ((34217 : GoUInt16));
	s[5193] = ((34337 : GoUInt16));
	s[5194] = ((34377 : GoUInt16));
	s[5195] = ((34417 : GoUInt16));
	s[5196] = ((34457 : GoUInt16));
	s[5197] = ((36825 : GoUInt16));
	s[5198] = ((34577 : GoUInt16));
	s[5199] = ((34617 : GoUInt16));
	s[5200] = ((34657 : GoUInt16));
	s[5201] = ((34697 : GoUInt16));
	s[5202] = ((34817 : GoUInt16));
	s[5203] = ((34857 : GoUInt16));
	s[5204] = ((34897 : GoUInt16));
	s[5205] = ((34937 : GoUInt16));
	s[5206] = ((36865 : GoUInt16));
	s[5207] = ((35057 : GoUInt16));
	s[5208] = ((35097 : GoUInt16));
	s[5209] = ((36905 : GoUInt16));
	s[5210] = ((35217 : GoUInt16));
	s[5211] = ((35257 : GoUInt16));
	s[5212] = ((35297 : GoUInt16));
	s[5213] = ((35337 : GoUInt16));
	s[5214] = ((36945 : GoUInt16));
	s[5215] = ((31937 : GoUInt16));
	s[5216] = ((36665 : GoUInt16));
	s[5217] = ((32137 : GoUInt16));
	s[5218] = ((36705 : GoUInt16));
	s[5219] = ((32377 : GoUInt16));
	s[5220] = ((36745 : GoUInt16));
	s[5221] = ((32537 : GoUInt16));
	s[5222] = ((36985 : GoUInt16));
	s[5223] = ((33057 : GoUInt16));
	s[5224] = ((37025 : GoUInt16));
	s[5225] = ((37065 : GoUInt16));
	s[5226] = ((37105 : GoUInt16));
	s[5227] = ((34177 : GoUInt16));
	s[5228] = ((34217 : GoUInt16));
	s[5229] = ((34457 : GoUInt16));
	s[5230] = ((34937 : GoUInt16));
	s[5231] = ((36865 : GoUInt16));
	s[5232] = ((35337 : GoUInt16));
	s[5233] = ((36945 : GoUInt16));
	s[5234] = ((37145 : GoUInt16));
	s[5235] = ((37201 : GoUInt16));
	s[5236] = ((37257 : GoUInt16));
	s[5237] = ((37313 : GoUInt16));
	s[5238] = ((37353 : GoUInt16));
	s[5239] = ((37393 : GoUInt16));
	s[5240] = ((37433 : GoUInt16));
	s[5241] = ((37473 : GoUInt16));
	s[5242] = ((37513 : GoUInt16));
	s[5243] = ((37553 : GoUInt16));
	s[5244] = ((37593 : GoUInt16));
	s[5245] = ((37633 : GoUInt16));
	s[5246] = ((37673 : GoUInt16));
	s[5247] = ((37713 : GoUInt16));
	s[5248] = ((37753 : GoUInt16));
	s[5249] = ((37793 : GoUInt16));
	s[5250] = ((37833 : GoUInt16));
	s[5251] = ((37873 : GoUInt16));
	s[5252] = ((37913 : GoUInt16));
	s[5253] = ((37953 : GoUInt16));
	s[5254] = ((37993 : GoUInt16));
	s[5255] = ((38033 : GoUInt16));
	s[5256] = ((38073 : GoUInt16));
	s[5257] = ((38113 : GoUInt16));
	s[5258] = ((38153 : GoUInt16));
	s[5259] = ((38193 : GoUInt16));
	s[5260] = ((37065 : GoUInt16));
	s[5261] = ((38233 : GoUInt16));
	s[5262] = ((38273 : GoUInt16));
	s[5263] = ((38313 : GoUInt16));
	s[5264] = ((38353 : GoUInt16));
	s[5265] = ((37313 : GoUInt16));
	s[5266] = ((37353 : GoUInt16));
	s[5267] = ((37393 : GoUInt16));
	s[5268] = ((37433 : GoUInt16));
	s[5269] = ((37473 : GoUInt16));
	s[5270] = ((37513 : GoUInt16));
	s[5271] = ((37553 : GoUInt16));
	s[5272] = ((37593 : GoUInt16));
	s[5273] = ((37633 : GoUInt16));
	s[5274] = ((37673 : GoUInt16));
	s[5275] = ((37713 : GoUInt16));
	s[5276] = ((37753 : GoUInt16));
	s[5277] = ((37793 : GoUInt16));
	s[5278] = ((37833 : GoUInt16));
	s[5279] = ((37873 : GoUInt16));
	s[5280] = ((37913 : GoUInt16));
	s[5281] = ((37953 : GoUInt16));
	s[5282] = ((37993 : GoUInt16));
	s[5283] = ((38033 : GoUInt16));
	s[5284] = ((38073 : GoUInt16));
	s[5285] = ((38113 : GoUInt16));
	s[5286] = ((38153 : GoUInt16));
	s[5287] = ((38193 : GoUInt16));
	s[5288] = ((37065 : GoUInt16));
	s[5289] = ((38233 : GoUInt16));
	s[5290] = ((38273 : GoUInt16));
	s[5291] = ((38313 : GoUInt16));
	s[5292] = ((38353 : GoUInt16));
	s[5293] = ((38113 : GoUInt16));
	s[5294] = ((38153 : GoUInt16));
	s[5295] = ((38193 : GoUInt16));
	s[5296] = ((37065 : GoUInt16));
	s[5297] = ((37025 : GoUInt16));
	s[5298] = ((37105 : GoUInt16));
	s[5299] = ((33377 : GoUInt16));
	s[5300] = ((32937 : GoUInt16));
	s[5301] = ((32977 : GoUInt16));
	s[5302] = ((33017 : GoUInt16));
	s[5303] = ((38113 : GoUInt16));
	s[5304] = ((38153 : GoUInt16));
	s[5305] = ((38193 : GoUInt16));
	s[5306] = ((33377 : GoUInt16));
	s[5307] = ((33417 : GoUInt16));
	s[5308] = ((38393 : GoUInt16));
	s[5309] = ((38393 : GoUInt16));
	s[5310] = ((24 : GoUInt16));
	s[5311] = ((24 : GoUInt16));
	s[5312] = ((64 : GoUInt16));
	s[5313] = ((64 : GoUInt16));
	s[5314] = ((64 : GoUInt16));
	s[5315] = ((64 : GoUInt16));
	s[5316] = ((64 : GoUInt16));
	s[5317] = ((64 : GoUInt16));
	s[5318] = ((64 : GoUInt16));
	s[5319] = ((64 : GoUInt16));
	s[5320] = ((64 : GoUInt16));
	s[5321] = ((64 : GoUInt16));
	s[5322] = ((64 : GoUInt16));
	s[5323] = ((64 : GoUInt16));
	s[5324] = ((64 : GoUInt16));
	s[5325] = ((64 : GoUInt16));
	s[5326] = ((64 : GoUInt16));
	s[5327] = ((64 : GoUInt16));
	s[5328] = ((38433 : GoUInt16));
	s[5329] = ((38489 : GoUInt16));
	s[5330] = ((38489 : GoUInt16));
	s[5331] = ((38545 : GoUInt16));
	s[5332] = ((38601 : GoUInt16));
	s[5333] = ((38657 : GoUInt16));
	s[5334] = ((38713 : GoUInt16));
	s[5335] = ((38769 : GoUInt16));
	s[5336] = ((38825 : GoUInt16));
	s[5337] = ((38825 : GoUInt16));
	s[5338] = ((38881 : GoUInt16));
	s[5339] = ((38937 : GoUInt16));
	s[5340] = ((38993 : GoUInt16));
	s[5341] = ((39049 : GoUInt16));
	s[5342] = ((39105 : GoUInt16));
	s[5343] = ((39161 : GoUInt16));
	s[5344] = ((39161 : GoUInt16));
	s[5345] = ((39217 : GoUInt16));
	s[5346] = ((39273 : GoUInt16));
	s[5347] = ((39273 : GoUInt16));
	s[5348] = ((39329 : GoUInt16));
	s[5349] = ((39329 : GoUInt16));
	s[5350] = ((39385 : GoUInt16));
	s[5351] = ((39441 : GoUInt16));
	s[5352] = ((39441 : GoUInt16));
	s[5353] = ((39497 : GoUInt16));
	s[5354] = ((39553 : GoUInt16));
	s[5355] = ((39553 : GoUInt16));
	s[5356] = ((39609 : GoUInt16));
	s[5357] = ((39609 : GoUInt16));
	s[5358] = ((39665 : GoUInt16));
	s[5359] = ((39721 : GoUInt16));
	s[5360] = ((39721 : GoUInt16));
	s[5361] = ((39777 : GoUInt16));
	s[5362] = ((39777 : GoUInt16));
	s[5363] = ((39833 : GoUInt16));
	s[5364] = ((39889 : GoUInt16));
	s[5365] = ((39945 : GoUInt16));
	s[5366] = ((40001 : GoUInt16));
	s[5367] = ((40001 : GoUInt16));
	s[5368] = ((40057 : GoUInt16));
	s[5369] = ((40113 : GoUInt16));
	s[5370] = ((40169 : GoUInt16));
	s[5371] = ((40225 : GoUInt16));
	s[5372] = ((40281 : GoUInt16));
	s[5373] = ((40281 : GoUInt16));
	s[5374] = ((40337 : GoUInt16));
	s[5375] = ((40393 : GoUInt16));
	s[5376] = ((43417 : GoUInt16));
	s[5377] = ((43473 : GoUInt16));
	s[5378] = ((43529 : GoUInt16));
	s[5379] = ((43249 : GoUInt16));
	s[5380] = ((39945 : GoUInt16));
	s[5381] = ((39385 : GoUInt16));
	s[5382] = ((43585 : GoUInt16));
	s[5383] = ((43641 : GoUInt16));
	s[5384] = ((64 : GoUInt16));
	s[5385] = ((64 : GoUInt16));
	s[5386] = ((64 : GoUInt16));
	s[5387] = ((64 : GoUInt16));
	s[5388] = ((64 : GoUInt16));
	s[5389] = ((64 : GoUInt16));
	s[5390] = ((64 : GoUInt16));
	s[5391] = ((64 : GoUInt16));
	s[5392] = ((64 : GoUInt16));
	s[5393] = ((64 : GoUInt16));
	s[5394] = ((64 : GoUInt16));
	s[5395] = ((64 : GoUInt16));
	s[5396] = ((64 : GoUInt16));
	s[5397] = ((64 : GoUInt16));
	s[5398] = ((64 : GoUInt16));
	s[5399] = ((64 : GoUInt16));
	s[5400] = ((64 : GoUInt16));
	s[5401] = ((64 : GoUInt16));
	s[5402] = ((64 : GoUInt16));
	s[5403] = ((64 : GoUInt16));
	s[5404] = ((64 : GoUInt16));
	s[5405] = ((64 : GoUInt16));
	s[5406] = ((64 : GoUInt16));
	s[5407] = ((64 : GoUInt16));
	s[5408] = ((64 : GoUInt16));
	s[5409] = ((64 : GoUInt16));
	s[5410] = ((64 : GoUInt16));
	s[5411] = ((64 : GoUInt16));
	s[5412] = ((64 : GoUInt16));
	s[5413] = ((64 : GoUInt16));
	s[5414] = ((64 : GoUInt16));
	s[5415] = ((64 : GoUInt16));
	s[5416] = ((64 : GoUInt16));
	s[5417] = ((64 : GoUInt16));
	s[5418] = ((64 : GoUInt16));
	s[5419] = ((64 : GoUInt16));
	s[5420] = ((64 : GoUInt16));
	s[5421] = ((64 : GoUInt16));
	s[5422] = ((64 : GoUInt16));
	s[5423] = ((64 : GoUInt16));
	s[5424] = ((43697 : GoUInt16));
	s[5425] = ((43753 : GoUInt16));
	s[5426] = ((43809 : GoUInt16));
	s[5427] = ((43881 : GoUInt16));
	s[5428] = ((43953 : GoUInt16));
	s[5429] = ((44025 : GoUInt16));
	s[5430] = ((44097 : GoUInt16));
	s[5431] = ((44169 : GoUInt16));
	s[5432] = ((44241 : GoUInt16));
	s[5433] = ((44313 : GoUInt16));
	s[5434] = ((44370 : GoUInt16));
	s[5435] = ((44642 : GoUInt16));
	s[5436] = ((44769 : GoUInt16));
	s[5437] = ((24 : GoUInt16));
	s[5438] = ((64 : GoUInt16));
	s[5439] = ((64 : GoUInt16));
	s[5440] = ((13248 : GoUInt16));
	s[5441] = ((13248 : GoUInt16));
	s[5442] = ((13248 : GoUInt16));
	s[5443] = ((13248 : GoUInt16));
	s[5444] = ((13248 : GoUInt16));
	s[5445] = ((13248 : GoUInt16));
	s[5446] = ((13248 : GoUInt16));
	s[5447] = ((13248 : GoUInt16));
	s[5448] = ((13248 : GoUInt16));
	s[5449] = ((13248 : GoUInt16));
	s[5450] = ((13248 : GoUInt16));
	s[5451] = ((13248 : GoUInt16));
	s[5452] = ((13248 : GoUInt16));
	s[5453] = ((13248 : GoUInt16));
	s[5454] = ((13248 : GoUInt16));
	s[5455] = ((13248 : GoUInt16));
	s[5456] = ((44842 : GoUInt16));
	s[5457] = ((32141 : GoUInt16));
	s[5458] = ((64 : GoUInt16));
	s[5459] = ((44858 : GoUInt16));
	s[5460] = ((962 : GoUInt16));
	s[5461] = ((44874 : GoUInt16));
	s[5462] = ((44890 : GoUInt16));
	s[5463] = ((32173 : GoUInt16));
	s[5464] = ((32205 : GoUInt16));
	s[5465] = ((64 : GoUInt16));
	s[5466] = ((64 : GoUInt16));
	s[5467] = ((64 : GoUInt16));
	s[5468] = ((64 : GoUInt16));
	s[5469] = ((64 : GoUInt16));
	s[5470] = ((64 : GoUInt16));
	s[5471] = ((64 : GoUInt16));
	s[5472] = ((13064 : GoUInt16));
	s[5473] = ((13064 : GoUInt16));
	s[5474] = ((13064 : GoUInt16));
	s[5475] = ((13064 : GoUInt16));
	s[5476] = ((13064 : GoUInt16));
	s[5477] = ((13064 : GoUInt16));
	s[5478] = ((13064 : GoUInt16));
	s[5479] = ((13064 : GoUInt16));
	s[5480] = ((13064 : GoUInt16));
	s[5481] = ((13064 : GoUInt16));
	s[5482] = ((13064 : GoUInt16));
	s[5483] = ((13064 : GoUInt16));
	s[5484] = ((13064 : GoUInt16));
	s[5485] = ((13064 : GoUInt16));
	s[5486] = ((13064 : GoUInt16));
	s[5487] = ((13064 : GoUInt16));
	s[5488] = ((64 : GoUInt16));
	s[5489] = ((32237 : GoUInt16));
	s[5490] = ((32269 : GoUInt16));
	s[5491] = ((44906 : GoUInt16));
	s[5492] = ((44906 : GoUInt16));
	s[5493] = ((8146 : GoUInt16));
	s[5494] = ((8162 : GoUInt16));
	s[5495] = ((44922 : GoUInt16));
	s[5496] = ((44938 : GoUInt16));
	s[5497] = ((32301 : GoUInt16));
	s[5498] = ((32333 : GoUInt16));
	s[5499] = ((32365 : GoUInt16));
	s[5500] = ((32301 : GoUInt16));
	s[5501] = ((32397 : GoUInt16));
	s[5502] = ((32429 : GoUInt16));
	s[5503] = ((32397 : GoUInt16));
	s[5504] = ((32461 : GoUInt16));
	s[5505] = ((32493 : GoUInt16));
	s[5506] = ((32525 : GoUInt16));
	s[5507] = ((32493 : GoUInt16));
	s[5508] = ((32557 : GoUInt16));
	s[5509] = ((24 : GoUInt16));
	s[5510] = ((24 : GoUInt16));
	s[5511] = ((44954 : GoUInt16));
	s[5512] = ((44970 : GoUInt16));
	s[5513] = ((32590 : GoUInt16));
	s[5514] = ((32622 : GoUInt16));
	s[5515] = ((32654 : GoUInt16));
	s[5516] = ((32686 : GoUInt16));
	s[5517] = ((44906 : GoUInt16));
	s[5518] = ((44906 : GoUInt16));
	s[5519] = ((44906 : GoUInt16));
	s[5520] = ((44842 : GoUInt16));
	s[5521] = ((32717 : GoUInt16));
	s[5522] = ((64 : GoUInt16));
	s[5523] = ((64 : GoUInt16));
	s[5524] = ((962 : GoUInt16));
	s[5525] = ((44858 : GoUInt16));
	s[5526] = ((44890 : GoUInt16));
	s[5527] = ((44874 : GoUInt16));
	s[5528] = ((32749 : GoUInt16));
	s[5529] = ((8146 : GoUInt16));
	s[5530] = ((8162 : GoUInt16));
	s[5531] = ((44922 : GoUInt16));
	s[5532] = ((44938 : GoUInt16));
	s[5533] = ((32461 : GoUInt16));
	s[5534] = ((32557 : GoUInt16));
	s[5535] = ((44986 : GoUInt16));
	s[5536] = ((45002 : GoUInt16));
	s[5537] = ((45018 : GoUInt16));
	s[5538] = ((8114 : GoUInt16));
	s[5539] = ((45033 : GoUInt16));
	s[5540] = ((45050 : GoUInt16));
	s[5541] = ((45066 : GoUInt16));
	s[5542] = ((8130 : GoUInt16));
	s[5543] = ((64 : GoUInt16));
	s[5544] = ((45082 : GoUInt16));
	s[5545] = ((45098 : GoUInt16));
	s[5546] = ((45114 : GoUInt16));
	s[5547] = ((45130 : GoUInt16));
	s[5548] = ((64 : GoUInt16));
	s[5549] = ((64 : GoUInt16));
	s[5550] = ((64 : GoUInt16));
	s[5551] = ((64 : GoUInt16));
	s[5552] = ((32782 : GoUInt16));
	s[5553] = ((45145 : GoUInt16));
	s[5554] = ((32814 : GoUInt16));
	s[5555] = ((2056 : GoUInt16));
	s[5556] = ((32846 : GoUInt16));
	s[5557] = ((64 : GoUInt16));
	s[5558] = ((32878 : GoUInt16));
	s[5559] = ((45185 : GoUInt16));
	s[5560] = ((32910 : GoUInt16));
	s[5561] = ((45225 : GoUInt16));
	s[5562] = ((32942 : GoUInt16));
	s[5563] = ((45265 : GoUInt16));
	s[5564] = ((32974 : GoUInt16));
	s[5565] = ((45305 : GoUInt16));
	s[5566] = ((33006 : GoUInt16));
	s[5567] = ((45345 : GoUInt16));
	s[5568] = ((45385 : GoUInt16));
	s[5569] = ((45409 : GoUInt16));
	s[5570] = ((45409 : GoUInt16));
	s[5571] = ((45433 : GoUInt16));
	s[5572] = ((45433 : GoUInt16));
	s[5573] = ((45457 : GoUInt16));
	s[5574] = ((45457 : GoUInt16));
	s[5575] = ((45481 : GoUInt16));
	s[5576] = ((45481 : GoUInt16));
	s[5577] = ((45505 : GoUInt16));
	s[5578] = ((45505 : GoUInt16));
	s[5579] = ((45505 : GoUInt16));
	s[5580] = ((45505 : GoUInt16));
	s[5581] = ((45529 : GoUInt16));
	s[5582] = ((45529 : GoUInt16));
	s[5583] = ((45553 : GoUInt16));
	s[5584] = ((45553 : GoUInt16));
	s[5585] = ((45553 : GoUInt16));
	s[5586] = ((45553 : GoUInt16));
	s[5587] = ((45577 : GoUInt16));
	s[5588] = ((45577 : GoUInt16));
	s[5589] = ((45601 : GoUInt16));
	s[5590] = ((45601 : GoUInt16));
	s[5591] = ((45601 : GoUInt16));
	s[5592] = ((45601 : GoUInt16));
	s[5593] = ((45625 : GoUInt16));
	s[5594] = ((45625 : GoUInt16));
	s[5595] = ((45625 : GoUInt16));
	s[5596] = ((45625 : GoUInt16));
	s[5597] = ((45649 : GoUInt16));
	s[5598] = ((45649 : GoUInt16));
	s[5599] = ((45649 : GoUInt16));
	s[5600] = ((45649 : GoUInt16));
	s[5601] = ((45673 : GoUInt16));
	s[5602] = ((45673 : GoUInt16));
	s[5603] = ((45673 : GoUInt16));
	s[5604] = ((45673 : GoUInt16));
	s[5605] = ((45697 : GoUInt16));
	s[5606] = ((45697 : GoUInt16));
	s[5607] = ((45697 : GoUInt16));
	s[5608] = ((45697 : GoUInt16));
	s[5609] = ((45721 : GoUInt16));
	s[5610] = ((45721 : GoUInt16));
	s[5611] = ((45745 : GoUInt16));
	s[5612] = ((45745 : GoUInt16));
	s[5613] = ((45769 : GoUInt16));
	s[5614] = ((45769 : GoUInt16));
	s[5615] = ((45793 : GoUInt16));
	s[5616] = ((45793 : GoUInt16));
	s[5617] = ((45817 : GoUInt16));
	s[5618] = ((45817 : GoUInt16));
	s[5619] = ((45817 : GoUInt16));
	s[5620] = ((45817 : GoUInt16));
	s[5621] = ((45841 : GoUInt16));
	s[5622] = ((45841 : GoUInt16));
	s[5623] = ((45841 : GoUInt16));
	s[5624] = ((45841 : GoUInt16));
	s[5625] = ((45865 : GoUInt16));
	s[5626] = ((45865 : GoUInt16));
	s[5627] = ((45865 : GoUInt16));
	s[5628] = ((45865 : GoUInt16));
	s[5629] = ((45889 : GoUInt16));
	s[5630] = ((45889 : GoUInt16));
	s[5631] = ((45889 : GoUInt16));
	s[5632] = ((45889 : GoUInt16));
	s[5633] = ((45913 : GoUInt16));
	s[5634] = ((45913 : GoUInt16));
	s[5635] = ((45913 : GoUInt16));
	s[5636] = ((45913 : GoUInt16));
	s[5637] = ((45937 : GoUInt16));
	s[5638] = ((45937 : GoUInt16));
	s[5639] = ((45937 : GoUInt16));
	s[5640] = ((45937 : GoUInt16));
	s[5641] = ((45961 : GoUInt16));
	s[5642] = ((45961 : GoUInt16));
	s[5643] = ((45961 : GoUInt16));
	s[5644] = ((45961 : GoUInt16));
	s[5645] = ((45985 : GoUInt16));
	s[5646] = ((45985 : GoUInt16));
	s[5647] = ((45985 : GoUInt16));
	s[5648] = ((45985 : GoUInt16));
	s[5649] = ((46009 : GoUInt16));
	s[5650] = ((46009 : GoUInt16));
	s[5651] = ((46009 : GoUInt16));
	s[5652] = ((46009 : GoUInt16));
	s[5653] = ((46033 : GoUInt16));
	s[5654] = ((46033 : GoUInt16));
	s[5655] = ((46033 : GoUInt16));
	s[5656] = ((46033 : GoUInt16));
	s[5657] = ((46057 : GoUInt16));
	s[5658] = ((46057 : GoUInt16));
	s[5659] = ((46057 : GoUInt16));
	s[5660] = ((46057 : GoUInt16));
	s[5661] = ((46081 : GoUInt16));
	s[5662] = ((46081 : GoUInt16));
	s[5663] = ((46081 : GoUInt16));
	s[5664] = ((46081 : GoUInt16));
	s[5665] = ((46105 : GoUInt16));
	s[5666] = ((46105 : GoUInt16));
	s[5667] = ((46105 : GoUInt16));
	s[5668] = ((46105 : GoUInt16));
	s[5669] = ((46129 : GoUInt16));
	s[5670] = ((46129 : GoUInt16));
	s[5671] = ((46129 : GoUInt16));
	s[5672] = ((46129 : GoUInt16));
	s[5673] = ((46153 : GoUInt16));
	s[5674] = ((46153 : GoUInt16));
	s[5675] = ((46153 : GoUInt16));
	s[5676] = ((46153 : GoUInt16));
	s[5677] = ((46177 : GoUInt16));
	s[5678] = ((46177 : GoUInt16));
	s[5679] = ((31489 : GoUInt16));
	s[5680] = ((31489 : GoUInt16));
	s[5681] = ((46201 : GoUInt16));
	s[5682] = ((46201 : GoUInt16));
	s[5683] = ((46201 : GoUInt16));
	s[5684] = ((46201 : GoUInt16));
	s[5685] = ((46225 : GoUInt16));
	s[5686] = ((46225 : GoUInt16));
	s[5687] = ((46265 : GoUInt16));
	s[5688] = ((46265 : GoUInt16));
	s[5689] = ((46305 : GoUInt16));
	s[5690] = ((46305 : GoUInt16));
	s[5691] = ((46345 : GoUInt16));
	s[5692] = ((46345 : GoUInt16));
	s[5693] = ((64 : GoUInt16));
	s[5694] = ((64 : GoUInt16));
	s[5695] = ((960 : GoUInt16));
	s[5696] = ((64 : GoUInt16));
	s[5697] = ((44874 : GoUInt16));
	s[5698] = ((46386 : GoUInt16));
	s[5699] = ((44986 : GoUInt16));
	s[5700] = ((45098 : GoUInt16));
	s[5701] = ((45114 : GoUInt16));
	s[5702] = ((45002 : GoUInt16));
	s[5703] = ((46402 : GoUInt16));
	s[5704] = ((8146 : GoUInt16));
	s[5705] = ((8162 : GoUInt16));
	s[5706] = ((45018 : GoUInt16));
	s[5707] = ((8114 : GoUInt16));
	s[5708] = ((44842 : GoUInt16));
	s[5709] = ((45033 : GoUInt16));
	s[5710] = ((10705 : GoUInt16));
	s[5711] = ((46418 : GoUInt16));
	s[5712] = ((8001 : GoUInt16));
	s[5713] = ((201 : GoUInt16));
	s[5714] = ((105 : GoUInt16));
	s[5715] = ((121 : GoUInt16));
	s[5716] = ((8017 : GoUInt16));
	s[5717] = ((8033 : GoUInt16));
	s[5718] = ((8049 : GoUInt16));
	s[5719] = ((8065 : GoUInt16));
	s[5720] = ((8081 : GoUInt16));
	s[5721] = ((8097 : GoUInt16));
	s[5722] = ((44858 : GoUInt16));
	s[5723] = ((962 : GoUInt16));
	s[5724] = ((45050 : GoUInt16));
	s[5725] = ((8130 : GoUInt16));
	s[5726] = ((45066 : GoUInt16));
	s[5727] = ((44890 : GoUInt16));
	s[5728] = ((45130 : GoUInt16));
	s[5729] = ((57 : GoUInt16));
	s[5730] = ((3817 : GoUInt16));
	s[5731] = ((4441 : GoUInt16));
	s[5732] = ((3833 : GoUInt16));
	s[5733] = ((3849 : GoUInt16));
	s[5734] = ((4505 : GoUInt16));
	s[5735] = ((3889 : GoUInt16));
	s[5736] = ((585 : GoUInt16));
	s[5737] = ((3905 : GoUInt16));
	s[5738] = ((601 : GoUInt16));
	s[5739] = ((3921 : GoUInt16));
	s[5740] = ((857 : GoUInt16));
	s[5741] = ((3937 : GoUInt16));
	s[5742] = ((3953 : GoUInt16));
	s[5743] = ((217 : GoUInt16));
	s[5744] = ((3993 : GoUInt16));
	s[5745] = ((8249 : GoUInt16));
	s[5746] = ((617 : GoUInt16));
	s[5747] = ((473 : GoUInt16));
	s[5748] = ((4009 : GoUInt16));
	s[5749] = ((4025 : GoUInt16));
	s[5750] = ((4233 : GoUInt16));
	s[5751] = ((633 : GoUInt16));
	s[5752] = ((873 : GoUInt16));
	s[5753] = ((649 : GoUInt16));
	s[5754] = ((5073 : GoUInt16));
	s[5755] = ((44954 : GoUInt16));
	s[5756] = ((45082 : GoUInt16));
	s[5757] = ((44970 : GoUInt16));
	s[5758] = ((46434 : GoUInt16));
	s[5759] = ((44906 : GoUInt16));
	s[5760] = ((7338 : GoUInt16));
	s[5761] = ((57 : GoUInt16));
	s[5762] = ((3817 : GoUInt16));
	s[5763] = ((4441 : GoUInt16));
	s[5764] = ((3833 : GoUInt16));
	s[5765] = ((3849 : GoUInt16));
	s[5766] = ((4505 : GoUInt16));
	s[5767] = ((3889 : GoUInt16));
	s[5768] = ((585 : GoUInt16));
	s[5769] = ((3905 : GoUInt16));
	s[5770] = ((601 : GoUInt16));
	s[5771] = ((3921 : GoUInt16));
	s[5772] = ((857 : GoUInt16));
	s[5773] = ((3937 : GoUInt16));
	s[5774] = ((3953 : GoUInt16));
	s[5775] = ((217 : GoUInt16));
	s[5776] = ((3993 : GoUInt16));
	s[5777] = ((8249 : GoUInt16));
	s[5778] = ((617 : GoUInt16));
	s[5779] = ((473 : GoUInt16));
	s[5780] = ((4009 : GoUInt16));
	s[5781] = ((4025 : GoUInt16));
	s[5782] = ((4233 : GoUInt16));
	s[5783] = ((633 : GoUInt16));
	s[5784] = ((873 : GoUInt16));
	s[5785] = ((649 : GoUInt16));
	s[5786] = ((5073 : GoUInt16));
	s[5787] = ((44922 : GoUInt16));
	s[5788] = ((46450 : GoUInt16));
	s[5789] = ((44938 : GoUInt16));
	s[5790] = ((46466 : GoUInt16));
	s[5791] = ((33037 : GoUInt16));
	s[5792] = ((33069 : GoUInt16));
	s[5793] = ((10705 : GoUInt16));
	s[5794] = ((33101 : GoUInt16));
	s[5795] = ((33101 : GoUInt16));
	s[5796] = ((33133 : GoUInt16));
	s[5797] = ((33165 : GoUInt16));
	s[5798] = ((33197 : GoUInt16));
	s[5799] = ((33229 : GoUInt16));
	s[5800] = ((33261 : GoUInt16));
	s[5801] = ((33293 : GoUInt16));
	s[5802] = ((33325 : GoUInt16));
	s[5803] = ((33357 : GoUInt16));
	s[5804] = ((33389 : GoUInt16));
	s[5805] = ((33421 : GoUInt16));
	s[5806] = ((33453 : GoUInt16));
	s[5807] = ((33485 : GoUInt16));
	s[5808] = ((33517 : GoUInt16));
	s[5809] = ((33549 : GoUInt16));
	s[5810] = ((33581 : GoUInt16));
	s[5811] = ((33613 : GoUInt16));
	s[5812] = ((33645 : GoUInt16));
	s[5813] = ((33677 : GoUInt16));
	s[5814] = ((33709 : GoUInt16));
	s[5815] = ((33741 : GoUInt16));
	s[5816] = ((33773 : GoUInt16));
	s[5817] = ((33805 : GoUInt16));
	s[5818] = ((33837 : GoUInt16));
	s[5819] = ((33869 : GoUInt16));
	s[5820] = ((33261 : GoUInt16));
	s[5821] = ((33901 : GoUInt16));
	s[5822] = ((33933 : GoUInt16));
	s[5823] = ((33357 : GoUInt16));
	s[5824] = ((33965 : GoUInt16));
	s[5825] = ((33997 : GoUInt16));
	s[5826] = ((34029 : GoUInt16));
	s[5827] = ((34061 : GoUInt16));
	s[5828] = ((34093 : GoUInt16));
	s[5829] = ((34125 : GoUInt16));
	s[5830] = ((34157 : GoUInt16));
	s[5831] = ((34189 : GoUInt16));
	s[5832] = ((34061 : GoUInt16));
	s[5833] = ((34221 : GoUInt16));
	s[5834] = ((34061 : GoUInt16));
	s[5835] = ((34253 : GoUInt16));
	s[5836] = ((34253 : GoUInt16));
	s[5837] = ((34285 : GoUInt16));
	s[5838] = ((34285 : GoUInt16));
	s[5839] = ((34317 : GoUInt16));
	s[5840] = ((34125 : GoUInt16));
	s[5841] = ((34349 : GoUInt16));
	s[5842] = ((34381 : GoUInt16));
	s[5843] = ((34349 : GoUInt16));
	s[5844] = ((34413 : GoUInt16));
	s[5845] = ((34381 : GoUInt16));
	s[5846] = ((34445 : GoUInt16));
	s[5847] = ((34445 : GoUInt16));
	s[5848] = ((34477 : GoUInt16));
	s[5849] = ((34477 : GoUInt16));
	s[5850] = ((34509 : GoUInt16));
	s[5851] = ((34509 : GoUInt16));
	s[5852] = ((34381 : GoUInt16));
	s[5853] = ((33101 : GoUInt16));
	s[5854] = ((34541 : GoUInt16));
	s[5855] = ((34573 : GoUInt16));
	s[5856] = ((64 : GoUInt16));
	s[5857] = ((34605 : GoUInt16));
	s[5858] = ((34637 : GoUInt16));
	s[5859] = ((34669 : GoUInt16));
	s[5860] = ((34701 : GoUInt16));
	s[5861] = ((34669 : GoUInt16));
	s[5862] = ((34733 : GoUInt16));
	s[5863] = ((34765 : GoUInt16));
	s[5864] = ((34797 : GoUInt16));
	s[5865] = ((34797 : GoUInt16));
	s[5866] = ((34829 : GoUInt16));
	s[5867] = ((34829 : GoUInt16));
	s[5868] = ((34861 : GoUInt16));
	s[5869] = ((34861 : GoUInt16));
	s[5870] = ((34829 : GoUInt16));
	s[5871] = ((34829 : GoUInt16));
	s[5872] = ((34893 : GoUInt16));
	s[5873] = ((34925 : GoUInt16));
	s[5874] = ((34957 : GoUInt16));
	s[5875] = ((34989 : GoUInt16));
	s[5876] = ((35021 : GoUInt16));
	s[5877] = ((35053 : GoUInt16));
	s[5878] = ((35053 : GoUInt16));
	s[5879] = ((35053 : GoUInt16));
	s[5880] = ((35085 : GoUInt16));
	s[5881] = ((35085 : GoUInt16));
	s[5882] = ((35085 : GoUInt16));
	s[5883] = ((35085 : GoUInt16));
	s[5884] = ((34797 : GoUInt16));
	s[5885] = ((34797 : GoUInt16));
	s[5886] = ((34797 : GoUInt16));
	s[5887] = ((64 : GoUInt16));
	s[5888] = ((64 : GoUInt16));
	s[5889] = ((64 : GoUInt16));
	s[5890] = ((34637 : GoUInt16));
	s[5891] = ((34605 : GoUInt16));
	s[5892] = ((35117 : GoUInt16));
	s[5893] = ((34605 : GoUInt16));
	s[5894] = ((34637 : GoUInt16));
	s[5895] = ((34605 : GoUInt16));
	s[5896] = ((64 : GoUInt16));
	s[5897] = ((64 : GoUInt16));
	s[5898] = ((35149 : GoUInt16));
	s[5899] = ((34637 : GoUInt16));
	s[5900] = ((35181 : GoUInt16));
	s[5901] = ((35117 : GoUInt16));
	s[5902] = ((35181 : GoUInt16));
	s[5903] = ((34637 : GoUInt16));
	s[5904] = ((64 : GoUInt16));
	s[5905] = ((64 : GoUInt16));
	s[5906] = ((35213 : GoUInt16));
	s[5907] = ((35245 : GoUInt16));
	s[5908] = ((34989 : GoUInt16));
	s[5909] = ((35181 : GoUInt16));
	s[5910] = ((35117 : GoUInt16));
	s[5911] = ((35181 : GoUInt16));
	s[5912] = ((64 : GoUInt16));
	s[5913] = ((64 : GoUInt16));
	s[5914] = ((35277 : GoUInt16));
	s[5915] = ((35309 : GoUInt16));
	s[5916] = ((35277 : GoUInt16));
	s[5917] = ((64 : GoUInt16));
	s[5918] = ((64 : GoUInt16));
	s[5919] = ((64 : GoUInt16));
	s[5920] = ((46481 : GoUInt16));
	s[5921] = ((46505 : GoUInt16));
	s[5922] = ((46529 : GoUInt16));
	s[5923] = ((35342 : GoUInt16));
	s[5924] = ((46553 : GoUInt16));
	s[5925] = ((46577 : GoUInt16));
	s[5926] = ((35373 : GoUInt16));
	s[5927] = ((64 : GoUInt16));
	s[5928] = ((35405 : GoUInt16));
	s[5929] = ((35437 : GoUInt16));
	s[5930] = ((35469 : GoUInt16));
	s[5931] = ((35437 : GoUInt16));
	s[5932] = ((35501 : GoUInt16));
	s[5933] = ((35533 : GoUInt16));
	s[5934] = ((35565 : GoUInt16));
	s[5935] = ((64 : GoUInt16));
	s[5936] = ((64 : GoUInt16));
	s[5937] = ((64 : GoUInt16));
	s[5938] = ((64 : GoUInt16));
	s[5939] = ((64 : GoUInt16));
	s[5940] = ((64 : GoUInt16));
	s[5941] = ((64 : GoUInt16));
	s[5942] = ((64 : GoUInt16));
	s[5943] = ((64 : GoUInt16));
	s[5944] = ((64 : GoUInt16));
	s[5945] = ((832 : GoUInt16));
	s[5946] = ((832 : GoUInt16));
	s[5947] = ((832 : GoUInt16));
	s[5948] = ((64 : GoUInt16));
	s[5949] = ((64 : GoUInt16));
	s[5950] = ((64 : GoUInt16));
	s[5951] = ((64 : GoUInt16));
	s[5952] = ((2568 : GoUInt16));
	s[5953] = ((2568 : GoUInt16));
	s[5954] = ((2568 : GoUInt16));
	s[5955] = ((2568 : GoUInt16));
	s[5956] = ((2568 : GoUInt16));
	s[5957] = ((3080 : GoUInt16));
	s[5958] = ((2056 : GoUInt16));
	s[5959] = ((3080 : GoUInt16));
	s[5960] = ((2072 : GoUInt16));
	s[5961] = ((3080 : GoUInt16));
	s[5962] = ((3080 : GoUInt16));
	s[5963] = ((2056 : GoUInt16));
	s[5964] = ((2056 : GoUInt16));
	s[5965] = ((2312 : GoUInt16));
	s[5966] = ((3080 : GoUInt16));
	s[5967] = ((3080 : GoUInt16));
	s[5968] = ((3080 : GoUInt16));
	s[5969] = ((3080 : GoUInt16));
	s[5970] = ((3080 : GoUInt16));
	s[5971] = ((2568 : GoUInt16));
	s[5972] = ((2568 : GoUInt16));
	s[5973] = ((2568 : GoUInt16));
	s[5974] = ((2568 : GoUInt16));
	s[5975] = ((2312 : GoUInt16));
	s[5976] = ((2568 : GoUInt16));
	s[5977] = ((2568 : GoUInt16));
	s[5978] = ((2568 : GoUInt16));
	s[5979] = ((2568 : GoUInt16));
	s[5980] = ((2568 : GoUInt16));
	s[5981] = ((3080 : GoUInt16));
	s[5982] = ((2568 : GoUInt16));
	s[5983] = ((2568 : GoUInt16));
	s[5984] = ((2568 : GoUInt16));
	s[5985] = ((3080 : GoUInt16));
	s[5986] = ((2056 : GoUInt16));
	s[5987] = ((2056 : GoUInt16));
	s[5988] = ((3080 : GoUInt16));
	s[5989] = ((13064 : GoUInt16));
	s[5990] = ((13064 : GoUInt16));
	s[5991] = ((64 : GoUInt16));
	s[5992] = ((64 : GoUInt16));
	s[5993] = ((64 : GoUInt16));
	s[5994] = ((64 : GoUInt16));
	s[5995] = ((2584 : GoUInt16));
	s[5996] = ((2584 : GoUInt16));
	s[5997] = ((2584 : GoUInt16));
	s[5998] = ((2584 : GoUInt16));
	s[5999] = ((3096 : GoUInt16));
	s[6000] = ((2072 : GoUInt16));
	s[6001] = ((2072 : GoUInt16));
	s[6002] = ((2072 : GoUInt16));
	s[6003] = ((2072 : GoUInt16));
	s[6004] = ((2072 : GoUInt16));
	s[6005] = ((2072 : GoUInt16));
	s[6006] = ((2072 : GoUInt16));
	s[6007] = ((64 : GoUInt16));
	s[6008] = ((64 : GoUInt16));
	s[6009] = ((64 : GoUInt16));
	s[6010] = ((64 : GoUInt16));
	s[6011] = ((64 : GoUInt16));
	s[6012] = ((64 : GoUInt16));
	s[6013] = ((64 : GoUInt16));
	s[6014] = ((64 : GoUInt16));
	s[6015] = ((64 : GoUInt16));
	s[6016] = ((2568 : GoUInt16));
	s[6017] = ((3080 : GoUInt16));
	s[6018] = ((2568 : GoUInt16));
	s[6019] = ((3080 : GoUInt16));
	s[6020] = ((3080 : GoUInt16));
	s[6021] = ((3080 : GoUInt16));
	s[6022] = ((2568 : GoUInt16));
	s[6023] = ((2568 : GoUInt16));
	s[6024] = ((2568 : GoUInt16));
	s[6025] = ((3080 : GoUInt16));
	s[6026] = ((2568 : GoUInt16));
	s[6027] = ((2568 : GoUInt16));
	s[6028] = ((3080 : GoUInt16));
	s[6029] = ((2568 : GoUInt16));
	s[6030] = ((3080 : GoUInt16));
	s[6031] = ((3080 : GoUInt16));
	s[6032] = ((2568 : GoUInt16));
	s[6033] = ((3080 : GoUInt16));
	s[6034] = ((64 : GoUInt16));
	s[6035] = ((64 : GoUInt16));
	s[6036] = ((64 : GoUInt16));
	s[6037] = ((64 : GoUInt16));
	s[6038] = ((64 : GoUInt16));
	s[6039] = ((64 : GoUInt16));
	s[6040] = ((64 : GoUInt16));
	s[6041] = ((2072 : GoUInt16));
	s[6042] = ((2072 : GoUInt16));
	s[6043] = ((2072 : GoUInt16));
	s[6044] = ((2072 : GoUInt16));
	s[6045] = ((64 : GoUInt16));
	s[6046] = ((64 : GoUInt16));
	s[6047] = ((64 : GoUInt16));
	s[6048] = ((64 : GoUInt16));
	s[6049] = ((64 : GoUInt16));
	s[6050] = ((64 : GoUInt16));
	s[6051] = ((64 : GoUInt16));
	s[6052] = ((64 : GoUInt16));
	s[6053] = ((64 : GoUInt16));
	s[6054] = ((64 : GoUInt16));
	s[6055] = ((64 : GoUInt16));
	s[6056] = ((64 : GoUInt16));
	s[6057] = ((3096 : GoUInt16));
	s[6058] = ((3096 : GoUInt16));
	s[6059] = ((3096 : GoUInt16));
	s[6060] = ((3096 : GoUInt16));
	s[6061] = ((2584 : GoUInt16));
	s[6062] = ((2584 : GoUInt16));
	s[6063] = ((2072 : GoUInt16));
	s[6064] = ((64 : GoUInt16));
	s[6065] = ((64 : GoUInt16));
	s[6066] = ((64 : GoUInt16));
	s[6067] = ((64 : GoUInt16));
	s[6068] = ((64 : GoUInt16));
	s[6069] = ((64 : GoUInt16));
	s[6070] = ((64 : GoUInt16));
	s[6071] = ((64 : GoUInt16));
	s[6072] = ((64 : GoUInt16));
	s[6073] = ((64 : GoUInt16));
	s[6074] = ((64 : GoUInt16));
	s[6075] = ((64 : GoUInt16));
	s[6076] = ((64 : GoUInt16));
	s[6077] = ((64 : GoUInt16));
	s[6078] = ((64 : GoUInt16));
	s[6079] = ((64 : GoUInt16));
	s[6080] = ((13064 : GoUInt16));
	s[6081] = ((13064 : GoUInt16));
	s[6082] = ((12296 : GoUInt16));
	s[6083] = ((12296 : GoUInt16));
	s[6084] = ((64 : GoUInt16));
	s[6085] = ((8 : GoUInt16));
	s[6086] = ((8 : GoUInt16));
	s[6087] = ((8 : GoUInt16));
	s[6088] = ((8 : GoUInt16));
	s[6089] = ((8 : GoUInt16));
	s[6090] = ((8 : GoUInt16));
	s[6091] = ((8 : GoUInt16));
	s[6092] = ((8 : GoUInt16));
	s[6093] = ((64 : GoUInt16));
	s[6094] = ((64 : GoUInt16));
	s[6095] = ((8 : GoUInt16));
	s[6096] = ((8 : GoUInt16));
	s[6097] = ((64 : GoUInt16));
	s[6098] = ((64 : GoUInt16));
	s[6099] = ((8 : GoUInt16));
	s[6100] = ((8 : GoUInt16));
	s[6101] = ((8 : GoUInt16));
	s[6102] = ((8 : GoUInt16));
	s[6103] = ((8 : GoUInt16));
	s[6104] = ((8 : GoUInt16));
	s[6105] = ((8 : GoUInt16));
	s[6106] = ((8 : GoUInt16));
	s[6107] = ((8 : GoUInt16));
	s[6108] = ((8 : GoUInt16));
	s[6109] = ((8 : GoUInt16));
	s[6110] = ((8 : GoUInt16));
	s[6111] = ((8 : GoUInt16));
	s[6112] = ((8 : GoUInt16));
	s[6113] = ((8 : GoUInt16));
	s[6114] = ((8 : GoUInt16));
	s[6115] = ((8 : GoUInt16));
	s[6116] = ((8 : GoUInt16));
	s[6117] = ((8 : GoUInt16));
	s[6118] = ((8 : GoUInt16));
	s[6119] = ((8 : GoUInt16));
	s[6120] = ((8 : GoUInt16));
	s[6121] = ((64 : GoUInt16));
	s[6122] = ((8 : GoUInt16));
	s[6123] = ((8 : GoUInt16));
	s[6124] = ((8 : GoUInt16));
	s[6125] = ((8 : GoUInt16));
	s[6126] = ((8 : GoUInt16));
	s[6127] = ((8 : GoUInt16));
	s[6128] = ((8 : GoUInt16));
	s[6129] = ((64 : GoUInt16));
	s[6130] = ((8 : GoUInt16));
	s[6131] = ((8 : GoUInt16));
	s[6132] = ((64 : GoUInt16));
	s[6133] = ((8 : GoUInt16));
	s[6134] = ((8 : GoUInt16));
	s[6135] = ((8 : GoUInt16));
	s[6136] = ((8 : GoUInt16));
	s[6137] = ((8 : GoUInt16));
	s[6138] = ((64 : GoUInt16));
	s[6139] = ((13064 : GoUInt16));
	s[6140] = ((13064 : GoUInt16));
	s[6141] = ((8 : GoUInt16));
	s[6142] = ((12296 : GoUInt16));
	s[6143] = ((12296 : GoUInt16));
	s[6144] = ((13064 : GoUInt16));
	s[6145] = ((12296 : GoUInt16));
	s[6146] = ((12296 : GoUInt16));
	s[6147] = ((12296 : GoUInt16));
	s[6148] = ((12296 : GoUInt16));
	s[6149] = ((64 : GoUInt16));
	s[6150] = ((64 : GoUInt16));
	s[6151] = ((12296 : GoUInt16));
	s[6152] = ((12296 : GoUInt16));
	s[6153] = ((64 : GoUInt16));
	s[6154] = ((64 : GoUInt16));
	s[6155] = ((12296 : GoUInt16));
	s[6156] = ((12296 : GoUInt16));
	s[6157] = ((14344 : GoUInt16));
	s[6158] = ((64 : GoUInt16));
	s[6159] = ((64 : GoUInt16));
	s[6160] = ((8 : GoUInt16));
	s[6161] = ((64 : GoUInt16));
	s[6162] = ((64 : GoUInt16));
	s[6163] = ((64 : GoUInt16));
	s[6164] = ((64 : GoUInt16));
	s[6165] = ((64 : GoUInt16));
	s[6166] = ((64 : GoUInt16));
	s[6167] = ((12296 : GoUInt16));
	s[6168] = ((64 : GoUInt16));
	s[6169] = ((64 : GoUInt16));
	s[6170] = ((64 : GoUInt16));
	s[6171] = ((64 : GoUInt16));
	s[6172] = ((64 : GoUInt16));
	s[6173] = ((8 : GoUInt16));
	s[6174] = ((8 : GoUInt16));
	s[6175] = ((8 : GoUInt16));
	s[6176] = ((8 : GoUInt16));
	s[6177] = ((8 : GoUInt16));
	s[6178] = ((12296 : GoUInt16));
	s[6179] = ((12296 : GoUInt16));
	s[6180] = ((64 : GoUInt16));
	s[6181] = ((64 : GoUInt16));
	s[6182] = ((13064 : GoUInt16));
	s[6183] = ((13064 : GoUInt16));
	s[6184] = ((13064 : GoUInt16));
	s[6185] = ((13064 : GoUInt16));
	s[6186] = ((13064 : GoUInt16));
	s[6187] = ((13064 : GoUInt16));
	s[6188] = ((13064 : GoUInt16));
	s[6189] = ((64 : GoUInt16));
	s[6190] = ((64 : GoUInt16));
	s[6191] = ((64 : GoUInt16));
	s[6192] = ((13064 : GoUInt16));
	s[6193] = ((13064 : GoUInt16));
	s[6194] = ((13064 : GoUInt16));
	s[6195] = ((13064 : GoUInt16));
	s[6196] = ((13064 : GoUInt16));
	s[6197] = ((64 : GoUInt16));
	s[6198] = ((64 : GoUInt16));
	s[6199] = ((64 : GoUInt16));
	s[6200] = ((64 : GoUInt16));
	s[6201] = ((64 : GoUInt16));
	s[6202] = ((64 : GoUInt16));
	s[6203] = ((64 : GoUInt16));
	s[6204] = ((64 : GoUInt16));
	s[6205] = ((64 : GoUInt16));
	s[6206] = ((64 : GoUInt16));
	s[6207] = ((64 : GoUInt16));
	s[6208] = ((8 : GoUInt16));
	s[6209] = ((8 : GoUInt16));
	s[6210] = ((8 : GoUInt16));
	s[6211] = ((8 : GoUInt16));
	s[6212] = ((8 : GoUInt16));
	s[6213] = ((8 : GoUInt16));
	s[6214] = ((8 : GoUInt16));
	s[6215] = ((64 : GoUInt16));
	s[6216] = ((64 : GoUInt16));
	s[6217] = ((8 : GoUInt16));
	s[6218] = ((64 : GoUInt16));
	s[6219] = ((64 : GoUInt16));
	s[6220] = ((8 : GoUInt16));
	s[6221] = ((8 : GoUInt16));
	s[6222] = ((8 : GoUInt16));
	s[6223] = ((8 : GoUInt16));
	s[6224] = ((8 : GoUInt16));
	s[6225] = ((8 : GoUInt16));
	s[6226] = ((8 : GoUInt16));
	s[6227] = ((8 : GoUInt16));
	s[6228] = ((64 : GoUInt16));
	s[6229] = ((8 : GoUInt16));
	s[6230] = ((8 : GoUInt16));
	s[6231] = ((64 : GoUInt16));
	s[6232] = ((8 : GoUInt16));
	s[6233] = ((8 : GoUInt16));
	s[6234] = ((8 : GoUInt16));
	s[6235] = ((8 : GoUInt16));
	s[6236] = ((8 : GoUInt16));
	s[6237] = ((8 : GoUInt16));
	s[6238] = ((8 : GoUInt16));
	s[6239] = ((8 : GoUInt16));
	s[6240] = ((8 : GoUInt16));
	s[6241] = ((8 : GoUInt16));
	s[6242] = ((8 : GoUInt16));
	s[6243] = ((8 : GoUInt16));
	s[6244] = ((8 : GoUInt16));
	s[6245] = ((8 : GoUInt16));
	s[6246] = ((8 : GoUInt16));
	s[6247] = ((8 : GoUInt16));
	s[6248] = ((8 : GoUInt16));
	s[6249] = ((8 : GoUInt16));
	s[6250] = ((8 : GoUInt16));
	s[6251] = ((8 : GoUInt16));
	s[6252] = ((8 : GoUInt16));
	s[6253] = ((8 : GoUInt16));
	s[6254] = ((8 : GoUInt16));
	s[6255] = ((8 : GoUInt16));
	s[6256] = ((12296 : GoUInt16));
	s[6257] = ((12296 : GoUInt16));
	s[6258] = ((12296 : GoUInt16));
	s[6259] = ((12296 : GoUInt16));
	s[6260] = ((12296 : GoUInt16));
	s[6261] = ((12296 : GoUInt16));
	s[6262] = ((64 : GoUInt16));
	s[6263] = ((12296 : GoUInt16));
	s[6264] = ((12296 : GoUInt16));
	s[6265] = ((64 : GoUInt16));
	s[6266] = ((64 : GoUInt16));
	s[6267] = ((13064 : GoUInt16));
	s[6268] = ((13064 : GoUInt16));
	s[6269] = ((14344 : GoUInt16));
	s[6270] = ((15112 : GoUInt16));
	s[6271] = ((8 : GoUInt16));
	s[6272] = ((57 : GoUInt16));
	s[6273] = ((3817 : GoUInt16));
	s[6274] = ((4441 : GoUInt16));
	s[6275] = ((3833 : GoUInt16));
	s[6276] = ((3849 : GoUInt16));
	s[6277] = ((4505 : GoUInt16));
	s[6278] = ((3889 : GoUInt16));
	s[6279] = ((585 : GoUInt16));
	s[6280] = ((3905 : GoUInt16));
	s[6281] = ((601 : GoUInt16));
	s[6282] = ((3921 : GoUInt16));
	s[6283] = ((857 : GoUInt16));
	s[6284] = ((3937 : GoUInt16));
	s[6285] = ((3953 : GoUInt16));
	s[6286] = ((217 : GoUInt16));
	s[6287] = ((3993 : GoUInt16));
	s[6288] = ((8249 : GoUInt16));
	s[6289] = ((617 : GoUInt16));
	s[6290] = ((473 : GoUInt16));
	s[6291] = ((4009 : GoUInt16));
	s[6292] = ((4025 : GoUInt16));
	s[6293] = ((4233 : GoUInt16));
	s[6294] = ((633 : GoUInt16));
	s[6295] = ((873 : GoUInt16));
	s[6296] = ((649 : GoUInt16));
	s[6297] = ((5073 : GoUInt16));
	s[6298] = ((57 : GoUInt16));
	s[6299] = ((3817 : GoUInt16));
	s[6300] = ((4441 : GoUInt16));
	s[6301] = ((3833 : GoUInt16));
	s[6302] = ((3849 : GoUInt16));
	s[6303] = ((4505 : GoUInt16));
	s[6304] = ((3889 : GoUInt16));
	s[6305] = ((585 : GoUInt16));
	s[6306] = ((3905 : GoUInt16));
	s[6307] = ((601 : GoUInt16));
	s[6308] = ((3921 : GoUInt16));
	s[6309] = ((857 : GoUInt16));
	s[6310] = ((3937 : GoUInt16));
	s[6311] = ((3953 : GoUInt16));
	s[6312] = ((217 : GoUInt16));
	s[6313] = ((3993 : GoUInt16));
	s[6314] = ((8249 : GoUInt16));
	s[6315] = ((617 : GoUInt16));
	s[6316] = ((473 : GoUInt16));
	s[6317] = ((4009 : GoUInt16));
	s[6318] = ((4025 : GoUInt16));
	s[6319] = ((4233 : GoUInt16));
	s[6320] = ((633 : GoUInt16));
	s[6321] = ((873 : GoUInt16));
	s[6322] = ((649 : GoUInt16));
	s[6323] = ((5073 : GoUInt16));
	s[6324] = ((57 : GoUInt16));
	s[6325] = ((3817 : GoUInt16));
	s[6326] = ((4441 : GoUInt16));
	s[6327] = ((3833 : GoUInt16));
	s[6328] = ((3849 : GoUInt16));
	s[6329] = ((4505 : GoUInt16));
	s[6330] = ((3889 : GoUInt16));
	s[6331] = ((585 : GoUInt16));
	s[6332] = ((3905 : GoUInt16));
	s[6333] = ((601 : GoUInt16));
	s[6334] = ((3921 : GoUInt16));
	s[6335] = ((857 : GoUInt16));
	s[6336] = ((3937 : GoUInt16));
	s[6337] = ((3953 : GoUInt16));
	s[6338] = ((217 : GoUInt16));
	s[6339] = ((3993 : GoUInt16));
	s[6340] = ((8249 : GoUInt16));
	s[6341] = ((617 : GoUInt16));
	s[6342] = ((473 : GoUInt16));
	s[6343] = ((4009 : GoUInt16));
	s[6344] = ((4025 : GoUInt16));
	s[6345] = ((4233 : GoUInt16));
	s[6346] = ((633 : GoUInt16));
	s[6347] = ((873 : GoUInt16));
	s[6348] = ((649 : GoUInt16));
	s[6349] = ((5073 : GoUInt16));
	s[6350] = ((57 : GoUInt16));
	s[6351] = ((3817 : GoUInt16));
	s[6352] = ((4441 : GoUInt16));
	s[6353] = ((3833 : GoUInt16));
	s[6354] = ((3849 : GoUInt16));
	s[6355] = ((4505 : GoUInt16));
	s[6356] = ((3889 : GoUInt16));
	s[6357] = ((64 : GoUInt16));
	s[6358] = ((3905 : GoUInt16));
	s[6359] = ((601 : GoUInt16));
	s[6360] = ((3921 : GoUInt16));
	s[6361] = ((857 : GoUInt16));
	s[6362] = ((3937 : GoUInt16));
	s[6363] = ((3953 : GoUInt16));
	s[6364] = ((217 : GoUInt16));
	s[6365] = ((3993 : GoUInt16));
	s[6366] = ((8249 : GoUInt16));
	s[6367] = ((617 : GoUInt16));
	s[6368] = ((473 : GoUInt16));
	s[6369] = ((4009 : GoUInt16));
	s[6370] = ((4025 : GoUInt16));
	s[6371] = ((4233 : GoUInt16));
	s[6372] = ((633 : GoUInt16));
	s[6373] = ((873 : GoUInt16));
	s[6374] = ((649 : GoUInt16));
	s[6375] = ((5073 : GoUInt16));
	s[6376] = ((57 : GoUInt16));
	s[6377] = ((3817 : GoUInt16));
	s[6378] = ((4441 : GoUInt16));
	s[6379] = ((3833 : GoUInt16));
	s[6380] = ((3849 : GoUInt16));
	s[6381] = ((4505 : GoUInt16));
	s[6382] = ((3889 : GoUInt16));
	s[6383] = ((585 : GoUInt16));
	s[6384] = ((3905 : GoUInt16));
	s[6385] = ((601 : GoUInt16));
	s[6386] = ((3921 : GoUInt16));
	s[6387] = ((857 : GoUInt16));
	s[6388] = ((3937 : GoUInt16));
	s[6389] = ((3953 : GoUInt16));
	s[6390] = ((217 : GoUInt16));
	s[6391] = ((3993 : GoUInt16));
	s[6392] = ((8249 : GoUInt16));
	s[6393] = ((617 : GoUInt16));
	s[6394] = ((473 : GoUInt16));
	s[6395] = ((4009 : GoUInt16));
	s[6396] = ((4025 : GoUInt16));
	s[6397] = ((4233 : GoUInt16));
	s[6398] = ((633 : GoUInt16));
	s[6399] = ((873 : GoUInt16));
	s[6400] = ((649 : GoUInt16));
	s[6401] = ((5073 : GoUInt16));
	s[6402] = ((57 : GoUInt16));
	s[6403] = ((3817 : GoUInt16));
	s[6404] = ((4441 : GoUInt16));
	s[6405] = ((3833 : GoUInt16));
	s[6406] = ((3849 : GoUInt16));
	s[6407] = ((4505 : GoUInt16));
	s[6408] = ((3889 : GoUInt16));
	s[6409] = ((585 : GoUInt16));
	s[6410] = ((3905 : GoUInt16));
	s[6411] = ((601 : GoUInt16));
	s[6412] = ((3921 : GoUInt16));
	s[6413] = ((857 : GoUInt16));
	s[6414] = ((3937 : GoUInt16));
	s[6415] = ((3953 : GoUInt16));
	s[6416] = ((217 : GoUInt16));
	s[6417] = ((3993 : GoUInt16));
	s[6418] = ((8249 : GoUInt16));
	s[6419] = ((617 : GoUInt16));
	s[6420] = ((473 : GoUInt16));
	s[6421] = ((4009 : GoUInt16));
	s[6422] = ((4025 : GoUInt16));
	s[6423] = ((4233 : GoUInt16));
	s[6424] = ((633 : GoUInt16));
	s[6425] = ((873 : GoUInt16));
	s[6426] = ((649 : GoUInt16));
	s[6427] = ((5073 : GoUInt16));
	s[6428] = ((57 : GoUInt16));
	s[6429] = ((64 : GoUInt16));
	s[6430] = ((4441 : GoUInt16));
	s[6431] = ((3833 : GoUInt16));
	s[6432] = ((64 : GoUInt16));
	s[6433] = ((64 : GoUInt16));
	s[6434] = ((3889 : GoUInt16));
	s[6435] = ((64 : GoUInt16));
	s[6436] = ((64 : GoUInt16));
	s[6437] = ((601 : GoUInt16));
	s[6438] = ((3921 : GoUInt16));
	s[6439] = ((64 : GoUInt16));
	s[6440] = ((64 : GoUInt16));
	s[6441] = ((3953 : GoUInt16));
	s[6442] = ((217 : GoUInt16));
	s[6443] = ((3993 : GoUInt16));
	s[6444] = ((8249 : GoUInt16));
	s[6445] = ((64 : GoUInt16));
	s[6446] = ((473 : GoUInt16));
	s[6447] = ((4009 : GoUInt16));
	s[6448] = ((4025 : GoUInt16));
	s[6449] = ((4233 : GoUInt16));
	s[6450] = ((633 : GoUInt16));
	s[6451] = ((873 : GoUInt16));
	s[6452] = ((649 : GoUInt16));
	s[6453] = ((5073 : GoUInt16));
	s[6454] = ((57 : GoUInt16));
	s[6455] = ((3817 : GoUInt16));
	s[6456] = ((4441 : GoUInt16));
	s[6457] = ((3833 : GoUInt16));
	s[6458] = ((64 : GoUInt16));
	s[6459] = ((4505 : GoUInt16));
	s[6460] = ((64 : GoUInt16));
	s[6461] = ((585 : GoUInt16));
	s[6462] = ((3905 : GoUInt16));
	s[6463] = ((601 : GoUInt16));
	s[6464] = ((3921 : GoUInt16));
	s[6465] = ((857 : GoUInt16));
	s[6466] = ((3937 : GoUInt16));
	s[6467] = ((3953 : GoUInt16));
	s[6468] = ((64 : GoUInt16));
	s[6469] = ((3993 : GoUInt16));
	s[6470] = ((8249 : GoUInt16));
	s[6471] = ((617 : GoUInt16));
	s[6472] = ((473 : GoUInt16));
	s[6473] = ((4009 : GoUInt16));
	s[6474] = ((4025 : GoUInt16));
	s[6475] = ((4233 : GoUInt16));
	s[6476] = ((633 : GoUInt16));
	s[6477] = ((873 : GoUInt16));
	s[6478] = ((649 : GoUInt16));
	s[6479] = ((5073 : GoUInt16));
	s[6480] = ((57 : GoUInt16));
	s[6481] = ((3817 : GoUInt16));
	s[6482] = ((4441 : GoUInt16));
	s[6483] = ((3833 : GoUInt16));
	s[6484] = ((3849 : GoUInt16));
	s[6485] = ((4505 : GoUInt16));
	s[6486] = ((3889 : GoUInt16));
	s[6487] = ((585 : GoUInt16));
	s[6488] = ((3905 : GoUInt16));
	s[6489] = ((601 : GoUInt16));
	s[6490] = ((3921 : GoUInt16));
	s[6491] = ((857 : GoUInt16));
	s[6492] = ((3937 : GoUInt16));
	s[6493] = ((3953 : GoUInt16));
	s[6494] = ((217 : GoUInt16));
	s[6495] = ((3993 : GoUInt16));
	s[6496] = ((8249 : GoUInt16));
	s[6497] = ((617 : GoUInt16));
	s[6498] = ((473 : GoUInt16));
	s[6499] = ((4009 : GoUInt16));
	s[6500] = ((4025 : GoUInt16));
	s[6501] = ((4233 : GoUInt16));
	s[6502] = ((633 : GoUInt16));
	s[6503] = ((873 : GoUInt16));
	s[6504] = ((649 : GoUInt16));
	s[6505] = ((5073 : GoUInt16));
	s[6506] = ((57 : GoUInt16));
	s[6507] = ((3817 : GoUInt16));
	s[6508] = ((4441 : GoUInt16));
	s[6509] = ((3833 : GoUInt16));
	s[6510] = ((3849 : GoUInt16));
	s[6511] = ((4505 : GoUInt16));
	s[6512] = ((3889 : GoUInt16));
	s[6513] = ((585 : GoUInt16));
	s[6514] = ((3905 : GoUInt16));
	s[6515] = ((601 : GoUInt16));
	s[6516] = ((3921 : GoUInt16));
	s[6517] = ((857 : GoUInt16));
	s[6518] = ((3937 : GoUInt16));
	s[6519] = ((3953 : GoUInt16));
	s[6520] = ((217 : GoUInt16));
	s[6521] = ((3993 : GoUInt16));
	s[6522] = ((8249 : GoUInt16));
	s[6523] = ((617 : GoUInt16));
	s[6524] = ((473 : GoUInt16));
	s[6525] = ((4009 : GoUInt16));
	s[6526] = ((4025 : GoUInt16));
	s[6527] = ((4233 : GoUInt16));
	s[6528] = ((633 : GoUInt16));
	s[6529] = ((873 : GoUInt16));
	s[6530] = ((649 : GoUInt16));
	s[6531] = ((5073 : GoUInt16));
	s[6532] = ((57 : GoUInt16));
	s[6533] = ((3817 : GoUInt16));
	s[6534] = ((64 : GoUInt16));
	s[6535] = ((3833 : GoUInt16));
	s[6536] = ((3849 : GoUInt16));
	s[6537] = ((4505 : GoUInt16));
	s[6538] = ((3889 : GoUInt16));
	s[6539] = ((64 : GoUInt16));
	s[6540] = ((64 : GoUInt16));
	s[6541] = ((601 : GoUInt16));
	s[6542] = ((3921 : GoUInt16));
	s[6543] = ((857 : GoUInt16));
	s[6544] = ((3937 : GoUInt16));
	s[6545] = ((3953 : GoUInt16));
	s[6546] = ((217 : GoUInt16));
	s[6547] = ((3993 : GoUInt16));
	s[6548] = ((8249 : GoUInt16));
	s[6549] = ((64 : GoUInt16));
	s[6550] = ((473 : GoUInt16));
	s[6551] = ((4009 : GoUInt16));
	s[6552] = ((4025 : GoUInt16));
	s[6553] = ((4233 : GoUInt16));
	s[6554] = ((633 : GoUInt16));
	s[6555] = ((873 : GoUInt16));
	s[6556] = ((649 : GoUInt16));
	s[6557] = ((64 : GoUInt16));
	s[6558] = ((57 : GoUInt16));
	s[6559] = ((3817 : GoUInt16));
	s[6560] = ((4441 : GoUInt16));
	s[6561] = ((3833 : GoUInt16));
	s[6562] = ((3849 : GoUInt16));
	s[6563] = ((4505 : GoUInt16));
	s[6564] = ((3889 : GoUInt16));
	s[6565] = ((585 : GoUInt16));
	s[6566] = ((3905 : GoUInt16));
	s[6567] = ((601 : GoUInt16));
	s[6568] = ((3921 : GoUInt16));
	s[6569] = ((857 : GoUInt16));
	s[6570] = ((3937 : GoUInt16));
	s[6571] = ((3953 : GoUInt16));
	s[6572] = ((217 : GoUInt16));
	s[6573] = ((3993 : GoUInt16));
	s[6574] = ((8249 : GoUInt16));
	s[6575] = ((617 : GoUInt16));
	s[6576] = ((473 : GoUInt16));
	s[6577] = ((4009 : GoUInt16));
	s[6578] = ((4025 : GoUInt16));
	s[6579] = ((4233 : GoUInt16));
	s[6580] = ((633 : GoUInt16));
	s[6581] = ((873 : GoUInt16));
	s[6582] = ((649 : GoUInt16));
	s[6583] = ((5073 : GoUInt16));
	s[6584] = ((57 : GoUInt16));
	s[6585] = ((3817 : GoUInt16));
	s[6586] = ((64 : GoUInt16));
	s[6587] = ((3833 : GoUInt16));
	s[6588] = ((3849 : GoUInt16));
	s[6589] = ((4505 : GoUInt16));
	s[6590] = ((3889 : GoUInt16));
	s[6591] = ((64 : GoUInt16));
	s[6592] = ((3905 : GoUInt16));
	s[6593] = ((601 : GoUInt16));
	s[6594] = ((3921 : GoUInt16));
	s[6595] = ((857 : GoUInt16));
	s[6596] = ((3937 : GoUInt16));
	s[6597] = ((64 : GoUInt16));
	s[6598] = ((217 : GoUInt16));
	s[6599] = ((64 : GoUInt16));
	s[6600] = ((64 : GoUInt16));
	s[6601] = ((64 : GoUInt16));
	s[6602] = ((473 : GoUInt16));
	s[6603] = ((4009 : GoUInt16));
	s[6604] = ((4025 : GoUInt16));
	s[6605] = ((4233 : GoUInt16));
	s[6606] = ((633 : GoUInt16));
	s[6607] = ((873 : GoUInt16));
	s[6608] = ((649 : GoUInt16));
	s[6609] = ((64 : GoUInt16));
	s[6610] = ((57 : GoUInt16));
	s[6611] = ((3817 : GoUInt16));
	s[6612] = ((4441 : GoUInt16));
	s[6613] = ((3833 : GoUInt16));
	s[6614] = ((3849 : GoUInt16));
	s[6615] = ((4505 : GoUInt16));
	s[6616] = ((3889 : GoUInt16));
	s[6617] = ((585 : GoUInt16));
	s[6618] = ((3905 : GoUInt16));
	s[6619] = ((601 : GoUInt16));
	s[6620] = ((3921 : GoUInt16));
	s[6621] = ((857 : GoUInt16));
	s[6622] = ((3937 : GoUInt16));
	s[6623] = ((3953 : GoUInt16));
	s[6624] = ((217 : GoUInt16));
	s[6625] = ((3993 : GoUInt16));
	s[6626] = ((8249 : GoUInt16));
	s[6627] = ((617 : GoUInt16));
	s[6628] = ((473 : GoUInt16));
	s[6629] = ((4009 : GoUInt16));
	s[6630] = ((4025 : GoUInt16));
	s[6631] = ((4233 : GoUInt16));
	s[6632] = ((633 : GoUInt16));
	s[6633] = ((873 : GoUInt16));
	s[6634] = ((649 : GoUInt16));
	s[6635] = ((5073 : GoUInt16));
	s[6636] = ((57 : GoUInt16));
	s[6637] = ((3817 : GoUInt16));
	s[6638] = ((4441 : GoUInt16));
	s[6639] = ((3833 : GoUInt16));
	s[6640] = ((3849 : GoUInt16));
	s[6641] = ((4505 : GoUInt16));
	s[6642] = ((3889 : GoUInt16));
	s[6643] = ((585 : GoUInt16));
	s[6644] = ((3905 : GoUInt16));
	s[6645] = ((601 : GoUInt16));
	s[6646] = ((3921 : GoUInt16));
	s[6647] = ((857 : GoUInt16));
	s[6648] = ((3937 : GoUInt16));
	s[6649] = ((3953 : GoUInt16));
	s[6650] = ((217 : GoUInt16));
	s[6651] = ((3993 : GoUInt16));
	s[6652] = ((8249 : GoUInt16));
	s[6653] = ((617 : GoUInt16));
	s[6654] = ((473 : GoUInt16));
	s[6655] = ((4009 : GoUInt16));
	s[6656] = ((4025 : GoUInt16));
	s[6657] = ((4233 : GoUInt16));
	s[6658] = ((633 : GoUInt16));
	s[6659] = ((873 : GoUInt16));
	s[6660] = ((649 : GoUInt16));
	s[6661] = ((5073 : GoUInt16));
	s[6662] = ((57 : GoUInt16));
	s[6663] = ((3817 : GoUInt16));
	s[6664] = ((4441 : GoUInt16));
	s[6665] = ((3833 : GoUInt16));
	s[6666] = ((3849 : GoUInt16));
	s[6667] = ((4505 : GoUInt16));
	s[6668] = ((3889 : GoUInt16));
	s[6669] = ((585 : GoUInt16));
	s[6670] = ((3905 : GoUInt16));
	s[6671] = ((601 : GoUInt16));
	s[6672] = ((3921 : GoUInt16));
	s[6673] = ((857 : GoUInt16));
	s[6674] = ((3937 : GoUInt16));
	s[6675] = ((3953 : GoUInt16));
	s[6676] = ((217 : GoUInt16));
	s[6677] = ((3993 : GoUInt16));
	s[6678] = ((8249 : GoUInt16));
	s[6679] = ((617 : GoUInt16));
	s[6680] = ((473 : GoUInt16));
	s[6681] = ((4009 : GoUInt16));
	s[6682] = ((4025 : GoUInt16));
	s[6683] = ((4233 : GoUInt16));
	s[6684] = ((633 : GoUInt16));
	s[6685] = ((873 : GoUInt16));
	s[6686] = ((649 : GoUInt16));
	s[6687] = ((5073 : GoUInt16));
	s[6688] = ((57 : GoUInt16));
	s[6689] = ((3817 : GoUInt16));
	s[6690] = ((4441 : GoUInt16));
	s[6691] = ((3833 : GoUInt16));
	s[6692] = ((3849 : GoUInt16));
	s[6693] = ((4505 : GoUInt16));
	s[6694] = ((3889 : GoUInt16));
	s[6695] = ((585 : GoUInt16));
	s[6696] = ((3905 : GoUInt16));
	s[6697] = ((601 : GoUInt16));
	s[6698] = ((3921 : GoUInt16));
	s[6699] = ((857 : GoUInt16));
	s[6700] = ((3937 : GoUInt16));
	s[6701] = ((3953 : GoUInt16));
	s[6702] = ((217 : GoUInt16));
	s[6703] = ((3993 : GoUInt16));
	s[6704] = ((8249 : GoUInt16));
	s[6705] = ((617 : GoUInt16));
	s[6706] = ((473 : GoUInt16));
	s[6707] = ((4009 : GoUInt16));
	s[6708] = ((4025 : GoUInt16));
	s[6709] = ((4233 : GoUInt16));
	s[6710] = ((633 : GoUInt16));
	s[6711] = ((873 : GoUInt16));
	s[6712] = ((649 : GoUInt16));
	s[6713] = ((5073 : GoUInt16));
	s[6714] = ((57 : GoUInt16));
	s[6715] = ((3817 : GoUInt16));
	s[6716] = ((4441 : GoUInt16));
	s[6717] = ((3833 : GoUInt16));
	s[6718] = ((3849 : GoUInt16));
	s[6719] = ((4505 : GoUInt16));
	s[6720] = ((3889 : GoUInt16));
	s[6721] = ((585 : GoUInt16));
	s[6722] = ((3905 : GoUInt16));
	s[6723] = ((601 : GoUInt16));
	s[6724] = ((3921 : GoUInt16));
	s[6725] = ((857 : GoUInt16));
	s[6726] = ((3937 : GoUInt16));
	s[6727] = ((3953 : GoUInt16));
	s[6728] = ((217 : GoUInt16));
	s[6729] = ((3993 : GoUInt16));
	s[6730] = ((8249 : GoUInt16));
	s[6731] = ((617 : GoUInt16));
	s[6732] = ((473 : GoUInt16));
	s[6733] = ((4009 : GoUInt16));
	s[6734] = ((4025 : GoUInt16));
	s[6735] = ((4233 : GoUInt16));
	s[6736] = ((633 : GoUInt16));
	s[6737] = ((873 : GoUInt16));
	s[6738] = ((649 : GoUInt16));
	s[6739] = ((5073 : GoUInt16));
	s[6740] = ((57 : GoUInt16));
	s[6741] = ((3817 : GoUInt16));
	s[6742] = ((4441 : GoUInt16));
	s[6743] = ((3833 : GoUInt16));
	s[6744] = ((3849 : GoUInt16));
	s[6745] = ((4505 : GoUInt16));
	s[6746] = ((3889 : GoUInt16));
	s[6747] = ((585 : GoUInt16));
	s[6748] = ((3905 : GoUInt16));
	s[6749] = ((601 : GoUInt16));
	s[6750] = ((3921 : GoUInt16));
	s[6751] = ((857 : GoUInt16));
	s[6752] = ((3937 : GoUInt16));
	s[6753] = ((3953 : GoUInt16));
	s[6754] = ((217 : GoUInt16));
	s[6755] = ((3993 : GoUInt16));
	s[6756] = ((8249 : GoUInt16));
	s[6757] = ((617 : GoUInt16));
	s[6758] = ((473 : GoUInt16));
	s[6759] = ((4009 : GoUInt16));
	s[6760] = ((4025 : GoUInt16));
	s[6761] = ((4233 : GoUInt16));
	s[6762] = ((633 : GoUInt16));
	s[6763] = ((873 : GoUInt16));
	s[6764] = ((649 : GoUInt16));
	s[6765] = ((5073 : GoUInt16));
	s[6766] = ((57 : GoUInt16));
	s[6767] = ((3817 : GoUInt16));
	s[6768] = ((4441 : GoUInt16));
	s[6769] = ((3833 : GoUInt16));
	s[6770] = ((3849 : GoUInt16));
	s[6771] = ((4505 : GoUInt16));
	s[6772] = ((3889 : GoUInt16));
	s[6773] = ((585 : GoUInt16));
	s[6774] = ((3905 : GoUInt16));
	s[6775] = ((601 : GoUInt16));
	s[6776] = ((3921 : GoUInt16));
	s[6777] = ((857 : GoUInt16));
	s[6778] = ((3937 : GoUInt16));
	s[6779] = ((3953 : GoUInt16));
	s[6780] = ((217 : GoUInt16));
	s[6781] = ((3993 : GoUInt16));
	s[6782] = ((8249 : GoUInt16));
	s[6783] = ((617 : GoUInt16));
	s[6784] = ((473 : GoUInt16));
	s[6785] = ((4009 : GoUInt16));
	s[6786] = ((4025 : GoUInt16));
	s[6787] = ((4233 : GoUInt16));
	s[6788] = ((633 : GoUInt16));
	s[6789] = ((873 : GoUInt16));
	s[6790] = ((649 : GoUInt16));
	s[6791] = ((5073 : GoUInt16));
	s[6792] = ((57 : GoUInt16));
	s[6793] = ((3817 : GoUInt16));
	s[6794] = ((4441 : GoUInt16));
	s[6795] = ((3833 : GoUInt16));
	s[6796] = ((3849 : GoUInt16));
	s[6797] = ((4505 : GoUInt16));
	s[6798] = ((3889 : GoUInt16));
	s[6799] = ((585 : GoUInt16));
	s[6800] = ((3905 : GoUInt16));
	s[6801] = ((601 : GoUInt16));
	s[6802] = ((3921 : GoUInt16));
	s[6803] = ((857 : GoUInt16));
	s[6804] = ((3937 : GoUInt16));
	s[6805] = ((3953 : GoUInt16));
	s[6806] = ((217 : GoUInt16));
	s[6807] = ((3993 : GoUInt16));
	s[6808] = ((8249 : GoUInt16));
	s[6809] = ((617 : GoUInt16));
	s[6810] = ((473 : GoUInt16));
	s[6811] = ((4009 : GoUInt16));
	s[6812] = ((4025 : GoUInt16));
	s[6813] = ((4233 : GoUInt16));
	s[6814] = ((633 : GoUInt16));
	s[6815] = ((873 : GoUInt16));
	s[6816] = ((649 : GoUInt16));
	s[6817] = ((5073 : GoUInt16));
	s[6818] = ((57 : GoUInt16));
	s[6819] = ((3817 : GoUInt16));
	s[6820] = ((4441 : GoUInt16));
	s[6821] = ((3833 : GoUInt16));
	s[6822] = ((3849 : GoUInt16));
	s[6823] = ((4505 : GoUInt16));
	s[6824] = ((3889 : GoUInt16));
	s[6825] = ((585 : GoUInt16));
	s[6826] = ((3905 : GoUInt16));
	s[6827] = ((601 : GoUInt16));
	s[6828] = ((3921 : GoUInt16));
	s[6829] = ((857 : GoUInt16));
	s[6830] = ((3937 : GoUInt16));
	s[6831] = ((3953 : GoUInt16));
	s[6832] = ((217 : GoUInt16));
	s[6833] = ((3993 : GoUInt16));
	s[6834] = ((8249 : GoUInt16));
	s[6835] = ((617 : GoUInt16));
	s[6836] = ((473 : GoUInt16));
	s[6837] = ((4009 : GoUInt16));
	s[6838] = ((4025 : GoUInt16));
	s[6839] = ((4233 : GoUInt16));
	s[6840] = ((633 : GoUInt16));
	s[6841] = ((873 : GoUInt16));
	s[6842] = ((649 : GoUInt16));
	s[6843] = ((5073 : GoUInt16));
	s[6844] = ((57 : GoUInt16));
	s[6845] = ((3817 : GoUInt16));
	s[6846] = ((4441 : GoUInt16));
	s[6847] = ((3833 : GoUInt16));
	s[6848] = ((3849 : GoUInt16));
	s[6849] = ((4505 : GoUInt16));
	s[6850] = ((3889 : GoUInt16));
	s[6851] = ((585 : GoUInt16));
	s[6852] = ((3905 : GoUInt16));
	s[6853] = ((601 : GoUInt16));
	s[6854] = ((3921 : GoUInt16));
	s[6855] = ((857 : GoUInt16));
	s[6856] = ((3937 : GoUInt16));
	s[6857] = ((3953 : GoUInt16));
	s[6858] = ((217 : GoUInt16));
	s[6859] = ((3993 : GoUInt16));
	s[6860] = ((8249 : GoUInt16));
	s[6861] = ((617 : GoUInt16));
	s[6862] = ((473 : GoUInt16));
	s[6863] = ((4009 : GoUInt16));
	s[6864] = ((4025 : GoUInt16));
	s[6865] = ((4233 : GoUInt16));
	s[6866] = ((633 : GoUInt16));
	s[6867] = ((873 : GoUInt16));
	s[6868] = ((649 : GoUInt16));
	s[6869] = ((5073 : GoUInt16));
	s[6870] = ((57 : GoUInt16));
	s[6871] = ((3817 : GoUInt16));
	s[6872] = ((4441 : GoUInt16));
	s[6873] = ((3833 : GoUInt16));
	s[6874] = ((3849 : GoUInt16));
	s[6875] = ((4505 : GoUInt16));
	s[6876] = ((3889 : GoUInt16));
	s[6877] = ((585 : GoUInt16));
	s[6878] = ((3905 : GoUInt16));
	s[6879] = ((601 : GoUInt16));
	s[6880] = ((3921 : GoUInt16));
	s[6881] = ((857 : GoUInt16));
	s[6882] = ((3937 : GoUInt16));
	s[6883] = ((3953 : GoUInt16));
	s[6884] = ((217 : GoUInt16));
	s[6885] = ((3993 : GoUInt16));
	s[6886] = ((8249 : GoUInt16));
	s[6887] = ((617 : GoUInt16));
	s[6888] = ((473 : GoUInt16));
	s[6889] = ((4009 : GoUInt16));
	s[6890] = ((4025 : GoUInt16));
	s[6891] = ((4233 : GoUInt16));
	s[6892] = ((633 : GoUInt16));
	s[6893] = ((873 : GoUInt16));
	s[6894] = ((649 : GoUInt16));
	s[6895] = ((5073 : GoUInt16));
	s[6896] = ((57 : GoUInt16));
	s[6897] = ((3817 : GoUInt16));
	s[6898] = ((4441 : GoUInt16));
	s[6899] = ((3833 : GoUInt16));
	s[6900] = ((3849 : GoUInt16));
	s[6901] = ((4505 : GoUInt16));
	s[6902] = ((3889 : GoUInt16));
	s[6903] = ((585 : GoUInt16));
	s[6904] = ((3905 : GoUInt16));
	s[6905] = ((601 : GoUInt16));
	s[6906] = ((3921 : GoUInt16));
	s[6907] = ((857 : GoUInt16));
	s[6908] = ((3937 : GoUInt16));
	s[6909] = ((3953 : GoUInt16));
	s[6910] = ((217 : GoUInt16));
	s[6911] = ((3993 : GoUInt16));
	s[6912] = ((8249 : GoUInt16));
	s[6913] = ((617 : GoUInt16));
	s[6914] = ((473 : GoUInt16));
	s[6915] = ((4009 : GoUInt16));
	s[6916] = ((4025 : GoUInt16));
	s[6917] = ((4233 : GoUInt16));
	s[6918] = ((633 : GoUInt16));
	s[6919] = ((873 : GoUInt16));
	s[6920] = ((649 : GoUInt16));
	s[6921] = ((5073 : GoUInt16));
	s[6922] = ((57 : GoUInt16));
	s[6923] = ((3817 : GoUInt16));
	s[6924] = ((4441 : GoUInt16));
	s[6925] = ((3833 : GoUInt16));
	s[6926] = ((3849 : GoUInt16));
	s[6927] = ((4505 : GoUInt16));
	s[6928] = ((3889 : GoUInt16));
	s[6929] = ((585 : GoUInt16));
	s[6930] = ((3905 : GoUInt16));
	s[6931] = ((601 : GoUInt16));
	s[6932] = ((3921 : GoUInt16));
	s[6933] = ((857 : GoUInt16));
	s[6934] = ((3937 : GoUInt16));
	s[6935] = ((3953 : GoUInt16));
	s[6936] = ((217 : GoUInt16));
	s[6937] = ((3993 : GoUInt16));
	s[6938] = ((8249 : GoUInt16));
	s[6939] = ((617 : GoUInt16));
	s[6940] = ((473 : GoUInt16));
	s[6941] = ((4009 : GoUInt16));
	s[6942] = ((4025 : GoUInt16));
	s[6943] = ((4233 : GoUInt16));
	s[6944] = ((633 : GoUInt16));
	s[6945] = ((873 : GoUInt16));
	s[6946] = ((649 : GoUInt16));
	s[6947] = ((5073 : GoUInt16));
	s[6948] = ((47825 : GoUInt16));
	s[6949] = ((47849 : GoUInt16));
	s[6950] = ((64 : GoUInt16));
	s[6951] = ((64 : GoUInt16));
	s[6952] = ((47873 : GoUInt16));
	s[6953] = ((4249 : GoUInt16));
	s[6954] = ((4273 : GoUInt16));
	s[6955] = ((4297 : GoUInt16));
	s[6956] = ((47897 : GoUInt16));
	s[6957] = ((47921 : GoUInt16));
	s[6958] = ((47945 : GoUInt16));
	s[6959] = ((5161 : GoUInt16));
	s[6960] = ((6705 : GoUInt16));
	s[6961] = ((47969 : GoUInt16));
	s[6962] = ((47993 : GoUInt16));
	s[6963] = ((48017 : GoUInt16));
	s[6964] = ((48041 : GoUInt16));
	s[6965] = ((48065 : GoUInt16));
	s[6966] = ((48089 : GoUInt16));
	s[6967] = ((8457 : GoUInt16));
	s[6968] = ((4369 : GoUInt16));
	s[6969] = ((5161 : GoUInt16));
	s[6970] = ((48113 : GoUInt16));
	s[6971] = ((48137 : GoUInt16));
	s[6972] = ((48161 : GoUInt16));
	s[6973] = ((4321 : GoUInt16));
	s[6974] = ((4345 : GoUInt16));
	s[6975] = ((48185 : GoUInt16));
	s[6976] = ((8313 : GoUInt16));
	s[6977] = ((48209 : GoUInt16));
	s[6978] = ((47873 : GoUInt16));
	s[6979] = ((4249 : GoUInt16));
	s[6980] = ((4273 : GoUInt16));
	s[6981] = ((4297 : GoUInt16));
	s[6982] = ((47897 : GoUInt16));
	s[6983] = ((47921 : GoUInt16));
	s[6984] = ((47945 : GoUInt16));
	s[6985] = ((5161 : GoUInt16));
	s[6986] = ((6705 : GoUInt16));
	s[6987] = ((47969 : GoUInt16));
	s[6988] = ((47993 : GoUInt16));
	s[6989] = ((48017 : GoUInt16));
	s[6990] = ((48041 : GoUInt16));
	s[6991] = ((48065 : GoUInt16));
	s[6992] = ((48089 : GoUInt16));
	s[6993] = ((8457 : GoUInt16));
	s[6994] = ((4369 : GoUInt16));
	s[6995] = ((48113 : GoUInt16));
	s[6996] = ((48113 : GoUInt16));
	s[6997] = ((48137 : GoUInt16));
	s[6998] = ((48161 : GoUInt16));
	s[6999] = ((4321 : GoUInt16));
	s[7000] = ((4345 : GoUInt16));
	s[7001] = ((48185 : GoUInt16));
	s[7002] = ((8313 : GoUInt16));
	s[7003] = ((48241 : GoUInt16));
	s[7004] = ((47897 : GoUInt16));
	s[7005] = ((5161 : GoUInt16));
	s[7006] = ((47969 : GoUInt16));
	s[7007] = ((4321 : GoUInt16));
	s[7008] = ((4369 : GoUInt16));
	s[7009] = ((8457 : GoUInt16));
	s[7010] = ((47873 : GoUInt16));
	s[7011] = ((4249 : GoUInt16));
	s[7012] = ((4273 : GoUInt16));
	s[7013] = ((4297 : GoUInt16));
	s[7014] = ((47897 : GoUInt16));
	s[7015] = ((47921 : GoUInt16));
	s[7016] = ((47945 : GoUInt16));
	s[7017] = ((5161 : GoUInt16));
	s[7018] = ((6705 : GoUInt16));
	s[7019] = ((47969 : GoUInt16));
	s[7020] = ((47993 : GoUInt16));
	s[7021] = ((48017 : GoUInt16));
	s[7022] = ((48041 : GoUInt16));
	s[7023] = ((48065 : GoUInt16));
	s[7024] = ((48089 : GoUInt16));
	s[7025] = ((8457 : GoUInt16));
	s[7026] = ((4369 : GoUInt16));
	s[7027] = ((5161 : GoUInt16));
	s[7028] = ((48113 : GoUInt16));
	s[7029] = ((48137 : GoUInt16));
	s[7030] = ((48161 : GoUInt16));
	s[7031] = ((4321 : GoUInt16));
	s[7032] = ((4345 : GoUInt16));
	s[7033] = ((48185 : GoUInt16));
	s[7034] = ((8313 : GoUInt16));
	s[7035] = ((48209 : GoUInt16));
	s[7036] = ((47873 : GoUInt16));
	s[7037] = ((4249 : GoUInt16));
	s[7038] = ((4273 : GoUInt16));
	s[7039] = ((4297 : GoUInt16));
	s[7040] = ((47897 : GoUInt16));
	s[7041] = ((47921 : GoUInt16));
	s[7042] = ((47945 : GoUInt16));
	s[7043] = ((5161 : GoUInt16));
	s[7044] = ((6705 : GoUInt16));
	s[7045] = ((47969 : GoUInt16));
	s[7046] = ((47993 : GoUInt16));
	s[7047] = ((48017 : GoUInt16));
	s[7048] = ((48041 : GoUInt16));
	s[7049] = ((48065 : GoUInt16));
	s[7050] = ((48089 : GoUInt16));
	s[7051] = ((8457 : GoUInt16));
	s[7052] = ((4369 : GoUInt16));
	s[7053] = ((48113 : GoUInt16));
	s[7054] = ((48113 : GoUInt16));
	s[7055] = ((48137 : GoUInt16));
	s[7056] = ((48161 : GoUInt16));
	s[7057] = ((4321 : GoUInt16));
	s[7058] = ((4345 : GoUInt16));
	s[7059] = ((48185 : GoUInt16));
	s[7060] = ((8313 : GoUInt16));
	s[7061] = ((48241 : GoUInt16));
	s[7062] = ((47897 : GoUInt16));
	s[7063] = ((5161 : GoUInt16));
	s[7064] = ((47969 : GoUInt16));
	s[7065] = ((4321 : GoUInt16));
	s[7066] = ((4369 : GoUInt16));
	s[7067] = ((8457 : GoUInt16));
	s[7068] = ((47873 : GoUInt16));
	s[7069] = ((4249 : GoUInt16));
	s[7070] = ((4273 : GoUInt16));
	s[7071] = ((4297 : GoUInt16));
	s[7072] = ((47897 : GoUInt16));
	s[7073] = ((47921 : GoUInt16));
	s[7074] = ((47945 : GoUInt16));
	s[7075] = ((5161 : GoUInt16));
	s[7076] = ((6705 : GoUInt16));
	s[7077] = ((47969 : GoUInt16));
	s[7078] = ((47993 : GoUInt16));
	s[7079] = ((48017 : GoUInt16));
	s[7080] = ((48041 : GoUInt16));
	s[7081] = ((48065 : GoUInt16));
	s[7082] = ((48089 : GoUInt16));
	s[7083] = ((8457 : GoUInt16));
	s[7084] = ((4369 : GoUInt16));
	s[7085] = ((5161 : GoUInt16));
	s[7086] = ((48113 : GoUInt16));
	s[7087] = ((48137 : GoUInt16));
	s[7088] = ((48161 : GoUInt16));
	s[7089] = ((4321 : GoUInt16));
	s[7090] = ((4345 : GoUInt16));
	s[7091] = ((48185 : GoUInt16));
	s[7092] = ((8313 : GoUInt16));
	s[7093] = ((48209 : GoUInt16));
	s[7094] = ((47873 : GoUInt16));
	s[7095] = ((4249 : GoUInt16));
	s[7096] = ((4273 : GoUInt16));
	s[7097] = ((4297 : GoUInt16));
	s[7098] = ((47897 : GoUInt16));
	s[7099] = ((47921 : GoUInt16));
	s[7100] = ((47945 : GoUInt16));
	s[7101] = ((5161 : GoUInt16));
	s[7102] = ((6705 : GoUInt16));
	s[7103] = ((47969 : GoUInt16));
	s[7104] = ((47993 : GoUInt16));
	s[7105] = ((48017 : GoUInt16));
	s[7106] = ((48041 : GoUInt16));
	s[7107] = ((48065 : GoUInt16));
	s[7108] = ((48089 : GoUInt16));
	s[7109] = ((8457 : GoUInt16));
	s[7110] = ((4369 : GoUInt16));
	s[7111] = ((48113 : GoUInt16));
	s[7112] = ((48113 : GoUInt16));
	s[7113] = ((48137 : GoUInt16));
	s[7114] = ((48161 : GoUInt16));
	s[7115] = ((4321 : GoUInt16));
	s[7116] = ((4345 : GoUInt16));
	s[7117] = ((48185 : GoUInt16));
	s[7118] = ((8313 : GoUInt16));
	s[7119] = ((48241 : GoUInt16));
	s[7120] = ((47897 : GoUInt16));
	s[7121] = ((5161 : GoUInt16));
	s[7122] = ((47969 : GoUInt16));
	s[7123] = ((4321 : GoUInt16));
	s[7124] = ((4369 : GoUInt16));
	s[7125] = ((8457 : GoUInt16));
	s[7126] = ((47873 : GoUInt16));
	s[7127] = ((4249 : GoUInt16));
	s[7128] = ((4273 : GoUInt16));
	s[7129] = ((4297 : GoUInt16));
	s[7130] = ((47897 : GoUInt16));
	s[7131] = ((47921 : GoUInt16));
	s[7132] = ((47945 : GoUInt16));
	s[7133] = ((5161 : GoUInt16));
	s[7134] = ((6705 : GoUInt16));
	s[7135] = ((47969 : GoUInt16));
	s[7136] = ((47993 : GoUInt16));
	s[7137] = ((48017 : GoUInt16));
	s[7138] = ((48041 : GoUInt16));
	s[7139] = ((48065 : GoUInt16));
	s[7140] = ((48089 : GoUInt16));
	s[7141] = ((8457 : GoUInt16));
	s[7142] = ((4369 : GoUInt16));
	s[7143] = ((5161 : GoUInt16));
	s[7144] = ((48113 : GoUInt16));
	s[7145] = ((48137 : GoUInt16));
	s[7146] = ((48161 : GoUInt16));
	s[7147] = ((4321 : GoUInt16));
	s[7148] = ((4345 : GoUInt16));
	s[7149] = ((48185 : GoUInt16));
	s[7150] = ((8313 : GoUInt16));
	s[7151] = ((48209 : GoUInt16));
	s[7152] = ((47873 : GoUInt16));
	s[7153] = ((4249 : GoUInt16));
	s[7154] = ((4273 : GoUInt16));
	s[7155] = ((4297 : GoUInt16));
	s[7156] = ((47897 : GoUInt16));
	s[7157] = ((47921 : GoUInt16));
	s[7158] = ((47945 : GoUInt16));
	s[7159] = ((5161 : GoUInt16));
	s[7160] = ((6705 : GoUInt16));
	s[7161] = ((47969 : GoUInt16));
	s[7162] = ((47993 : GoUInt16));
	s[7163] = ((48017 : GoUInt16));
	s[7164] = ((48041 : GoUInt16));
	s[7165] = ((48065 : GoUInt16));
	s[7166] = ((48089 : GoUInt16));
	s[7167] = ((8457 : GoUInt16));
	s[7168] = ((4369 : GoUInt16));
	s[7169] = ((48113 : GoUInt16));
	s[7170] = ((48113 : GoUInt16));
	s[7171] = ((48137 : GoUInt16));
	s[7172] = ((48161 : GoUInt16));
	s[7173] = ((4321 : GoUInt16));
	s[7174] = ((4345 : GoUInt16));
	s[7175] = ((48185 : GoUInt16));
	s[7176] = ((8313 : GoUInt16));
	s[7177] = ((48241 : GoUInt16));
	s[7178] = ((47897 : GoUInt16));
	s[7179] = ((5161 : GoUInt16));
	s[7180] = ((47969 : GoUInt16));
	s[7181] = ((4321 : GoUInt16));
	s[7182] = ((4369 : GoUInt16));
	s[7183] = ((8457 : GoUInt16));
	s[7184] = ((47873 : GoUInt16));
	s[7185] = ((4249 : GoUInt16));
	s[7186] = ((4273 : GoUInt16));
	s[7187] = ((4297 : GoUInt16));
	s[7188] = ((47897 : GoUInt16));
	s[7189] = ((47921 : GoUInt16));
	s[7190] = ((47945 : GoUInt16));
	s[7191] = ((5161 : GoUInt16));
	s[7192] = ((6705 : GoUInt16));
	s[7193] = ((47969 : GoUInt16));
	s[7194] = ((47993 : GoUInt16));
	s[7195] = ((48017 : GoUInt16));
	s[7196] = ((48041 : GoUInt16));
	s[7197] = ((48065 : GoUInt16));
	s[7198] = ((48089 : GoUInt16));
	s[7199] = ((8457 : GoUInt16));
	s[7200] = ((4369 : GoUInt16));
	s[7201] = ((5161 : GoUInt16));
	s[7202] = ((48113 : GoUInt16));
	s[7203] = ((48137 : GoUInt16));
	s[7204] = ((48161 : GoUInt16));
	s[7205] = ((4321 : GoUInt16));
	s[7206] = ((4345 : GoUInt16));
	s[7207] = ((48185 : GoUInt16));
	s[7208] = ((8313 : GoUInt16));
	s[7209] = ((48209 : GoUInt16));
	s[7210] = ((47873 : GoUInt16));
	s[7211] = ((4249 : GoUInt16));
	s[7212] = ((4273 : GoUInt16));
	s[7213] = ((4297 : GoUInt16));
	s[7214] = ((47897 : GoUInt16));
	s[7215] = ((47921 : GoUInt16));
	s[7216] = ((47945 : GoUInt16));
	s[7217] = ((5161 : GoUInt16));
	s[7218] = ((6705 : GoUInt16));
	s[7219] = ((47969 : GoUInt16));
	s[7220] = ((47993 : GoUInt16));
	s[7221] = ((48017 : GoUInt16));
	s[7222] = ((48041 : GoUInt16));
	s[7223] = ((48065 : GoUInt16));
	s[7224] = ((48089 : GoUInt16));
	s[7225] = ((8457 : GoUInt16));
	s[7226] = ((4369 : GoUInt16));
	s[7227] = ((48113 : GoUInt16));
	s[7228] = ((48113 : GoUInt16));
	s[7229] = ((48137 : GoUInt16));
	s[7230] = ((48161 : GoUInt16));
	s[7231] = ((4321 : GoUInt16));
	s[7232] = ((4345 : GoUInt16));
	s[7233] = ((48185 : GoUInt16));
	s[7234] = ((8313 : GoUInt16));
	s[7235] = ((48241 : GoUInt16));
	s[7236] = ((47897 : GoUInt16));
	s[7237] = ((5161 : GoUInt16));
	s[7238] = ((47969 : GoUInt16));
	s[7239] = ((4321 : GoUInt16));
	s[7240] = ((4369 : GoUInt16));
	s[7241] = ((8457 : GoUInt16));
	s[7242] = ((48273 : GoUInt16));
	s[7243] = ((48273 : GoUInt16));
	s[7244] = ((64 : GoUInt16));
	s[7245] = ((64 : GoUInt16));
	s[7246] = ((8001 : GoUInt16));
	s[7247] = ((201 : GoUInt16));
	s[7248] = ((105 : GoUInt16));
	s[7249] = ((121 : GoUInt16));
	s[7250] = ((8017 : GoUInt16));
	s[7251] = ((8033 : GoUInt16));
	s[7252] = ((8049 : GoUInt16));
	s[7253] = ((8065 : GoUInt16));
	s[7254] = ((8081 : GoUInt16));
	s[7255] = ((8097 : GoUInt16));
	s[7256] = ((8001 : GoUInt16));
	s[7257] = ((201 : GoUInt16));
	s[7258] = ((105 : GoUInt16));
	s[7259] = ((121 : GoUInt16));
	s[7260] = ((8017 : GoUInt16));
	s[7261] = ((8033 : GoUInt16));
	s[7262] = ((8049 : GoUInt16));
	s[7263] = ((8065 : GoUInt16));
	s[7264] = ((8081 : GoUInt16));
	s[7265] = ((8097 : GoUInt16));
	s[7266] = ((8001 : GoUInt16));
	s[7267] = ((201 : GoUInt16));
	s[7268] = ((105 : GoUInt16));
	s[7269] = ((121 : GoUInt16));
	s[7270] = ((8017 : GoUInt16));
	s[7271] = ((8033 : GoUInt16));
	s[7272] = ((8049 : GoUInt16));
	s[7273] = ((8065 : GoUInt16));
	s[7274] = ((8081 : GoUInt16));
	s[7275] = ((8097 : GoUInt16));
	s[7276] = ((8001 : GoUInt16));
	s[7277] = ((201 : GoUInt16));
	s[7278] = ((105 : GoUInt16));
	s[7279] = ((121 : GoUInt16));
	s[7280] = ((8017 : GoUInt16));
	s[7281] = ((8033 : GoUInt16));
	s[7282] = ((8049 : GoUInt16));
	s[7283] = ((8065 : GoUInt16));
	s[7284] = ((8081 : GoUInt16));
	s[7285] = ((8097 : GoUInt16));
	s[7286] = ((8001 : GoUInt16));
	s[7287] = ((201 : GoUInt16));
	s[7288] = ((105 : GoUInt16));
	s[7289] = ((121 : GoUInt16));
	s[7290] = ((8017 : GoUInt16));
	s[7291] = ((8033 : GoUInt16));
	s[7292] = ((8049 : GoUInt16));
	s[7293] = ((8065 : GoUInt16));
	s[7294] = ((8081 : GoUInt16));
	s[7295] = ((8097 : GoUInt16));
	s[7296] = ((57621 : GoUInt16));
	s[7297] = ((57621 : GoUInt16));
	s[7298] = ((57653 : GoUInt16));
	s[7299] = ((57653 : GoUInt16));
	s[7300] = ((57621 : GoUInt16));
	s[7301] = ((57621 : GoUInt16));
	s[7302] = ((57717 : GoUInt16));
	s[7303] = ((57717 : GoUInt16));
	s[7304] = ((57621 : GoUInt16));
	s[7305] = ((57621 : GoUInt16));
	s[7306] = ((57653 : GoUInt16));
	s[7307] = ((57653 : GoUInt16));
	s[7308] = ((57621 : GoUInt16));
	s[7309] = ((57621 : GoUInt16));
	s[7310] = ((57845 : GoUInt16));
	s[7311] = ((57845 : GoUInt16));
	s[7312] = ((57621 : GoUInt16));
	s[7313] = ((57621 : GoUInt16));
	s[7314] = ((57653 : GoUInt16));
	s[7315] = ((57653 : GoUInt16));
	s[7316] = ((57621 : GoUInt16));
	s[7317] = ((57621 : GoUInt16));
	s[7318] = ((57717 : GoUInt16));
	s[7319] = ((57717 : GoUInt16));
	s[7320] = ((57621 : GoUInt16));
	s[7321] = ((57621 : GoUInt16));
	s[7322] = ((57653 : GoUInt16));
	s[7323] = ((57653 : GoUInt16));
	s[7324] = ((57621 : GoUInt16));
	s[7325] = ((57621 : GoUInt16));
	s[7326] = ((35645 : GoUInt16));
	s[7327] = ((35645 : GoUInt16));
	s[7328] = ((1205 : GoUInt16));
	s[7329] = ((1205 : GoUInt16));
	s[7330] = ((2568 : GoUInt16));
	s[7331] = ((2568 : GoUInt16));
	s[7332] = ((2568 : GoUInt16));
	s[7333] = ((2568 : GoUInt16));
	s[7334] = ((2568 : GoUInt16));
	s[7335] = ((2568 : GoUInt16));
	s[7336] = ((2568 : GoUInt16));
	s[7337] = ((2568 : GoUInt16));
	s[7338] = ((2568 : GoUInt16));
	s[7339] = ((2568 : GoUInt16));
	s[7340] = ((2568 : GoUInt16));
	s[7341] = ((2568 : GoUInt16));
	s[7342] = ((2568 : GoUInt16));
	s[7343] = ((2568 : GoUInt16));
	s[7344] = ((2568 : GoUInt16));
	s[7345] = ((2568 : GoUInt16));
	s[7346] = ((2568 : GoUInt16));
	s[7347] = ((2568 : GoUInt16));
	s[7348] = ((2568 : GoUInt16));
	s[7349] = ((2568 : GoUInt16));
	s[7350] = ((2568 : GoUInt16));
	s[7351] = ((2568 : GoUInt16));
	s[7352] = ((2568 : GoUInt16));
	s[7353] = ((2568 : GoUInt16));
	s[7354] = ((2568 : GoUInt16));
	s[7355] = ((2568 : GoUInt16));
	s[7356] = ((2568 : GoUInt16));
	s[7357] = ((2568 : GoUInt16));
	s[7358] = ((2568 : GoUInt16));
	s[7359] = ((2568 : GoUInt16));
	s[7360] = ((45529 : GoUInt16));
	s[7361] = ((45553 : GoUInt16));
	s[7362] = ((45649 : GoUInt16));
	s[7363] = ((45721 : GoUInt16));
	s[7364] = ((64 : GoUInt16));
	s[7365] = ((46177 : GoUInt16));
	s[7366] = ((45793 : GoUInt16));
	s[7367] = ((45673 : GoUInt16));
	s[7368] = ((45913 : GoUInt16));
	s[7369] = ((46201 : GoUInt16));
	s[7370] = ((46057 : GoUInt16));
	s[7371] = ((46081 : GoUInt16));
	s[7372] = ((46105 : GoUInt16));
	s[7373] = ((46129 : GoUInt16));
	s[7374] = ((45817 : GoUInt16));
	s[7375] = ((45961 : GoUInt16));
	s[7376] = ((46009 : GoUInt16));
	s[7377] = ((45865 : GoUInt16));
	s[7378] = ((46033 : GoUInt16));
	s[7379] = ((45769 : GoUInt16));
	s[7380] = ((45841 : GoUInt16));
	s[7381] = ((45601 : GoUInt16));
	s[7382] = ((45625 : GoUInt16));
	s[7383] = ((45697 : GoUInt16));
	s[7384] = ((45745 : GoUInt16));
	s[7385] = ((45889 : GoUInt16));
	s[7386] = ((45937 : GoUInt16));
	s[7387] = ((45985 : GoUInt16));
	s[7388] = ((48297 : GoUInt16));
	s[7389] = ((31129 : GoUInt16));
	s[7390] = ((48321 : GoUInt16));
	s[7391] = ((48345 : GoUInt16));
	s[7392] = ((64 : GoUInt16));
	s[7393] = ((45553 : GoUInt16));
	s[7394] = ((45649 : GoUInt16));
	s[7395] = ((64 : GoUInt16));
	s[7396] = ((46153 : GoUInt16));
	s[7397] = ((64 : GoUInt16));
	s[7398] = ((64 : GoUInt16));
	s[7399] = ((45673 : GoUInt16));
	s[7400] = ((64 : GoUInt16));
	s[7401] = ((46201 : GoUInt16));
	s[7402] = ((46057 : GoUInt16));
	s[7403] = ((46081 : GoUInt16));
	s[7404] = ((46105 : GoUInt16));
	s[7405] = ((46129 : GoUInt16));
	s[7406] = ((45817 : GoUInt16));
	s[7407] = ((45961 : GoUInt16));
	s[7408] = ((46009 : GoUInt16));
	s[7409] = ((45865 : GoUInt16));
	s[7410] = ((46033 : GoUInt16));
	s[7411] = ((64 : GoUInt16));
	s[7412] = ((45841 : GoUInt16));
	s[7413] = ((45601 : GoUInt16));
	s[7414] = ((45625 : GoUInt16));
	s[7415] = ((45697 : GoUInt16));
	s[7416] = ((64 : GoUInt16));
	s[7417] = ((45889 : GoUInt16));
	s[7418] = ((64 : GoUInt16));
	s[7419] = ((45985 : GoUInt16));
	s[7420] = ((64 : GoUInt16));
	s[7421] = ((64 : GoUInt16));
	s[7422] = ((64 : GoUInt16));
	s[7423] = ((64 : GoUInt16));
	s[7424] = ((64 : GoUInt16));
	s[7425] = ((64 : GoUInt16));
	s[7426] = ((45649 : GoUInt16));
	s[7427] = ((64 : GoUInt16));
	s[7428] = ((64 : GoUInt16));
	s[7429] = ((64 : GoUInt16));
	s[7430] = ((64 : GoUInt16));
	s[7431] = ((45673 : GoUInt16));
	s[7432] = ((64 : GoUInt16));
	s[7433] = ((46201 : GoUInt16));
	s[7434] = ((64 : GoUInt16));
	s[7435] = ((46081 : GoUInt16));
	s[7436] = ((64 : GoUInt16));
	s[7437] = ((46129 : GoUInt16));
	s[7438] = ((45817 : GoUInt16));
	s[7439] = ((45961 : GoUInt16));
	s[7440] = ((64 : GoUInt16));
	s[7441] = ((45865 : GoUInt16));
	s[7442] = ((46033 : GoUInt16));
	s[7443] = ((64 : GoUInt16));
	s[7444] = ((45841 : GoUInt16));
	s[7445] = ((64 : GoUInt16));
	s[7446] = ((64 : GoUInt16));
	s[7447] = ((45697 : GoUInt16));
	s[7448] = ((64 : GoUInt16));
	s[7449] = ((45889 : GoUInt16));
	s[7450] = ((64 : GoUInt16));
	s[7451] = ((45985 : GoUInt16));
	s[7452] = ((64 : GoUInt16));
	s[7453] = ((31129 : GoUInt16));
	s[7454] = ((64 : GoUInt16));
	s[7455] = ((48345 : GoUInt16));
	s[7456] = ((64 : GoUInt16));
	s[7457] = ((45553 : GoUInt16));
	s[7458] = ((45649 : GoUInt16));
	s[7459] = ((64 : GoUInt16));
	s[7460] = ((46153 : GoUInt16));
	s[7461] = ((64 : GoUInt16));
	s[7462] = ((64 : GoUInt16));
	s[7463] = ((45673 : GoUInt16));
	s[7464] = ((45913 : GoUInt16));
	s[7465] = ((46201 : GoUInt16));
	s[7466] = ((46057 : GoUInt16));
	s[7467] = ((64 : GoUInt16));
	s[7468] = ((46105 : GoUInt16));
	s[7469] = ((46129 : GoUInt16));
	s[7470] = ((45817 : GoUInt16));
	s[7471] = ((45961 : GoUInt16));
	s[7472] = ((46009 : GoUInt16));
	s[7473] = ((45865 : GoUInt16));
	s[7474] = ((46033 : GoUInt16));
	s[7475] = ((64 : GoUInt16));
	s[7476] = ((45841 : GoUInt16));
	s[7477] = ((45601 : GoUInt16));
	s[7478] = ((45625 : GoUInt16));
	s[7479] = ((45697 : GoUInt16));
	s[7480] = ((64 : GoUInt16));
	s[7481] = ((45889 : GoUInt16));
	s[7482] = ((45937 : GoUInt16));
	s[7483] = ((45985 : GoUInt16));
	s[7484] = ((48297 : GoUInt16));
	s[7485] = ((64 : GoUInt16));
	s[7486] = ((48321 : GoUInt16));
	s[7487] = ((64 : GoUInt16));
	s[7488] = ((45529 : GoUInt16));
	s[7489] = ((45553 : GoUInt16));
	s[7490] = ((45649 : GoUInt16));
	s[7491] = ((45721 : GoUInt16));
	s[7492] = ((46153 : GoUInt16));
	s[7493] = ((46177 : GoUInt16));
	s[7494] = ((45793 : GoUInt16));
	s[7495] = ((45673 : GoUInt16));
	s[7496] = ((45913 : GoUInt16));
	s[7497] = ((46201 : GoUInt16));
	s[7498] = ((64 : GoUInt16));
	s[7499] = ((46081 : GoUInt16));
	s[7500] = ((46105 : GoUInt16));
	s[7501] = ((46129 : GoUInt16));
	s[7502] = ((45817 : GoUInt16));
	s[7503] = ((45961 : GoUInt16));
	s[7504] = ((46009 : GoUInt16));
	s[7505] = ((45865 : GoUInt16));
	s[7506] = ((46033 : GoUInt16));
	s[7507] = ((45769 : GoUInt16));
	s[7508] = ((45841 : GoUInt16));
	s[7509] = ((45601 : GoUInt16));
	s[7510] = ((45625 : GoUInt16));
	s[7511] = ((45697 : GoUInt16));
	s[7512] = ((45745 : GoUInt16));
	s[7513] = ((45889 : GoUInt16));
	s[7514] = ((45937 : GoUInt16));
	s[7515] = ((45985 : GoUInt16));
	s[7516] = ((64 : GoUInt16));
	s[7517] = ((64 : GoUInt16));
	s[7518] = ((64 : GoUInt16));
	s[7519] = ((64 : GoUInt16));
	s[7520] = ((64 : GoUInt16));
	s[7521] = ((45553 : GoUInt16));
	s[7522] = ((45649 : GoUInt16));
	s[7523] = ((45721 : GoUInt16));
	s[7524] = ((64 : GoUInt16));
	s[7525] = ((46177 : GoUInt16));
	s[7526] = ((45793 : GoUInt16));
	s[7527] = ((45673 : GoUInt16));
	s[7528] = ((45913 : GoUInt16));
	s[7529] = ((46201 : GoUInt16));
	s[7530] = ((64 : GoUInt16));
	s[7531] = ((46081 : GoUInt16));
	s[7532] = ((46105 : GoUInt16));
	s[7533] = ((46129 : GoUInt16));
	s[7534] = ((45817 : GoUInt16));
	s[7535] = ((45961 : GoUInt16));
	s[7536] = ((46009 : GoUInt16));
	s[7537] = ((45865 : GoUInt16));
	s[7538] = ((46033 : GoUInt16));
	s[7539] = ((45769 : GoUInt16));
	s[7540] = ((45841 : GoUInt16));
	s[7541] = ((45601 : GoUInt16));
	s[7542] = ((45625 : GoUInt16));
	s[7543] = ((45697 : GoUInt16));
	s[7544] = ((45745 : GoUInt16));
	s[7545] = ((45889 : GoUInt16));
	s[7546] = ((45937 : GoUInt16));
	s[7547] = ((45985 : GoUInt16));
	s[7548] = ((64 : GoUInt16));
	s[7549] = ((64 : GoUInt16));
	s[7550] = ((64 : GoUInt16));
	s[7551] = ((64 : GoUInt16));
	s[7552] = ((64 : GoUInt16));
	s[7553] = ((48370 : GoUInt16));
	s[7554] = ((48394 : GoUInt16));
	s[7555] = ((48418 : GoUInt16));
	s[7556] = ((48442 : GoUInt16));
	s[7557] = ((48466 : GoUInt16));
	s[7558] = ((48490 : GoUInt16));
	s[7559] = ((48514 : GoUInt16));
	s[7560] = ((48538 : GoUInt16));
	s[7561] = ((48562 : GoUInt16));
	s[7562] = ((48586 : GoUInt16));
	s[7563] = ((24 : GoUInt16));
	s[7564] = ((24 : GoUInt16));
	s[7565] = ((24 : GoUInt16));
	s[7566] = ((24 : GoUInt16));
	s[7567] = ((24 : GoUInt16));
	s[7568] = ((48610 : GoUInt16));
	s[7569] = ((48642 : GoUInt16));
	s[7570] = ((48674 : GoUInt16));
	s[7571] = ((48706 : GoUInt16));
	s[7572] = ((48738 : GoUInt16));
	s[7573] = ((48770 : GoUInt16));
	s[7574] = ((48802 : GoUInt16));
	s[7575] = ((48834 : GoUInt16));
	s[7576] = ((48866 : GoUInt16));
	s[7577] = ((48898 : GoUInt16));
	s[7578] = ((48930 : GoUInt16));
	s[7579] = ((48962 : GoUInt16));
	s[7580] = ((48994 : GoUInt16));
	s[7581] = ((49026 : GoUInt16));
	s[7582] = ((49058 : GoUInt16));
	s[7583] = ((49090 : GoUInt16));
	s[7584] = ((49122 : GoUInt16));
	s[7585] = ((49154 : GoUInt16));
	s[7586] = ((49186 : GoUInt16));
	s[7587] = ((49218 : GoUInt16));
	s[7588] = ((49250 : GoUInt16));
	s[7589] = ((49282 : GoUInt16));
	s[7590] = ((49314 : GoUInt16));
	s[7591] = ((49346 : GoUInt16));
	s[7592] = ((49378 : GoUInt16));
	s[7593] = ((49410 : GoUInt16));
	s[7594] = ((49441 : GoUInt16));
	s[7595] = ((4441 : GoUInt16));
	s[7596] = ((617 : GoUInt16));
	s[7597] = ((26281 : GoUInt16));
	s[7598] = ((49505 : GoUInt16));
	s[7599] = ((24 : GoUInt16));
	s[7600] = ((57 : GoUInt16));
	s[7601] = ((3817 : GoUInt16));
	s[7602] = ((4441 : GoUInt16));
	s[7603] = ((3833 : GoUInt16));
	s[7604] = ((3849 : GoUInt16));
	s[7605] = ((4505 : GoUInt16));
	s[7606] = ((3889 : GoUInt16));
	s[7607] = ((585 : GoUInt16));
	s[7608] = ((3905 : GoUInt16));
	s[7609] = ((601 : GoUInt16));
	s[7610] = ((3921 : GoUInt16));
	s[7611] = ((857 : GoUInt16));
	s[7612] = ((3937 : GoUInt16));
	s[7613] = ((3953 : GoUInt16));
	s[7614] = ((217 : GoUInt16));
	s[7615] = ((3993 : GoUInt16));
	s[7616] = ((8249 : GoUInt16));
	s[7617] = ((617 : GoUInt16));
	s[7618] = ((473 : GoUInt16));
	s[7619] = ((4009 : GoUInt16));
	s[7620] = ((4025 : GoUInt16));
	s[7621] = ((4233 : GoUInt16));
	s[7622] = ((633 : GoUInt16));
	s[7623] = ((873 : GoUInt16));
	s[7624] = ((649 : GoUInt16));
	s[7625] = ((5073 : GoUInt16));
	s[7626] = ((49529 : GoUInt16));
	s[7627] = ((26089 : GoUInt16));
	s[7628] = ((49553 : GoUInt16));
	s[7629] = ((5185 : GoUInt16));
	s[7630] = ((49577 : GoUInt16));
	s[7631] = ((49609 : GoUInt16));
	s[7632] = ((24 : GoUInt16));
	s[7633] = ((24 : GoUInt16));
	s[7634] = ((24 : GoUInt16));
	s[7635] = ((24 : GoUInt16));
	s[7636] = ((24 : GoUInt16));
	s[7637] = ((24 : GoUInt16));
	s[7638] = ((24 : GoUInt16));
	s[7639] = ((24 : GoUInt16));
	s[7640] = ((24 : GoUInt16));
	s[7641] = ((24 : GoUInt16));
	s[7642] = ((24 : GoUInt16));
	s[7643] = ((24 : GoUInt16));
	s[7644] = ((24 : GoUInt16));
	s[7645] = ((24 : GoUInt16));
	s[7646] = ((24 : GoUInt16));
	s[7647] = ((24 : GoUInt16));
	s[7648] = ((24 : GoUInt16));
	s[7649] = ((24 : GoUInt16));
	s[7650] = ((24 : GoUInt16));
	s[7651] = ((24 : GoUInt16));
	s[7652] = ((24 : GoUInt16));
	s[7653] = ((24 : GoUInt16));
	s[7654] = ((24 : GoUInt16));
	s[7655] = ((24 : GoUInt16));
	s[7656] = ((24 : GoUInt16));
	s[7657] = ((24 : GoUInt16));
	s[7658] = ((49633 : GoUInt16));
	s[7659] = ((49657 : GoUInt16));
	s[7660] = ((49681 : GoUInt16));
	s[7661] = ((24 : GoUInt16));
	s[7662] = ((24 : GoUInt16));
	s[7663] = ((24 : GoUInt16));
	s[7664] = ((24 : GoUInt16));
	s[7665] = ((24 : GoUInt16));
	s[7666] = ((24 : GoUInt16));
	s[7667] = ((24 : GoUInt16));
	s[7668] = ((24 : GoUInt16));
	s[7669] = ((24 : GoUInt16));
	s[7670] = ((24 : GoUInt16));
	s[7671] = ((24 : GoUInt16));
	s[7672] = ((24 : GoUInt16));
	s[7673] = ((24 : GoUInt16));
	s[7674] = ((24 : GoUInt16));
	s[7675] = ((24 : GoUInt16));
	s[7676] = ((24 : GoUInt16));
	s[7677] = ((24 : GoUInt16));
	s[7678] = ((24 : GoUInt16));
	s[7679] = ((24 : GoUInt16));
	s[7680] = ((49729 : GoUInt16));
	s[7681] = ((49785 : GoUInt16));
	s[7682] = ((49841 : GoUInt16));
	s[7683] = ((64 : GoUInt16));
	s[7684] = ((64 : GoUInt16));
	s[7685] = ((64 : GoUInt16));
	s[7686] = ((64 : GoUInt16));
	s[7687] = ((64 : GoUInt16));
	s[7688] = ((64 : GoUInt16));
	s[7689] = ((64 : GoUInt16));
	s[7690] = ((64 : GoUInt16));
	s[7691] = ((64 : GoUInt16));
	s[7692] = ((64 : GoUInt16));
	s[7693] = ((64 : GoUInt16));
	s[7694] = ((64 : GoUInt16));
	s[7695] = ((64 : GoUInt16));
	s[7696] = ((49873 : GoUInt16));
	s[7697] = ((49905 : GoUInt16));
	s[7698] = ((49937 : GoUInt16));
	s[7699] = ((49969 : GoUInt16));
	s[7700] = ((50001 : GoUInt16));
	s[7701] = ((50033 : GoUInt16));
	s[7702] = ((50065 : GoUInt16));
	s[7703] = ((50097 : GoUInt16));
	s[7704] = ((50129 : GoUInt16));
	s[7705] = ((50161 : GoUInt16));
	s[7706] = ((50193 : GoUInt16));
	s[7707] = ((50225 : GoUInt16));
	s[7708] = ((50257 : GoUInt16));
	s[7709] = ((50289 : GoUInt16));
	s[7710] = ((50321 : GoUInt16));
	s[7711] = ((50353 : GoUInt16));
	s[7712] = ((50385 : GoUInt16));
	s[7713] = ((50417 : GoUInt16));
	s[7714] = ((50449 : GoUInt16));
	s[7715] = ((50481 : GoUInt16));
	s[7716] = ((50513 : GoUInt16));
	s[7717] = ((50545 : GoUInt16));
	s[7718] = ((50577 : GoUInt16));
	s[7719] = ((50609 : GoUInt16));
	s[7720] = ((50641 : GoUInt16));
	s[7721] = ((50673 : GoUInt16));
	s[7722] = ((50705 : GoUInt16));
	s[7723] = ((50737 : GoUInt16));
	s[7724] = ((50769 : GoUInt16));
	s[7725] = ((50801 : GoUInt16));
	s[7726] = ((50833 : GoUInt16));
	s[7727] = ((50865 : GoUInt16));
	s[7728] = ((50897 : GoUInt16));
	s[7729] = ((50929 : GoUInt16));
	s[7730] = ((50961 : GoUInt16));
	s[7731] = ((50993 : GoUInt16));
	s[7732] = ((51025 : GoUInt16));
	s[7733] = ((51057 : GoUInt16));
	s[7734] = ((51089 : GoUInt16));
	s[7735] = ((51121 : GoUInt16));
	s[7736] = ((51153 : GoUInt16));
	s[7737] = ((51185 : GoUInt16));
	s[7738] = ((51217 : GoUInt16));
	s[7739] = ((51249 : GoUInt16));
	s[7740] = ((64 : GoUInt16));
	s[7741] = ((64 : GoUInt16));
	s[7742] = ((64 : GoUInt16));
	s[7743] = ((64 : GoUInt16));
	s[7744] = ((52065 : GoUInt16));
	s[7745] = ((52097 : GoUInt16));
	s[7746] = ((52129 : GoUInt16));
	s[7747] = ((35669 : GoUInt16));
	s[7748] = ((52161 : GoUInt16));
	s[7749] = ((52193 : GoUInt16));
	s[7750] = ((52225 : GoUInt16));
	s[7751] = ((52257 : GoUInt16));
	s[7752] = ((52289 : GoUInt16));
	s[7753] = ((52321 : GoUInt16));
	s[7754] = ((52353 : GoUInt16));
	s[7755] = ((52385 : GoUInt16));
	s[7756] = ((52417 : GoUInt16));
	s[7757] = ((35701 : GoUInt16));
	s[7758] = ((52449 : GoUInt16));
	s[7759] = ((52481 : GoUInt16));
	s[7760] = ((52513 : GoUInt16));
	s[7761] = ((52545 : GoUInt16));
	s[7762] = ((35733 : GoUInt16));
	s[7763] = ((52577 : GoUInt16));
	s[7764] = ((52609 : GoUInt16));
	s[7765] = ((50321 : GoUInt16));
	s[7766] = ((35765 : GoUInt16));
	s[7767] = ((52641 : GoUInt16));
	s[7768] = ((52673 : GoUInt16));
	s[7769] = ((52705 : GoUInt16));
	s[7770] = ((52737 : GoUInt16));
	s[7771] = ((52769 : GoUInt16));
	s[7772] = ((35797 : GoUInt16));
	s[7773] = ((52801 : GoUInt16));
	s[7774] = ((52833 : GoUInt16));
	s[7775] = ((52865 : GoUInt16));
	s[7776] = ((52897 : GoUInt16));
	s[7777] = ((52929 : GoUInt16));
	s[7778] = ((51185 : GoUInt16));
	s[7779] = ((52961 : GoUInt16));
	s[7780] = ((52993 : GoUInt16));
	s[7781] = ((53025 : GoUInt16));
	s[7782] = ((53057 : GoUInt16));
	s[7783] = ((53089 : GoUInt16));
	s[7784] = ((53121 : GoUInt16));
	s[7785] = ((53153 : GoUInt16));
	s[7786] = ((53185 : GoUInt16));
	s[7787] = ((53217 : GoUInt16));
	s[7788] = ((53249 : GoUInt16));
	s[7789] = ((53281 : GoUInt16));
	s[7790] = ((53313 : GoUInt16));
	s[7791] = ((53345 : GoUInt16));
	s[7792] = ((53377 : GoUInt16));
	s[7793] = ((53409 : GoUInt16));
	s[7794] = ((53409 : GoUInt16));
	s[7795] = ((53409 : GoUInt16));
	s[7796] = ((35829 : GoUInt16));
	s[7797] = ((53441 : GoUInt16));
	s[7798] = ((53473 : GoUInt16));
	s[7799] = ((53505 : GoUInt16));
	s[7800] = ((35861 : GoUInt16));
	s[7801] = ((53537 : GoUInt16));
	s[7802] = ((53569 : GoUInt16));
	s[7803] = ((53601 : GoUInt16));
	s[7804] = ((53633 : GoUInt16));
	s[7805] = ((53665 : GoUInt16));
	s[7806] = ((53697 : GoUInt16));
	s[7807] = ((53729 : GoUInt16));
	s[7808] = ((53761 : GoUInt16));
	s[7809] = ((53793 : GoUInt16));
	s[7810] = ((53825 : GoUInt16));
	s[7811] = ((53857 : GoUInt16));
	s[7812] = ((53889 : GoUInt16));
	s[7813] = ((53921 : GoUInt16));
	s[7814] = ((53921 : GoUInt16));
	s[7815] = ((53953 : GoUInt16));
	s[7816] = ((53985 : GoUInt16));
	s[7817] = ((54017 : GoUInt16));
	s[7818] = ((54049 : GoUInt16));
	s[7819] = ((54081 : GoUInt16));
	s[7820] = ((54113 : GoUInt16));
	s[7821] = ((54145 : GoUInt16));
	s[7822] = ((54177 : GoUInt16));
	s[7823] = ((54209 : GoUInt16));
	s[7824] = ((54241 : GoUInt16));
	s[7825] = ((54273 : GoUInt16));
	s[7826] = ((54305 : GoUInt16));
	s[7827] = ((54337 : GoUInt16));
	s[7828] = ((54369 : GoUInt16));
	s[7829] = ((54401 : GoUInt16));
	s[7830] = ((54433 : GoUInt16));
	s[7831] = ((54465 : GoUInt16));
	s[7832] = ((54497 : GoUInt16));
	s[7833] = ((35893 : GoUInt16));
	s[7834] = ((54529 : GoUInt16));
	s[7835] = ((54561 : GoUInt16));
	s[7836] = ((54593 : GoUInt16));
	s[7837] = ((50033 : GoUInt16));
	s[7838] = ((54625 : GoUInt16));
	s[7839] = ((54657 : GoUInt16));
	s[7840] = ((35925 : GoUInt16));
	s[7841] = ((35957 : GoUInt16));
	s[7842] = ((54689 : GoUInt16));
	s[7843] = ((54721 : GoUInt16));
	s[7844] = ((54753 : GoUInt16));
	s[7845] = ((54785 : GoUInt16));
	s[7846] = ((54817 : GoUInt16));
	s[7847] = ((54849 : GoUInt16));
	s[7848] = ((8256 : GoUInt16));
	s[7849] = ((54881 : GoUInt16));
	s[7850] = ((54913 : GoUInt16));
	s[7851] = ((54913 : GoUInt16));
	s[7852] = ((35989 : GoUInt16));
	s[7853] = ((54945 : GoUInt16));
	s[7854] = ((54977 : GoUInt16));
	s[7855] = ((55009 : GoUInt16));
	s[7856] = ((55041 : GoUInt16));
	s[7857] = ((36021 : GoUInt16));
	s[7858] = ((55073 : GoUInt16));
	s[7859] = ((55105 : GoUInt16));
	s[7860] = ((8256 : GoUInt16));
	s[7861] = ((55137 : GoUInt16));
	s[7862] = ((55169 : GoUInt16));
	s[7863] = ((55201 : GoUInt16));
	s[7864] = ((55233 : GoUInt16));
	s[7865] = ((55265 : GoUInt16));
	s[7866] = ((55297 : GoUInt16));
	s[7867] = ((36053 : GoUInt16));
	s[7868] = ((55329 : GoUInt16));
	s[7869] = ((36085 : GoUInt16));
	s[7870] = ((55361 : GoUInt16));
	s[7871] = ((55393 : GoUInt16));
	s[7872] = ((55425 : GoUInt16));
	s[7873] = ((55457 : GoUInt16));
	s[7874] = ((55489 : GoUInt16));
	s[7875] = ((55521 : GoUInt16));
	s[7876] = ((55553 : GoUInt16));
	s[7877] = ((55585 : GoUInt16));
	s[7878] = ((55617 : GoUInt16));
	s[7879] = ((55649 : GoUInt16));
	s[7880] = ((55681 : GoUInt16));
	s[7881] = ((36117 : GoUInt16));
	s[7882] = ((55713 : GoUInt16));
	s[7883] = ((55745 : GoUInt16));
	s[7884] = ((55777 : GoUInt16));
	s[7885] = ((55809 : GoUInt16));
	s[7886] = ((55841 : GoUInt16));
	s[7887] = ((36149 : GoUInt16));
	s[7888] = ((55873 : GoUInt16));
	s[7889] = ((36181 : GoUInt16));
	s[7890] = ((36213 : GoUInt16));
	s[7891] = ((55905 : GoUInt16));
	s[7892] = ((55937 : GoUInt16));
	s[7893] = ((55937 : GoUInt16));
	s[7894] = ((55969 : GoUInt16));
	s[7895] = ((36245 : GoUInt16));
	s[7896] = ((36277 : GoUInt16));
	s[7897] = ((56001 : GoUInt16));
	s[7898] = ((56033 : GoUInt16));
	s[7899] = ((56065 : GoUInt16));
	s[7900] = ((56097 : GoUInt16));
	s[7901] = ((56129 : GoUInt16));
	s[7902] = ((56161 : GoUInt16));
	s[7903] = ((56193 : GoUInt16));
	s[7904] = ((56225 : GoUInt16));
	s[7905] = ((56257 : GoUInt16));
	s[7906] = ((56289 : GoUInt16));
	s[7907] = ((56321 : GoUInt16));
	s[7908] = ((36309 : GoUInt16));
	s[7909] = ((56353 : GoUInt16));
	s[7910] = ((56385 : GoUInt16));
	s[7911] = ((56417 : GoUInt16));
	s[7912] = ((56449 : GoUInt16));
	s[7913] = ((56417 : GoUInt16));
	s[7914] = ((56481 : GoUInt16));
	s[7915] = ((56513 : GoUInt16));
	s[7916] = ((56545 : GoUInt16));
	s[7917] = ((56577 : GoUInt16));
	s[7918] = ((56609 : GoUInt16));
	s[7919] = ((56641 : GoUInt16));
	s[7920] = ((56673 : GoUInt16));
	s[7921] = ((56705 : GoUInt16));
	s[7922] = ((56737 : GoUInt16));
	s[7923] = ((56769 : GoUInt16));
	s[7924] = ((56801 : GoUInt16));
	s[7925] = ((56833 : GoUInt16));
	s[7926] = ((56865 : GoUInt16));
	s[7927] = ((56897 : GoUInt16));
	s[7928] = ((36341 : GoUInt16));
	s[7929] = ((56929 : GoUInt16));
	s[7930] = ((56961 : GoUInt16));
	s[7931] = ((56993 : GoUInt16));
	s[7932] = ((57025 : GoUInt16));
	s[7933] = ((57057 : GoUInt16));
	s[7934] = ((36373 : GoUInt16));
	s[7935] = ((57089 : GoUInt16));
	s[7936] = ((58881 : GoUInt16));
	s[7937] = ((58913 : GoUInt16));
	s[7938] = ((58945 : GoUInt16));
	s[7939] = ((58977 : GoUInt16));
	s[7940] = ((59009 : GoUInt16));
	s[7941] = ((59041 : GoUInt16));
	s[7942] = ((36661 : GoUInt16));
	s[7943] = ((59073 : GoUInt16));
	s[7944] = ((59105 : GoUInt16));
	s[7945] = ((59137 : GoUInt16));
	s[7946] = ((59169 : GoUInt16));
	s[7947] = ((59201 : GoUInt16));
	s[7948] = ((59233 : GoUInt16));
	s[7949] = ((36693 : GoUInt16));
	s[7950] = ((59265 : GoUInt16));
	s[7951] = ((59297 : GoUInt16));
	s[7952] = ((36725 : GoUInt16));
	s[7953] = ((36757 : GoUInt16));
	s[7954] = ((59329 : GoUInt16));
	s[7955] = ((59361 : GoUInt16));
	s[7956] = ((59393 : GoUInt16));
	s[7957] = ((59425 : GoUInt16));
	s[7958] = ((59457 : GoUInt16));
	s[7959] = ((59489 : GoUInt16));
	s[7960] = ((59521 : GoUInt16));
	s[7961] = ((59553 : GoUInt16));
	s[7962] = ((59585 : GoUInt16));
	s[7963] = ((36789 : GoUInt16));
	s[7964] = ((59617 : GoUInt16));
	s[7965] = ((36821 : GoUInt16));
	s[7966] = ((59649 : GoUInt16));
	s[7967] = ((8256 : GoUInt16));
	s[7968] = ((59681 : GoUInt16));
	s[7969] = ((59713 : GoUInt16));
	s[7970] = ((59745 : GoUInt16));
	s[7971] = ((36853 : GoUInt16));
	s[7972] = ((59777 : GoUInt16));
	s[7973] = ((59809 : GoUInt16));
	s[7974] = ((36885 : GoUInt16));
	s[7975] = ((36917 : GoUInt16));
	s[7976] = ((59841 : GoUInt16));
	s[7977] = ((59873 : GoUInt16));
	s[7978] = ((59905 : GoUInt16));
	s[7979] = ((59937 : GoUInt16));
	s[7980] = ((59969 : GoUInt16));
	s[7981] = ((59969 : GoUInt16));
	s[7982] = ((60001 : GoUInt16));
	s[7983] = ((60033 : GoUInt16));
	s[7984] = ((60065 : GoUInt16));
	s[7985] = ((60097 : GoUInt16));
	s[7986] = ((60129 : GoUInt16));
	s[7987] = ((60161 : GoUInt16));
	s[7988] = ((60193 : GoUInt16));
	s[7989] = ((36949 : GoUInt16));
	s[7990] = ((60225 : GoUInt16));
	s[7991] = ((36981 : GoUInt16));
	s[7992] = ((60257 : GoUInt16));
	s[7993] = ((37013 : GoUInt16));
	s[7994] = ((60289 : GoUInt16));
	s[7995] = ((37045 : GoUInt16));
	s[7996] = ((37077 : GoUInt16));
	s[7997] = ((37109 : GoUInt16));
	s[7998] = ((60321 : GoUInt16));
	s[7999] = ((60353 : GoUInt16));
	s[8000] = ((60385 : GoUInt16));
	s[8001] = ((37141 : GoUInt16));
	s[8002] = ((37173 : GoUInt16));
	s[8003] = ((37205 : GoUInt16));
	s[8004] = ((37237 : GoUInt16));
	s[8005] = ((60417 : GoUInt16));
	s[8006] = ((60449 : GoUInt16));
	s[8007] = ((60449 : GoUInt16));
	s[8008] = ((60481 : GoUInt16));
	s[8009] = ((60513 : GoUInt16));
	s[8010] = ((60545 : GoUInt16));
	s[8011] = ((60577 : GoUInt16));
	s[8012] = ((60609 : GoUInt16));
	s[8013] = ((37269 : GoUInt16));
	s[8014] = ((60641 : GoUInt16));
	s[8015] = ((60673 : GoUInt16));
	s[8016] = ((60705 : GoUInt16));
	s[8017] = ((60737 : GoUInt16));
	s[8018] = ((37301 : GoUInt16));
	s[8019] = ((60769 : GoUInt16));
	s[8020] = ((37333 : GoUInt16));
	s[8021] = ((37365 : GoUInt16));
	s[8022] = ((60801 : GoUInt16));
	s[8023] = ((60833 : GoUInt16));
	s[8024] = ((60865 : GoUInt16));
	s[8025] = ((60897 : GoUInt16));
	s[8026] = ((60929 : GoUInt16));
	s[8027] = ((60961 : GoUInt16));
	s[8028] = ((37397 : GoUInt16));
	s[8029] = ((37429 : GoUInt16));
	s[8030] = ((37461 : GoUInt16));
	s[8031] = ((8256 : GoUInt16));
	s[8032] = ((60993 : GoUInt16));
	s[8033] = ((37493 : GoUInt16));
	s[8034] = ((61025 : GoUInt16));
	s[8035] = ((61057 : GoUInt16));
	s[8036] = ((61089 : GoUInt16));
	s[8037] = ((37525 : GoUInt16));
	s[8038] = ((61121 : GoUInt16));
	s[8039] = ((61153 : GoUInt16));
	s[8040] = ((61185 : GoUInt16));
	s[8041] = ((61217 : GoUInt16));
	s[8042] = ((61249 : GoUInt16));
	s[8043] = ((37557 : GoUInt16));
	s[8044] = ((61281 : GoUInt16));
	s[8045] = ((61313 : GoUInt16));
	s[8046] = ((61345 : GoUInt16));
	s[8047] = ((61377 : GoUInt16));
	s[8048] = ((61409 : GoUInt16));
	s[8049] = ((61441 : GoUInt16));
	s[8050] = ((37589 : GoUInt16));
	s[8051] = ((37621 : GoUInt16));
	s[8052] = ((61473 : GoUInt16));
	s[8053] = ((37653 : GoUInt16));
	s[8054] = ((61505 : GoUInt16));
	s[8055] = ((37685 : GoUInt16));
	s[8056] = ((61537 : GoUInt16));
	s[8057] = ((61569 : GoUInt16));
	s[8058] = ((61601 : GoUInt16));
	s[8059] = ((37717 : GoUInt16));
	s[8060] = ((37749 : GoUInt16));
	s[8061] = ((61633 : GoUInt16));
	s[8062] = ((37781 : GoUInt16));
	s[8063] = ((61665 : GoUInt16));
	s[8064] = ((63265 : GoUInt16));
	s[8065] = ((63297 : GoUInt16));
	s[8066] = ((63329 : GoUInt16));
	s[8067] = ((63361 : GoUInt16));
	s[8068] = ((63393 : GoUInt16));
	s[8069] = ((38229 : GoUInt16));
	s[8070] = ((63425 : GoUInt16));
	s[8071] = ((63457 : GoUInt16));
	s[8072] = ((63489 : GoUInt16));
	s[8073] = ((63521 : GoUInt16));
	s[8074] = ((63553 : GoUInt16));
	s[8075] = ((38261 : GoUInt16));
	s[8076] = ((38293 : GoUInt16));
	s[8077] = ((63585 : GoUInt16));
	s[8078] = ((63617 : GoUInt16));
	s[8079] = ((63649 : GoUInt16));
	s[8080] = ((63681 : GoUInt16));
	s[8081] = ((63713 : GoUInt16));
	s[8082] = ((63745 : GoUInt16));
	s[8083] = ((38325 : GoUInt16));
	s[8084] = ((63777 : GoUInt16));
	s[8085] = ((63809 : GoUInt16));
	s[8086] = ((63841 : GoUInt16));
	s[8087] = ((63873 : GoUInt16));
	s[8088] = ((38357 : GoUInt16));
	s[8089] = ((38389 : GoUInt16));
	s[8090] = ((63905 : GoUInt16));
	s[8091] = ((63937 : GoUInt16));
	s[8092] = ((63969 : GoUInt16));
	s[8093] = ((38421 : GoUInt16));
	s[8094] = ((64001 : GoUInt16));
	s[8095] = ((64033 : GoUInt16));
	s[8096] = ((26701 : GoUInt16));
	s[8097] = ((38453 : GoUInt16));
	s[8098] = ((64065 : GoUInt16));
	s[8099] = ((64097 : GoUInt16));
	s[8100] = ((64129 : GoUInt16));
	s[8101] = ((38485 : GoUInt16));
	s[8102] = ((64161 : GoUInt16));
	s[8103] = ((64193 : GoUInt16));
	s[8104] = ((64225 : GoUInt16));
	s[8105] = ((64257 : GoUInt16));
	s[8106] = ((64289 : GoUInt16));
	s[8107] = ((64321 : GoUInt16));
	s[8108] = ((64353 : GoUInt16));
	s[8109] = ((38517 : GoUInt16));
	s[8110] = ((64385 : GoUInt16));
	s[8111] = ((64417 : GoUInt16));
	s[8112] = ((64449 : GoUInt16));
	s[8113] = ((38549 : GoUInt16));
	s[8114] = ((64481 : GoUInt16));
	s[8115] = ((64513 : GoUInt16));
	s[8116] = ((64545 : GoUInt16));
	s[8117] = ((64577 : GoUInt16));
	s[8118] = ((31597 : GoUInt16));
	s[8119] = ((38581 : GoUInt16));
	s[8120] = ((64609 : GoUInt16));
	s[8121] = ((64641 : GoUInt16));
	s[8122] = ((64673 : GoUInt16));
	s[8123] = ((38613 : GoUInt16));
	s[8124] = ((64705 : GoUInt16));
	s[8125] = ((38645 : GoUInt16));
	s[8126] = ((64737 : GoUInt16));
	s[8127] = ((64737 : GoUInt16));
	s[8128] = ((64769 : GoUInt16));
	s[8129] = ((38677 : GoUInt16));
	s[8130] = ((64801 : GoUInt16));
	s[8131] = ((64833 : GoUInt16));
	s[8132] = ((64865 : GoUInt16));
	s[8133] = ((64897 : GoUInt16));
	s[8134] = ((64929 : GoUInt16));
	s[8135] = ((64961 : GoUInt16));
	s[8136] = ((64993 : GoUInt16));
	s[8137] = ((38709 : GoUInt16));
	s[8138] = ((65025 : GoUInt16));
	s[8139] = ((65057 : GoUInt16));
	s[8140] = ((65089 : GoUInt16));
	s[8141] = ((65121 : GoUInt16));
	s[8142] = ((65153 : GoUInt16));
	s[8143] = ((65185 : GoUInt16));
	s[8144] = ((38741 : GoUInt16));
	s[8145] = ((65217 : GoUInt16));
	s[8146] = ((38773 : GoUInt16));
	s[8147] = ((38805 : GoUInt16));
	s[8148] = ((38837 : GoUInt16));
	s[8149] = ((65249 : GoUInt16));
	s[8150] = ((65281 : GoUInt16));
	s[8151] = ((65313 : GoUInt16));
	s[8152] = ((65345 : GoUInt16));
	s[8153] = ((65377 : GoUInt16));
	s[8154] = ((65409 : GoUInt16));
	s[8155] = ((65441 : GoUInt16));
	s[8156] = ((65473 : GoUInt16));
	s[8157] = ((38869 : GoUInt16));
	s[8158] = ((64 : GoUInt16));
	s[8159] = ((64 : GoUInt16));
	s[8160] = ((64 : GoUInt16));
	s[8161] = ((64 : GoUInt16));
	s[8162] = ((64 : GoUInt16));
	s[8163] = ((64 : GoUInt16));
	s[8164] = ((64 : GoUInt16));
	s[8165] = ((64 : GoUInt16));
	s[8166] = ((64 : GoUInt16));
	s[8167] = ((64 : GoUInt16));
	s[8168] = ((64 : GoUInt16));
	s[8169] = ((64 : GoUInt16));
	s[8170] = ((64 : GoUInt16));
	s[8171] = ((64 : GoUInt16));
	s[8172] = ((64 : GoUInt16));
	s[8173] = ((64 : GoUInt16));
	s[8174] = ((64 : GoUInt16));
	s[8175] = ((64 : GoUInt16));
	s[8176] = ((64 : GoUInt16));
	s[8177] = ((64 : GoUInt16));
	s[8178] = ((64 : GoUInt16));
	s[8179] = ((64 : GoUInt16));
	s[8180] = ((64 : GoUInt16));
	s[8181] = ((64 : GoUInt16));
	s[8182] = ((64 : GoUInt16));
	s[8183] = ((64 : GoUInt16));
	s[8184] = ((64 : GoUInt16));
	s[8185] = ((64 : GoUInt16));
	s[8186] = ((64 : GoUInt16));
	s[8187] = ((64 : GoUInt16));
	s[8188] = ((64 : GoUInt16));
	s[8189] = ((64 : GoUInt16));
	s[8190] = ((64 : GoUInt16));
	s[8191] = ((64 : GoUInt16));
	s;
};

final _catSmallMask:GoInt64 = ((3 : GoUnTypedInt));
final _mapped:T_category = new T_category(((1 : GoUInt16)));
final _valid:T_category = new T_category(((8 : GoUInt16)));
var lookup:Pointer<Profile> = _lookup;
final _mayNeedNorm:GoInt64 = ((8192 : GoUnTypedInt));
final _joinZWJ = ((4 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _joinShift:GoInt64 = ((8 : GoUnTypedInt));
final _joiningL:GoUnTypedInt = ((0 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _inlineXOR:GoInt64 = ((57344 : GoUnTypedInt));
final _skew:GoInt32 = ((38 : GoInt32));
final _joinMask:GoInt64 = ((7 : GoUnTypedInt));
final _stateBefore:T_joinState = new T_joinState((2 : GoUnTypedInt));

var _mappings:GoString = (("" : GoString))
	+ (("\\x00\\x01 \\x03 ̈\\x01a\\x03 ̄\\x012\\x013\\x03 ́\\x03 ̧\\x011\\x01o\\x051⁄4\\x051⁄2" : GoString))
	+ (("\\x053⁄4\\x03i̇\\x03l·\\x03ʼn\\x01s\\x03dž\\x03ⱥ\\x03ⱦ\\x01h\\x01j\\x01r\\x01w\\x01y" : GoString))
	+ (("\\x03 ̆\\x03 ̇\\x03 ̊\\x03 ̨\\x03 ̃\\x03 ̋\\x01l\\x01x\\x04̈́\\x03 ι\\x01;\\x05 ̈́" : GoString))
	+ (("\\x04եւ\\x04اٴ\\x04وٴ\\x04ۇٴ\\x04يٴ\\x06क़\\x06ख़\\x06ग़\\x06ज़\\x06ड़\\x06ढ़\\x06फ़" : GoString))
	+ (("\\x06य़\\x06ড়\\x06ঢ়\\x06য়\\x06ਲ਼\\x06ਸ਼\\x06ਖ਼\\x06ਗ਼\\x06ਜ਼\\x06ਫ਼\\x06ଡ଼\\x06ଢ଼" : GoString))
	+ (("\\x06ํา\\x06ໍາ\\x06ຫນ\\x06ຫມ\\x06གྷ\\x06ཌྷ\\x06དྷ\\x06བྷ\\x06ཛྷ\\x06ཀྵ\\x06ཱི\\x06ཱུ" : GoString))
	+ (("\\x06ྲྀ\\x09ྲཱྀ\\x06ླྀ\\x09ླཱྀ\\x06ཱྀ\\x06ྒྷ\\x06ྜྷ\\x06ྡྷ\\x06ྦྷ\\x06ྫྷ\\x06ྐྵ\\x02" : GoString))
	+ (("в\\x02д\\x02о\\x02с\\x02т\\x02ъ\\x02ѣ\\x02æ\\x01b\\x01d\\x01e\\x02ǝ\\x01g\\x01i\\x01k" : GoString))
	+ (("\\x01m\\x01n\\x02ȣ\\x01p\\x01t\\x01u\\x02ɐ\\x02ɑ\\x02ə\\x02ɛ\\x02ɜ\\x02ŋ\\x02ɔ\\x02ɯ" : GoString))
	+ (("\\x01v\\x02β\\x02γ\\x02δ\\x02φ\\x02χ\\x02ρ\\x02н\\x02ɒ\\x01c\\x02ɕ\\x02ð\\x01f\\x02ɟ" : GoString))
	+ (("\\x02ɡ\\x02ɥ\\x02ɨ\\x02ɩ\\x02ɪ\\x02ʝ\\x02ɭ\\x02ʟ\\x02ɱ\\x02ɰ\\x02ɲ\\x02ɳ\\x02ɴ\\x02ɵ" : GoString))
	+ (("\\x02ɸ\\x02ʂ\\x02ʃ\\x02ƫ\\x02ʉ\\x02ʊ\\x02ʋ\\x02ʌ\\x01z\\x02ʐ\\x02ʑ\\x02ʒ\\x02θ\\x02ss" : GoString))
	+ (("\\x02ά\\x02έ\\x02ή\\x02ί\\x02ό\\x02ύ\\x02ώ\\x05ἀι\\x05ἁι\\x05ἂι\\x05ἃι\\x05ἄι\\x05ἅι" : GoString))
	+ (("\\x05ἆι\\x05ἇι\\x05ἠι\\x05ἡι\\x05ἢι\\x05ἣι\\x05ἤι\\x05ἥι\\x05ἦι\\x05ἧι\\x05ὠι\\x05ὡι" : GoString))
	+ (("\\x05ὢι\\x05ὣι\\x05ὤι\\x05ὥι\\x05ὦι\\x05ὧι\\x05ὰι\\x04αι\\x04άι\\x05ᾶι\\x02ι\\x05 ̈͂" : GoString))
	+ (("\\x05ὴι\\x04ηι\\x04ήι\\x05ῆι\\x05 ̓̀\\x05 ̓́\\x05 ̓͂\\x02ΐ\\x05 ̔̀\\x05 ̔́\\x05 ̔͂" : GoString))
	+ (("\\x02ΰ\\x05 ̈̀\\x01`\\x05ὼι\\x04ωι\\x04ώι\\x05ῶι\\x06′′\\x09′′′\\x06‵‵\\x09‵‵‵\\x02!" : GoString))
	+ (("!\\x02??\\x02?!\\x02!?\\x0c′′′′\\x010\\x014\\x015\\x016\\x017\\x018\\x019\\x01+\\x01=" : GoString))
	+ (("\\x01(\\x01)\\x02rs\\x02ħ\\x02no\\x01q\\x02sm\\x02tm\\x02ω\\x02å\\x02א\\x02ב\\x02ג" : GoString))
	+ (("\\x02ד\\x02π\\x051⁄7\\x051⁄9\\x061⁄10\\x051⁄3\\x052⁄3\\x051⁄5\\x052⁄5\\x053⁄5\\x054" : GoString))
	+ (("⁄5\\x051⁄6\\x055⁄6\\x051⁄8\\x053⁄8\\x055⁄8\\x057⁄8\\x041⁄\\x02ii\\x02iv\\x02vi" : GoString))
	+ (("\\x04viii\\x02ix\\x02xi\\x050⁄3\\x06∫∫\\x09∫∫∫\\x06∮∮\\x09∮∮∮\\x0210\\x0211\\x0212" : GoString))
	+ (("\\x0213\\x0214\\x0215\\x0216\\x0217\\x0218\\x0219\\x0220\\x04(10)\\x04(11)\\x04(12)" : GoString))
	+ (("\\x04(13)\\x04(14)\\x04(15)\\x04(16)\\x04(17)\\x04(18)\\x04(19)\\x04(20)\\x0c∫∫∫∫" : GoString))
	+ (("\\x02==\\x05⫝̸\\x02ɫ\\x02ɽ\\x02ȿ\\x02ɀ\\x01.\\x04 ゙\\x04 ゚\\x06より\\x06コト\\x05(ᄀ)\\x05" : GoString))
	+ (("(ᄂ)\\x05(ᄃ)\\x05(ᄅ)\\x05(ᄆ)\\x05(ᄇ)\\x05(ᄉ)\\x05(ᄋ)\\x05(ᄌ)\\x05(ᄎ)\\x05(ᄏ)\\x05(ᄐ" : GoString))
	+ ((")\\x05(ᄑ)\\x05(ᄒ)\\x05(가)\\x05(나)\\x05(다)\\x05(라)\\x05(마)\\x05(바)\\x05(사)\\x05(아)" : GoString))
	+ (("\\x05(자)\\x05(차)\\x05(카)\\x05(타)\\x05(파)\\x05(하)\\x05(주)\\x08(오전)\\x08(오후)\\x05(一)" : GoString))
	+ (("\\x05(二)\\x05(三)\\x05(四)\\x05(五)\\x05(六)\\x05(七)\\x05(八)\\x05(九)\\x05(十)\\x05(月)" : GoString))
	+ (("\\x05(火)\\x05(水)\\x05(木)\\x05(金)\\x05(土)\\x05(日)\\x05(株)\\x05(有)\\x05(社)\\x05(名)" : GoString))
	+ (("\\x05(特)\\x05(財)\\x05(祝)\\x05(労)\\x05(代)\\x05(呼)\\x05(学)\\x05(監)\\x05(企)\\x05(資)" : GoString))
	+ (("\\x05(協)\\x05(祭)\\x05(休)\\x05(自)\\x05(至)\\x0221\\x0222\\x0223\\x0224\\x0225\\x0226" : GoString))
	+ (("\\x0227\\x0228\\x0229\\x0230\\x0231\\x0232\\x0233\\x0234\\x0235\\x06참고\\x06주의\\x0236" : GoString))
	+ (("\\x0237\\x0238\\x0239\\x0240\\x0241\\x0242\\x0243\\x0244\\x0245\\x0246\\x0247\\x0248" : GoString))
	+ (("\\x0249\\x0250\\x041月\\x042月\\x043月\\x044月\\x045月\\x046月\\x047月\\x048月\\x049月\\x0510" : GoString))
	+ (("月\\x0511月\\x0512月\\x02hg\\x02ev\\x06令和\\x0cアパート\\x0cアルファ\\x0cアンペア\\x09アール\\x0cイニ" : GoString))
	+ (("ング\\x09インチ\\x09ウォン\\x0fエスクード\\x0cエーカー\\x09オンス\\x09オーム\\x09カイリ\\x0cカラット\\x0cカロリー" : GoString))
	+ (("\\x09ガロン\\x09ガンマ\\x06ギガ\\x09ギニー\\x0cキュリー\\x0cギルダー\\x06キロ\\x0fキログラム\\x12キロメートル\\x0f" : GoString))
	+ (("キロワット\\x09グラム\\x0fグラムトン\\x0fクルゼイロ\\x0cクローネ\\x09ケース\\x09コルナ\\x09コーポ\\x0cサイクル" : GoString))
	+ (("\\x0fサンチーム\\x0cシリング\\x09センチ\\x09セント\\x09ダース\\x06デシ\\x06ドル\\x06トン\\x06ナノ\\x09ノット" : GoString))
	+ (("\\x09ハイツ\\x0fパーセント\\x09パーツ\\x0cバーレル\\x0fピアストル\\x09ピクル\\x06ピコ\\x06ビル\\x0fファラッド\\x0c" : GoString))
	+ (("フィート\\x0fブッシェル\\x09フラン\\x0fヘクタール\\x06ペソ\\x09ペニヒ\\x09ヘルツ\\x09ペンス\\x09ページ\\x09ベータ" : GoString))
	+ (("\\x0cポイント\\x09ボルト\\x06ホン\\x09ポンド\\x09ホール\\x09ホーン\\x0cマイクロ\\x09マイル\\x09マッハ\\x09マルク" : GoString))
	+ (("\\x0fマンション\\x0cミクロン\\x06ミリ\\x0fミリバール\\x06メガ\\x0cメガトン\\x0cメートル\\x09ヤード\\x09ヤール\\x09" : GoString))
	+ (("ユアン\\x0cリットル\\x06リラ\\x09ルピー\\x0cルーブル\\x06レム\\x0fレントゲン\\x09ワット\\x040点\\x041点\\x04" : GoString))
	+ (("2点\\x043点\\x044点\\x045点\\x046点\\x047点\\x048点\\x049点\\x0510点\\x0511点\\x0512点\\x0513点" : GoString))
	+ (("\\x0514点\\x0515点\\x0516点\\x0517点\\x0518点\\x0519点\\x0520点\\x0521点\\x0522点\\x0523点" : GoString))
	+ (("\\x0524点\\x02da\\x02au\\x02ov\\x02pc\\x02dm\\x02iu\\x06平成\\x06昭和\\x06大正\\x06明治\\x0c株" : GoString))
	+ (("式会社\\x02pa\\x02na\\x02ma\\x02ka\\x02kb\\x02mb\\x02gb\\x04kcal\\x02pf\\x02nf\\x02m" : GoString))
	+ (("g\\x02kg\\x02hz\\x02ml\\x02dl\\x02kl\\x02fm\\x02nm\\x02mm\\x02cm\\x02km\\x02m2\\x02m" : GoString))
	+ (("3\\x05m∕s\\x06m∕s2\\x07rad∕s\\x08rad∕s2\\x02ps\\x02ns\\x02ms\\x02pv\\x02nv\\x02mv" : GoString))
	+ (("\\x02kv\\x02pw\\x02nw\\x02mw\\x02kw\\x02bq\\x02cc\\x02cd\\x06c∕kg\\x02db\\x02gy\\x02" : GoString))
	+ (("ha\\x02hp\\x02in\\x02kk\\x02kt\\x02lm\\x02ln\\x02lx\\x02ph\\x02pr\\x02sr\\x02sv\\x02" : GoString))
	+ (("wb\\x05v∕m\\x05a∕m\\x041日\\x042日\\x043日\\x044日\\x045日\\x046日\\x047日\\x048日\\x049日" : GoString))
	+ (("\\x0510日\\x0511日\\x0512日\\x0513日\\x0514日\\x0515日\\x0516日\\x0517日\\x0518日\\x0519日" : GoString))
	+ (("\\x0520日\\x0521日\\x0522日\\x0523日\\x0524日\\x0525日\\x0526日\\x0527日\\x0528日\\x0529日" : GoString))
	+ (("\\x0530日\\x0531日\\x02ь\\x02ɦ\\x02ɬ\\x02ʞ\\x02ʇ\\x02œ\\x02ʍ\\x04𤋮\\x04𢡊\\x04𢡄\\x04𣏕" : GoString))
	+ (("\\x04𥉉\\x04𥳐\\x04𧻓\\x02ff\\x02fi\\x02fl\\x02st\\x04մն\\x04մե\\x04մի\\x04վն\\x04մխ" : GoString))
	+ (("\\x04יִ\\x04ײַ\\x02ע\\x02ה\\x02כ\\x02ל\\x02ם\\x02ר\\x02ת\\x04שׁ\\x04שׂ\\x06שּׁ\\x06שּ" : GoString))
	+ (("ׂ\\x04אַ\\x04אָ\\x04אּ\\x04בּ\\x04גּ\\x04דּ\\x04הּ\\x04וּ\\x04זּ\\x04טּ\\x04יּ\\x04" : GoString))
	+ (("ךּ\\x04כּ\\x04לּ\\x04מּ\\x04נּ\\x04סּ\\x04ףּ\\x04פּ\\x04צּ\\x04קּ\\x04רּ\\x04שּ" : GoString))
	+ (("\\x04תּ\\x04וֹ\\x04בֿ\\x04כֿ\\x04פֿ\\x04אל\\x02ٱ\\x02ٻ\\x02پ\\x02ڀ\\x02ٺ\\x02ٿ\\x02ٹ" : GoString))
	+ (("\\x02ڤ\\x02ڦ\\x02ڄ\\x02ڃ\\x02چ\\x02ڇ\\x02ڍ\\x02ڌ\\x02ڎ\\x02ڈ\\x02ژ\\x02ڑ\\x02ک\\x02گ" : GoString))
	+ (("\\x02ڳ\\x02ڱ\\x02ں\\x02ڻ\\x02ۀ\\x02ہ\\x02ھ\\x02ے\\x02ۓ\\x02ڭ\\x02ۇ\\x02ۆ\\x02ۈ\\x02ۋ" : GoString))
	+ (("\\x02ۅ\\x02ۉ\\x02ې\\x02ى\\x04ئا\\x04ئە\\x04ئو\\x04ئۇ\\x04ئۆ\\x04ئۈ\\x04ئې\\x04ئى\\x02" : GoString))
	+ (("ی\\x04ئج\\x04ئح\\x04ئم\\x04ئي\\x04بج\\x04بح\\x04بخ\\x04بم\\x04بى\\x04بي\\x04تج\\x04" : GoString))
	+ (("تح\\x04تخ\\x04تم\\x04تى\\x04تي\\x04ثج\\x04ثم\\x04ثى\\x04ثي\\x04جح\\x04جم\\x04حج" : GoString))
	+ (("\\x04حم\\x04خج\\x04خح\\x04خم\\x04سج\\x04سح\\x04سخ\\x04سم\\x04صح\\x04صم\\x04ضج\\x04ضح" : GoString))
	+ (("\\x04ضخ\\x04ضم\\x04طح\\x04طم\\x04ظم\\x04عج\\x04عم\\x04غج\\x04غم\\x04فج\\x04فح\\x04فخ" : GoString))
	+ (("\\x04فم\\x04فى\\x04في\\x04قح\\x04قم\\x04قى\\x04قي\\x04كا\\x04كج\\x04كح\\x04كخ\\x04كل" : GoString))
	+ (("\\x04كم\\x04كى\\x04كي\\x04لج\\x04لح\\x04لخ\\x04لم\\x04لى\\x04لي\\x04مج\\x04مح\\x04مخ" : GoString))
	+ (("\\x04مم\\x04مى\\x04مي\\x04نج\\x04نح\\x04نخ\\x04نم\\x04نى\\x04ني\\x04هج\\x04هم\\x04هى" : GoString))
	+ (("\\x04هي\\x04يج\\x04يح\\x04يخ\\x04يم\\x04يى\\x04يي\\x04ذٰ\\x04رٰ\\x04ىٰ\\x05 ٌّ\\x05 " : GoString))
	+ (("ٍّ\\x05 َّ\\x05 ُّ\\x05 ِّ\\x05 ّٰ\\x04ئر\\x04ئز\\x04ئن\\x04بر\\x04بز\\x04بن\\x04ت" : GoString))
	+ (("ر\\x04تز\\x04تن\\x04ثر\\x04ثز\\x04ثن\\x04ما\\x04نر\\x04نز\\x04نن\\x04ير\\x04يز\\x04" : GoString))
	+ (("ين\\x04ئخ\\x04ئه\\x04به\\x04ته\\x04صخ\\x04له\\x04نه\\x04هٰ\\x04يه\\x04ثه\\x04سه" : GoString))
	+ (("\\x04شم\\x04شه\\x06ـَّ\\x06ـُّ\\x06ـِّ\\x04طى\\x04طي\\x04عى\\x04عي\\x04غى\\x04غي" : GoString))
	+ (("\\x04سى\\x04سي\\x04شى\\x04شي\\x04حى\\x04حي\\x04جى\\x04جي\\x04خى\\x04خي\\x04صى\\x04صي" : GoString))
	+ (("\\x04ضى\\x04ضي\\x04شج\\x04شح\\x04شخ\\x04شر\\x04سر\\x04صر\\x04ضر\\x04اً\\x06تجم\\x06ت" : GoString))
	+ (("حج\\x06تحم\\x06تخم\\x06تمج\\x06تمح\\x06تمخ\\x06جمح\\x06حمي\\x06حمى\\x06سحج\\x06سج" : GoString))
	+ (("ح\\x06سجى\\x06سمح\\x06سمج\\x06سمم\\x06صحح\\x06صمم\\x06شحم\\x06شجي\\x06شمخ\\x06شمم" : GoString))
	+ (("\\x06ضحى\\x06ضخم\\x06طمح\\x06طمم\\x06طمي\\x06عجم\\x06عمم\\x06عمى\\x06غمم\\x06غمي" : GoString))
	+ (("\\x06غمى\\x06فخم\\x06قمح\\x06قمم\\x06لحم\\x06لحي\\x06لحى\\x06لجج\\x06لخم\\x06لمح" : GoString))
	+ (("\\x06محج\\x06محم\\x06محي\\x06مجح\\x06مجم\\x06مخج\\x06مخم\\x06مجخ\\x06همج\\x06همم" : GoString))
	+ (("\\x06نحم\\x06نحى\\x06نجم\\x06نجى\\x06نمي\\x06نمى\\x06يمم\\x06بخي\\x06تجي\\x06تجى" : GoString))
	+ (("\\x06تخي\\x06تخى\\x06تمي\\x06تمى\\x06جمي\\x06جحى\\x06جمى\\x06سخى\\x06صحي\\x06شحي" : GoString))
	+ (("\\x06ضحي\\x06لجي\\x06لمي\\x06يحي\\x06يجي\\x06يمي\\x06ممي\\x06قمي\\x06نحي\\x06عمي" : GoString))
	+ (("\\x06كمي\\x06نجح\\x06مخي\\x06لجم\\x06كمم\\x06جحي\\x06حجي\\x06مجي\\x06فمي\\x06بحي" : GoString))
	+ (("\\x06سخي\\x06نجي\\x06صلے\\x06قلے\\x08الله\\x08اكبر\\x08محمد\\x08صلعم\\x08رسول\\x08" : GoString))
	+ (("عليه\\x08وسلم\\x06صلى!صلى الله عليه وسلم\\x0fجل جلاله\\x08ریال\\x01,\\x01:" : GoString))
	+ (("\\x01!\\x01?\\x01_\\x01{\\x01}\\x01[\\x01]\\x01#\\x01&\\x01*\\x01-\\x01<\\x01>\\x01\\" : GoString))
	+ (("\\x01$\\x01%\\x01@\\x04ـً\\x04ـَ\\x04ـُ\\x04ـِ\\x04ـّ\\x04ـْ\\x02ء\\x02آ\\x02أ\\x02ؤ" : GoString))
	+ (("\\x02إ\\x02ئ\\x02ا\\x02ب\\x02ة\\x02ت\\x02ث\\x02ج\\x02ح\\x02خ\\x02د\\x02ذ\\x02ر\\x02ز" : GoString))
	+ (("\\x02س\\x02ش\\x02ص\\x02ض\\x02ط\\x02ظ\\x02ع\\x02غ\\x02ف\\x02ق\\x02ك\\x02ل\\x02م\\x02ن" : GoString))
	+ (("\\x02ه\\x02و\\x02ي\\x04لآ\\x04لأ\\x04لإ\\x04لا\\x01\\x22\\x01\'\\x01/\\x01^\\x01|\\x01~" : GoString))
	+ (("\\x02¢\\x02£\\x02¬\\x02¦\\x02¥\\x08𝅗𝅥\\x08𝅘𝅥\\x0c𝅘𝅥𝅮\\x0c𝅘𝅥𝅯\\x0c𝅘𝅥𝅰\\x0c𝅘𝅥𝅱\\x0c𝅘𝅥𝅲" : GoString))
	+ (("\\x08𝆹𝅥\\x08𝆺𝅥\\x0c𝆹𝅥𝅮\\x0c𝆺𝅥𝅮\\x0c𝆹𝅥𝅯\\x0c𝆺𝅥𝅯\\x02ı\\x02ȷ\\x02α\\x02ε\\x02ζ\\x02η" : GoString))
	+ (("\\x02κ\\x02λ\\x02μ\\x02ν\\x02ξ\\x02ο\\x02σ\\x02τ\\x02υ\\x02ψ\\x03∇\\x03∂\\x02ϝ\\x02ٮ" : GoString))
	+ (("\\x02ڡ\\x02ٯ\\x020,\\x021,\\x022,\\x023,\\x024,\\x025,\\x026,\\x027,\\x028,\\x029," : GoString))
	+ (("\\x03(a)\\x03(b)\\x03(c)\\x03(d)\\x03(e)\\x03(f)\\x03(g)\\x03(h)\\x03(i)\\x03(j)" : GoString))
	+ (("\\x03(k)\\x03(l)\\x03(m)\\x03(n)\\x03(o)\\x03(p)\\x03(q)\\x03(r)\\x03(s)\\x03(t)" : GoString))
	+ (("\\x03(u)\\x03(v)\\x03(w)\\x03(x)\\x03(y)\\x03(z)\\x07〔s〕\\x02wz\\x02hv\\x02sd\\x03p" : GoString))
	+ (("pv\\x02wc\\x02mc\\x02md\\x02mr\\x02dj\\x06ほか\\x06ココ\\x03サ\\x03手\\x03字\\x03双\\x03デ" : GoString))
	+ (("\\x03二\\x03多\\x03解\\x03天\\x03交\\x03映\\x03無\\x03料\\x03前\\x03後\\x03再\\x03新\\x03初\\x03終" : GoString))
	+ (("\\x03生\\x03販\\x03声\\x03吹\\x03演\\x03投\\x03捕\\x03一\\x03三\\x03遊\\x03左\\x03中\\x03右\\x03指" : GoString))
	+ (("\\x03走\\x03打\\x03禁\\x03空\\x03合\\x03満\\x03有\\x03月\\x03申\\x03割\\x03営\\x03配\\x09〔本〕\\x09〔" : GoString))
	+ (("三〕\\x09〔二〕\\x09〔安〕\\x09〔点〕\\x09〔打〕\\x09〔盗〕\\x09〔勝〕\\x09〔敗〕\\x03得\\x03可\\x03丽\\x03" : GoString))
	+ (("丸\\x03乁\\x03你\\x03侮\\x03侻\\x03倂\\x03偺\\x03備\\x03僧\\x03像\\x03㒞\\x03免\\x03兔\\x03兤\\x03" : GoString))
	+ (("具\\x03㒹\\x03內\\x03冗\\x03冤\\x03仌\\x03冬\\x03况\\x03凵\\x03刃\\x03㓟\\x03刻\\x03剆\\x03剷\\x03" : GoString))
	+ (("㔕\\x03勇\\x03勉\\x03勤\\x03勺\\x03包\\x03匆\\x03北\\x03卉\\x03卑\\x03博\\x03即\\x03卽\\x03卿\\x03" : GoString))
	+ (("灰\\x03及\\x03叟\\x03叫\\x03叱\\x03吆\\x03咞\\x03吸\\x03呈\\x03周\\x03咢\\x03哶\\x03唐\\x03啓\\x03" : GoString))
	+ (("啣\\x03善\\x03喙\\x03喫\\x03喳\\x03嗂\\x03圖\\x03嘆\\x03圗\\x03噑\\x03噴\\x03切\\x03壮\\x03城\\x03" : GoString))
	+ (("埴\\x03堍\\x03型\\x03堲\\x03報\\x03墬\\x03売\\x03壷\\x03夆\\x03夢\\x03奢\\x03姬\\x03娛\\x03娧\\x03" : GoString))
	+ (("姘\\x03婦\\x03㛮\\x03嬈\\x03嬾\\x03寃\\x03寘\\x03寧\\x03寳\\x03寿\\x03将\\x03尢\\x03㞁\\x03屠\\x03" : GoString))
	+ (("屮\\x03峀\\x03岍\\x03嵃\\x03嵮\\x03嵫\\x03嵼\\x03巡\\x03巢\\x03㠯\\x03巽\\x03帨\\x03帽\\x03幩\\x03" : GoString))
	+ (("㡢\\x03㡼\\x03庰\\x03庳\\x03庶\\x03廊\\x03廾\\x03舁\\x03弢\\x03㣇\\x03形\\x03彫\\x03㣣\\x03徚\\x03" : GoString))
	+ (("忍\\x03志\\x03忹\\x03悁\\x03㤺\\x03㤜\\x03悔\\x03惇\\x03慈\\x03慌\\x03慎\\x03慺\\x03憎\\x03憲\\x03" : GoString))
	+ (("憤\\x03憯\\x03懞\\x03懲\\x03懶\\x03成\\x03戛\\x03扝\\x03抱\\x03拔\\x03捐\\x03挽\\x03拼\\x03捨\\x03" : GoString))
	+ (("掃\\x03揤\\x03搢\\x03揅\\x03掩\\x03㨮\\x03摩\\x03摾\\x03撝\\x03摷\\x03㩬\\x03敏\\x03敬\\x03旣\\x03" : GoString))
	+ (("書\\x03晉\\x03㬙\\x03暑\\x03㬈\\x03㫤\\x03冒\\x03冕\\x03最\\x03暜\\x03肭\\x03䏙\\x03朗\\x03望\\x03" : GoString))
	+ (("朡\\x03杞\\x03杓\\x03㭉\\x03柺\\x03枅\\x03桒\\x03梅\\x03梎\\x03栟\\x03椔\\x03㮝\\x03楂\\x03榣\\x03" : GoString))
	+ (("槪\\x03檨\\x03櫛\\x03㰘\\x03次\\x03歔\\x03㱎\\x03歲\\x03殟\\x03殺\\x03殻\\x03汎\\x03沿\\x03泍\\x03" : GoString))
	+ (("汧\\x03洖\\x03派\\x03海\\x03流\\x03浩\\x03浸\\x03涅\\x03洴\\x03港\\x03湮\\x03㴳\\x03滋\\x03滇\\x03" : GoString))
	+ (("淹\\x03潮\\x03濆\\x03瀹\\x03瀞\\x03瀛\\x03㶖\\x03灊\\x03災\\x03灷\\x03炭\\x03煅\\x03熜\\x03爨\\x03" : GoString))
	+ (("爵\\x03牐\\x03犀\\x03犕\\x03獺\\x03王\\x03㺬\\x03玥\\x03㺸\\x03瑇\\x03瑜\\x03瑱\\x03璅\\x03瓊\\x03" : GoString))
	+ (("㼛\\x03甤\\x03甾\\x03異\\x03瘐\\x03㿼\\x03䀈\\x03直\\x03眞\\x03真\\x03睊\\x03䀹\\x03瞋\\x03䁆\\x03" : GoString))
	+ (("䂖\\x03硎\\x03碌\\x03磌\\x03䃣\\x03祖\\x03福\\x03秫\\x03䄯\\x03穀\\x03穊\\x03穏\\x03䈂\\x03篆\\x03" : GoString))
	+ (("築\\x03䈧\\x03糒\\x03䊠\\x03糨\\x03糣\\x03紀\\x03絣\\x03䌁\\x03緇\\x03縂\\x03繅\\x03䌴\\x03䍙\\x03" : GoString))
	+ (("罺\\x03羕\\x03翺\\x03者\\x03聠\\x03聰\\x03䏕\\x03育\\x03脃\\x03䐋\\x03脾\\x03媵\\x03舄\\x03辞\\x03" : GoString))
	+ (("䑫\\x03芑\\x03芋\\x03芝\\x03劳\\x03花\\x03芳\\x03芽\\x03苦\\x03若\\x03茝\\x03荣\\x03莭\\x03茣\\x03" : GoString))
	+ (("莽\\x03菧\\x03著\\x03荓\\x03菊\\x03菌\\x03菜\\x03䔫\\x03蓱\\x03蓳\\x03蔖\\x03蕤\\x03䕝\\x03䕡\\x03" : GoString))
	+ (("䕫\\x03虐\\x03虜\\x03虧\\x03虩\\x03蚩\\x03蚈\\x03蜎\\x03蛢\\x03蝹\\x03蜨\\x03蝫\\x03螆\\x03蟡\\x03" : GoString))
	+ (("蠁\\x03䗹\\x03衠\\x03衣\\x03裗\\x03裞\\x03䘵\\x03裺\\x03㒻\\x03䚾\\x03䛇\\x03誠\\x03諭\\x03變\\x03" : GoString))
	+ (("豕\\x03貫\\x03賁\\x03贛\\x03起\\x03跋\\x03趼\\x03跰\\x03軔\\x03輸\\x03邔\\x03郱\\x03鄑\\x03鄛\\x03" : GoString))
	+ (("鈸\\x03鋗\\x03鋘\\x03鉼\\x03鏹\\x03鐕\\x03開\\x03䦕\\x03閷\\x03䧦\\x03雃\\x03嶲\\x03霣\\x03䩮\\x03" : GoString))
	+ (("䩶\\x03韠\\x03䪲\\x03頋\\x03頩\\x03飢\\x03䬳\\x03餩\\x03馧\\x03駂\\x03駾\\x03䯎\\x03鬒\\x03鱀\\x03" : GoString))
	+ (("鳽\\x03䳎\\x03䳭\\x03鵧\\x03䳸\\x03麻\\x03䵖\\x03黹\\x03黾\\x03鼅\\x03鼏\\x03鼖\\x03鼻" : GoString));

final _joiningR = ((3 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _deviation:T_category = new T_category(((3 : GoUInt16)));
final _joinVirama = ((6 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _base:GoInt32 = ((36 : GoInt32));
final _joiningT = ((2 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _ignored:T_category = new T_category(((192 : GoUInt16)));
final _zwnj:GoString = "\u200c";
final _attributesMask:GoInt64 = ((6144 : GoUnTypedInt));
final _initialN:GoInt32 = ((128 : GoInt32));
final _joinZWNJ = ((5 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
final _stateBeforeVirama:T_joinState = new T_joinState((3 : GoUnTypedInt));
final _numJoinTypes = ((7 : GoUnTypedInt) + ((1 : GoUnTypedInt)));
var _punycode:Pointer<Profile> = Go.pointer(new Profile());
final _disallowedSTD3Valid:T_category = new T_category(((128 : GoUInt16)));
final _stateVirama:T_joinState = new T_joinState((1 : GoUnTypedInt));
final _stateAfter:T_joinState = new T_joinState((4 : GoUnTypedInt));
final _stateStart:T_joinState = new T_joinState((0 : GoUnTypedInt));

var _joinStates:Slice<GoArray<T_joinState>> = {
	var s = new Slice<GoArray<T_joinState>>(...([
		for (i in 0...1) new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()])
	]));
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateBefore);
		s[1] = new T_joinState(_stateBefore);
		s[2] = new T_joinState(_stateFAIL);
		s[3] = new T_joinState(_stateFAIL);
		s[4] = new T_joinState(_stateVirama);
		s;
	};
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateBefore);
		s[1] = new T_joinState(_stateBefore);
		s;
	};
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateBefore);
		s[1] = new T_joinState(_stateBefore);
		s[2] = new T_joinState(_stateBefore);
		s[3] = new T_joinState(_stateAfter);
		s[4] = new T_joinState(_stateFAIL);
		s[5] = new T_joinState(_stateBeforeVirama);
		s;
	};
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateBefore);
		s[1] = new T_joinState(_stateBefore);
		s[2] = new T_joinState(_stateBefore);
		s;
	};
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateFAIL);
		s[1] = new T_joinState(_stateBefore);
		s[2] = new T_joinState(_stateAfter);
		s[3] = new T_joinState(_stateStart);
		s[4] = new T_joinState(_stateFAIL);
		s[5] = new T_joinState(_stateFAIL);
		s[6] = new T_joinState(_stateAfter);
		s;
	};
	s[0] = {
		var s = new GoArray<T_joinState>(...[for (i in 0...8) new T_joinState()]);
		s[0] = new T_joinState(_stateFAIL);
		s[1] = new T_joinState(_stateFAIL);
		s[2] = new T_joinState(_stateFAIL);
		s[3] = new T_joinState(_stateFAIL);
		s[4] = new T_joinState(_stateFAIL);
		s[5] = new T_joinState(_stateFAIL);
		s[6] = new T_joinState(_stateFAIL);
		s[7] = new T_joinState(_stateFAIL);
		s;
	};
	s;
};

final _indexShift:GoInt64 = ((3 : GoUnTypedInt));
final _damp:GoInt32 = ((700 : GoInt32));
final _rtl:GoInt64 = ((2048 : GoUnTypedInt));
final _xorBit:GoInt64 = ((4 : GoUnTypedInt));

var _registration:Pointer<Profile> = Go.pointer(new Profile((({
	_useSTD3Rules: true,
	_verifyDNSLength: true,
	_checkHyphens: true,
	_checkJoiners: true,
	_trie: _trie,
	_fromPuny: _validateFromPunycode,
	_mapping: _validateRegistration,
	_bidirule: _bidirule.validString,
	_transitional: false,
	_removeLeadingDots: false
} : T_options)).__copy__()));

final _catBigMask:GoInt64 = ((248 : GoUnTypedInt));
final _modifier:GoInt64 = ((4096 : GoUnTypedInt));
final _validNV8:T_category = new T_category(((24 : GoUInt16)));
var registration:Pointer<Profile> = _registration;
final _initialBias:GoInt32 = ((72 : GoInt32));
final _acePrefix:GoString = "xn--";
final _disallowed:T_category = new T_category(((64 : GoUInt16)));
final _unknown:T_category = new T_category(((0 : GoUInt16)));
var punycode:Pointer<Profile> = _punycode;
final _zwj:GoString = "\u200d";
final _viramaModifier:GoInt64 = ((6144 : GoUnTypedInt));

/**
	// ToASCII is a wrapper for Punycode.ToASCII.
**/
function toASCII(_s:GoString):{var _0:GoString; var _1:Error;} {
	return punycode.value._process(_s, true);
}

/**
	// ToUnicode is a wrapper for Punycode.ToUnicode.
**/
function toUnicode(_s:GoString):{var _0:GoString; var _1:Error;} {
	return punycode.value._process(_s, false);
}

/**
	// Transitional sets a Profile to use the Transitional mapping as defined in UTS
	// #46. This will cause, for example, "ß" to be mapped to "ss". Using the
	// transitional mapping provides a compromise between IDNA2003 and IDNA2008
	// compatibility. It is used by most browsers when resolving domain names. This
	// option is only meaningful if combined with MapForLookup.
**/
function transitional(_transitional:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._transitional = true;
	});
}

/**
	// VerifyDNSLength sets whether a Profile should fail if any of the IDN parts
	// are longer than allowed by the RFC.
	//
	// This option corresponds to the VerifyDnsLength flag in UTS #46.
**/
function verifyDNSLength(_verify:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._verifyDNSLength = _verify;
	});
}

/**
	// RemoveLeadingDots removes leading label separators. Leading runes that map to
	// dots, such as U+3002 IDEOGRAPHIC FULL STOP, are removed as well.
**/
function removeLeadingDots(_remove:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._removeLeadingDots = _remove;
	});
}

/**
	// ValidateLabels sets whether to check the mandatory label validation criteria
	// as defined in Section 5.4 of RFC 5891. This includes testing for correct use
	// of hyphens ('-'), normalization, validity of runes, and the context rules.
	// In particular, ValidateLabels also sets the CheckHyphens and CheckJoiners flags
	// in UTS #46.
**/
function validateLabels(_enable:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		if (_o.value._mapping == null && _enable) {
			_o.value._mapping = _normalize;
		};
		_o.value._trie = _trie;
		_o.value._checkJoiners = _enable;
		_o.value._checkHyphens = _enable;
		if (_enable) {
			_o.value._fromPuny = _validateFromPunycode;
		} else {
			_o.value._fromPuny = null;
		};
	});
}

/**
	// CheckHyphens sets whether to check for correct use of hyphens ('-') in
	// labels. Most web browsers do not have this option set, since labels such as
	// "r3---sn-apo3qvuoxuxbt-j5pe" are in common use.
	//
	// This option corresponds to the CheckHyphens flag in UTS #46.
**/
function checkHyphens(_enable:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._checkHyphens = _enable;
	});
}

/**
	// CheckJoiners sets whether to check the ContextJ rules as defined in Appendix
	// A of RFC 5892, concerning the use of joiner runes.
	//
	// This option corresponds to the CheckJoiners flag in UTS #46.
**/
function checkJoiners(_enable:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._trie = _trie;
		_o.value._checkJoiners = _enable;
	});
}

/**
	// StrictDomainName limits the set of permissible ASCII characters to those
	// allowed in domain names as defined in RFC 1034 (A-Z, a-z, 0-9 and the
	// hyphen). This is set by default for MapForLookup and ValidateForRegistration,
	// but is only useful if ValidateLabels is set.
	//
	// This option is useful, for instance, for browsers that allow characters
	// outside this range, for example a '_' (U+005F LOW LINE). See
	// http://www.rfc-editor.org/std/std3.txt for more details.
	//
	// This option corresponds to the UseSTD3ASCIIRules flag in UTS #46.
**/
function strictDomainName(_use:Bool):Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._useSTD3Rules = _use;
	});
}

/**
	// BidiRule enables the Bidi rule as defined in RFC 5893. Any application
	// that relies on proper validation of labels should include this rule.
	//
	// This option corresponds to the CheckBidi flag in UTS #46.
**/
function bidiRule():Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._bidirule = _bidirule.validString;
	});
}

/**
	// ValidateForRegistration sets validation options to verify that a given IDN is
	// properly formatted for registration as defined by Section 4 of RFC 5891.
**/
function validateForRegistration():Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._mapping = _validateRegistration;
		strictDomainName(true).__t__(_o);
		validateLabels(true).__t__(_o);
		verifyDNSLength(true).__t__(_o);
		bidiRule().__t__(_o);
	});
}

/**
	// MapForLookup sets validation and mapping options such that a given IDN is
	// transformed for domain name lookup according to the requirements set out in
	// Section 5 of RFC 5891. The mappings follow the recommendations of RFC 5894,
	// RFC 5895 and UTS 46. It does not add the Bidi Rule. Use the BidiRule option
	// to add this check.
	//
	// The mappings include normalization and mapping case, width and other
	// compatibility mappings.
**/
function mapForLookup():Option {
	return new Option(function(_o:Pointer<T_options>):Void {
		_o.value._mapping = _validateAndMap;
		strictDomainName(true).__t__(_o);
		validateLabels(true).__t__(_o);
	});
}

function _apply(_o:Pointer<T_options>, _opts:Slice<Option>):Void {
	for (_f in _opts) {
		_f.__t__(_o);
	};
}

/**
	// New creates a new Profile.
	//
	// With no options, the returned Profile is the most permissive and equals the
	// Punycode Profile. Options can be passed to further restrict the Profile. The
	// MapForLookup and ValidateForRegistration options set a collection of options,
	// for lookup and registration purposes respectively, which can be tailored by
	// adding more fine-grained options, where later options override earlier
	// options.
**/
function new_(_o:haxe.Rest<Option>):Pointer<Profile> {
	var _o = new Slice<Option>(..._o);
	var _p:Pointer<Profile> = Go.pointer(new Profile());
	_apply(Go.pointer(_p.value._options), _o);
	return _p;
}

function _normalize(_p:Pointer<Profile>, _s:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
	var _mapped:GoString = (("" : GoString)),
		_isBidi:Bool = false,
		_err:Error = ((null : stdgo.Error));
	_mapped = golang_org.x.text.unicode.norm.Norm.nfc.toString(_s);
	_isBidi = _bidirule.directionString(_mapped).__t__ == golang_org.x.text.unicode.bidi.Bidi.rightToLeft.__t__;
	return {_0: _mapped, _1: _isBidi, _2: ((null : stdgo.Error))};
}

function _validateRegistration(_p:Pointer<Profile>, _s:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
	var _idem:GoString = (("" : GoString)),
		_bidi:Bool = false,
		_err:Error = ((null : stdgo.Error));
	if (!golang_org.x.text.unicode.norm.Norm.nfc.isNormalString(_s)) {
		return {_0: _s, _1: false, _2: Go.pointer(new T_labelError(_s, "V1")).value};
	};
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var __tmp__ = _trie.value._lookupString(_s.__slice__(_i)),
				_v:GoUInt16 = __tmp__._0,
				_sz:GoInt = __tmp__._1;
			if (_sz == ((0 : GoInt))) {
				return {_0: _s, _1: golang_org.x.text.unicode.bidi.Bidi, _2: new T_runeError(stdgo.unicode.utf8.Utf8.runeError.__t__)};
			};
			golang_org.x.text.unicode.bidi.Bidi = golang_org.x.text.unicode.bidi.Bidi || new T_info(_v)._isBidi(_s.__slice__(_i));
			if (_p.value._simplify(new T_info(_v)._category()).__t__ == _valid.__t__
				|| _p.value._simplify(new T_info(_v)._category())
					.__t__ == _deviation.__t__) {} else if (_p.value._simplify(new T_info(_v)._category()).__t__ == _disallowed.__t__
				|| _p.value._simplify(new T_info(_v)._category()).__t__ == _mapped.__t__
				|| _p.value._simplify(new T_info(_v)._category()).__t__ == _unknown.__t__
				|| _p.value._simplify(new T_info(_v)._category()).__t__ == _ignored.__t__) {
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_i)),
					_r:GoInt32 = __tmp__._0,
					_:GoInt = __tmp__._1;
				return {_0: _s, _1: golang_org.x.text.unicode.bidi.Bidi, _2: new T_runeError(_r)};
			};
			_i = _i + (_sz);
		};
	};
	return {_0: _s, _1: golang_org.x.text.unicode.bidi.Bidi, _2: ((null : stdgo.Error))};
}

function _validateAndMap(_p:Pointer<Profile>, _s:GoString):{var _0:GoString; var _1:Bool; var _2:Error;} {
	var _vm:GoString = (("" : GoString)),
		_bidi:Bool = false,
		_err:Error = ((null : stdgo.Error));
	var _b:Slice<GoByte> = new Slice<GoUInt8>().nil(),
		_k:GoInt = ((0 : GoInt));
	var _combinedInfoBits:T_info = new T_info();
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var __tmp__ = _trie.value._lookupString(_s.__slice__(_i)),
				_v:GoUInt16 = __tmp__._0,
				_sz:GoInt = __tmp__._1;
			if (_sz == ((0 : GoInt))) {
				_b = _b.__append__(..._s.__slice__(_k, _i).toArray());
				_b = _b.__append__(...(("\ufffd" : GoString)).toArray());
				_k = _s.length;
				if (_err == null) {
					_err = new T_runeError(stdgo.unicode.utf8.Utf8.runeError.__t__);
				};
				break;
			};
			_combinedInfoBits = new T_info(_combinedInfoBits.__t__ | (new T_info(_v)).__t__);
			golang_org.x.text.unicode.bidi.Bidi = golang_org.x.text.unicode.bidi.Bidi || new T_info(_v)._isBidi(_s.__slice__(_i));
			var _start:GoInt = _i;
			_i = _i + (_sz);
			if (_p.value._simplify(new T_info(_v)._category()).__t__ == _valid.__t__) {
				continue;
			} else if (_p.value._simplify(new T_info(_v)._category()).__t__ == _disallowed.__t__) {
				if (_err == null) {
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s.__slice__(_start)),
						_r:GoInt32 = __tmp__._0,
						_:GoInt = __tmp__._1;
					_err = new T_runeError(_r);
				};
				continue;
			} else if (_p.value._simplify(new T_info(_v)._category()).__t__ == _mapped.__t__
				|| _p.value._simplify(new T_info(_v)._category()).__t__ == _deviation.__t__) {
				_b = _b.__append__(..._s.__slice__(_k, _start).toArray());
				_b = new T_info(_v)._appendMapping(_b, _s.__slice__(_start, _i));
			} else if (_p.value._simplify(new T_info(_v)._category()).__t__ == _ignored.__t__) {
				_b = _b.__append__(..._s.__slice__(_k, _start).toArray());
			} else if (_p.value._simplify(new T_info(_v)._category()).__t__ == _unknown.__t__) {
				_b = _b.__append__(..._s.__slice__(_k, _start).toArray());
				_b = _b.__append__(...(("\ufffd" : GoString)).toArray());
			};
			_k = _i;
		};
	};
	if (_k == ((0 : GoInt))) {
		if (new T_info(_combinedInfoBits.__t__ & _mayNeedNorm).__t__ != ((0 : GoUInt16))) {
			_s = golang_org.x.text.unicode.norm.Norm.nfc.toString(_s);
		};
	} else {
		_b = _b.__append__(..._s.__slice__(_k).toArray());
		if (golang_org.x.text.unicode.norm.Norm.nfc.quickSpan(_b) != _b.length) {
			_b = golang_org.x.text.unicode.norm.Norm.nfc.bytes(_b);
		};
		_s = ((_b : GoString));
	};
	return {_0: _s, _1: golang_org.x.text.unicode.bidi.Bidi, _2: _err};
}

function _validateFromPunycode(_p:Pointer<Profile>, _s:GoString):Error {
	if (!golang_org.x.text.unicode.norm.Norm.nfc.isNormalString(_s)) {
		return Go.pointer(new T_labelError(_s, "V1")).value;
	};
	{
		var _i:GoInt = ((0 : GoInt));
		while (_i < _s.length) {
			var __tmp__ = _trie.value._lookupString(_s.__slice__(_i)),
				_v:GoUInt16 = __tmp__._0,
				_sz:GoInt = __tmp__._1;
			if (_sz == ((0 : GoInt))) {
				return new T_runeError(stdgo.unicode.utf8.Utf8.runeError.__t__);
			};
			{
				var _c:T_category = _p.value._simplify(new T_info(_v)._category());
				if (_c.__t__ != _valid.__t__ && _c.__t__ != _deviation.__t__) {
					return Go.pointer(new T_labelError(_s, "V6")).value;
				};
			};
			_i = _i + (_sz);
		};
	};
	return ((null : stdgo.Error));
}

function _ascii(_s:GoString):Bool {
	{
		var _i:GoInt = ((0 : GoInt));
		Go.cfor(_i < _s.length, _i++, {
			if (_s[_i] >= stdgo.unicode.utf8.Utf8.runeSelf) {
				return false;
			};
		});
	};
	return true;
}

function _punyError(_s:GoString):Error {
	return Go.pointer(new T_labelError(_s, "A3")).value;
}

/**
	// decode decodes a string as specified in section 6.2.
**/
function _decode(_encoded:GoString):{var _0:GoString; var _1:Error;} {
	if (_encoded == (("" : GoString))) {
		return {_0: "", _1: ((null : stdgo.Error))};
	};
	var _pos:GoInt = ((1 : GoInt)) + stdgo.strings.Strings.lastIndex(_encoded, "-");
	if (_pos == ((1 : GoInt))) {
		return {_0: "", _1: _punyError(_encoded)};
	};
	if (_pos == _encoded.length) {
		return {_0: _encoded.__slice__(0, _encoded.length - ((1 : GoInt))), _1: ((null : stdgo.Error))};
	};
	var _output:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0...((((0 : GoInt)) : GoInt)).toBasic()) ((0 : GoInt32))]).setCap(((_encoded.length : GoInt))
		.toBasic());
	if (_pos != ((0 : GoInt))) {
		for (_r in _encoded.__slice__(0, _pos - ((1 : GoInt)))) {
			_output = _output.__append__(_r);
		};
	};
	var _i:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_n:GoInt32 = _initialN,
		_bias:GoInt32 = _initialBias;
	while (_pos < _encoded.length) {
		var _oldI:GoInt32 = _i, _w:GoInt32 = ((((1 : GoInt32)) : GoInt32));
		{
			var _k:GoInt32 = _base;
			Go.cfor(true, _k = _k + (_base), {
				if (_pos == _encoded.length) {
					return {_0: "", _1: _punyError(_encoded)};
				};
				var __tmp__ = _decodeDigit(_encoded[_pos]),
					_digit:GoInt32 = __tmp__._0,
					_ok:Bool = __tmp__._1;
				if (!_ok) {
					return {_0: "", _1: _punyError(_encoded)};
				};
				_pos++;
				_i = _i + (_digit * _w);
				if (_i < ((0 : GoInt32))) {
					return {_0: "", _1: _punyError(_encoded)};
				};
				var _t:GoInt32 = _k - _bias;
				if (_t < _tmin) {
					_t = _tmin;
				} else if (_t > _tmax) {
					_t = _tmax;
				};
				if (_digit < _t) {
					break;
				};
				_w = _w * (_base - _t);
				if (_w >= stdgo.math.Math.maxInt32 / _base) {
					return {_0: "", _1: _punyError(_encoded)};
				};
			});
		};
		var _x:GoInt32 = (((_output.length + ((1 : GoInt))) : GoInt32));
		_bias = _adapt(_i - _oldI, _x, _oldI == ((0 : GoInt32)));
		_n = _n + (_i / _x);
		_i = _i % (_x);
		if (_n > stdgo.unicode.utf8.Utf8.maxRune || _output.length >= ((1024 : GoInt))) {
			return {_0: "", _1: _punyError(_encoded)};
		};
		_output = _output.__append__(((0 : GoInt32)));
		Go.copy(_output.__slice__(_i + ((1 : GoInt32))), _output.__slice__(_i));
		_output[_i] = _n;
		_i++;
	};
	return {_0: ((_output : GoString)), _1: ((null : stdgo.Error))};
}

/**
	// encode encodes a string as specified in section 6.3 and prepends prefix to
	// the result.
	//
	// The "while h < length(input)" line in the specification becomes "for
	// remaining != 0" in the Go code, because len(s) in Go is in bytes, not runes.
**/
function _encode(_prefix:GoString, _s:GoString):{var _0:GoString; var _1:Error;} {
	var _output:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_prefix.length : GoInt)).toBasic()) ((0 : GoUInt8))]).setCap(((_prefix.length
		+ ((1 : GoInt)) + ((2 : GoInt)) * _s.length:GoInt)).toBasic());
	Go.copy(_output, _prefix);
	var _delta:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_n:GoInt32 = _initialN,
		_bias:GoInt32 = _initialBias;
	var _b:GoInt32 = ((((0 : GoInt32)) : GoInt32)),
		_remaining:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	for (_r in _s) {
		if (_r < ((128 : GoInt32))) {
			_b++;
			_output = _output.__append__(((_r : GoByte)));
		} else {
			_remaining++;
		};
	};
	var _h:GoInt32 = _b;
	if (_b > ((0 : GoInt32))) {
		_output = _output.__append__((("-".code : GoRune)));
	};
	while (_remaining != ((0 : GoInt32))) {
		var _m:GoInt32 = ((((2147483647 : GoInt32)) : GoInt32));
		for (_r in _s) {
			if (_m > _r && _r >= _n) {
				_m = _r;
			};
		};
		_delta = _delta + ((_m - _n) * (_h + ((1 : GoInt32))));
		if (_delta < ((0 : GoInt32))) {
			return {_0: "", _1: _punyError(_s)};
		};
		_n = _m;
		for (_r in _s) {
			if (_r < _n) {
				_delta++;
				if (_delta < ((0 : GoInt32))) {
					return {_0: "", _1: _punyError(_s)};
				};
				continue;
			};
			if (_r > _n) {
				continue;
			};
			var _q:GoInt32 = _delta;
			{
				var _k:GoInt32 = _base;
				Go.cfor(true, _k = _k + (_base), {
					var _t:GoInt32 = _k - _bias;
					if (_t < _tmin) {
						_t = _tmin;
					} else if (_t > _tmax) {
						_t = _tmax;
					};
					if (_q < _t) {
						break;
					};
					_output = _output.__append__(_encodeDigit(_t + (_q - _t) % (_base - _t)));
					_q = (_q - _t) / (_base - _t);
				});
			};
			_output = _output.__append__(_encodeDigit(_q));
			_bias = _adapt(_delta, _h + ((1 : GoInt32)), _h == _b);
			_delta = ((0 : GoInt32));
			_h++;
			_remaining--;
		};
		_delta++;
		_n++;
	};
	return {_0: ((_output : GoString)), _1: ((null : stdgo.Error))};
}

function _decodeDigit(_x:GoByte):{var _0:GoInt32; var _1:Bool;} {
	var _digit:GoInt32 = ((0 : GoInt32)), _ok:Bool = false;
	if ((("0".code : GoRune)) <= _x && _x <= (("9".code : GoRune))) {
		return {_0: (((_x - ((("0".code : GoRune)) - ((26 : GoInt32)))) : GoInt32)), _1: true};
	} else if ((("A".code : GoRune)) <= _x && _x <= (("Z".code : GoRune))) {
		return {_0: (((_x - (("A".code : GoRune))) : GoInt32)), _1: true};
	} else if ((("a".code : GoRune)) <= _x && _x <= (("z".code : GoRune))) {
		return {_0: (((_x - (("a".code : GoRune))) : GoInt32)), _1: true};
	};
	return {_0: ((0 : GoInt32)), _1: false};
}

function _encodeDigit(_digit:GoInt32):GoByte {
	if (((0 : GoInt32)) <= _digit && _digit < ((26 : GoInt32))) {
		return (((_digit + (("a".code : GoRune))) : GoByte));
	} else if (((26 : GoInt32)) <= _digit && _digit < ((36 : GoInt32))) {
		return (((_digit + ((("0".code : GoRune)) - ((26 : GoInt32)))) : GoByte));
	};
	throw "idna: internal error in punycode encoding";
}

/**
	// adapt is the bias adaptation function specified in section 6.1.
**/
function _adapt(_delta:GoInt32, _numPoints:GoInt32, _firstTime:Bool):GoInt32 {
	if (_firstTime) {
		_delta = _delta / (_damp);
	} else {
		_delta = _delta / (((2 : GoInt32)));
	};
	_delta = _delta + (_delta / _numPoints);
	var _k:GoInt32 = ((((0 : GoInt32)) : GoInt32));
	while (_delta > ((_base - _tmin) * _tmax) / ((2 : GoInt32))) {
		_delta = _delta / (_base - _tmin);
		_k = _k + (_base);
	};
	return _k + (_base - _tmin + ((1 : GoInt32))) * _delta / (_delta + _skew);
}

function _newIdnaTrie(_i:GoInt):Pointer<T_idnaTrie> {
	return Go.pointer(new T_idnaTrie());
}

class Profile_extension_fields {
	public function toASCII(__tmp__, _s:GoString):{var _0:GoString; var _1:Error;}
		return __tmp__.toASCII(_s);

	public function toUnicode(__tmp__, _s:GoString):{var _0:GoString; var _1:Error;}
		return __tmp__.toUnicode(_s);

	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function _process(__tmp__, _s:GoString, _toASCII:Bool):{var _0:GoString; var _1:Error;}
		return __tmp__._process(_s, _toASCII);

	public function _simplify(__tmp__, _cat:T_category):T_category
		return __tmp__._simplify(_cat);

	public function _validateLabel(__tmp__, _s:GoString):Error
		return __tmp__._validateLabel(_s);
}

class T_labelError_extension_fields {
	public function _code(__tmp__):GoString
		return __tmp__._code();

	public function error(__tmp__):GoString
		return __tmp__.error();
}

class T_runeError_extension_fields {
	public function _code(__tmp__):GoString
		return __tmp__._code();

	public function error(__tmp__):GoString
		return __tmp__.error();
}

class T_labelIter_extension_fields {
	public function _reset(__tmp__):Void
		__tmp__._reset();

	public function _done(__tmp__):Bool
		return __tmp__._done();

	public function _result(__tmp__):GoString
		return __tmp__._result();

	public function _label(__tmp__):GoString
		return __tmp__._label();

	public function _next(__tmp__):Void
		__tmp__._next();

	public function _set(__tmp__, _s:GoString):Void
		__tmp__._set(_s);
}

class T_idnaTrie_extension_fields {
	public function _lookup(__tmp__, _s:Slice<GoByte>):{var _0:GoUInt16; var _1:GoInt;}
		return __tmp__._lookup(_s);

	public function _lookupUnsafe(__tmp__, _s:Slice<GoByte>):GoUInt16
		return __tmp__._lookupUnsafe(_s);

	public function _lookupString(__tmp__, _s:GoString):{var _0:GoUInt16; var _1:GoInt;}
		return __tmp__._lookupString(_s);

	public function _lookupStringUnsafe(__tmp__, _s:GoString):GoUInt16
		return __tmp__._lookupStringUnsafe(_s);

	public function _lookupValue(__tmp__, _n:GoUInt32, _b:GoByte):GoUInt16
		return __tmp__._lookupValue(_n, _b);
}

class T_sparseBlocks_extension_fields {
	public function _lookup(__tmp__, _n:GoUInt32, _b:GoByte):GoUInt16
		return __tmp__._lookup(_n, _b);
}

class T_info_extension_fields {
	public function _isBidi(__tmp__, _s:GoString):Bool
		return __tmp__._isBidi(_s);

	public function _appendMapping(__tmp__, _b:Slice<GoByte>, _s:GoString):Slice<GoByte>
		return __tmp__._appendMapping(_b, _s);

	public function _isMapped(__tmp__):Bool
		return __tmp__._isMapped();

	public function _category(__tmp__):T_category
		return __tmp__._category();

	public function _joinType(__tmp__):T_info
		return __tmp__._joinType();

	public function _isModifier(__tmp__):Bool
		return __tmp__._isModifier();

	public function _isViramaModifier(__tmp__):Bool
		return __tmp__._isViramaModifier();
}
