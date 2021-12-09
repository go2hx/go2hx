package stdgo.vendor.golang_org.x.text.unicode.bidi;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

@:named class Direction {
	public var __t__:GoInt;

	public function new(?t:GoInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Direction(__t__);
}

@:structInit class T_options {
	public var _defaultDirection:Direction = new Direction();

	public function new(?_defaultDirection:Direction)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_defaultDirection) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_options(_defaultDirection);
	}

	public function __set__(__tmp__) {
		this._defaultDirection = __tmp__._defaultDirection;
		return this;
	}
}

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

@:structInit class Paragraph {
	public function line(_start:GoInt, _end:GoInt):{var _0:Ordering; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _lineTypes:Slice<Class_> = _p.value._types.__slice__(_start, _end);
		var __tmp__ = _newParagraph(_lineTypes, _p.value._pairTypes.__slice__(_start, _end), _p.value._pairValues.__slice__(_start, _end),
			new T_level(-((1 : GoUnTypedInt)))),
			_para:Pointer<T_paragraph> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Ordering().__copy__(), _1: _err};
		};
		var _levels:Slice<T_level> = _para.value._getLevels(new Slice<GoInt>(_lineTypes.length));
		var _o:Ordering = _calculateOrdering(_levels, _p.value._runes.__slice__(_start, _end)).__copy__();
		return {_0: _o.__copy__(), _1: ((null : stdgo.Error))};
	}

	public function order():{var _0:Ordering; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value._types.length == ((0 : GoInt))) {
			return {_0: new Ordering().__copy__(), _1: ((null : stdgo.Error))};
		};
		for (_fn in _p.value._opts) {
			_fn.__t__(Go.pointer(_p.value._options));
		};
		var _lvl:T_level = new T_level(-((1 : GoUnTypedInt)));
		if (_p.value._options._defaultDirection.__t__ == rightToLeft.__t__) {
			_lvl = new T_level(((1 : GoInt8)));
		};
		var __tmp__ = _newParagraph(_p.value._types, _p.value._pairTypes, _p.value._pairValues, _lvl),
			_para:Pointer<T_paragraph> = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_err != null) {
			return {_0: new Ordering().__copy__(), _1: _err};
		};
		var _levels:Slice<T_level> = _para.value._getLevels(new Slice<GoInt>(_p.value._types.length));
		_p.value._o = _calculateOrdering(_levels, _p.value._runes).__copy__();
		return {_0: _p.value._o.__copy__(), _1: ((null : stdgo.Error))};
	}

	public function runAt(_pos:GoInt):Run {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c:GoInt = ((0 : GoInt));
		var _runNumber:GoInt = ((0 : GoInt));
		{
			var _i;
			var _r;
			for (_obj in _p.value._o._runes.keyValueIterator()) {
				_i = _obj.key;
				_r = _obj.value;
				_c = _c + (_r.length);
				if (_pos < _c) {
					_runNumber = _i;
				};
			};
		};
		return _p.value._o.run(_runNumber).__copy__();
	}

	public function direction():Direction {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value._o.direction();
	}

	public function isLeftToRight():Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value.direction().__t__ == leftToRight.__t__;
	}

	public function setString(_s:GoString, _opts:haxe.Rest<Option>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _opts = new Slice<Option>(..._opts);
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_p.value._p = ((_s : Slice<GoByte>));
		_p.value._opts = _opts;
		return _p.value._prepareInput();
	}

	public function setBytes(_b:Slice<GoByte>, _opts:haxe.Rest<Option>):{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _opts = new Slice<Option>(..._opts);
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_p.value._p = _b;
		_p.value._opts = _opts;
		return _p.value._prepareInput();
	}

	public function _prepareInput():{var _0:GoInt; var _1:Error;} {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _n:GoInt = ((0 : GoInt)), _err:Error = ((null : stdgo.Error));
		_p.value._runes = stdgo.bytes.Bytes.runes(_p.value._p);
		var _bytecount:GoInt = ((0 : GoInt));
		_p.value._pairTypes = new Slice<T_bracketType>().nil();
		_p.value._pairValues = new Slice<GoInt32>().nil();
		_p.value._types = new Slice<Class_>().nil();
		for (_r in _p.value._runes) {
			var __tmp__ = lookupRune(_r),
				_props:Properties = __tmp__._0,
				_i:GoInt = __tmp__._1;
			_bytecount = _bytecount + (_i);
			var _cls:Class_ = _props.class_();
			if (_cls.__t__ == b.__t__) {
				return {_0: _bytecount, _1: ((null : stdgo.Error))};
			};
			_p.value._types = _p.value._types.__append__(_cls);
			if (_props.isOpeningBracket()) {
				_p.value._pairTypes = _p.value._pairTypes.__append__(_bpOpen);
				_p.value._pairValues = _p.value._pairValues.__append__(_r);
			} else if (_props.isBracket()) {
				_p.value._pairTypes = _p.value._pairTypes.__append__(_bpClose);
				_p.value._pairValues = _p.value._pairValues.__append__(_r);
			} else {
				_p.value._pairTypes = _p.value._pairTypes.__append__(_bpNone);
				_p.value._pairValues = _p.value._pairValues.__append__(((0 : GoInt32)));
			};
		};
		return {_0: _bytecount, _1: ((null : stdgo.Error))};
	}

	public var _p:Slice<GoUInt8> = new Slice<GoUInt8>().nil();
	public var _o:Ordering = new Ordering();
	public var _opts:Slice<Option> = new Slice<Option>().nil();
	public var _types:Slice<Class_> = new Slice<Class_>().nil();
	public var _pairTypes:Slice<T_bracketType> = new Slice<T_bracketType>().nil();
	public var _pairValues:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _runes:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _options:T_options = new T_options();

	public function new(?_p:Slice<GoUInt8>, ?_o:Ordering, ?_opts:Slice<Option>, ?_types:Slice<Class_>, ?_pairTypes:Slice<T_bracketType>,
			?_pairValues:Slice<GoInt32>, ?_runes:Slice<GoInt32>, ?_options:T_options)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_p) + " " + Go.string(_o) + " " + Go.string(_opts) + " " + Go.string(_types) + " " + Go.string(_pairTypes) + " "
			+ Go.string(_pairValues) + " " + Go.string(_runes) + " " + Go.string(_options) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Paragraph(_p, _o, _opts, _types, _pairTypes, _pairValues, _runes, _options);
	}

	public function __set__(__tmp__) {
		this._p = __tmp__._p;
		this._o = __tmp__._o;
		this._opts = __tmp__._opts;
		this._types = __tmp__._types;
		this._pairTypes = __tmp__._pairTypes;
		this._pairValues = __tmp__._pairValues;
		this._runes = __tmp__._runes;
		this._options = __tmp__._options;
		return this;
	}
}

@:structInit class Ordering {
	public function run(_i:GoInt):Run {
		var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _r:Run = (({_runes: _o.value._runes[_i], _direction: _o.value._directions[_i], _startpos: _o.value._startpos[_i]} : Run)).__copy__();
		return _r.__copy__();
	}

	public function numRuns():GoInt {
		var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _o.value._runes.length;
	}

	public function direction():Direction {
		var _o = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _o.value._directions[((0 : GoInt))];
	}

	public var _runes:Slice<Slice<GoInt32>> = new Slice<Slice<GoInt32>>().nil();
	public var _directions:Slice<Direction> = new Slice<Direction>().nil();
	public var _startpos:Slice<GoInt> = new Slice<GoInt>().nil();

	public function new(?_runes:Slice<Slice<GoInt32>>, ?_directions:Slice<Direction>, ?_startpos:Slice<GoInt>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_runes) + " " + Go.string(_directions) + " " + Go.string(_startpos) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Ordering(_runes, _directions, _startpos);
	}

	public function __set__(__tmp__) {
		this._runes = __tmp__._runes;
		this._directions = __tmp__._directions;
		this._startpos = __tmp__._startpos;
		return this;
	}
}

@:structInit class Run {
	public function pos():{var _0:GoInt; var _1:GoInt;} {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _start:GoInt = ((0 : GoInt)), _end:GoInt = ((0 : GoInt));
		return {_0: _r.value._startpos, _1: _r.value._startpos + _r.value._runes.length - ((1 : GoInt))};
	}

	public function direction():Direction {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _r.value._direction;
	}

	public function bytes():Slice<GoByte> {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_r.value.toString() : Slice<GoByte>));
	}

	public function toString():GoString {
		var _r = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return ((_r.value._runes : GoString));
	}

	public var _runes:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _direction:Direction = new Direction();
	public var _startpos:GoInt = ((0 : GoInt));

	public function new(?_runes:Slice<GoInt32>, ?_direction:Direction, ?_startpos:GoInt)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Run(_runes, _direction, _startpos);
	}

	public function __set__(__tmp__) {
		this._runes = __tmp__._runes;
		this._direction = __tmp__._direction;
		this._startpos = __tmp__._startpos;
		return this;
	}
}

@:named class T_bracketType {
	public var __t__:GoUInt8;

	public function new(?t:GoUInt8) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_bracketType(__t__);
}

@:structInit class T_bracketPair {
	public function toString():GoString {
		var _b = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.fmt.Fmt.sprintf("(%v, %v)", Go.toInterface(_b.value._opener), Go.toInterface(_b.value._closer));
	}

	public var _opener:GoInt = ((0 : GoInt));
	public var _closer:GoInt = ((0 : GoInt));

	public function new(?_opener:GoInt, ?_closer:GoInt)
		stdgo.internal.Macro.initLocals();

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bracketPair(_opener, _closer);
	}

	public function __set__(__tmp__) {
		this._opener = __tmp__._opener;
		this._closer = __tmp__._closer;
		return this;
	}
}

@:named class T_bracketPairs {
	public function less(_i:GoInt, _j:GoInt):Bool {
		var _b = this.__copy__();
		return _b.__t__[_i]._opener < _b.__t__[_j]._opener;
	}

	public function swap(_i:GoInt, _j:GoInt):Void {
		var _b = this.__copy__();
		{
			final __tmp__0 = _b.__t__[_j].__copy__();
			final __tmp__1 = _b.__t__[_i].__copy__();
			_b.__t__[_i] = __tmp__0;
			_b.__t__[_j] = __tmp__1;
		};
	}

	public function len():GoInt {
		var _b = this.__copy__();
		return _b.__t__.length;
	}

	public var __t__:Slice<T_bracketPair>;

	public function new(?t:Slice<T_bracketPair>) {
		__t__ = t == null ? new Slice<T_bracketPair>().nil() : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new T_bracketPairs(__t__);

	public function __append__(args:haxe.Rest<T_bracketPair>)
		return new T_bracketPairs(this.__t__.__append__(...args));

	public function __slice__(low:GoInt, high:GoInt = -1)
		return new T_bracketPairs(this.__t__.__slice__(low, high));
}

@:structInit class T_bracketPairer {
	public function _resolveBrackets(_dirEmbed:Class_, _initialTypes:Slice<Class_>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		for (_loc in _p.value._pairPositions.__t__) {
			_p.value._assignBracketType(_loc.__copy__(), _dirEmbed, _initialTypes);
		};
	}

	public function _setBracketsToType(_loc:T_bracketPair, _dirPair:Class_, _initialTypes:Slice<Class_>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p.value._codesIsolatedRun[_loc._opener] = _dirPair;
		_p.value._codesIsolatedRun[_loc._closer] = _dirPair;
		{
			var _i:GoInt = _loc._opener + ((1 : GoInt));
			Go.cfor(_i < _loc._closer, _i++, {
				var _index:GoInt = _p.value._indexes[_i];
				if (_initialTypes[_index].__t__ != nsm.__t__) {
					break;
				};
				_p.value._codesIsolatedRun[_i] = _dirPair;
			});
		};
		{
			var _i:GoInt = _loc._closer + ((1 : GoInt));
			Go.cfor(_i < _p.value._indexes.length, _i++, {
				var _index:GoInt = _p.value._indexes[_i];
				if (_initialTypes[_index].__t__ != nsm.__t__) {
					break;
				};
				_p.value._codesIsolatedRun[_i] = _dirPair;
			});
		};
	}

	public function _assignBracketType(_loc:T_bracketPair, _dirEmbed:Class_, _initialTypes:Slice<Class_>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dirPair:Class_ = _p.value._classifyPairContent(_loc.__copy__(), _dirEmbed);
		if (_dirPair.__t__ == on.__t__) {
			return;
		};
		if (_dirPair.__t__ != _dirEmbed.__t__) {
			_dirPair = _p.value._classBeforePair(_loc.__copy__());
			if (_dirPair.__t__ == _dirEmbed.__t__ || _dirPair.__t__ == on.__t__) {
				_dirPair = _dirEmbed;
			};
		};
		_p.value._setBracketsToType(_loc.__copy__(), _dirPair, _initialTypes);
	}

	public function _classBeforePair(_loc:T_bracketPair):Class_ {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _i:GoInt = _loc._opener - ((1 : GoInt));
			Go.cfor(_i >= ((0 : GoInt)), _i--, {
				{
					var _dir:Class_ = _p.value._getStrongTypeN0(_i);
					if (_dir.__t__ != on.__t__) {
						return _dir;
					};
				};
			});
		};
		return _p.value._sos;
	}

	public function _classifyPairContent(_loc:T_bracketPair, _dirEmbed:Class_):Class_ {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _dirOpposite:Class_ = on;
		{
			var _i:GoInt = _loc._opener + ((1 : GoInt));
			Go.cfor(_i < _loc._closer, _i++, {
				var _dir:Class_ = _p.value._getStrongTypeN0(_i);
				if (_dir.__t__ == on.__t__) {
					continue;
				};
				if (_dir.__t__ == _dirEmbed.__t__) {
					return _dir;
				};
				_dirOpposite = _dir;
			});
		};
		return _dirOpposite;
	}

	public function _getStrongTypeN0(_index:GoInt):Class_ {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		if (_p.value._codesIsolatedRun[_index].__t__ == en.__t__
			|| _p.value._codesIsolatedRun[_index].__t__ == an.__t__
			|| _p.value._codesIsolatedRun[_index].__t__ == al.__t__
			|| _p.value._codesIsolatedRun[_index].__t__ == r.__t__) {
			return r;
		} else if (_p.value._codesIsolatedRun[_index].__t__ == l.__t__) {
			return l;
		} else {
			return on;
		};
	}

	public function _locateBrackets(_pairTypes:Slice<T_bracketType>, _pairValues:Slice<GoRune>):Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _i;
			var _index;
			for (_obj in _p.value._indexes.keyValueIterator()) {
				_i = _obj.key;
				_index = _obj.value;
				if (_pairTypes[_index].__t__ == _bpNone.__t__ || _p.value._codesIsolatedRun[_i].__t__ != on.__t__) {
					continue;
				};
				{
					var __switchIndex__ = -1;
					while (true) {
						if (_pairTypes[_index].__t__ == _bpOpen.__t__) {
							if (_p.value._openers.value.len() == _maxPairingDepth) {
								_p.value._openers.value.init();
								return;
							};
							_p.value._openers.value.pushFront(Go.toInterface(_i));
							break;
						} else if (_pairTypes[_index].__t__ == _bpClose.__t__) {
							var _count:GoInt = ((0 : GoInt));
							{
								var _elem:Pointer<stdgo.container.list.List.Element> = _p.value._openers.value.front();
								Go.cfor(_elem != null && !_elem.isNil(), _elem = _elem.value.next(), {
									_count++;
									var _opener:GoInt = ((_elem.value.value.value : GoInt));
									if (_p.value._matchOpener(_pairValues, _opener, _i)) {
										_p.value._pairPositions = _p.value._pairPositions.__append__(new T_bracketPair(_opener, _i).__copy__()).__copy__();
										Go.cfor(_count > ((0 : GoInt)), _count--, {
											_p.value._openers.value.remove(_p.value._openers.value.front());
										});
										break;
									};
								});
							};
							stdgo.sort.Sort.sort(_p.value._pairPositions.__copy__());
							break;
						};
						break;
					};
				};
			};
		};
	}

	public function _matchOpener(_pairValues:Slice<GoRune>, _opener:GoInt, _closer:GoInt):Bool {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _pairValues[_p.value._indexes[_opener]] == _pairValues[_p.value._indexes[_closer]];
	}

	public var _sos:Class_ = new Class_();
	public var _openers:Pointer<stdgo.container.list.List.List_> = new Pointer<stdgo.container.list.List.List_>().nil();
	public var _pairPositions:T_bracketPairs = new T_bracketPairs();
	public var _codesIsolatedRun:Slice<Class_> = new Slice<Class_>().nil();
	public var _indexes:Slice<GoInt> = new Slice<GoInt>().nil();

	public function new(?_sos:Class_, ?_openers:Pointer<stdgo.container.list.List.List_>, ?_pairPositions:T_bracketPairs, ?_codesIsolatedRun:Slice<Class_>,
			?_indexes:Slice<GoInt>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_sos) + " " + Go.string(_openers) + " " + Go.string(_pairPositions) + " " + Go.string(_codesIsolatedRun) + " "
			+ Go.string(_indexes) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bracketPairer(_sos, _openers, _pairPositions, _codesIsolatedRun, _indexes);
	}

	public function __set__(__tmp__) {
		this._sos = __tmp__._sos;
		this._openers = __tmp__._openers;
		this._pairPositions = __tmp__._pairPositions;
		this._codesIsolatedRun = __tmp__._codesIsolatedRun;
		this._indexes = __tmp__._indexes;
		return this;
	}
}

@:named class T_level {
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
		return new T_level(__t__);
}

@:structInit class T_paragraph {
	public function _getReordering(_linebreaks:Slice<GoInt>):Slice<GoInt> {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_validateLineBreaks(_linebreaks, _p.value.len());
		return _computeMultilineReordering(_p.value._getLevels(_linebreaks), _linebreaks);
	}

	public function _getLevels(_linebreaks:Slice<GoInt>):Slice<T_level> {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_validateLineBreaks(_linebreaks, _p.value.len());
		var _result:Slice<T_level> = ((new Slice<T_level>().nil() : Slice<T_level>)).__append__(..._p.value._resultLevels.toArray());
		{
			var _i;
			var _t;
			for (_obj in _p.value._initialTypes.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t._in(b, s)) {
					_result[_i] = _p.value._embeddingLevel;
					{
						var _j:GoInt = _i - ((1 : GoInt));
						Go.cfor(_j >= ((0 : GoInt)), _j--, {
							if (_isWhitespace(_p.value._initialTypes[_j])) {
								_result[_j] = _p.value._embeddingLevel;
							} else {
								break;
							};
						});
					};
				};
			};
		};
		var _start:GoInt = ((0 : GoInt));
		for (_limit in _linebreaks) {
			{
				var _j:GoInt = _limit - ((1 : GoInt));
				Go.cfor(_j >= _start, _j--, {
					if (_isWhitespace(_p.value._initialTypes[_j])) {
						_result[_j] = _p.value._embeddingLevel;
					} else {
						break;
					};
				});
			};
			_start = _limit;
		};
		return _result;
	}

	public function _assignLevelsToCharactersRemovedByX9():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _i;
			var _t;
			for (_obj in _p.value._initialTypes.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t._in(lre, rle, lro, rlo, pdf, bn)) {
					_p.value._resultTypes[_i] = _t;
					_p.value._resultLevels[_i] = new T_level(-((1 : GoUnTypedInt)));
				};
			};
		};
		if (_p.value._resultLevels[((0 : GoInt))].__t__ == -((1 : GoUnTypedInt))) {
			_p.value._resultLevels[((0 : GoInt))] = _p.value._embeddingLevel;
		};
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < _p.value._initialTypes.length, _i++, {
				if (_p.value._resultLevels[_i].__t__ == -((1 : GoUnTypedInt))) {
					_p.value._resultLevels[_i] = _p.value._resultLevels[_i - ((1 : GoInt))];
				};
			});
		};
	}

	public function _determineIsolatingRunSequences():Slice<Pointer<T_isolatingRunSequence>> {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _levelRuns:Slice<Slice<GoInt>> = _p.value._determineLevelRuns();
		var _runForCharacter:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0...((_p.value.len() : GoInt)).toBasic()) ((0 : GoInt))]);
		{
			var _i;
			var _run;
			for (_obj in _levelRuns.keyValueIterator()) {
				_i = _obj.key;
				_run = _obj.value;
				for (_index in _run) {
					_runForCharacter[_index] = _i;
				};
			};
		};
		var _sequences:Slice<Pointer<T_isolatingRunSequence>> = new Slice<Pointer<T_isolatingRunSequence>>();
		var _currentRunSequence:Slice<GoInt> = new Slice<GoInt>().nil();
		for (_run in _levelRuns) {
			var _first:GoInt = _run[((0 : GoInt))];
			if (_p.value._initialTypes[_first].__t__ != pdi.__t__ || _p.value._matchingIsolateInitiator[_first] == -((1 : GoUnTypedInt))) {
				_currentRunSequence = new Slice<GoInt>().nil();
				while (true) {
					_currentRunSequence = _currentRunSequence.__append__(..._run.toArray());
					var _last:GoInt = _currentRunSequence[_currentRunSequence.length - ((1 : GoInt))];
					var _lastT:Class_ = _p.value._initialTypes[_last];
					if (_lastT._in(lri, rli, fsi) && _p.value._matchingPDI[_last] != _p.value.len()) {
						_run = _levelRuns[_runForCharacter[_p.value._matchingPDI[_last]]];
					} else {
						break;
					};
				};
				_sequences = _sequences.__append__(_p.value._isolatingRunSequence(_currentRunSequence));
			};
		};
		return _sequences;
	}

	public function _determineLevelRuns():Slice<Slice<GoInt>> {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _run:Slice<GoInt> = new Slice<GoInt>();
		var _allRuns:Slice<Slice<GoInt>> = new Slice<Slice<GoInt>>();
		var _currentLevel:T_level = _implicitLevel;
		{
			var _i;
			for (_obj in _p.value._initialTypes.keyValueIterator()) {
				_i = _obj.key;
				if (!_isRemovedByX9(_p.value._initialTypes[_i])) {
					if (_p.value._resultLevels[_i].__t__ != _currentLevel.__t__) {
						if (_currentLevel.__t__ >= ((0 : GoInt8))) {
							_allRuns = _allRuns.__append__(_run);
							_run = new Slice<GoInt>().nil();
						};
						_currentLevel = _p.value._resultLevels[_i];
					};
					_run = _run.__append__(_i);
				};
			};
		};
		if (_run.length > ((0 : GoInt))) {
			_allRuns = _allRuns.__append__(_run);
		};
		return _allRuns;
	}

	public function _isolatingRunSequence(_indexes:Slice<GoInt>):Pointer<T_isolatingRunSequence> {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _length:GoInt = _indexes.length;
		var _types:Slice<Class_> = new Slice<Class_>(...[for (i in 0...((_length : GoInt)).toBasic()) new Class_()]);
		{
			var _i;
			var _x;
			for (_obj in _indexes.keyValueIterator()) {
				_i = _obj.key;
				_x = _obj.value;
				_types[_i] = _p.value._resultTypes[_x];
			};
		};
		var _prevChar:GoInt = _indexes[((0 : GoInt))] - ((1 : GoInt));
		while (_prevChar >= ((0 : GoInt)) && _isRemovedByX9(_p.value._initialTypes[_prevChar])) {
			_prevChar--;
		};
		var _prevLevel:T_level = _p.value._embeddingLevel;
		if (_prevChar >= ((0 : GoInt))) {
			_prevLevel = _p.value._resultLevels[_prevChar];
		};
		var _succLevel:T_level = new T_level();
		var _lastType:Class_ = _types[_length - ((1 : GoInt))];
		if (_lastType._in(lri, rli, fsi)) {
			_succLevel = _p.value._embeddingLevel;
		} else {
			var _limit:GoInt = _indexes[_length - ((1 : GoInt))] + ((1 : GoInt));
			Go.cfor(_limit < _p.value.len() && _isRemovedByX9(_p.value._initialTypes[_limit]), _limit++, {});
			_succLevel = _p.value._embeddingLevel;
			if (_limit < _p.value.len()) {
				_succLevel = _p.value._resultLevels[_limit];
			};
		};
		var _level:T_level = _p.value._resultLevels[_indexes[((0 : GoInt))]];
		return Go.pointer((({
			_p: _p,
			_indexes: _indexes,
			_types: _types,
			_level: _level,
			_sos: _typeForLevel(_maxLevel(_prevLevel, _level)),
			_eos: _typeForLevel(_maxLevel(_succLevel, _level)),
			_resolvedLevels: new Slice<T_level>().nil()
		} : T_isolatingRunSequence)));
	}

	public function _determineExplicitEmbeddingLevels():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _stack:T_directionalStatusStack = new T_directionalStatusStack();
		var _overflowIsolateCount:GoInt = ((0 : GoInt)),
			_overflowEmbeddingCount:GoInt = ((0 : GoInt)),
			_validIsolateCount:GoInt = ((0 : GoInt));
		_stack._push(_p.value._embeddingLevel, on, false);
		{
			var _i;
			var _t;
			for (_obj in _p.value._resultTypes.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == rle.__t__ || _t.__t__ == lre.__t__ || _t.__t__ == rlo.__t__ || _t.__t__ == lro.__t__ || _t.__t__ == rli.__t__
					|| _t.__t__ == lri.__t__ || _t.__t__ == fsi.__t__) {
					var _isIsolate:Bool = _t._in(rli, lri, fsi);
					var _isRTL:Bool = _t._in(rle, rlo, rli);
					if (_t.__t__ == fsi.__t__) {
						_isRTL = (_p.value._determineParagraphEmbeddingLevel(_i + ((1 : GoInt)), _p.value._matchingPDI[_i]).__t__ == ((1 : GoInt8)));
					};
					if (_isIsolate) {
						_p.value._resultLevels[_i] = _stack._lastEmbeddingLevel();
						if (_stack._lastDirectionalOverrideStatus().__t__ != on.__t__) {
							_p.value._resultTypes[_i] = _stack._lastDirectionalOverrideStatus();
						};
					};
					var _newLevel:T_level = new T_level();
					if (_isRTL) {
						_newLevel = new T_level((new T_level(_stack._lastEmbeddingLevel().__t__ + ((1 : GoInt8)))).__t__ | ((1 : GoInt8)));
					} else {
						_newLevel = new T_level((new T_level((new T_level(_stack._lastEmbeddingLevel()
							.__t__ + ((2 : GoInt8)))).__t__ & ((1 : GoInt8)))).__t__ ^ ((-1 : GoUnTypedInt)));
					};
					if (_newLevel.__t__ <= _maxDepth
						&& _overflowIsolateCount == ((0 : GoInt))
						&& _overflowEmbeddingCount == ((0 : GoInt))) {
						if (_isIsolate) {
							_validIsolateCount++;
						};
						if (_t.__t__ == lro.__t__) {
							_stack._push(_newLevel, l, _isIsolate);
						} else if (_t.__t__ == rlo.__t__) {
							_stack._push(_newLevel, r, _isIsolate);
						} else {
							_stack._push(_newLevel, on, _isIsolate);
						};
						if (!_isIsolate) {
							_p.value._resultLevels[_i] = _newLevel;
						};
					} else {
						if (_isIsolate) {
							_overflowIsolateCount++;
						} else {
							if (_overflowIsolateCount == ((0 : GoInt))) {
								_overflowEmbeddingCount++;
							};
						};
					};
				} else if (_t.__t__ == pdi.__t__) {
					if (_overflowIsolateCount > ((0 : GoInt))) {
						_overflowIsolateCount--;
					} else if (_validIsolateCount == ((0 : GoInt))) {} else {
						_overflowEmbeddingCount = ((0 : GoInt));
						while (!_stack._lastDirectionalIsolateStatus()) {
							_stack._pop();
						};
						_stack._pop();
						_validIsolateCount--;
					};
					_p.value._resultLevels[_i] = _stack._lastEmbeddingLevel();
				} else if (_t.__t__ == pdf.__t__) {
					_p.value._resultLevels[_i] = _stack._lastEmbeddingLevel();
					if (_overflowIsolateCount > ((0 : GoInt))) {} else if (_overflowEmbeddingCount > ((0 : GoInt))) {
						_overflowEmbeddingCount--;
					} else if (!_stack._lastDirectionalIsolateStatus() && _stack._depth() >= ((2 : GoInt))) {
						_stack._pop();
					};
				} else if (_t.__t__ == b.__t__) {
					_stack._empty();
					_overflowIsolateCount = ((0 : GoInt));
					_overflowEmbeddingCount = ((0 : GoInt));
					_validIsolateCount = ((0 : GoInt));
					_p.value._resultLevels[_i] = _p.value._embeddingLevel;
				} else {
					_p.value._resultLevels[_i] = _stack._lastEmbeddingLevel();
					if (_stack._lastDirectionalOverrideStatus().__t__ != on.__t__) {
						_p.value._resultTypes[_i] = _stack._lastDirectionalOverrideStatus();
					};
				};
			};
		};
	}

	public function _determineParagraphEmbeddingLevel(_start:GoInt, _end:GoInt):T_level {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _strongType:Class_ = _unknownClass;
		{
			var _i:GoInt = _start;
			Go.cfor(_i < _end, _i++, {
				{
					var _t:Class_ = _p.value._resultTypes[_i];
					if (_t._in(l, al, r)) {
						_strongType = _t;
						break;
					} else if (_t._in(fsi, lri, rli)) {
						_i = _p.value._matchingPDI[_i];
						if (_i > _end) {
							stdgo.log.Log.panic(Go.toInterface("assert (i <= end)"));
						};
					};
				};
			});
		};
		if (_strongType.__t__ == _unknownClass.__t__) {
			return new T_level(((0 : GoInt8)));
		} else if (_strongType.__t__ == l.__t__) {
			return new T_level(((0 : GoInt8)));
		} else {
			return new T_level(((1 : GoInt8)));
		};
	}

	public function _determineMatchingIsolates():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p.value._matchingPDI = new Slice<GoInt>(...[for (i in 0...((_p.value.len() : GoInt)).toBasic()) ((0 : GoInt))]);
		_p.value._matchingIsolateInitiator = new Slice<GoInt>(...[for (i in 0...((_p.value.len() : GoInt)).toBasic()) ((0 : GoInt))]);
		{
			var _i;
			for (_obj in _p.value._matchingIsolateInitiator.keyValueIterator()) {
				_i = _obj.key;
				_p.value._matchingIsolateInitiator[_i] = -((1 : GoUnTypedInt));
			};
		};
		{
			var _i;
			for (_obj in _p.value._matchingPDI.keyValueIterator()) {
				_i = _obj.key;
				_p.value._matchingPDI[_i] = -((1 : GoUnTypedInt));
				{
					var _t:Class_ = _p.value._resultTypes[_i];
					if (_t._in(lri, rli, fsi)) {
						var _depthCounter:GoInt = ((1 : GoInt));
						{
							var _j:GoInt = _i + ((1 : GoInt));
							Go.cfor(_j < _p.value.len(), _j++, {
								{
									var _u:Class_ = _p.value._resultTypes[_j];
									if (_u._in(lri, rli, fsi)) {
										_depthCounter++;
									} else if (_u.__t__ == pdi.__t__) {
										{
											_depthCounter--;
											if (_depthCounter == ((0 : GoInt))) {
												_p.value._matchingPDI[_i] = _j;
												_p.value._matchingIsolateInitiator[_j] = _i;
												break;
											};
										};
									};
								};
							});
						};
						if (_p.value._matchingPDI[_i] == -((1 : GoUnTypedInt))) {
							_p.value._matchingPDI[_i] = _p.value.len();
						};
					};
				};
			};
		};
	}

	public function _run():Void {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_p.value._determineMatchingIsolates();
		if (_p.value._embeddingLevel.__t__ == _implicitLevel.__t__) {
			_p.value._embeddingLevel = _p.value._determineParagraphEmbeddingLevel(((0 : GoInt)), _p.value.len());
		};
		_p.value._resultLevels = new Slice<T_level>(...[for (i in 0...((_p.value.len() : GoInt)).toBasic()) new T_level()]);
		_setLevels(_p.value._resultLevels, _p.value._embeddingLevel);
		_p.value._determineExplicitEmbeddingLevels();
		for (_seq in _p.value._determineIsolatingRunSequences()) {
			_seq.value._resolveWeakTypes();
			_resolvePairedBrackets(_seq);
			_seq.value._resolveNeutralTypes();
			_seq.value._resolveImplicitLevels();
			_seq.value._applyLevelsAndTypes();
		};
		_p.value._assignLevelsToCharactersRemovedByX9();
	}

	public function len():GoInt {
		var _p = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _p.value._initialTypes.length;
	}

	public var _initialTypes:Slice<Class_> = new Slice<Class_>().nil();
	public var _pairTypes:Slice<T_bracketType> = new Slice<T_bracketType>().nil();
	public var _pairValues:Slice<GoInt32> = new Slice<GoInt32>().nil();
	public var _embeddingLevel:T_level = new T_level();
	public var _resultTypes:Slice<Class_> = new Slice<Class_>().nil();
	public var _resultLevels:Slice<T_level> = new Slice<T_level>().nil();
	public var _matchingPDI:Slice<GoInt> = new Slice<GoInt>().nil();
	public var _matchingIsolateInitiator:Slice<GoInt> = new Slice<GoInt>().nil();

	public function new(?_initialTypes:Slice<Class_>, ?_pairTypes:Slice<T_bracketType>, ?_pairValues:Slice<GoInt32>, ?_embeddingLevel:T_level,
			?_resultTypes:Slice<Class_>, ?_resultLevels:Slice<T_level>, ?_matchingPDI:Slice<GoInt>, ?_matchingIsolateInitiator:Slice<GoInt>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_initialTypes) + " " + Go.string(_pairTypes) + " " + Go.string(_pairValues) + " " + Go.string(_embeddingLevel) + " "
			+ Go.string(_resultTypes) + " " + Go.string(_resultLevels) + " " + Go.string(_matchingPDI) + " " + Go.string(_matchingIsolateInitiator) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_paragraph(_initialTypes, _pairTypes, _pairValues, _embeddingLevel, _resultTypes, _resultLevels, _matchingPDI, _matchingIsolateInitiator);
	}

	public function __set__(__tmp__) {
		this._initialTypes = __tmp__._initialTypes;
		this._pairTypes = __tmp__._pairTypes;
		this._pairValues = __tmp__._pairValues;
		this._embeddingLevel = __tmp__._embeddingLevel;
		this._resultTypes = __tmp__._resultTypes;
		this._resultLevels = __tmp__._resultLevels;
		this._matchingPDI = __tmp__._matchingPDI;
		this._matchingIsolateInitiator = __tmp__._matchingIsolateInitiator;
		return this;
	}
}

@:structInit class T_directionalStatusStack {
	public function _lastDirectionalIsolateStatus():Bool {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _s.value._isolateStatusStack[_s.value._stackCounter - ((1 : GoInt))];
	}

	public function _lastDirectionalOverrideStatus():Class_ {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _s.value._overrideStatusStack[_s.value._stackCounter - ((1 : GoInt))];
	}

	public function _lastEmbeddingLevel():T_level {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _s.value._embeddingLevelStack[_s.value._stackCounter - ((1 : GoInt))];
	}

	public function _push(_level:T_level, _overrideStatus:Class_, _isolateStatus:Bool):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._embeddingLevelStack[_s.value._stackCounter] = _level;
		_s.value._overrideStatusStack[_s.value._stackCounter] = _overrideStatus;
		_s.value._isolateStatusStack[_s.value._stackCounter] = _isolateStatus;
		_s.value._stackCounter++;
	}

	public function _depth():GoInt {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _s.value._stackCounter;
	}

	public function _pop():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._stackCounter--;
	}

	public function _empty():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._stackCounter = ((0 : GoInt));
	}

	public var _stackCounter:GoInt = ((0 : GoInt));
	public var _embeddingLevelStack:GoArray<T_level> = new GoArray<T_level>(...[for (i in 0...126) new T_level()]);
	public var _overrideStatusStack:GoArray<Class_> = new GoArray<Class_>(...[for (i in 0...126) new Class_()]);
	public var _isolateStatusStack:GoArray<Bool> = new GoArray<Bool>(...[for (i in 0...126) false]);

	public function new(?_stackCounter:GoInt, ?_embeddingLevelStack:GoArray<T_level>, ?_overrideStatusStack:GoArray<Class_>,
			?_isolateStatusStack:GoArray<Bool>)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_stackCounter) + " " + Go.string(_embeddingLevelStack) + " " + Go.string(_overrideStatusStack) + " "
			+ Go.string(_isolateStatusStack) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_directionalStatusStack(_stackCounter, _embeddingLevelStack, _overrideStatusStack, _isolateStatusStack);
	}

	public function __set__(__tmp__) {
		this._stackCounter = __tmp__._stackCounter;
		this._embeddingLevelStack = __tmp__._embeddingLevelStack;
		this._overrideStatusStack = __tmp__._overrideStatusStack;
		this._isolateStatusStack = __tmp__._isolateStatusStack;
		return this;
	}
}

@:structInit class T_isolatingRunSequence {
	public function _assertOnly(_codes:haxe.Rest<Class_>):Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		stdgo.internal.Macro.controlFlow({
			var _codes = new Slice<Class_>(..._codes);
			@:label("loop") {
				var _i;
				var _t;
				for (_obj in _s.value._types.keyValueIterator()) {
					_i = _obj.key;
					_t = _obj.value;
					for (_c in _codes) {
						if (_t.__t__ == _c.__t__) {
							continue;
						};
					};
					stdgo.log.Log.panicf("invalid bidi code %v present in assertOnly at position %d", Go.toInterface(_t),
						Go.toInterface(_s.value._indexes[_i]));
				};
			};
		});
	}

	public function _findRunLimit(_index:GoInt, _validSet:haxe.Rest<Class_>):GoInt {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return stdgo.internal.Macro.controlFlow({
			var _validSet = new Slice<Class_>(..._validSet);
			@:label("loop") Go.cfor(_index < _s.value._types.length, _index++, {
				var _t:Class_ = _s.value._types[_index];
				for (_valid in _validSet) {
					if (_t.__t__ == _valid.__t__) {
						continue;
					};
				};
				return _index;
			});
			return _s.value._types.length;
		});
	}

	public function _applyLevelsAndTypes():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			var _i;
			var _x;
			for (_obj in _s.value._indexes.keyValueIterator()) {
				_i = _obj.key;
				_x = _obj.value;
				_s.value._p.value._resultTypes[_x] = _s.value._types[_i];
				_s.value._p.value._resultLevels[_x] = _s.value._resolvedLevels[_i];
			};
		};
	}

	public function _resolveImplicitLevels():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._assertOnly(l, r, en, an);
		_s.value._resolvedLevels = new Slice<T_level>(...[for (i in 0...((_s.value._types.length : GoInt)).toBasic()) new T_level()]);
		_setLevels(_s.value._resolvedLevels, _s.value._level);
		if ((new T_level(_s.value._level.__t__ & ((1 : GoInt8)))).__t__ == ((0 : GoInt8))) {
			{
				var _i;
				var _t;
				for (_obj in _s.value._types.keyValueIterator()) {
					_i = _obj.key;
					_t = _obj.value;
					if (_t.__t__ == l.__t__) {} else if (_t.__t__ == r.__t__) {
						_s.value._resolvedLevels[_i] = new T_level(_s.value._resolvedLevels[_i].__t__ + (((1 : GoInt8))));
					} else {
						_s.value._resolvedLevels[_i] = new T_level(_s.value._resolvedLevels[_i].__t__ + (((2 : GoInt8))));
					};
				};
			};
		} else {
			{
				var _i;
				var _t;
				for (_obj in _s.value._types.keyValueIterator()) {
					_i = _obj.key;
					_t = _obj.value;
					if (_t.__t__ == r.__t__) {} else {
						_s.value._resolvedLevels[_i] = new T_level(_s.value._resolvedLevels[_i].__t__ + (((1 : GoInt8))));
					};
				};
			};
		};
	}

	public function _resolveNeutralTypes():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._assertOnly(l, r, en, an, b, s, ws, on, rli, lri, fsi, pdi);
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == ws.__t__ || _t.__t__ == on.__t__ || _t.__t__ == b.__t__ || _t.__t__ == s.__t__ || _t.__t__ == rli.__t__
					|| _t.__t__ == lri.__t__ || _t.__t__ == fsi.__t__ || _t.__t__ == pdi.__t__) {
					var _runStart:GoInt = _i;
					var _runEnd:GoInt = _s.value._findRunLimit(_runStart, b, s, ws, on, rli, lri, fsi, pdi);
					var _leadType:Class_ = new Class_(),
						_trailType:Class_ = new Class_();
					if (_runStart == ((0 : GoInt))) {
						_leadType = _s.value._sos;
					} else {
						_leadType = _s.value._types[_runStart - ((1 : GoInt))];
						if (_leadType._in(an, en)) {
							_leadType = r;
						};
					};
					if (_runEnd == _s.value._types.length) {
						_trailType = _s.value._eos;
					} else {
						_trailType = _s.value._types[_runEnd];
						if (_trailType._in(an, en)) {
							_trailType = r;
						};
					};
					var _resolvedType:Class_ = new Class_();
					if (_leadType.__t__ == _trailType.__t__) {
						_resolvedType = _leadType;
					} else {
						_resolvedType = _typeForLevel(_s.value._level);
					};
					_setTypes(_s.value._types.__slice__(_runStart, _runEnd), _resolvedType);
					_i = _runEnd;
				};
			};
		};
	}

	public function _resolveWeakTypes():Void {
		var _s = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		_s.value._assertOnly(l, r, al, en, es, et, an, cs, b, s, ws, on, nsm, lri, rli, fsi, pdi);
		var _precedingCharacterType:Class_ = _s.value._sos;
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == nsm.__t__) {
					_s.value._types[_i] = _precedingCharacterType;
				} else {
					if (_t._in(lri, rli, fsi, pdi)) {
						_precedingCharacterType = on;
					};
					_precedingCharacterType = _t;
				};
			};
		};
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == en.__t__) {
					{
						var _j:GoInt = _i - ((1 : GoInt));
						Go.cfor(_j >= ((0 : GoInt)), _j--, {
							{
								var _t:Class_ = _s.value._types[_j];
								if (_t._in(l, r, al)) {
									if (_t.__t__ == al.__t__) {
										_s.value._types[_i] = an;
									};
									break;
								};
							};
						});
					};
				};
			};
		};
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == al.__t__) {
					_s.value._types[_i] = r;
				};
			};
		};
		{
			var _i:GoInt = ((1 : GoInt));
			Go.cfor(_i < _s.value.len() - ((1 : GoInt)), _i++, {
				var _t:Class_ = _s.value._types[_i];
				if (_t.__t__ == es.__t__ || _t.__t__ == cs.__t__) {
					var _prevSepType:Class_ = _s.value._types[_i - ((1 : GoInt))];
					var _succSepType:Class_ = _s.value._types[_i + ((1 : GoInt))];
					if (_prevSepType.__t__ == en.__t__ && _succSepType.__t__ == en.__t__) {
						_s.value._types[_i] = en;
					} else if (_s.value._types[_i].__t__ == cs.__t__ && _prevSepType.__t__ == an.__t__ && _succSepType.__t__ == an.__t__) {
						_s.value._types[_i] = an;
					};
				};
			});
		};
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == et.__t__) {
					var _runStart:GoInt = _i;
					var _runEnd:GoInt = _s.value._findRunLimit(_runStart, et);
					var _t:Class_ = _s.value._sos;
					if (_runStart > ((0 : GoInt))) {
						_t = _s.value._types[_runStart - ((1 : GoInt))];
					};
					if (_t.__t__ != en.__t__) {
						_t = _s.value._eos;
						if (_runEnd < _s.value._types.length) {
							_t = _s.value._types[_runEnd];
						};
					};
					if (_t.__t__ == en.__t__) {
						_setTypes(_s.value._types.__slice__(_runStart, _runEnd), en);
					};
					_i = _runEnd;
				};
			};
		};
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t._in(es, et, cs)) {
					_s.value._types[_i] = on;
				};
			};
		};
		{
			var _i;
			var _t;
			for (_obj in _s.value._types.keyValueIterator()) {
				_i = _obj.key;
				_t = _obj.value;
				if (_t.__t__ == en.__t__) {
					var _prevStrongType:Class_ = _s.value._sos;
					{
						var _j:GoInt = _i - ((1 : GoInt));
						Go.cfor(_j >= ((0 : GoInt)), _j--, {
							_t = _s.value._types[_j];
							if (_t.__t__ == l.__t__ || _t.__t__ == r.__t__) {
								_prevStrongType = _t;
								break;
							};
						});
					};
					if (_prevStrongType.__t__ == l.__t__) {
						_s.value._types[_i] = l;
					};
				};
			};
		};
	}

	public function len():GoInt {
		var _i = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		return _i.value._indexes.length;
	}

	public var _p:Pointer<T_paragraph> = new Pointer<T_paragraph>().nil();
	public var _indexes:Slice<GoInt> = new Slice<GoInt>().nil();
	public var _types:Slice<Class_> = new Slice<Class_>().nil();
	public var _resolvedLevels:Slice<T_level> = new Slice<T_level>().nil();
	public var _level:T_level = new T_level();
	public var _sos:Class_ = new Class_();
	public var _eos:Class_ = new Class_();

	public function new(?_p:Pointer<T_paragraph>, ?_indexes:Slice<GoInt>, ?_types:Slice<Class_>, ?_resolvedLevels:Slice<T_level>, ?_level:T_level,
			?_sos:Class_, ?_eos:Class_)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_p) + " " + Go.string(_indexes) + " " + Go.string(_types) + " " + Go.string(_resolvedLevels) + " " + Go.string(_level) + " "
			+ Go.string(_sos) + " " + Go.string(_eos) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_isolatingRunSequence(_p, _indexes, _types, _resolvedLevels, _level, _sos, _eos);
	}

	public function __set__(__tmp__) {
		this._p = __tmp__._p;
		this._indexes = __tmp__._indexes;
		this._types = __tmp__._types;
		this._resolvedLevels = __tmp__._resolvedLevels;
		this._level = __tmp__._level;
		this._sos = __tmp__._sos;
		this._eos = __tmp__._eos;
		return this;
	}
}

@:structInit class Properties {
	public function _reverseBracket(_r:GoRune):GoRune {
		var _p = this.__copy__();
		return _xorMasks[(_p._entry >> _xorMaskShift)] ^ _r;
	}

	public function isOpeningBracket():Bool {
		var _p = this.__copy__();
		return _p._entry & _openMask != ((0 : GoUInt8));
	}

	public function isBracket():Bool {
		var _p = this.__copy__();
		return _p._entry & ((240 : GoUInt8)) != ((0 : GoUInt8));
	}

	public function class_():Class_ {
		var _p = this.__copy__();
		var _c:Class_ = new Class_((_p._entry & ((15 : GoUInt8))));
		if (_c.__t__ == control.__t__) {
			_c = _controlByteToClass[_p._last & ((15 : GoUInt8))];
		};
		return _c;
	}

	public var _entry:GoUInt8 = ((0 : GoUInt8));
	public var _last:GoUInt8 = ((0 : GoUInt8));

	public function new(?_entry:GoUInt8, ?_last:GoUInt8)
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return '{' + Go.string(_entry) + " " + Go.string(_last) + "}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Properties(_entry, _last);
	}

	public function __set__(__tmp__) {
		this._entry = __tmp__._entry;
		this._last = __tmp__._last;
		return this;
	}
}

@:structInit class T_bidiTrie {
	public function _lookupValue(_n:GoUInt32, _b:GoByte):GoUInt8 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		{
			return ((_bidiValues[(_n << ((6 : GoUnTypedInt))) + ((_b : GoUInt32))] : GoUInt8));
		};
	}

	public function _lookupStringUnsafe(_s:GoString):GoUInt8 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return _bidiValues[_c0];
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		if (_c0 < ((224 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((1 : GoInt))]);
		};
		_i = _bidiIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((1 : GoInt))] : GoUInt32))];
		if (_c0 < ((240 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((2 : GoInt))]);
		};
		_i = _bidiIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((2 : GoInt))] : GoUInt32))];
		if (_c0 < ((248 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((3 : GoInt))]);
		};
		return ((0 : GoUInt8));
	}

	public function _lookupString(_s:GoString):{var _0:GoUInt8; var _1:GoInt;} {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v:GoUInt8 = ((0 : GoUInt8)), _sz:GoInt = ((0 : GoInt));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return {_0: _bidiValues[_c0], _1: ((1 : GoInt))};
		} else if (_c0 < ((194 : GoUInt8))) {
			return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
		} else if (_c0 < ((224 : GoUInt8))) {
			if (_s.length < ((2 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c1), _1: ((2 : GoInt))};
		} else if (_c0 < ((240 : GoUInt8))) {
			if (_s.length < ((3 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt8)), _1: ((2 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c2), _1: ((3 : GoInt))};
		} else if (_c0 < ((248 : GoUInt8))) {
			if (_s.length < ((4 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt8)), _1: ((2 : GoInt))};
			};
			_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c3:GoUInt8 = _s[((3 : GoInt))];
			if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
				return {_0: ((0 : GoUInt8)), _1: ((3 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c3), _1: ((4 : GoInt))};
		};
		return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
	}

	public function _lookupUnsafe(_s:Slice<GoByte>):GoUInt8 {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return _bidiValues[_c0];
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		if (_c0 < ((224 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((1 : GoInt))]);
		};
		_i = _bidiIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((1 : GoInt))] : GoUInt32))];
		if (_c0 < ((240 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((2 : GoInt))]);
		};
		_i = _bidiIndex[(((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_s[((2 : GoInt))] : GoUInt32))];
		if (_c0 < ((248 : GoUInt8))) {
			return _t.value._lookupValue(((_i : GoUInt32)), _s[((3 : GoInt))]);
		};
		return ((0 : GoUInt8));
	}

	public function _lookup(_s:Slice<GoByte>):{var _0:GoUInt8; var _1:GoInt;} {
		var _t = new Pointer(() -> this, __tmp__ -> this.__set__(__tmp__));
		var _v:GoUInt8 = ((0 : GoUInt8)), _sz:GoInt = ((0 : GoInt));
		var _c0:GoUInt8 = _s[((0 : GoInt))];
		if (_c0 < ((128 : GoUInt8))) {
			return {_0: _bidiValues[_c0], _1: ((1 : GoInt))};
		} else if (_c0 < ((194 : GoUInt8))) {
			return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
		} else if (_c0 < ((224 : GoUInt8))) {
			if (_s.length < ((2 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c1), _1: ((2 : GoInt))};
		} else if (_c0 < ((240 : GoUInt8))) {
			if (_s.length < ((3 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt8)), _1: ((2 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c2), _1: ((3 : GoInt))};
		} else if (_c0 < ((248 : GoUInt8))) {
			if (_s.length < ((4 : GoInt))) {
				return {_0: ((0 : GoUInt8)), _1: ((0 : GoInt))};
			};
			var _i:GoUInt8 = _bidiIndex[_c0];
			var _c1:GoUInt8 = _s[((1 : GoInt))];
			if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
				return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
			};
			var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c2:GoUInt8 = _s[((2 : GoInt))];
			if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
				return {_0: ((0 : GoUInt8)), _1: ((2 : GoInt))};
			};
			_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
			_i = _bidiIndex[_o];
			var _c3:GoUInt8 = _s[((3 : GoInt))];
			if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
				return {_0: ((0 : GoUInt8)), _1: ((3 : GoInt))};
			};
			return {_0: _t.value._lookupValue(((_i : GoUInt32)), _c3), _1: ((4 : GoInt))};
		};
		return {_0: ((0 : GoUInt8)), _1: ((1 : GoInt))};
	}

	public function new()
		stdgo.internal.Macro.initLocals();

	public function toString() {
		return "{}";
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_bidiTrie();
	}

	public function __set__(__tmp__) {
		return this;
	}
}

@:named class Class_ {
	public function _in(_set:haxe.Rest<Class_>):Bool {
		var _c = this.__copy__();
		var _set = new Slice<Class_>(..._set);
		for (_s in _set) {
			if (_c.__t__ == _s.__t__) {
				return true;
			};
		};
		return false;
	}

	public var __t__:GoUInt;

	public function new(?t:GoUInt) {
		__t__ = t == null ? 0 : t;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	@:implicit
	public function toString():GoString
		return Go.string(__t__);

	public function __copy__()
		return new Class_(__t__);
}

final lri:Class_ = new Class_((21 : GoUnTypedInt));
final bn:Class_ = new Class_((11 : GoUnTypedInt));
final rlo:Class_ = new Class_((17 : GoUnTypedInt));
final rightToLeft:Direction = new Direction((1 : GoUnTypedInt));
final _maxDepth:GoInt64 = ((125 : GoUnTypedInt));
final unicodeVersion:GoString = "13.0.0";
final pdf:Class_ = new Class_((20 : GoUnTypedInt));
final s:Class_ = new Class_((8 : GoUnTypedInt));
final lro:Class_ = new Class_((16 : GoUnTypedInt));
final lre:Class_ = new Class_((18 : GoUnTypedInt));
final rle:Class_ = new Class_((19 : GoUnTypedInt));
final rli:Class_ = new Class_((22 : GoUnTypedInt));
final fsi:Class_ = new Class_((23 : GoUnTypedInt));
final pdi:Class_ = new Class_((24 : GoUnTypedInt));

var _controlByteToClass:GoArray<Class_> = {
	var s = new GoArray<Class_>(...[for (i in 0...16) new Class_()]);
	s[13] = new Class_(lro);
	s[14] = new Class_(rlo);
	s[10] = new Class_(lre);
	s[11] = new Class_(rle);
	s[12] = new Class_(pdf);
	s[6] = new Class_(lri);
	s[7] = new Class_(rli);
	s[8] = new Class_(fsi);
	s[9] = new Class_(pdi);
	s;
};

final _maxPairingDepth:GoInt64 = ((63 : GoUnTypedInt));
final mixed:Direction = new Direction((2 : GoUnTypedInt));
final _bpNone:T_bracketType = new T_bracketType((0 : GoUnTypedInt));
final neutral:Direction = new Direction((3 : GoUnTypedInt));
final l:Class_ = new Class_((0 : GoUnTypedInt));
final en:Class_ = new Class_((2 : GoUnTypedInt));
final _bpClose:T_bracketType = new T_bracketType((2 : GoUnTypedInt));
final cs:Class_ = new Class_((6 : GoUnTypedInt));
final leftToRight:Direction = new Direction((0 : GoUnTypedInt));
final _bpOpen:T_bracketType = new T_bracketType((1 : GoUnTypedInt));
final _xorMaskShift:GoInt64 = ((5 : GoUnTypedInt));
final _openMask:GoInt64 = ((16 : GoUnTypedInt));

var _controlToClass:GoMap<GoInt32, Class_> = new GoMap<GoInt32,
	Class_>(new stdgo.reflect.Reflect._Type(stdgo.reflect.Reflect.GoType.mapType(stdgo.reflect.Reflect.GoType.basic(int32_kind),
	stdgo.reflect.Reflect.GoType.named("vendor/golang.org/x/text/unicode/bidi.Class", [], stdgo.reflect.Reflect.GoType.basic(uint_kind)))),
	{
		key: ((8237 : GoInt32)),
		value: lro
	},
	{key: ((8238 : GoInt32)), value: rlo}, {key: ((8234 : GoInt32)), value: lre}, {key: ((8235 : GoInt32)), value: rle},
	{key: ((8236 : GoInt32)), value: pdf}, {key: ((8294 : GoInt32)), value: lri}, {key: ((8295 : GoInt32)), value: rli},
	{key: ((8296 : GoInt32)), value: fsi}, {key: ((8297 : GoInt32)), value: pdi});

final on:Class_ = new Class_((10 : GoUnTypedInt));
final _implicitLevel:T_level = new T_level(-((1 : GoUnTypedInt)));
final _numClass:Class_ = new Class_((15 : GoUnTypedInt));
final es:Class_ = new Class_((3 : GoUnTypedInt));
final r:Class_ = new Class_((1 : GoUnTypedInt));
final et:Class_ = new Class_((4 : GoUnTypedInt));
final al:Class_ = new Class_((13 : GoUnTypedInt));
final ws:Class_ = new Class_((9 : GoUnTypedInt));
final b:Class_ = new Class_((7 : GoUnTypedInt));
final control:Class_ = new Class_((14 : GoUnTypedInt));
final nsm:Class_ = new Class_((12 : GoUnTypedInt));

var _xorMasks:Slice<GoInt32> = new Slice<GoInt32>(((0 : GoInt32)), ((1 : GoInt32)), ((6 : GoInt32)), ((7 : GoInt32)), ((3 : GoInt32)), ((15 : GoInt32)),
	((29 : GoInt32)), ((63 : GoInt32)));

final an:Class_ = new Class_((5 : GoUnTypedInt));

var _bidiIndex:GoArray<GoUInt8> = {
	var s = new GoArray<GoUInt8>(...[for (i in 0...1536) 0]);
	s[194] = ((1 : GoUInt8));
	s[195] = ((2 : GoUInt8));
	s[202] = ((3 : GoUInt8));
	s[203] = ((4 : GoUInt8));
	s[204] = ((5 : GoUInt8));
	s[205] = ((6 : GoUInt8));
	s[206] = ((7 : GoUInt8));
	s[207] = ((8 : GoUInt8));
	s[210] = ((9 : GoUInt8));
	s[214] = ((10 : GoUInt8));
	s[215] = ((11 : GoUInt8));
	s[216] = ((12 : GoUInt8));
	s[217] = ((13 : GoUInt8));
	s[218] = ((14 : GoUInt8));
	s[219] = ((15 : GoUInt8));
	s[220] = ((16 : GoUInt8));
	s[221] = ((17 : GoUInt8));
	s[222] = ((18 : GoUInt8));
	s[223] = ((19 : GoUInt8));
	s[224] = ((2 : GoUInt8));
	s[225] = ((3 : GoUInt8));
	s[226] = ((4 : GoUInt8));
	s[227] = ((5 : GoUInt8));
	s[228] = ((6 : GoUInt8));
	s[234] = ((7 : GoUInt8));
	s[239] = ((8 : GoUInt8));
	s[240] = ((17 : GoUInt8));
	s[241] = ((18 : GoUInt8));
	s[242] = ((18 : GoUInt8));
	s[243] = ((20 : GoUInt8));
	s[244] = ((21 : GoUInt8));
	s[288] = ((20 : GoUInt8));
	s[289] = ((21 : GoUInt8));
	s[290] = ((22 : GoUInt8));
	s[291] = ((23 : GoUInt8));
	s[292] = ((24 : GoUInt8));
	s[293] = ((25 : GoUInt8));
	s[294] = ((26 : GoUInt8));
	s[295] = ((27 : GoUInt8));
	s[296] = ((28 : GoUInt8));
	s[297] = ((29 : GoUInt8));
	s[298] = ((28 : GoUInt8));
	s[299] = ((30 : GoUInt8));
	s[300] = ((31 : GoUInt8));
	s[301] = ((32 : GoUInt8));
	s[302] = ((33 : GoUInt8));
	s[303] = ((34 : GoUInt8));
	s[304] = ((35 : GoUInt8));
	s[305] = ((36 : GoUInt8));
	s[306] = ((26 : GoUInt8));
	s[307] = ((37 : GoUInt8));
	s[308] = ((38 : GoUInt8));
	s[309] = ((39 : GoUInt8));
	s[310] = ((40 : GoUInt8));
	s[311] = ((41 : GoUInt8));
	s[312] = ((42 : GoUInt8));
	s[313] = ((43 : GoUInt8));
	s[314] = ((44 : GoUInt8));
	s[315] = ((45 : GoUInt8));
	s[316] = ((46 : GoUInt8));
	s[317] = ((47 : GoUInt8));
	s[318] = ((48 : GoUInt8));
	s[319] = ((49 : GoUInt8));
	s[320] = ((50 : GoUInt8));
	s[321] = ((51 : GoUInt8));
	s[322] = ((52 : GoUInt8));
	s[333] = ((53 : GoUInt8));
	s[334] = ((54 : GoUInt8));
	s[336] = ((55 : GoUInt8));
	s[346] = ((56 : GoUInt8));
	s[348] = ((57 : GoUInt8));
	s[349] = ((58 : GoUInt8));
	s[350] = ((59 : GoUInt8));
	s[351] = ((60 : GoUInt8));
	s[352] = ((61 : GoUInt8));
	s[354] = ((62 : GoUInt8));
	s[356] = ((63 : GoUInt8));
	s[357] = ((64 : GoUInt8));
	s[359] = ((65 : GoUInt8));
	s[360] = ((66 : GoUInt8));
	s[361] = ((67 : GoUInt8));
	s[362] = ((68 : GoUInt8));
	s[363] = ((69 : GoUInt8));
	s[364] = ((70 : GoUInt8));
	s[365] = ((71 : GoUInt8));
	s[366] = ((72 : GoUInt8));
	s[367] = ((73 : GoUInt8));
	s[368] = ((74 : GoUInt8));
	s[371] = ((75 : GoUInt8));
	s[375] = ((76 : GoUInt8));
	s[382] = ((77 : GoUInt8));
	s[383] = ((78 : GoUInt8));
	s[384] = ((79 : GoUInt8));
	s[385] = ((80 : GoUInt8));
	s[386] = ((81 : GoUInt8));
	s[387] = ((82 : GoUInt8));
	s[388] = ((83 : GoUInt8));
	s[389] = ((84 : GoUInt8));
	s[390] = ((85 : GoUInt8));
	s[391] = ((86 : GoUInt8));
	s[392] = ((87 : GoUInt8));
	s[393] = ((86 : GoUInt8));
	s[394] = ((86 : GoUInt8));
	s[395] = ((86 : GoUInt8));
	s[396] = ((88 : GoUInt8));
	s[397] = ((89 : GoUInt8));
	s[398] = ((90 : GoUInt8));
	s[399] = ((86 : GoUInt8));
	s[400] = ((91 : GoUInt8));
	s[401] = ((92 : GoUInt8));
	s[402] = ((93 : GoUInt8));
	s[403] = ((94 : GoUInt8));
	s[404] = ((86 : GoUInt8));
	s[405] = ((86 : GoUInt8));
	s[406] = ((86 : GoUInt8));
	s[407] = ((86 : GoUInt8));
	s[408] = ((86 : GoUInt8));
	s[409] = ((86 : GoUInt8));
	s[410] = ((95 : GoUInt8));
	s[411] = ((86 : GoUInt8));
	s[412] = ((86 : GoUInt8));
	s[413] = ((96 : GoUInt8));
	s[414] = ((86 : GoUInt8));
	s[415] = ((97 : GoUInt8));
	s[420] = ((86 : GoUInt8));
	s[421] = ((86 : GoUInt8));
	s[422] = ((98 : GoUInt8));
	s[423] = ((99 : GoUInt8));
	s[424] = ((86 : GoUInt8));
	s[425] = ((86 : GoUInt8));
	s[426] = ((86 : GoUInt8));
	s[427] = ((86 : GoUInt8));
	s[428] = ((86 : GoUInt8));
	s[429] = ((100 : GoUInt8));
	s[430] = ((101 : GoUInt8));
	s[431] = ((86 : GoUInt8));
	s[435] = ((102 : GoUInt8));
	s[437] = ((103 : GoUInt8));
	s[439] = ((104 : GoUInt8));
	s[440] = ((105 : GoUInt8));
	s[441] = ((106 : GoUInt8));
	s[442] = ((107 : GoUInt8));
	s[443] = ((108 : GoUInt8));
	s[444] = ((86 : GoUInt8));
	s[445] = ((86 : GoUInt8));
	s[446] = ((86 : GoUInt8));
	s[447] = ((109 : GoUInt8));
	s[448] = ((110 : GoUInt8));
	s[450] = ((111 : GoUInt8));
	s[451] = ((112 : GoUInt8));
	s[455] = ((113 : GoUInt8));
	s[456] = ((114 : GoUInt8));
	s[457] = ((115 : GoUInt8));
	s[458] = ((116 : GoUInt8));
	s[459] = ((117 : GoUInt8));
	s[461] = ((118 : GoUInt8));
	s[463] = ((119 : GoUInt8));
	s[567] = ((86 : GoUInt8));
	s[594] = ((120 : GoUInt8));
	s[595] = ((121 : GoUInt8));
	s[600] = ((122 : GoUInt8));
	s[601] = ((123 : GoUInt8));
	s[602] = ((124 : GoUInt8));
	s[603] = ((125 : GoUInt8));
	s[604] = ((126 : GoUInt8));
	s[606] = ((127 : GoUInt8));
	s[608] = ((128 : GoUInt8));
	s[609] = ((129 : GoUInt8));
	s[611] = ((130 : GoUInt8));
	s[612] = ((131 : GoUInt8));
	s[613] = ((132 : GoUInt8));
	s[614] = ((133 : GoUInt8));
	s[615] = ((134 : GoUInt8));
	s[616] = ((135 : GoUInt8));
	s[617] = ((136 : GoUInt8));
	s[618] = ((137 : GoUInt8));
	s[619] = ((138 : GoUInt8));
	s[621] = ((139 : GoUInt8));
	s[623] = ((140 : GoUInt8));
	s[684] = ((141 : GoUInt8));
	s[685] = ((142 : GoUInt8));
	s[686] = ((14 : GoUInt8));
	s[687] = ((14 : GoUInt8));
	s[688] = ((14 : GoUInt8));
	s[689] = ((14 : GoUInt8));
	s[690] = ((14 : GoUInt8));
	s[691] = ((14 : GoUInt8));
	s[692] = ((143 : GoUInt8));
	s[693] = ((14 : GoUInt8));
	s[694] = ((14 : GoUInt8));
	s[695] = ((144 : GoUInt8));
	s[696] = ((145 : GoUInt8));
	s[697] = ((146 : GoUInt8));
	s[698] = ((14 : GoUInt8));
	s[699] = ((147 : GoUInt8));
	s[700] = ((148 : GoUInt8));
	s[701] = ((149 : GoUInt8));
	s[703] = ((150 : GoUInt8));
	s[708] = ((151 : GoUInt8));
	s[709] = ((86 : GoUInt8));
	s[710] = ((152 : GoUInt8));
	s[711] = ((153 : GoUInt8));
	s[715] = ((154 : GoUInt8));
	s[717] = ((155 : GoUInt8));
	s[736] = ((156 : GoUInt8));
	s[737] = ((156 : GoUInt8));
	s[738] = ((156 : GoUInt8));
	s[739] = ((156 : GoUInt8));
	s[740] = ((157 : GoUInt8));
	s[741] = ((156 : GoUInt8));
	s[742] = ((156 : GoUInt8));
	s[743] = ((156 : GoUInt8));
	s[744] = ((158 : GoUInt8));
	s[745] = ((156 : GoUInt8));
	s[746] = ((156 : GoUInt8));
	s[747] = ((159 : GoUInt8));
	s[748] = ((160 : GoUInt8));
	s[749] = ((156 : GoUInt8));
	s[750] = ((156 : GoUInt8));
	s[751] = ((156 : GoUInt8));
	s[752] = ((156 : GoUInt8));
	s[753] = ((156 : GoUInt8));
	s[754] = ((156 : GoUInt8));
	s[755] = ((156 : GoUInt8));
	s[756] = ((161 : GoUInt8));
	s[757] = ((156 : GoUInt8));
	s[758] = ((156 : GoUInt8));
	s[759] = ((156 : GoUInt8));
	s[760] = ((156 : GoUInt8));
	s[761] = ((162 : GoUInt8));
	s[762] = ((163 : GoUInt8));
	s[763] = ((156 : GoUInt8));
	s[764] = ((164 : GoUInt8));
	s[765] = ((165 : GoUInt8));
	s[766] = ((156 : GoUInt8));
	s[767] = ((156 : GoUInt8));
	s[768] = ((166 : GoUInt8));
	s[769] = ((167 : GoUInt8));
	s[770] = ((168 : GoUInt8));
	s[772] = ((169 : GoUInt8));
	s[773] = ((170 : GoUInt8));
	s[774] = ((171 : GoUInt8));
	s[775] = ((172 : GoUInt8));
	s[776] = ((173 : GoUInt8));
	s[779] = ((174 : GoUInt8));
	s[780] = ((38 : GoUInt8));
	s[781] = ((175 : GoUInt8));
	s[784] = ((176 : GoUInt8));
	s[785] = ((177 : GoUInt8));
	s[786] = ((178 : GoUInt8));
	s[787] = ((179 : GoUInt8));
	s[790] = ((180 : GoUInt8));
	s[791] = ((181 : GoUInt8));
	s[792] = ((182 : GoUInt8));
	s[793] = ((183 : GoUInt8));
	s[794] = ((184 : GoUInt8));
	s[796] = ((185 : GoUInt8));
	s[800] = ((186 : GoUInt8));
	s[804] = ((187 : GoUInt8));
	s[805] = ((188 : GoUInt8));
	s[807] = ((189 : GoUInt8));
	s[808] = ((190 : GoUInt8));
	s[809] = ((191 : GoUInt8));
	s[810] = ((192 : GoUInt8));
	s[816] = ((193 : GoUInt8));
	s[818] = ((194 : GoUInt8));
	s[820] = ((195 : GoUInt8));
	s[821] = ((196 : GoUInt8));
	s[822] = ((197 : GoUInt8));
	s[827] = ((198 : GoUInt8));
	s[831] = ((199 : GoUInt8));
	s[875] = ((200 : GoUInt8));
	s[876] = ((201 : GoUInt8));
	s[893] = ((202 : GoUInt8));
	s[894] = ((203 : GoUInt8));
	s[895] = ((204 : GoUInt8));
	s[946] = ((205 : GoUInt8));
	s[965] = ((206 : GoUInt8));
	s[966] = ((207 : GoUInt8));
	s[968] = ((86 : GoUInt8));
	s[969] = ((208 : GoUInt8));
	s[972] = ((86 : GoUInt8));
	s[973] = ((209 : GoUInt8));
	s[987] = ((210 : GoUInt8));
	s[988] = ((211 : GoUInt8));
	s[989] = ((212 : GoUInt8));
	s[990] = ((213 : GoUInt8));
	s[991] = ((214 : GoUInt8));
	s[1000] = ((215 : GoUInt8));
	s[1001] = ((216 : GoUInt8));
	s[1002] = ((217 : GoUInt8));
	s[1024] = ((218 : GoUInt8));
	s[1028] = ((201 : GoUInt8));
	s[1035] = ((219 : GoUInt8));
	s[1056] = ((156 : GoUInt8));
	s[1057] = ((156 : GoUInt8));
	s[1058] = ((156 : GoUInt8));
	s[1059] = ((220 : GoUInt8));
	s[1060] = ((156 : GoUInt8));
	s[1061] = ((221 : GoUInt8));
	s[1062] = ((156 : GoUInt8));
	s[1063] = ((156 : GoUInt8));
	s[1064] = ((156 : GoUInt8));
	s[1065] = ((156 : GoUInt8));
	s[1066] = ((156 : GoUInt8));
	s[1067] = ((156 : GoUInt8));
	s[1068] = ((156 : GoUInt8));
	s[1069] = ((156 : GoUInt8));
	s[1070] = ((156 : GoUInt8));
	s[1071] = ((156 : GoUInt8));
	s[1072] = ((156 : GoUInt8));
	s[1073] = ((164 : GoUInt8));
	s[1074] = ((14 : GoUInt8));
	s[1075] = ((156 : GoUInt8));
	s[1076] = ((14 : GoUInt8));
	s[1077] = ((222 : GoUInt8));
	s[1078] = ((156 : GoUInt8));
	s[1079] = ((156 : GoUInt8));
	s[1080] = ((14 : GoUInt8));
	s[1081] = ((14 : GoUInt8));
	s[1082] = ((14 : GoUInt8));
	s[1083] = ((223 : GoUInt8));
	s[1084] = ((156 : GoUInt8));
	s[1085] = ((156 : GoUInt8));
	s[1086] = ((156 : GoUInt8));
	s[1087] = ((156 : GoUInt8));
	s[1088] = ((224 : GoUInt8));
	s[1089] = ((86 : GoUInt8));
	s[1090] = ((225 : GoUInt8));
	s[1091] = ((226 : GoUInt8));
	s[1092] = ((227 : GoUInt8));
	s[1093] = ((228 : GoUInt8));
	s[1094] = ((229 : GoUInt8));
	s[1097] = ((230 : GoUInt8));
	s[1100] = ((86 : GoUInt8));
	s[1101] = ((86 : GoUInt8));
	s[1102] = ((86 : GoUInt8));
	s[1103] = ((86 : GoUInt8));
	s[1104] = ((86 : GoUInt8));
	s[1105] = ((86 : GoUInt8));
	s[1106] = ((86 : GoUInt8));
	s[1107] = ((86 : GoUInt8));
	s[1108] = ((86 : GoUInt8));
	s[1109] = ((86 : GoUInt8));
	s[1110] = ((86 : GoUInt8));
	s[1111] = ((86 : GoUInt8));
	s[1112] = ((86 : GoUInt8));
	s[1113] = ((86 : GoUInt8));
	s[1114] = ((86 : GoUInt8));
	s[1115] = ((231 : GoUInt8));
	s[1116] = ((86 : GoUInt8));
	s[1117] = ((108 : GoUInt8));
	s[1118] = ((86 : GoUInt8));
	s[1119] = ((232 : GoUInt8));
	s[1120] = ((233 : GoUInt8));
	s[1121] = ((234 : GoUInt8));
	s[1122] = ((235 : GoUInt8));
	s[1124] = ((86 : GoUInt8));
	s[1125] = ((236 : GoUInt8));
	s[1126] = ((86 : GoUInt8));
	s[1127] = ((237 : GoUInt8));
	s[1128] = ((86 : GoUInt8));
	s[1129] = ((238 : GoUInt8));
	s[1130] = ((239 : GoUInt8));
	s[1131] = ((240 : GoUInt8));
	s[1132] = ((86 : GoUInt8));
	s[1133] = ((86 : GoUInt8));
	s[1134] = ((241 : GoUInt8));
	s[1135] = ((242 : GoUInt8));
	s[1151] = ((243 : GoUInt8));
	s[1215] = ((243 : GoUInt8));
	s[1232] = ((9 : GoUInt8));
	s[1233] = ((10 : GoUInt8));
	s[1238] = ((11 : GoUInt8));
	s[1243] = ((12 : GoUInt8));
	s[1245] = ((13 : GoUInt8));
	s[1246] = ((14 : GoUInt8));
	s[1247] = ((15 : GoUInt8));
	s[1263] = ((16 : GoUInt8));
	s[1279] = ((16 : GoUInt8));
	s[1295] = ((16 : GoUInt8));
	s[1311] = ((16 : GoUInt8));
	s[1327] = ((16 : GoUInt8));
	s[1343] = ((16 : GoUInt8));
	s[1344] = ((244 : GoUInt8));
	s[1345] = ((244 : GoUInt8));
	s[1346] = ((244 : GoUInt8));
	s[1347] = ((244 : GoUInt8));
	s[1348] = ((5 : GoUInt8));
	s[1349] = ((5 : GoUInt8));
	s[1350] = ((5 : GoUInt8));
	s[1351] = ((245 : GoUInt8));
	s[1352] = ((244 : GoUInt8));
	s[1353] = ((244 : GoUInt8));
	s[1354] = ((244 : GoUInt8));
	s[1355] = ((244 : GoUInt8));
	s[1356] = ((244 : GoUInt8));
	s[1357] = ((244 : GoUInt8));
	s[1358] = ((244 : GoUInt8));
	s[1359] = ((244 : GoUInt8));
	s[1360] = ((244 : GoUInt8));
	s[1361] = ((244 : GoUInt8));
	s[1362] = ((244 : GoUInt8));
	s[1363] = ((244 : GoUInt8));
	s[1364] = ((244 : GoUInt8));
	s[1365] = ((244 : GoUInt8));
	s[1366] = ((244 : GoUInt8));
	s[1367] = ((244 : GoUInt8));
	s[1368] = ((244 : GoUInt8));
	s[1369] = ((244 : GoUInt8));
	s[1370] = ((244 : GoUInt8));
	s[1371] = ((244 : GoUInt8));
	s[1372] = ((244 : GoUInt8));
	s[1373] = ((244 : GoUInt8));
	s[1374] = ((244 : GoUInt8));
	s[1375] = ((244 : GoUInt8));
	s[1376] = ((244 : GoUInt8));
	s[1377] = ((244 : GoUInt8));
	s[1378] = ((244 : GoUInt8));
	s[1379] = ((244 : GoUInt8));
	s[1380] = ((244 : GoUInt8));
	s[1381] = ((244 : GoUInt8));
	s[1382] = ((244 : GoUInt8));
	s[1383] = ((244 : GoUInt8));
	s[1384] = ((244 : GoUInt8));
	s[1385] = ((244 : GoUInt8));
	s[1386] = ((244 : GoUInt8));
	s[1387] = ((244 : GoUInt8));
	s[1388] = ((244 : GoUInt8));
	s[1389] = ((244 : GoUInt8));
	s[1390] = ((244 : GoUInt8));
	s[1391] = ((244 : GoUInt8));
	s[1392] = ((244 : GoUInt8));
	s[1393] = ((244 : GoUInt8));
	s[1394] = ((244 : GoUInt8));
	s[1395] = ((244 : GoUInt8));
	s[1396] = ((244 : GoUInt8));
	s[1397] = ((244 : GoUInt8));
	s[1398] = ((244 : GoUInt8));
	s[1399] = ((244 : GoUInt8));
	s[1400] = ((244 : GoUInt8));
	s[1401] = ((244 : GoUInt8));
	s[1402] = ((244 : GoUInt8));
	s[1403] = ((244 : GoUInt8));
	s[1404] = ((244 : GoUInt8));
	s[1405] = ((244 : GoUInt8));
	s[1406] = ((244 : GoUInt8));
	s[1407] = ((244 : GoUInt8));
	s[1423] = ((16 : GoUInt8));
	s[1439] = ((16 : GoUInt8));
	s[1440] = ((19 : GoUInt8));
	s[1455] = ((16 : GoUInt8));
	s[1471] = ((16 : GoUInt8));
	s[1487] = ((16 : GoUInt8));
	s;
};

var _trie:Pointer<T_bidiTrie> = _newBidiTrie(((0 : GoInt)));
final _unknownClass:Class_ = -1 ^ new Class_(((0 : GoUInt))).__t__;

var _bidiValues:GoArray<GoUInt8> = {
	var s = new GoArray<GoUInt8>(...[for (i in 0...15872) 0]);
	s[0] = ((11 : GoUInt8));
	s[1] = ((11 : GoUInt8));
	s[2] = ((11 : GoUInt8));
	s[3] = ((11 : GoUInt8));
	s[4] = ((11 : GoUInt8));
	s[5] = ((11 : GoUInt8));
	s[6] = ((11 : GoUInt8));
	s[7] = ((11 : GoUInt8));
	s[8] = ((11 : GoUInt8));
	s[9] = ((8 : GoUInt8));
	s[10] = ((7 : GoUInt8));
	s[11] = ((8 : GoUInt8));
	s[12] = ((9 : GoUInt8));
	s[13] = ((7 : GoUInt8));
	s[14] = ((11 : GoUInt8));
	s[15] = ((11 : GoUInt8));
	s[16] = ((11 : GoUInt8));
	s[17] = ((11 : GoUInt8));
	s[18] = ((11 : GoUInt8));
	s[19] = ((11 : GoUInt8));
	s[20] = ((11 : GoUInt8));
	s[21] = ((11 : GoUInt8));
	s[22] = ((11 : GoUInt8));
	s[23] = ((11 : GoUInt8));
	s[24] = ((11 : GoUInt8));
	s[25] = ((11 : GoUInt8));
	s[26] = ((11 : GoUInt8));
	s[27] = ((11 : GoUInt8));
	s[28] = ((7 : GoUInt8));
	s[29] = ((7 : GoUInt8));
	s[30] = ((7 : GoUInt8));
	s[31] = ((8 : GoUInt8));
	s[32] = ((9 : GoUInt8));
	s[33] = ((10 : GoUInt8));
	s[34] = ((10 : GoUInt8));
	s[35] = ((4 : GoUInt8));
	s[36] = ((4 : GoUInt8));
	s[37] = ((4 : GoUInt8));
	s[38] = ((10 : GoUInt8));
	s[39] = ((10 : GoUInt8));
	s[40] = ((58 : GoUInt8));
	s[41] = ((42 : GoUInt8));
	s[42] = ((10 : GoUInt8));
	s[43] = ((3 : GoUInt8));
	s[44] = ((6 : GoUInt8));
	s[45] = ((3 : GoUInt8));
	s[46] = ((6 : GoUInt8));
	s[47] = ((6 : GoUInt8));
	s[48] = ((2 : GoUInt8));
	s[49] = ((2 : GoUInt8));
	s[50] = ((2 : GoUInt8));
	s[51] = ((2 : GoUInt8));
	s[52] = ((2 : GoUInt8));
	s[53] = ((2 : GoUInt8));
	s[54] = ((2 : GoUInt8));
	s[55] = ((2 : GoUInt8));
	s[56] = ((2 : GoUInt8));
	s[57] = ((2 : GoUInt8));
	s[58] = ((6 : GoUInt8));
	s[59] = ((10 : GoUInt8));
	s[60] = ((10 : GoUInt8));
	s[61] = ((10 : GoUInt8));
	s[62] = ((10 : GoUInt8));
	s[63] = ((10 : GoUInt8));
	s[64] = ((10 : GoUInt8));
	s[91] = ((90 : GoUInt8));
	s[92] = ((10 : GoUInt8));
	s[93] = ((74 : GoUInt8));
	s[94] = ((10 : GoUInt8));
	s[95] = ((10 : GoUInt8));
	s[96] = ((10 : GoUInt8));
	s[123] = ((90 : GoUInt8));
	s[124] = ((10 : GoUInt8));
	s[125] = ((74 : GoUInt8));
	s[126] = ((10 : GoUInt8));
	s[127] = ((11 : GoUInt8));
	s[192] = ((11 : GoUInt8));
	s[193] = ((11 : GoUInt8));
	s[194] = ((11 : GoUInt8));
	s[195] = ((11 : GoUInt8));
	s[196] = ((11 : GoUInt8));
	s[197] = ((7 : GoUInt8));
	s[198] = ((11 : GoUInt8));
	s[199] = ((11 : GoUInt8));
	s[200] = ((11 : GoUInt8));
	s[201] = ((11 : GoUInt8));
	s[202] = ((11 : GoUInt8));
	s[203] = ((11 : GoUInt8));
	s[204] = ((11 : GoUInt8));
	s[205] = ((11 : GoUInt8));
	s[206] = ((11 : GoUInt8));
	s[207] = ((11 : GoUInt8));
	s[208] = ((11 : GoUInt8));
	s[209] = ((11 : GoUInt8));
	s[210] = ((11 : GoUInt8));
	s[211] = ((11 : GoUInt8));
	s[212] = ((11 : GoUInt8));
	s[213] = ((11 : GoUInt8));
	s[214] = ((11 : GoUInt8));
	s[215] = ((11 : GoUInt8));
	s[216] = ((11 : GoUInt8));
	s[217] = ((11 : GoUInt8));
	s[218] = ((11 : GoUInt8));
	s[219] = ((11 : GoUInt8));
	s[220] = ((11 : GoUInt8));
	s[221] = ((11 : GoUInt8));
	s[222] = ((11 : GoUInt8));
	s[223] = ((11 : GoUInt8));
	s[224] = ((6 : GoUInt8));
	s[225] = ((10 : GoUInt8));
	s[226] = ((4 : GoUInt8));
	s[227] = ((4 : GoUInt8));
	s[228] = ((4 : GoUInt8));
	s[229] = ((4 : GoUInt8));
	s[230] = ((10 : GoUInt8));
	s[231] = ((10 : GoUInt8));
	s[232] = ((10 : GoUInt8));
	s[233] = ((10 : GoUInt8));
	s[235] = ((10 : GoUInt8));
	s[236] = ((10 : GoUInt8));
	s[237] = ((11 : GoUInt8));
	s[238] = ((10 : GoUInt8));
	s[239] = ((10 : GoUInt8));
	s[240] = ((4 : GoUInt8));
	s[241] = ((4 : GoUInt8));
	s[242] = ((2 : GoUInt8));
	s[243] = ((2 : GoUInt8));
	s[244] = ((10 : GoUInt8));
	s[246] = ((10 : GoUInt8));
	s[247] = ((10 : GoUInt8));
	s[248] = ((10 : GoUInt8));
	s[249] = ((2 : GoUInt8));
	s[251] = ((10 : GoUInt8));
	s[252] = ((10 : GoUInt8));
	s[253] = ((10 : GoUInt8));
	s[254] = ((10 : GoUInt8));
	s[255] = ((10 : GoUInt8));
	s[279] = ((10 : GoUInt8));
	s[311] = ((10 : GoUInt8));
	s[377] = ((10 : GoUInt8));
	s[378] = ((10 : GoUInt8));
	s[386] = ((10 : GoUInt8));
	s[387] = ((10 : GoUInt8));
	s[388] = ((10 : GoUInt8));
	s[389] = ((10 : GoUInt8));
	s[390] = ((10 : GoUInt8));
	s[391] = ((10 : GoUInt8));
	s[392] = ((10 : GoUInt8));
	s[393] = ((10 : GoUInt8));
	s[394] = ((10 : GoUInt8));
	s[395] = ((10 : GoUInt8));
	s[396] = ((10 : GoUInt8));
	s[397] = ((10 : GoUInt8));
	s[398] = ((10 : GoUInt8));
	s[399] = ((10 : GoUInt8));
	s[402] = ((10 : GoUInt8));
	s[403] = ((10 : GoUInt8));
	s[404] = ((10 : GoUInt8));
	s[405] = ((10 : GoUInt8));
	s[406] = ((10 : GoUInt8));
	s[407] = ((10 : GoUInt8));
	s[408] = ((10 : GoUInt8));
	s[409] = ((10 : GoUInt8));
	s[410] = ((10 : GoUInt8));
	s[411] = ((10 : GoUInt8));
	s[412] = ((10 : GoUInt8));
	s[413] = ((10 : GoUInt8));
	s[414] = ((10 : GoUInt8));
	s[415] = ((10 : GoUInt8));
	s[421] = ((10 : GoUInt8));
	s[422] = ((10 : GoUInt8));
	s[423] = ((10 : GoUInt8));
	s[424] = ((10 : GoUInt8));
	s[425] = ((10 : GoUInt8));
	s[426] = ((10 : GoUInt8));
	s[427] = ((10 : GoUInt8));
	s[428] = ((10 : GoUInt8));
	s[429] = ((10 : GoUInt8));
	s[431] = ((10 : GoUInt8));
	s[432] = ((10 : GoUInt8));
	s[433] = ((10 : GoUInt8));
	s[434] = ((10 : GoUInt8));
	s[435] = ((10 : GoUInt8));
	s[436] = ((10 : GoUInt8));
	s[437] = ((10 : GoUInt8));
	s[438] = ((10 : GoUInt8));
	s[439] = ((10 : GoUInt8));
	s[440] = ((10 : GoUInt8));
	s[441] = ((10 : GoUInt8));
	s[442] = ((10 : GoUInt8));
	s[443] = ((10 : GoUInt8));
	s[444] = ((10 : GoUInt8));
	s[445] = ((10 : GoUInt8));
	s[446] = ((10 : GoUInt8));
	s[447] = ((10 : GoUInt8));
	s[448] = ((12 : GoUInt8));
	s[449] = ((12 : GoUInt8));
	s[450] = ((12 : GoUInt8));
	s[451] = ((12 : GoUInt8));
	s[452] = ((12 : GoUInt8));
	s[453] = ((12 : GoUInt8));
	s[454] = ((12 : GoUInt8));
	s[455] = ((12 : GoUInt8));
	s[456] = ((12 : GoUInt8));
	s[457] = ((12 : GoUInt8));
	s[458] = ((12 : GoUInt8));
	s[459] = ((12 : GoUInt8));
	s[460] = ((12 : GoUInt8));
	s[461] = ((12 : GoUInt8));
	s[462] = ((12 : GoUInt8));
	s[463] = ((12 : GoUInt8));
	s[464] = ((12 : GoUInt8));
	s[465] = ((12 : GoUInt8));
	s[466] = ((12 : GoUInt8));
	s[467] = ((12 : GoUInt8));
	s[468] = ((12 : GoUInt8));
	s[469] = ((12 : GoUInt8));
	s[470] = ((12 : GoUInt8));
	s[471] = ((12 : GoUInt8));
	s[472] = ((12 : GoUInt8));
	s[473] = ((12 : GoUInt8));
	s[474] = ((12 : GoUInt8));
	s[475] = ((12 : GoUInt8));
	s[476] = ((12 : GoUInt8));
	s[477] = ((12 : GoUInt8));
	s[478] = ((12 : GoUInt8));
	s[479] = ((12 : GoUInt8));
	s[480] = ((12 : GoUInt8));
	s[481] = ((12 : GoUInt8));
	s[482] = ((12 : GoUInt8));
	s[483] = ((12 : GoUInt8));
	s[484] = ((12 : GoUInt8));
	s[485] = ((12 : GoUInt8));
	s[486] = ((12 : GoUInt8));
	s[487] = ((12 : GoUInt8));
	s[488] = ((12 : GoUInt8));
	s[489] = ((12 : GoUInt8));
	s[490] = ((12 : GoUInt8));
	s[491] = ((12 : GoUInt8));
	s[492] = ((12 : GoUInt8));
	s[493] = ((12 : GoUInt8));
	s[494] = ((12 : GoUInt8));
	s[495] = ((12 : GoUInt8));
	s[496] = ((12 : GoUInt8));
	s[497] = ((12 : GoUInt8));
	s[498] = ((12 : GoUInt8));
	s[499] = ((12 : GoUInt8));
	s[500] = ((12 : GoUInt8));
	s[501] = ((12 : GoUInt8));
	s[502] = ((12 : GoUInt8));
	s[503] = ((12 : GoUInt8));
	s[504] = ((12 : GoUInt8));
	s[505] = ((12 : GoUInt8));
	s[506] = ((12 : GoUInt8));
	s[507] = ((12 : GoUInt8));
	s[508] = ((12 : GoUInt8));
	s[509] = ((12 : GoUInt8));
	s[510] = ((12 : GoUInt8));
	s[511] = ((12 : GoUInt8));
	s[512] = ((12 : GoUInt8));
	s[513] = ((12 : GoUInt8));
	s[514] = ((12 : GoUInt8));
	s[515] = ((12 : GoUInt8));
	s[516] = ((12 : GoUInt8));
	s[517] = ((12 : GoUInt8));
	s[518] = ((12 : GoUInt8));
	s[519] = ((12 : GoUInt8));
	s[520] = ((12 : GoUInt8));
	s[521] = ((12 : GoUInt8));
	s[522] = ((12 : GoUInt8));
	s[523] = ((12 : GoUInt8));
	s[524] = ((12 : GoUInt8));
	s[525] = ((12 : GoUInt8));
	s[526] = ((12 : GoUInt8));
	s[527] = ((12 : GoUInt8));
	s[528] = ((12 : GoUInt8));
	s[529] = ((12 : GoUInt8));
	s[530] = ((12 : GoUInt8));
	s[531] = ((12 : GoUInt8));
	s[532] = ((12 : GoUInt8));
	s[533] = ((12 : GoUInt8));
	s[534] = ((12 : GoUInt8));
	s[535] = ((12 : GoUInt8));
	s[536] = ((12 : GoUInt8));
	s[537] = ((12 : GoUInt8));
	s[538] = ((12 : GoUInt8));
	s[539] = ((12 : GoUInt8));
	s[540] = ((12 : GoUInt8));
	s[541] = ((12 : GoUInt8));
	s[542] = ((12 : GoUInt8));
	s[543] = ((12 : GoUInt8));
	s[544] = ((12 : GoUInt8));
	s[545] = ((12 : GoUInt8));
	s[546] = ((12 : GoUInt8));
	s[547] = ((12 : GoUInt8));
	s[548] = ((12 : GoUInt8));
	s[549] = ((12 : GoUInt8));
	s[550] = ((12 : GoUInt8));
	s[551] = ((12 : GoUInt8));
	s[552] = ((12 : GoUInt8));
	s[553] = ((12 : GoUInt8));
	s[554] = ((12 : GoUInt8));
	s[555] = ((12 : GoUInt8));
	s[556] = ((12 : GoUInt8));
	s[557] = ((12 : GoUInt8));
	s[558] = ((12 : GoUInt8));
	s[559] = ((12 : GoUInt8));
	s[564] = ((10 : GoUInt8));
	s[565] = ((10 : GoUInt8));
	s[574] = ((10 : GoUInt8));
	s[580] = ((10 : GoUInt8));
	s[581] = ((10 : GoUInt8));
	s[583] = ((10 : GoUInt8));
	s[694] = ((10 : GoUInt8));
	s[707] = ((12 : GoUInt8));
	s[708] = ((12 : GoUInt8));
	s[709] = ((12 : GoUInt8));
	s[710] = ((12 : GoUInt8));
	s[711] = ((12 : GoUInt8));
	s[712] = ((12 : GoUInt8));
	s[713] = ((12 : GoUInt8));
	s[778] = ((10 : GoUInt8));
	s[781] = ((10 : GoUInt8));
	s[782] = ((10 : GoUInt8));
	s[783] = ((4 : GoUInt8));
	s[784] = ((1 : GoUInt8));
	s[785] = ((12 : GoUInt8));
	s[786] = ((12 : GoUInt8));
	s[787] = ((12 : GoUInt8));
	s[788] = ((12 : GoUInt8));
	s[789] = ((12 : GoUInt8));
	s[790] = ((12 : GoUInt8));
	s[791] = ((12 : GoUInt8));
	s[792] = ((12 : GoUInt8));
	s[793] = ((12 : GoUInt8));
	s[794] = ((12 : GoUInt8));
	s[795] = ((12 : GoUInt8));
	s[796] = ((12 : GoUInt8));
	s[797] = ((12 : GoUInt8));
	s[798] = ((12 : GoUInt8));
	s[799] = ((12 : GoUInt8));
	s[800] = ((12 : GoUInt8));
	s[801] = ((12 : GoUInt8));
	s[802] = ((12 : GoUInt8));
	s[803] = ((12 : GoUInt8));
	s[804] = ((12 : GoUInt8));
	s[805] = ((12 : GoUInt8));
	s[806] = ((12 : GoUInt8));
	s[807] = ((12 : GoUInt8));
	s[808] = ((12 : GoUInt8));
	s[809] = ((12 : GoUInt8));
	s[810] = ((12 : GoUInt8));
	s[811] = ((12 : GoUInt8));
	s[812] = ((12 : GoUInt8));
	s[813] = ((12 : GoUInt8));
	s[814] = ((12 : GoUInt8));
	s[815] = ((12 : GoUInt8));
	s[816] = ((12 : GoUInt8));
	s[817] = ((12 : GoUInt8));
	s[818] = ((12 : GoUInt8));
	s[819] = ((12 : GoUInt8));
	s[820] = ((12 : GoUInt8));
	s[821] = ((12 : GoUInt8));
	s[822] = ((12 : GoUInt8));
	s[823] = ((12 : GoUInt8));
	s[824] = ((12 : GoUInt8));
	s[825] = ((12 : GoUInt8));
	s[826] = ((12 : GoUInt8));
	s[827] = ((12 : GoUInt8));
	s[828] = ((12 : GoUInt8));
	s[829] = ((12 : GoUInt8));
	s[830] = ((1 : GoUInt8));
	s[831] = ((12 : GoUInt8));
	s[832] = ((1 : GoUInt8));
	s[833] = ((12 : GoUInt8));
	s[834] = ((12 : GoUInt8));
	s[835] = ((1 : GoUInt8));
	s[836] = ((12 : GoUInt8));
	s[837] = ((12 : GoUInt8));
	s[838] = ((1 : GoUInt8));
	s[839] = ((12 : GoUInt8));
	s[840] = ((1 : GoUInt8));
	s[841] = ((1 : GoUInt8));
	s[842] = ((1 : GoUInt8));
	s[843] = ((1 : GoUInt8));
	s[844] = ((1 : GoUInt8));
	s[845] = ((1 : GoUInt8));
	s[846] = ((1 : GoUInt8));
	s[847] = ((1 : GoUInt8));
	s[848] = ((1 : GoUInt8));
	s[849] = ((1 : GoUInt8));
	s[850] = ((1 : GoUInt8));
	s[851] = ((1 : GoUInt8));
	s[852] = ((1 : GoUInt8));
	s[853] = ((1 : GoUInt8));
	s[854] = ((1 : GoUInt8));
	s[855] = ((1 : GoUInt8));
	s[856] = ((1 : GoUInt8));
	s[857] = ((1 : GoUInt8));
	s[858] = ((1 : GoUInt8));
	s[859] = ((1 : GoUInt8));
	s[860] = ((1 : GoUInt8));
	s[861] = ((1 : GoUInt8));
	s[862] = ((1 : GoUInt8));
	s[863] = ((1 : GoUInt8));
	s[864] = ((1 : GoUInt8));
	s[865] = ((1 : GoUInt8));
	s[866] = ((1 : GoUInt8));
	s[867] = ((1 : GoUInt8));
	s[868] = ((1 : GoUInt8));
	s[869] = ((1 : GoUInt8));
	s[870] = ((1 : GoUInt8));
	s[871] = ((1 : GoUInt8));
	s[872] = ((1 : GoUInt8));
	s[873] = ((1 : GoUInt8));
	s[874] = ((1 : GoUInt8));
	s[875] = ((1 : GoUInt8));
	s[876] = ((1 : GoUInt8));
	s[877] = ((1 : GoUInt8));
	s[878] = ((1 : GoUInt8));
	s[879] = ((1 : GoUInt8));
	s[880] = ((1 : GoUInt8));
	s[881] = ((1 : GoUInt8));
	s[882] = ((1 : GoUInt8));
	s[883] = ((1 : GoUInt8));
	s[884] = ((1 : GoUInt8));
	s[885] = ((1 : GoUInt8));
	s[886] = ((1 : GoUInt8));
	s[887] = ((1 : GoUInt8));
	s[888] = ((1 : GoUInt8));
	s[889] = ((1 : GoUInt8));
	s[890] = ((1 : GoUInt8));
	s[891] = ((1 : GoUInt8));
	s[892] = ((1 : GoUInt8));
	s[893] = ((1 : GoUInt8));
	s[894] = ((1 : GoUInt8));
	s[895] = ((1 : GoUInt8));
	s[896] = ((5 : GoUInt8));
	s[897] = ((5 : GoUInt8));
	s[898] = ((5 : GoUInt8));
	s[899] = ((5 : GoUInt8));
	s[900] = ((5 : GoUInt8));
	s[901] = ((5 : GoUInt8));
	s[902] = ((10 : GoUInt8));
	s[903] = ((10 : GoUInt8));
	s[904] = ((13 : GoUInt8));
	s[905] = ((4 : GoUInt8));
	s[906] = ((4 : GoUInt8));
	s[907] = ((13 : GoUInt8));
	s[908] = ((6 : GoUInt8));
	s[909] = ((13 : GoUInt8));
	s[910] = ((10 : GoUInt8));
	s[911] = ((10 : GoUInt8));
	s[912] = ((12 : GoUInt8));
	s[913] = ((12 : GoUInt8));
	s[914] = ((12 : GoUInt8));
	s[915] = ((12 : GoUInt8));
	s[916] = ((12 : GoUInt8));
	s[917] = ((12 : GoUInt8));
	s[918] = ((12 : GoUInt8));
	s[919] = ((12 : GoUInt8));
	s[920] = ((12 : GoUInt8));
	s[921] = ((12 : GoUInt8));
	s[922] = ((12 : GoUInt8));
	s[923] = ((13 : GoUInt8));
	s[924] = ((13 : GoUInt8));
	s[925] = ((13 : GoUInt8));
	s[926] = ((13 : GoUInt8));
	s[927] = ((13 : GoUInt8));
	s[928] = ((13 : GoUInt8));
	s[929] = ((13 : GoUInt8));
	s[930] = ((13 : GoUInt8));
	s[931] = ((13 : GoUInt8));
	s[932] = ((13 : GoUInt8));
	s[933] = ((13 : GoUInt8));
	s[934] = ((13 : GoUInt8));
	s[935] = ((13 : GoUInt8));
	s[936] = ((13 : GoUInt8));
	s[937] = ((13 : GoUInt8));
	s[938] = ((13 : GoUInt8));
	s[939] = ((13 : GoUInt8));
	s[940] = ((13 : GoUInt8));
	s[941] = ((13 : GoUInt8));
	s[942] = ((13 : GoUInt8));
	s[943] = ((13 : GoUInt8));
	s[944] = ((13 : GoUInt8));
	s[945] = ((13 : GoUInt8));
	s[946] = ((13 : GoUInt8));
	s[947] = ((13 : GoUInt8));
	s[948] = ((13 : GoUInt8));
	s[949] = ((13 : GoUInt8));
	s[950] = ((13 : GoUInt8));
	s[951] = ((13 : GoUInt8));
	s[952] = ((13 : GoUInt8));
	s[953] = ((13 : GoUInt8));
	s[954] = ((13 : GoUInt8));
	s[955] = ((13 : GoUInt8));
	s[956] = ((13 : GoUInt8));
	s[957] = ((13 : GoUInt8));
	s[958] = ((13 : GoUInt8));
	s[959] = ((13 : GoUInt8));
	s[960] = ((13 : GoUInt8));
	s[961] = ((13 : GoUInt8));
	s[962] = ((13 : GoUInt8));
	s[963] = ((13 : GoUInt8));
	s[964] = ((13 : GoUInt8));
	s[965] = ((13 : GoUInt8));
	s[966] = ((13 : GoUInt8));
	s[967] = ((13 : GoUInt8));
	s[968] = ((13 : GoUInt8));
	s[969] = ((13 : GoUInt8));
	s[970] = ((13 : GoUInt8));
	s[971] = ((12 : GoUInt8));
	s[972] = ((12 : GoUInt8));
	s[973] = ((12 : GoUInt8));
	s[974] = ((12 : GoUInt8));
	s[975] = ((12 : GoUInt8));
	s[976] = ((12 : GoUInt8));
	s[977] = ((12 : GoUInt8));
	s[978] = ((12 : GoUInt8));
	s[979] = ((12 : GoUInt8));
	s[980] = ((12 : GoUInt8));
	s[981] = ((12 : GoUInt8));
	s[982] = ((12 : GoUInt8));
	s[983] = ((12 : GoUInt8));
	s[984] = ((12 : GoUInt8));
	s[985] = ((12 : GoUInt8));
	s[986] = ((12 : GoUInt8));
	s[987] = ((12 : GoUInt8));
	s[988] = ((12 : GoUInt8));
	s[989] = ((12 : GoUInt8));
	s[990] = ((12 : GoUInt8));
	s[991] = ((12 : GoUInt8));
	s[992] = ((5 : GoUInt8));
	s[993] = ((5 : GoUInt8));
	s[994] = ((5 : GoUInt8));
	s[995] = ((5 : GoUInt8));
	s[996] = ((5 : GoUInt8));
	s[997] = ((5 : GoUInt8));
	s[998] = ((5 : GoUInt8));
	s[999] = ((5 : GoUInt8));
	s[1000] = ((5 : GoUInt8));
	s[1001] = ((5 : GoUInt8));
	s[1002] = ((4 : GoUInt8));
	s[1003] = ((5 : GoUInt8));
	s[1004] = ((5 : GoUInt8));
	s[1005] = ((13 : GoUInt8));
	s[1006] = ((13 : GoUInt8));
	s[1007] = ((13 : GoUInt8));
	s[1008] = ((12 : GoUInt8));
	s[1009] = ((13 : GoUInt8));
	s[1010] = ((13 : GoUInt8));
	s[1011] = ((13 : GoUInt8));
	s[1012] = ((13 : GoUInt8));
	s[1013] = ((13 : GoUInt8));
	s[1014] = ((13 : GoUInt8));
	s[1015] = ((13 : GoUInt8));
	s[1016] = ((13 : GoUInt8));
	s[1017] = ((13 : GoUInt8));
	s[1018] = ((13 : GoUInt8));
	s[1019] = ((13 : GoUInt8));
	s[1020] = ((13 : GoUInt8));
	s[1021] = ((13 : GoUInt8));
	s[1022] = ((13 : GoUInt8));
	s[1023] = ((13 : GoUInt8));
	s[1024] = ((13 : GoUInt8));
	s[1025] = ((13 : GoUInt8));
	s[1026] = ((13 : GoUInt8));
	s[1027] = ((13 : GoUInt8));
	s[1028] = ((13 : GoUInt8));
	s[1029] = ((13 : GoUInt8));
	s[1030] = ((13 : GoUInt8));
	s[1031] = ((13 : GoUInt8));
	s[1032] = ((13 : GoUInt8));
	s[1033] = ((13 : GoUInt8));
	s[1034] = ((13 : GoUInt8));
	s[1035] = ((13 : GoUInt8));
	s[1036] = ((13 : GoUInt8));
	s[1037] = ((13 : GoUInt8));
	s[1038] = ((13 : GoUInt8));
	s[1039] = ((13 : GoUInt8));
	s[1040] = ((13 : GoUInt8));
	s[1041] = ((13 : GoUInt8));
	s[1042] = ((13 : GoUInt8));
	s[1043] = ((13 : GoUInt8));
	s[1044] = ((13 : GoUInt8));
	s[1045] = ((13 : GoUInt8));
	s[1046] = ((13 : GoUInt8));
	s[1047] = ((13 : GoUInt8));
	s[1048] = ((13 : GoUInt8));
	s[1049] = ((13 : GoUInt8));
	s[1050] = ((13 : GoUInt8));
	s[1051] = ((13 : GoUInt8));
	s[1052] = ((13 : GoUInt8));
	s[1053] = ((13 : GoUInt8));
	s[1054] = ((13 : GoUInt8));
	s[1055] = ((13 : GoUInt8));
	s[1056] = ((13 : GoUInt8));
	s[1057] = ((13 : GoUInt8));
	s[1058] = ((13 : GoUInt8));
	s[1059] = ((13 : GoUInt8));
	s[1060] = ((13 : GoUInt8));
	s[1061] = ((13 : GoUInt8));
	s[1062] = ((13 : GoUInt8));
	s[1063] = ((13 : GoUInt8));
	s[1064] = ((13 : GoUInt8));
	s[1065] = ((13 : GoUInt8));
	s[1066] = ((13 : GoUInt8));
	s[1067] = ((13 : GoUInt8));
	s[1068] = ((13 : GoUInt8));
	s[1069] = ((13 : GoUInt8));
	s[1070] = ((13 : GoUInt8));
	s[1071] = ((13 : GoUInt8));
	s[1072] = ((13 : GoUInt8));
	s[1073] = ((13 : GoUInt8));
	s[1074] = ((13 : GoUInt8));
	s[1075] = ((13 : GoUInt8));
	s[1076] = ((13 : GoUInt8));
	s[1077] = ((13 : GoUInt8));
	s[1078] = ((13 : GoUInt8));
	s[1079] = ((13 : GoUInt8));
	s[1080] = ((13 : GoUInt8));
	s[1081] = ((13 : GoUInt8));
	s[1082] = ((13 : GoUInt8));
	s[1083] = ((13 : GoUInt8));
	s[1084] = ((13 : GoUInt8));
	s[1085] = ((13 : GoUInt8));
	s[1086] = ((13 : GoUInt8));
	s[1087] = ((13 : GoUInt8));
	s[1088] = ((13 : GoUInt8));
	s[1089] = ((13 : GoUInt8));
	s[1090] = ((13 : GoUInt8));
	s[1091] = ((13 : GoUInt8));
	s[1092] = ((13 : GoUInt8));
	s[1093] = ((13 : GoUInt8));
	s[1094] = ((13 : GoUInt8));
	s[1095] = ((13 : GoUInt8));
	s[1096] = ((13 : GoUInt8));
	s[1097] = ((13 : GoUInt8));
	s[1098] = ((13 : GoUInt8));
	s[1099] = ((13 : GoUInt8));
	s[1100] = ((13 : GoUInt8));
	s[1101] = ((13 : GoUInt8));
	s[1102] = ((13 : GoUInt8));
	s[1103] = ((13 : GoUInt8));
	s[1104] = ((13 : GoUInt8));
	s[1105] = ((13 : GoUInt8));
	s[1106] = ((13 : GoUInt8));
	s[1107] = ((13 : GoUInt8));
	s[1108] = ((13 : GoUInt8));
	s[1109] = ((13 : GoUInt8));
	s[1110] = ((12 : GoUInt8));
	s[1111] = ((12 : GoUInt8));
	s[1112] = ((12 : GoUInt8));
	s[1113] = ((12 : GoUInt8));
	s[1114] = ((12 : GoUInt8));
	s[1115] = ((12 : GoUInt8));
	s[1116] = ((12 : GoUInt8));
	s[1117] = ((5 : GoUInt8));
	s[1118] = ((10 : GoUInt8));
	s[1119] = ((12 : GoUInt8));
	s[1120] = ((12 : GoUInt8));
	s[1121] = ((12 : GoUInt8));
	s[1122] = ((12 : GoUInt8));
	s[1123] = ((12 : GoUInt8));
	s[1124] = ((12 : GoUInt8));
	s[1125] = ((13 : GoUInt8));
	s[1126] = ((13 : GoUInt8));
	s[1127] = ((12 : GoUInt8));
	s[1128] = ((12 : GoUInt8));
	s[1129] = ((10 : GoUInt8));
	s[1130] = ((12 : GoUInt8));
	s[1131] = ((12 : GoUInt8));
	s[1132] = ((12 : GoUInt8));
	s[1133] = ((12 : GoUInt8));
	s[1134] = ((13 : GoUInt8));
	s[1135] = ((13 : GoUInt8));
	s[1136] = ((2 : GoUInt8));
	s[1137] = ((2 : GoUInt8));
	s[1138] = ((2 : GoUInt8));
	s[1139] = ((2 : GoUInt8));
	s[1140] = ((2 : GoUInt8));
	s[1141] = ((2 : GoUInt8));
	s[1142] = ((2 : GoUInt8));
	s[1143] = ((2 : GoUInt8));
	s[1144] = ((2 : GoUInt8));
	s[1145] = ((2 : GoUInt8));
	s[1146] = ((13 : GoUInt8));
	s[1147] = ((13 : GoUInt8));
	s[1148] = ((13 : GoUInt8));
	s[1149] = ((13 : GoUInt8));
	s[1150] = ((13 : GoUInt8));
	s[1151] = ((13 : GoUInt8));
	s[1152] = ((13 : GoUInt8));
	s[1153] = ((13 : GoUInt8));
	s[1154] = ((13 : GoUInt8));
	s[1155] = ((13 : GoUInt8));
	s[1156] = ((13 : GoUInt8));
	s[1157] = ((13 : GoUInt8));
	s[1158] = ((13 : GoUInt8));
	s[1159] = ((13 : GoUInt8));
	s[1160] = ((13 : GoUInt8));
	s[1161] = ((13 : GoUInt8));
	s[1162] = ((13 : GoUInt8));
	s[1163] = ((13 : GoUInt8));
	s[1164] = ((13 : GoUInt8));
	s[1165] = ((13 : GoUInt8));
	s[1166] = ((13 : GoUInt8));
	s[1167] = ((13 : GoUInt8));
	s[1168] = ((13 : GoUInt8));
	s[1169] = ((12 : GoUInt8));
	s[1170] = ((13 : GoUInt8));
	s[1171] = ((13 : GoUInt8));
	s[1172] = ((13 : GoUInt8));
	s[1173] = ((13 : GoUInt8));
	s[1174] = ((13 : GoUInt8));
	s[1175] = ((13 : GoUInt8));
	s[1176] = ((13 : GoUInt8));
	s[1177] = ((13 : GoUInt8));
	s[1178] = ((13 : GoUInt8));
	s[1179] = ((13 : GoUInt8));
	s[1180] = ((13 : GoUInt8));
	s[1181] = ((13 : GoUInt8));
	s[1182] = ((13 : GoUInt8));
	s[1183] = ((13 : GoUInt8));
	s[1184] = ((13 : GoUInt8));
	s[1185] = ((13 : GoUInt8));
	s[1186] = ((13 : GoUInt8));
	s[1187] = ((13 : GoUInt8));
	s[1188] = ((13 : GoUInt8));
	s[1189] = ((13 : GoUInt8));
	s[1190] = ((13 : GoUInt8));
	s[1191] = ((13 : GoUInt8));
	s[1192] = ((13 : GoUInt8));
	s[1193] = ((13 : GoUInt8));
	s[1194] = ((13 : GoUInt8));
	s[1195] = ((13 : GoUInt8));
	s[1196] = ((13 : GoUInt8));
	s[1197] = ((13 : GoUInt8));
	s[1198] = ((13 : GoUInt8));
	s[1199] = ((13 : GoUInt8));
	s[1200] = ((12 : GoUInt8));
	s[1201] = ((12 : GoUInt8));
	s[1202] = ((12 : GoUInt8));
	s[1203] = ((12 : GoUInt8));
	s[1204] = ((12 : GoUInt8));
	s[1205] = ((12 : GoUInt8));
	s[1206] = ((12 : GoUInt8));
	s[1207] = ((12 : GoUInt8));
	s[1208] = ((12 : GoUInt8));
	s[1209] = ((12 : GoUInt8));
	s[1210] = ((12 : GoUInt8));
	s[1211] = ((12 : GoUInt8));
	s[1212] = ((12 : GoUInt8));
	s[1213] = ((12 : GoUInt8));
	s[1214] = ((12 : GoUInt8));
	s[1215] = ((12 : GoUInt8));
	s[1216] = ((12 : GoUInt8));
	s[1217] = ((12 : GoUInt8));
	s[1218] = ((12 : GoUInt8));
	s[1219] = ((12 : GoUInt8));
	s[1220] = ((12 : GoUInt8));
	s[1221] = ((12 : GoUInt8));
	s[1222] = ((12 : GoUInt8));
	s[1223] = ((12 : GoUInt8));
	s[1224] = ((12 : GoUInt8));
	s[1225] = ((12 : GoUInt8));
	s[1226] = ((12 : GoUInt8));
	s[1227] = ((13 : GoUInt8));
	s[1228] = ((13 : GoUInt8));
	s[1229] = ((13 : GoUInt8));
	s[1230] = ((13 : GoUInt8));
	s[1231] = ((13 : GoUInt8));
	s[1232] = ((13 : GoUInt8));
	s[1233] = ((13 : GoUInt8));
	s[1234] = ((13 : GoUInt8));
	s[1235] = ((13 : GoUInt8));
	s[1236] = ((13 : GoUInt8));
	s[1237] = ((13 : GoUInt8));
	s[1238] = ((13 : GoUInt8));
	s[1239] = ((13 : GoUInt8));
	s[1240] = ((13 : GoUInt8));
	s[1241] = ((13 : GoUInt8));
	s[1242] = ((13 : GoUInt8));
	s[1243] = ((13 : GoUInt8));
	s[1244] = ((13 : GoUInt8));
	s[1245] = ((13 : GoUInt8));
	s[1246] = ((13 : GoUInt8));
	s[1247] = ((13 : GoUInt8));
	s[1248] = ((13 : GoUInt8));
	s[1249] = ((13 : GoUInt8));
	s[1250] = ((13 : GoUInt8));
	s[1251] = ((13 : GoUInt8));
	s[1252] = ((13 : GoUInt8));
	s[1253] = ((13 : GoUInt8));
	s[1254] = ((13 : GoUInt8));
	s[1255] = ((13 : GoUInt8));
	s[1256] = ((13 : GoUInt8));
	s[1257] = ((13 : GoUInt8));
	s[1258] = ((13 : GoUInt8));
	s[1259] = ((13 : GoUInt8));
	s[1260] = ((13 : GoUInt8));
	s[1261] = ((13 : GoUInt8));
	s[1262] = ((13 : GoUInt8));
	s[1263] = ((13 : GoUInt8));
	s[1264] = ((13 : GoUInt8));
	s[1265] = ((13 : GoUInt8));
	s[1266] = ((13 : GoUInt8));
	s[1267] = ((13 : GoUInt8));
	s[1268] = ((13 : GoUInt8));
	s[1269] = ((13 : GoUInt8));
	s[1270] = ((13 : GoUInt8));
	s[1271] = ((13 : GoUInt8));
	s[1272] = ((13 : GoUInt8));
	s[1273] = ((13 : GoUInt8));
	s[1274] = ((13 : GoUInt8));
	s[1275] = ((13 : GoUInt8));
	s[1276] = ((13 : GoUInt8));
	s[1277] = ((13 : GoUInt8));
	s[1278] = ((13 : GoUInt8));
	s[1279] = ((13 : GoUInt8));
	s[1280] = ((13 : GoUInt8));
	s[1281] = ((13 : GoUInt8));
	s[1282] = ((13 : GoUInt8));
	s[1283] = ((13 : GoUInt8));
	s[1284] = ((13 : GoUInt8));
	s[1285] = ((13 : GoUInt8));
	s[1286] = ((13 : GoUInt8));
	s[1287] = ((13 : GoUInt8));
	s[1288] = ((13 : GoUInt8));
	s[1289] = ((13 : GoUInt8));
	s[1290] = ((13 : GoUInt8));
	s[1291] = ((13 : GoUInt8));
	s[1292] = ((13 : GoUInt8));
	s[1293] = ((13 : GoUInt8));
	s[1294] = ((13 : GoUInt8));
	s[1295] = ((13 : GoUInt8));
	s[1296] = ((13 : GoUInt8));
	s[1297] = ((13 : GoUInt8));
	s[1298] = ((13 : GoUInt8));
	s[1299] = ((13 : GoUInt8));
	s[1300] = ((13 : GoUInt8));
	s[1301] = ((13 : GoUInt8));
	s[1302] = ((13 : GoUInt8));
	s[1303] = ((13 : GoUInt8));
	s[1304] = ((13 : GoUInt8));
	s[1305] = ((13 : GoUInt8));
	s[1306] = ((13 : GoUInt8));
	s[1307] = ((13 : GoUInt8));
	s[1308] = ((13 : GoUInt8));
	s[1309] = ((13 : GoUInt8));
	s[1310] = ((13 : GoUInt8));
	s[1311] = ((13 : GoUInt8));
	s[1312] = ((13 : GoUInt8));
	s[1313] = ((13 : GoUInt8));
	s[1314] = ((13 : GoUInt8));
	s[1315] = ((13 : GoUInt8));
	s[1316] = ((13 : GoUInt8));
	s[1317] = ((13 : GoUInt8));
	s[1318] = ((12 : GoUInt8));
	s[1319] = ((12 : GoUInt8));
	s[1320] = ((12 : GoUInt8));
	s[1321] = ((12 : GoUInt8));
	s[1322] = ((12 : GoUInt8));
	s[1323] = ((12 : GoUInt8));
	s[1324] = ((12 : GoUInt8));
	s[1325] = ((12 : GoUInt8));
	s[1326] = ((12 : GoUInt8));
	s[1327] = ((12 : GoUInt8));
	s[1328] = ((12 : GoUInt8));
	s[1329] = ((13 : GoUInt8));
	s[1330] = ((13 : GoUInt8));
	s[1331] = ((13 : GoUInt8));
	s[1332] = ((13 : GoUInt8));
	s[1333] = ((13 : GoUInt8));
	s[1334] = ((13 : GoUInt8));
	s[1335] = ((13 : GoUInt8));
	s[1336] = ((13 : GoUInt8));
	s[1337] = ((13 : GoUInt8));
	s[1338] = ((13 : GoUInt8));
	s[1339] = ((13 : GoUInt8));
	s[1340] = ((13 : GoUInt8));
	s[1341] = ((13 : GoUInt8));
	s[1342] = ((13 : GoUInt8));
	s[1343] = ((13 : GoUInt8));
	s[1344] = ((1 : GoUInt8));
	s[1345] = ((1 : GoUInt8));
	s[1346] = ((1 : GoUInt8));
	s[1347] = ((1 : GoUInt8));
	s[1348] = ((1 : GoUInt8));
	s[1349] = ((1 : GoUInt8));
	s[1350] = ((1 : GoUInt8));
	s[1351] = ((1 : GoUInt8));
	s[1352] = ((1 : GoUInt8));
	s[1353] = ((1 : GoUInt8));
	s[1354] = ((1 : GoUInt8));
	s[1355] = ((1 : GoUInt8));
	s[1356] = ((1 : GoUInt8));
	s[1357] = ((1 : GoUInt8));
	s[1358] = ((1 : GoUInt8));
	s[1359] = ((1 : GoUInt8));
	s[1360] = ((1 : GoUInt8));
	s[1361] = ((1 : GoUInt8));
	s[1362] = ((1 : GoUInt8));
	s[1363] = ((1 : GoUInt8));
	s[1364] = ((1 : GoUInt8));
	s[1365] = ((1 : GoUInt8));
	s[1366] = ((1 : GoUInt8));
	s[1367] = ((1 : GoUInt8));
	s[1368] = ((1 : GoUInt8));
	s[1369] = ((1 : GoUInt8));
	s[1370] = ((1 : GoUInt8));
	s[1371] = ((1 : GoUInt8));
	s[1372] = ((1 : GoUInt8));
	s[1373] = ((1 : GoUInt8));
	s[1374] = ((1 : GoUInt8));
	s[1375] = ((1 : GoUInt8));
	s[1376] = ((1 : GoUInt8));
	s[1377] = ((1 : GoUInt8));
	s[1378] = ((1 : GoUInt8));
	s[1379] = ((1 : GoUInt8));
	s[1380] = ((1 : GoUInt8));
	s[1381] = ((1 : GoUInt8));
	s[1382] = ((1 : GoUInt8));
	s[1383] = ((1 : GoUInt8));
	s[1384] = ((1 : GoUInt8));
	s[1385] = ((1 : GoUInt8));
	s[1386] = ((1 : GoUInt8));
	s[1387] = ((12 : GoUInt8));
	s[1388] = ((12 : GoUInt8));
	s[1389] = ((12 : GoUInt8));
	s[1390] = ((12 : GoUInt8));
	s[1391] = ((12 : GoUInt8));
	s[1392] = ((12 : GoUInt8));
	s[1393] = ((12 : GoUInt8));
	s[1394] = ((12 : GoUInt8));
	s[1395] = ((12 : GoUInt8));
	s[1396] = ((1 : GoUInt8));
	s[1397] = ((1 : GoUInt8));
	s[1398] = ((10 : GoUInt8));
	s[1399] = ((10 : GoUInt8));
	s[1400] = ((10 : GoUInt8));
	s[1401] = ((10 : GoUInt8));
	s[1402] = ((1 : GoUInt8));
	s[1403] = ((1 : GoUInt8));
	s[1404] = ((1 : GoUInt8));
	s[1405] = ((12 : GoUInt8));
	s[1406] = ((1 : GoUInt8));
	s[1407] = ((1 : GoUInt8));
	s[1408] = ((1 : GoUInt8));
	s[1409] = ((1 : GoUInt8));
	s[1410] = ((1 : GoUInt8));
	s[1411] = ((1 : GoUInt8));
	s[1412] = ((1 : GoUInt8));
	s[1413] = ((1 : GoUInt8));
	s[1414] = ((1 : GoUInt8));
	s[1415] = ((1 : GoUInt8));
	s[1416] = ((1 : GoUInt8));
	s[1417] = ((1 : GoUInt8));
	s[1418] = ((1 : GoUInt8));
	s[1419] = ((1 : GoUInt8));
	s[1420] = ((1 : GoUInt8));
	s[1421] = ((1 : GoUInt8));
	s[1422] = ((1 : GoUInt8));
	s[1423] = ((1 : GoUInt8));
	s[1424] = ((1 : GoUInt8));
	s[1425] = ((1 : GoUInt8));
	s[1426] = ((1 : GoUInt8));
	s[1427] = ((1 : GoUInt8));
	s[1428] = ((1 : GoUInt8));
	s[1429] = ((1 : GoUInt8));
	s[1430] = ((12 : GoUInt8));
	s[1431] = ((12 : GoUInt8));
	s[1432] = ((12 : GoUInt8));
	s[1433] = ((12 : GoUInt8));
	s[1434] = ((1 : GoUInt8));
	s[1435] = ((12 : GoUInt8));
	s[1436] = ((12 : GoUInt8));
	s[1437] = ((12 : GoUInt8));
	s[1438] = ((12 : GoUInt8));
	s[1439] = ((12 : GoUInt8));
	s[1440] = ((12 : GoUInt8));
	s[1441] = ((12 : GoUInt8));
	s[1442] = ((12 : GoUInt8));
	s[1443] = ((12 : GoUInt8));
	s[1444] = ((1 : GoUInt8));
	s[1445] = ((12 : GoUInt8));
	s[1446] = ((12 : GoUInt8));
	s[1447] = ((12 : GoUInt8));
	s[1448] = ((1 : GoUInt8));
	s[1449] = ((12 : GoUInt8));
	s[1450] = ((12 : GoUInt8));
	s[1451] = ((12 : GoUInt8));
	s[1452] = ((12 : GoUInt8));
	s[1453] = ((12 : GoUInt8));
	s[1454] = ((1 : GoUInt8));
	s[1455] = ((1 : GoUInt8));
	s[1456] = ((1 : GoUInt8));
	s[1457] = ((1 : GoUInt8));
	s[1458] = ((1 : GoUInt8));
	s[1459] = ((1 : GoUInt8));
	s[1460] = ((1 : GoUInt8));
	s[1461] = ((1 : GoUInt8));
	s[1462] = ((1 : GoUInt8));
	s[1463] = ((1 : GoUInt8));
	s[1464] = ((1 : GoUInt8));
	s[1465] = ((1 : GoUInt8));
	s[1466] = ((1 : GoUInt8));
	s[1467] = ((1 : GoUInt8));
	s[1468] = ((1 : GoUInt8));
	s[1469] = ((1 : GoUInt8));
	s[1470] = ((1 : GoUInt8));
	s[1471] = ((1 : GoUInt8));
	s[1472] = ((1 : GoUInt8));
	s[1473] = ((1 : GoUInt8));
	s[1474] = ((1 : GoUInt8));
	s[1475] = ((1 : GoUInt8));
	s[1476] = ((1 : GoUInt8));
	s[1477] = ((1 : GoUInt8));
	s[1478] = ((1 : GoUInt8));
	s[1479] = ((1 : GoUInt8));
	s[1480] = ((1 : GoUInt8));
	s[1481] = ((1 : GoUInt8));
	s[1482] = ((1 : GoUInt8));
	s[1483] = ((1 : GoUInt8));
	s[1484] = ((1 : GoUInt8));
	s[1485] = ((1 : GoUInt8));
	s[1486] = ((1 : GoUInt8));
	s[1487] = ((1 : GoUInt8));
	s[1488] = ((1 : GoUInt8));
	s[1489] = ((1 : GoUInt8));
	s[1490] = ((1 : GoUInt8));
	s[1491] = ((1 : GoUInt8));
	s[1492] = ((1 : GoUInt8));
	s[1493] = ((1 : GoUInt8));
	s[1494] = ((1 : GoUInt8));
	s[1495] = ((1 : GoUInt8));
	s[1496] = ((1 : GoUInt8));
	s[1497] = ((12 : GoUInt8));
	s[1498] = ((12 : GoUInt8));
	s[1499] = ((12 : GoUInt8));
	s[1500] = ((1 : GoUInt8));
	s[1501] = ((1 : GoUInt8));
	s[1502] = ((1 : GoUInt8));
	s[1503] = ((1 : GoUInt8));
	s[1504] = ((13 : GoUInt8));
	s[1505] = ((13 : GoUInt8));
	s[1506] = ((13 : GoUInt8));
	s[1507] = ((13 : GoUInt8));
	s[1508] = ((13 : GoUInt8));
	s[1509] = ((13 : GoUInt8));
	s[1510] = ((13 : GoUInt8));
	s[1511] = ((13 : GoUInt8));
	s[1512] = ((13 : GoUInt8));
	s[1513] = ((13 : GoUInt8));
	s[1514] = ((13 : GoUInt8));
	s[1515] = ((13 : GoUInt8));
	s[1516] = ((13 : GoUInt8));
	s[1517] = ((13 : GoUInt8));
	s[1518] = ((13 : GoUInt8));
	s[1519] = ((13 : GoUInt8));
	s[1520] = ((1 : GoUInt8));
	s[1521] = ((1 : GoUInt8));
	s[1522] = ((1 : GoUInt8));
	s[1523] = ((1 : GoUInt8));
	s[1524] = ((1 : GoUInt8));
	s[1525] = ((1 : GoUInt8));
	s[1526] = ((1 : GoUInt8));
	s[1527] = ((1 : GoUInt8));
	s[1528] = ((1 : GoUInt8));
	s[1529] = ((1 : GoUInt8));
	s[1530] = ((1 : GoUInt8));
	s[1531] = ((1 : GoUInt8));
	s[1532] = ((1 : GoUInt8));
	s[1533] = ((1 : GoUInt8));
	s[1534] = ((1 : GoUInt8));
	s[1535] = ((1 : GoUInt8));
	s[1536] = ((1 : GoUInt8));
	s[1537] = ((1 : GoUInt8));
	s[1538] = ((1 : GoUInt8));
	s[1539] = ((1 : GoUInt8));
	s[1540] = ((1 : GoUInt8));
	s[1541] = ((1 : GoUInt8));
	s[1542] = ((1 : GoUInt8));
	s[1543] = ((1 : GoUInt8));
	s[1544] = ((1 : GoUInt8));
	s[1545] = ((1 : GoUInt8));
	s[1546] = ((1 : GoUInt8));
	s[1547] = ((1 : GoUInt8));
	s[1548] = ((1 : GoUInt8));
	s[1549] = ((1 : GoUInt8));
	s[1550] = ((1 : GoUInt8));
	s[1551] = ((1 : GoUInt8));
	s[1552] = ((1 : GoUInt8));
	s[1553] = ((1 : GoUInt8));
	s[1554] = ((1 : GoUInt8));
	s[1555] = ((1 : GoUInt8));
	s[1556] = ((1 : GoUInt8));
	s[1557] = ((1 : GoUInt8));
	s[1558] = ((1 : GoUInt8));
	s[1559] = ((1 : GoUInt8));
	s[1560] = ((1 : GoUInt8));
	s[1561] = ((1 : GoUInt8));
	s[1562] = ((1 : GoUInt8));
	s[1563] = ((1 : GoUInt8));
	s[1564] = ((1 : GoUInt8));
	s[1565] = ((1 : GoUInt8));
	s[1566] = ((1 : GoUInt8));
	s[1567] = ((1 : GoUInt8));
	s[1568] = ((13 : GoUInt8));
	s[1569] = ((13 : GoUInt8));
	s[1570] = ((13 : GoUInt8));
	s[1571] = ((13 : GoUInt8));
	s[1572] = ((13 : GoUInt8));
	s[1573] = ((13 : GoUInt8));
	s[1574] = ((13 : GoUInt8));
	s[1575] = ((13 : GoUInt8));
	s[1576] = ((13 : GoUInt8));
	s[1577] = ((13 : GoUInt8));
	s[1578] = ((13 : GoUInt8));
	s[1579] = ((13 : GoUInt8));
	s[1580] = ((13 : GoUInt8));
	s[1581] = ((13 : GoUInt8));
	s[1582] = ((13 : GoUInt8));
	s[1583] = ((13 : GoUInt8));
	s[1584] = ((13 : GoUInt8));
	s[1585] = ((13 : GoUInt8));
	s[1586] = ((13 : GoUInt8));
	s[1587] = ((13 : GoUInt8));
	s[1588] = ((13 : GoUInt8));
	s[1589] = ((13 : GoUInt8));
	s[1590] = ((13 : GoUInt8));
	s[1591] = ((13 : GoUInt8));
	s[1592] = ((13 : GoUInt8));
	s[1593] = ((13 : GoUInt8));
	s[1594] = ((13 : GoUInt8));
	s[1595] = ((13 : GoUInt8));
	s[1596] = ((13 : GoUInt8));
	s[1597] = ((13 : GoUInt8));
	s[1598] = ((13 : GoUInt8));
	s[1599] = ((13 : GoUInt8));
	s[1600] = ((13 : GoUInt8));
	s[1601] = ((13 : GoUInt8));
	s[1602] = ((13 : GoUInt8));
	s[1603] = ((13 : GoUInt8));
	s[1604] = ((13 : GoUInt8));
	s[1605] = ((13 : GoUInt8));
	s[1606] = ((13 : GoUInt8));
	s[1607] = ((13 : GoUInt8));
	s[1608] = ((13 : GoUInt8));
	s[1609] = ((13 : GoUInt8));
	s[1610] = ((13 : GoUInt8));
	s[1611] = ((13 : GoUInt8));
	s[1612] = ((13 : GoUInt8));
	s[1613] = ((13 : GoUInt8));
	s[1614] = ((13 : GoUInt8));
	s[1615] = ((13 : GoUInt8));
	s[1616] = ((13 : GoUInt8));
	s[1617] = ((13 : GoUInt8));
	s[1618] = ((13 : GoUInt8));
	s[1619] = ((12 : GoUInt8));
	s[1620] = ((12 : GoUInt8));
	s[1621] = ((12 : GoUInt8));
	s[1622] = ((12 : GoUInt8));
	s[1623] = ((12 : GoUInt8));
	s[1624] = ((12 : GoUInt8));
	s[1625] = ((12 : GoUInt8));
	s[1626] = ((12 : GoUInt8));
	s[1627] = ((12 : GoUInt8));
	s[1628] = ((12 : GoUInt8));
	s[1629] = ((12 : GoUInt8));
	s[1630] = ((12 : GoUInt8));
	s[1631] = ((12 : GoUInt8));
	s[1632] = ((12 : GoUInt8));
	s[1633] = ((12 : GoUInt8));
	s[1634] = ((5 : GoUInt8));
	s[1635] = ((12 : GoUInt8));
	s[1636] = ((12 : GoUInt8));
	s[1637] = ((12 : GoUInt8));
	s[1638] = ((12 : GoUInt8));
	s[1639] = ((12 : GoUInt8));
	s[1640] = ((12 : GoUInt8));
	s[1641] = ((12 : GoUInt8));
	s[1642] = ((12 : GoUInt8));
	s[1643] = ((12 : GoUInt8));
	s[1644] = ((12 : GoUInt8));
	s[1645] = ((12 : GoUInt8));
	s[1646] = ((12 : GoUInt8));
	s[1647] = ((12 : GoUInt8));
	s[1648] = ((12 : GoUInt8));
	s[1649] = ((12 : GoUInt8));
	s[1650] = ((12 : GoUInt8));
	s[1651] = ((12 : GoUInt8));
	s[1652] = ((12 : GoUInt8));
	s[1653] = ((12 : GoUInt8));
	s[1654] = ((12 : GoUInt8));
	s[1655] = ((12 : GoUInt8));
	s[1656] = ((12 : GoUInt8));
	s[1657] = ((12 : GoUInt8));
	s[1658] = ((12 : GoUInt8));
	s[1659] = ((12 : GoUInt8));
	s[1660] = ((12 : GoUInt8));
	s[1661] = ((12 : GoUInt8));
	s[1662] = ((12 : GoUInt8));
	s[1663] = ((12 : GoUInt8));
	s[1664] = ((12 : GoUInt8));
	s[1665] = ((12 : GoUInt8));
	s[1666] = ((12 : GoUInt8));
	s[1722] = ((12 : GoUInt8));
	s[1724] = ((12 : GoUInt8));
	s[1729] = ((12 : GoUInt8));
	s[1730] = ((12 : GoUInt8));
	s[1731] = ((12 : GoUInt8));
	s[1732] = ((12 : GoUInt8));
	s[1733] = ((12 : GoUInt8));
	s[1734] = ((12 : GoUInt8));
	s[1735] = ((12 : GoUInt8));
	s[1736] = ((12 : GoUInt8));
	s[1741] = ((12 : GoUInt8));
	s[1745] = ((12 : GoUInt8));
	s[1746] = ((12 : GoUInt8));
	s[1747] = ((12 : GoUInt8));
	s[1748] = ((12 : GoUInt8));
	s[1749] = ((12 : GoUInt8));
	s[1750] = ((12 : GoUInt8));
	s[1751] = ((12 : GoUInt8));
	s[1762] = ((12 : GoUInt8));
	s[1763] = ((12 : GoUInt8));
	s[1793] = ((12 : GoUInt8));
	s[1852] = ((12 : GoUInt8));
	s[1857] = ((12 : GoUInt8));
	s[1858] = ((12 : GoUInt8));
	s[1859] = ((12 : GoUInt8));
	s[1860] = ((12 : GoUInt8));
	s[1869] = ((12 : GoUInt8));
	s[1890] = ((12 : GoUInt8));
	s[1891] = ((12 : GoUInt8));
	s[1906] = ((4 : GoUInt8));
	s[1907] = ((4 : GoUInt8));
	s[1915] = ((4 : GoUInt8));
	s[1918] = ((12 : GoUInt8));
	s[1921] = ((12 : GoUInt8));
	s[1922] = ((12 : GoUInt8));
	s[1980] = ((12 : GoUInt8));
	s[1985] = ((12 : GoUInt8));
	s[1986] = ((12 : GoUInt8));
	s[1991] = ((12 : GoUInt8));
	s[1992] = ((12 : GoUInt8));
	s[1995] = ((12 : GoUInt8));
	s[1996] = ((12 : GoUInt8));
	s[1997] = ((12 : GoUInt8));
	s[2001] = ((12 : GoUInt8));
	s[2032] = ((12 : GoUInt8));
	s[2033] = ((12 : GoUInt8));
	s[2037] = ((12 : GoUInt8));
	s[2049] = ((12 : GoUInt8));
	s[2050] = ((12 : GoUInt8));
	s[2051] = ((12 : GoUInt8));
	s[2052] = ((12 : GoUInt8));
	s[2053] = ((12 : GoUInt8));
	s[2055] = ((12 : GoUInt8));
	s[2056] = ((12 : GoUInt8));
	s[2061] = ((12 : GoUInt8));
	s[2082] = ((12 : GoUInt8));
	s[2083] = ((12 : GoUInt8));
	s[2097] = ((4 : GoUInt8));
	s[2106] = ((12 : GoUInt8));
	s[2107] = ((12 : GoUInt8));
	s[2108] = ((12 : GoUInt8));
	s[2109] = ((12 : GoUInt8));
	s[2110] = ((12 : GoUInt8));
	s[2111] = ((12 : GoUInt8));
	s[2113] = ((12 : GoUInt8));
	s[2172] = ((12 : GoUInt8));
	s[2175] = ((12 : GoUInt8));
	s[2177] = ((12 : GoUInt8));
	s[2178] = ((12 : GoUInt8));
	s[2179] = ((12 : GoUInt8));
	s[2180] = ((12 : GoUInt8));
	s[2189] = ((12 : GoUInt8));
	s[2197] = ((12 : GoUInt8));
	s[2198] = ((12 : GoUInt8));
	s[2210] = ((12 : GoUInt8));
	s[2211] = ((12 : GoUInt8));
	s[2242] = ((12 : GoUInt8));
	s[2304] = ((12 : GoUInt8));
	s[2317] = ((12 : GoUInt8));
	s[2355] = ((10 : GoUInt8));
	s[2356] = ((10 : GoUInt8));
	s[2357] = ((10 : GoUInt8));
	s[2358] = ((10 : GoUInt8));
	s[2359] = ((10 : GoUInt8));
	s[2360] = ((10 : GoUInt8));
	s[2361] = ((4 : GoUInt8));
	s[2362] = ((10 : GoUInt8));
	s[2368] = ((12 : GoUInt8));
	s[2372] = ((12 : GoUInt8));
	s[2430] = ((12 : GoUInt8));
	s[2431] = ((12 : GoUInt8));
	s[2432] = ((12 : GoUInt8));
	s[2438] = ((12 : GoUInt8));
	s[2439] = ((12 : GoUInt8));
	s[2440] = ((12 : GoUInt8));
	s[2442] = ((12 : GoUInt8));
	s[2443] = ((12 : GoUInt8));
	s[2444] = ((12 : GoUInt8));
	s[2445] = ((12 : GoUInt8));
	s[2453] = ((12 : GoUInt8));
	s[2454] = ((12 : GoUInt8));
	s[2466] = ((12 : GoUInt8));
	s[2467] = ((12 : GoUInt8));
	s[2488] = ((10 : GoUInt8));
	s[2489] = ((10 : GoUInt8));
	s[2490] = ((10 : GoUInt8));
	s[2491] = ((10 : GoUInt8));
	s[2492] = ((10 : GoUInt8));
	s[2493] = ((10 : GoUInt8));
	s[2494] = ((10 : GoUInt8));
	s[2508] = ((12 : GoUInt8));
	s[2509] = ((12 : GoUInt8));
	s[2530] = ((12 : GoUInt8));
	s[2531] = ((12 : GoUInt8));
	s[2560] = ((12 : GoUInt8));
	s[2561] = ((12 : GoUInt8));
	s[2619] = ((12 : GoUInt8));
	s[2620] = ((12 : GoUInt8));
	s[2625] = ((12 : GoUInt8));
	s[2626] = ((12 : GoUInt8));
	s[2627] = ((12 : GoUInt8));
	s[2628] = ((12 : GoUInt8));
	s[2637] = ((12 : GoUInt8));
	s[2658] = ((12 : GoUInt8));
	s[2659] = ((12 : GoUInt8));
	s[2689] = ((12 : GoUInt8));
	s[2762] = ((12 : GoUInt8));
	s[2770] = ((12 : GoUInt8));
	s[2771] = ((12 : GoUInt8));
	s[2772] = ((12 : GoUInt8));
	s[2774] = ((12 : GoUInt8));
	s[2865] = ((12 : GoUInt8));
	s[2868] = ((12 : GoUInt8));
	s[2869] = ((12 : GoUInt8));
	s[2870] = ((12 : GoUInt8));
	s[2871] = ((12 : GoUInt8));
	s[2872] = ((12 : GoUInt8));
	s[2873] = ((12 : GoUInt8));
	s[2874] = ((12 : GoUInt8));
	s[2879] = ((4 : GoUInt8));
	s[2887] = ((12 : GoUInt8));
	s[2888] = ((12 : GoUInt8));
	s[2889] = ((12 : GoUInt8));
	s[2890] = ((12 : GoUInt8));
	s[2891] = ((12 : GoUInt8));
	s[2892] = ((12 : GoUInt8));
	s[2893] = ((12 : GoUInt8));
	s[2894] = ((12 : GoUInt8));
	s[2993] = ((12 : GoUInt8));
	s[2996] = ((12 : GoUInt8));
	s[2997] = ((12 : GoUInt8));
	s[2998] = ((12 : GoUInt8));
	s[2999] = ((12 : GoUInt8));
	s[3000] = ((12 : GoUInt8));
	s[3001] = ((12 : GoUInt8));
	s[3002] = ((12 : GoUInt8));
	s[3003] = ((12 : GoUInt8));
	s[3004] = ((12 : GoUInt8));
	s[3016] = ((12 : GoUInt8));
	s[3017] = ((12 : GoUInt8));
	s[3018] = ((12 : GoUInt8));
	s[3019] = ((12 : GoUInt8));
	s[3020] = ((12 : GoUInt8));
	s[3021] = ((12 : GoUInt8));
	s[3096] = ((12 : GoUInt8));
	s[3097] = ((12 : GoUInt8));
	s[3125] = ((12 : GoUInt8));
	s[3127] = ((12 : GoUInt8));
	s[3129] = ((12 : GoUInt8));
	s[3130] = ((58 : GoUInt8));
	s[3131] = ((42 : GoUInt8));
	s[3132] = ((58 : GoUInt8));
	s[3133] = ((42 : GoUInt8));
	s[3185] = ((12 : GoUInt8));
	s[3186] = ((12 : GoUInt8));
	s[3187] = ((12 : GoUInt8));
	s[3188] = ((12 : GoUInt8));
	s[3189] = ((12 : GoUInt8));
	s[3190] = ((12 : GoUInt8));
	s[3191] = ((12 : GoUInt8));
	s[3192] = ((12 : GoUInt8));
	s[3193] = ((12 : GoUInt8));
	s[3194] = ((12 : GoUInt8));
	s[3195] = ((12 : GoUInt8));
	s[3196] = ((12 : GoUInt8));
	s[3197] = ((12 : GoUInt8));
	s[3198] = ((12 : GoUInt8));
	s[3200] = ((12 : GoUInt8));
	s[3201] = ((12 : GoUInt8));
	s[3202] = ((12 : GoUInt8));
	s[3203] = ((12 : GoUInt8));
	s[3204] = ((12 : GoUInt8));
	s[3206] = ((12 : GoUInt8));
	s[3207] = ((12 : GoUInt8));
	s[3213] = ((12 : GoUInt8));
	s[3214] = ((12 : GoUInt8));
	s[3215] = ((12 : GoUInt8));
	s[3216] = ((12 : GoUInt8));
	s[3217] = ((12 : GoUInt8));
	s[3218] = ((12 : GoUInt8));
	s[3219] = ((12 : GoUInt8));
	s[3220] = ((12 : GoUInt8));
	s[3221] = ((12 : GoUInt8));
	s[3222] = ((12 : GoUInt8));
	s[3223] = ((12 : GoUInt8));
	s[3225] = ((12 : GoUInt8));
	s[3226] = ((12 : GoUInt8));
	s[3227] = ((12 : GoUInt8));
	s[3228] = ((12 : GoUInt8));
	s[3229] = ((12 : GoUInt8));
	s[3230] = ((12 : GoUInt8));
	s[3231] = ((12 : GoUInt8));
	s[3232] = ((12 : GoUInt8));
	s[3233] = ((12 : GoUInt8));
	s[3234] = ((12 : GoUInt8));
	s[3235] = ((12 : GoUInt8));
	s[3236] = ((12 : GoUInt8));
	s[3237] = ((12 : GoUInt8));
	s[3238] = ((12 : GoUInt8));
	s[3239] = ((12 : GoUInt8));
	s[3240] = ((12 : GoUInt8));
	s[3241] = ((12 : GoUInt8));
	s[3242] = ((12 : GoUInt8));
	s[3243] = ((12 : GoUInt8));
	s[3244] = ((12 : GoUInt8));
	s[3245] = ((12 : GoUInt8));
	s[3246] = ((12 : GoUInt8));
	s[3247] = ((12 : GoUInt8));
	s[3248] = ((12 : GoUInt8));
	s[3249] = ((12 : GoUInt8));
	s[3250] = ((12 : GoUInt8));
	s[3251] = ((12 : GoUInt8));
	s[3252] = ((12 : GoUInt8));
	s[3253] = ((12 : GoUInt8));
	s[3254] = ((12 : GoUInt8));
	s[3255] = ((12 : GoUInt8));
	s[3256] = ((12 : GoUInt8));
	s[3257] = ((12 : GoUInt8));
	s[3258] = ((12 : GoUInt8));
	s[3259] = ((12 : GoUInt8));
	s[3260] = ((12 : GoUInt8));
	s[3270] = ((12 : GoUInt8));
	s[3373] = ((12 : GoUInt8));
	s[3374] = ((12 : GoUInt8));
	s[3375] = ((12 : GoUInt8));
	s[3376] = ((12 : GoUInt8));
	s[3378] = ((12 : GoUInt8));
	s[3379] = ((12 : GoUInt8));
	s[3380] = ((12 : GoUInt8));
	s[3381] = ((12 : GoUInt8));
	s[3382] = ((12 : GoUInt8));
	s[3383] = ((12 : GoUInt8));
	s[3385] = ((12 : GoUInt8));
	s[3386] = ((12 : GoUInt8));
	s[3389] = ((12 : GoUInt8));
	s[3390] = ((12 : GoUInt8));
	s[3416] = ((12 : GoUInt8));
	s[3417] = ((12 : GoUInt8));
	s[3422] = ((12 : GoUInt8));
	s[3423] = ((12 : GoUInt8));
	s[3424] = ((12 : GoUInt8));
	s[3441] = ((12 : GoUInt8));
	s[3442] = ((12 : GoUInt8));
	s[3443] = ((12 : GoUInt8));
	s[3444] = ((12 : GoUInt8));
	s[3458] = ((12 : GoUInt8));
	s[3461] = ((12 : GoUInt8));
	s[3462] = ((12 : GoUInt8));
	s[3469] = ((12 : GoUInt8));
	s[3485] = ((12 : GoUInt8));
	s[3549] = ((12 : GoUInt8));
	s[3550] = ((12 : GoUInt8));
	s[3551] = ((12 : GoUInt8));
	s[3600] = ((10 : GoUInt8));
	s[3601] = ((10 : GoUInt8));
	s[3602] = ((10 : GoUInt8));
	s[3603] = ((10 : GoUInt8));
	s[3604] = ((10 : GoUInt8));
	s[3605] = ((10 : GoUInt8));
	s[3606] = ((10 : GoUInt8));
	s[3607] = ((10 : GoUInt8));
	s[3608] = ((10 : GoUInt8));
	s[3609] = ((10 : GoUInt8));
	s[3648] = ((10 : GoUInt8));
	s[3712] = ((9 : GoUInt8));
	s[3739] = ((122 : GoUInt8));
	s[3740] = ((106 : GoUInt8));
	s[3794] = ((12 : GoUInt8));
	s[3795] = ((12 : GoUInt8));
	s[3796] = ((12 : GoUInt8));
	s[3826] = ((12 : GoUInt8));
	s[3827] = ((12 : GoUInt8));
	s[3828] = ((12 : GoUInt8));
	s[3858] = ((12 : GoUInt8));
	s[3859] = ((12 : GoUInt8));
	s[3890] = ((12 : GoUInt8));
	s[3891] = ((12 : GoUInt8));
	s[3956] = ((12 : GoUInt8));
	s[3957] = ((12 : GoUInt8));
	s[3959] = ((12 : GoUInt8));
	s[3960] = ((12 : GoUInt8));
	s[3961] = ((12 : GoUInt8));
	s[3962] = ((12 : GoUInt8));
	s[3963] = ((12 : GoUInt8));
	s[3964] = ((12 : GoUInt8));
	s[3965] = ((12 : GoUInt8));
	s[3974] = ((12 : GoUInt8));
	s[3977] = ((12 : GoUInt8));
	s[3978] = ((12 : GoUInt8));
	s[3979] = ((12 : GoUInt8));
	s[3980] = ((12 : GoUInt8));
	s[3981] = ((12 : GoUInt8));
	s[3982] = ((12 : GoUInt8));
	s[3983] = ((12 : GoUInt8));
	s[3984] = ((12 : GoUInt8));
	s[3985] = ((12 : GoUInt8));
	s[3986] = ((12 : GoUInt8));
	s[3987] = ((12 : GoUInt8));
	s[3995] = ((4 : GoUInt8));
	s[3997] = ((12 : GoUInt8));
	s[4016] = ((10 : GoUInt8));
	s[4017] = ((10 : GoUInt8));
	s[4018] = ((10 : GoUInt8));
	s[4019] = ((10 : GoUInt8));
	s[4020] = ((10 : GoUInt8));
	s[4021] = ((10 : GoUInt8));
	s[4022] = ((10 : GoUInt8));
	s[4023] = ((10 : GoUInt8));
	s[4024] = ((10 : GoUInt8));
	s[4025] = ((10 : GoUInt8));
	s[4032] = ((10 : GoUInt8));
	s[4033] = ((10 : GoUInt8));
	s[4034] = ((10 : GoUInt8));
	s[4035] = ((10 : GoUInt8));
	s[4036] = ((10 : GoUInt8));
	s[4037] = ((10 : GoUInt8));
	s[4038] = ((10 : GoUInt8));
	s[4039] = ((10 : GoUInt8));
	s[4040] = ((10 : GoUInt8));
	s[4041] = ((10 : GoUInt8));
	s[4042] = ((10 : GoUInt8));
	s[4043] = ((12 : GoUInt8));
	s[4044] = ((12 : GoUInt8));
	s[4045] = ((12 : GoUInt8));
	s[4046] = ((11 : GoUInt8));
	s[4101] = ((12 : GoUInt8));
	s[4102] = ((12 : GoUInt8));
	s[4137] = ((12 : GoUInt8));
	s[4192] = ((12 : GoUInt8));
	s[4193] = ((12 : GoUInt8));
	s[4194] = ((12 : GoUInt8));
	s[4199] = ((12 : GoUInt8));
	s[4200] = ((12 : GoUInt8));
	s[4210] = ((12 : GoUInt8));
	s[4217] = ((12 : GoUInt8));
	s[4218] = ((12 : GoUInt8));
	s[4219] = ((12 : GoUInt8));
	s[4224] = ((10 : GoUInt8));
	s[4228] = ((10 : GoUInt8));
	s[4229] = ((10 : GoUInt8));
	s[4318] = ((10 : GoUInt8));
	s[4319] = ((10 : GoUInt8));
	s[4320] = ((10 : GoUInt8));
	s[4321] = ((10 : GoUInt8));
	s[4322] = ((10 : GoUInt8));
	s[4323] = ((10 : GoUInt8));
	s[4324] = ((10 : GoUInt8));
	s[4325] = ((10 : GoUInt8));
	s[4326] = ((10 : GoUInt8));
	s[4327] = ((10 : GoUInt8));
	s[4328] = ((10 : GoUInt8));
	s[4329] = ((10 : GoUInt8));
	s[4330] = ((10 : GoUInt8));
	s[4331] = ((10 : GoUInt8));
	s[4332] = ((10 : GoUInt8));
	s[4333] = ((10 : GoUInt8));
	s[4334] = ((10 : GoUInt8));
	s[4335] = ((10 : GoUInt8));
	s[4336] = ((10 : GoUInt8));
	s[4337] = ((10 : GoUInt8));
	s[4338] = ((10 : GoUInt8));
	s[4339] = ((10 : GoUInt8));
	s[4340] = ((10 : GoUInt8));
	s[4341] = ((10 : GoUInt8));
	s[4342] = ((10 : GoUInt8));
	s[4343] = ((10 : GoUInt8));
	s[4344] = ((10 : GoUInt8));
	s[4345] = ((10 : GoUInt8));
	s[4346] = ((10 : GoUInt8));
	s[4347] = ((10 : GoUInt8));
	s[4348] = ((10 : GoUInt8));
	s[4349] = ((10 : GoUInt8));
	s[4350] = ((10 : GoUInt8));
	s[4351] = ((10 : GoUInt8));
	s[4375] = ((12 : GoUInt8));
	s[4376] = ((12 : GoUInt8));
	s[4379] = ((12 : GoUInt8));
	s[4438] = ((12 : GoUInt8));
	s[4440] = ((12 : GoUInt8));
	s[4441] = ((12 : GoUInt8));
	s[4442] = ((12 : GoUInt8));
	s[4443] = ((12 : GoUInt8));
	s[4444] = ((12 : GoUInt8));
	s[4445] = ((12 : GoUInt8));
	s[4446] = ((12 : GoUInt8));
	s[4448] = ((12 : GoUInt8));
	s[4450] = ((12 : GoUInt8));
	s[4453] = ((12 : GoUInt8));
	s[4454] = ((12 : GoUInt8));
	s[4455] = ((12 : GoUInt8));
	s[4456] = ((12 : GoUInt8));
	s[4457] = ((12 : GoUInt8));
	s[4458] = ((12 : GoUInt8));
	s[4459] = ((12 : GoUInt8));
	s[4460] = ((12 : GoUInt8));
	s[4467] = ((12 : GoUInt8));
	s[4468] = ((12 : GoUInt8));
	s[4469] = ((12 : GoUInt8));
	s[4470] = ((12 : GoUInt8));
	s[4471] = ((12 : GoUInt8));
	s[4472] = ((12 : GoUInt8));
	s[4473] = ((12 : GoUInt8));
	s[4474] = ((12 : GoUInt8));
	s[4475] = ((12 : GoUInt8));
	s[4476] = ((12 : GoUInt8));
	s[4479] = ((12 : GoUInt8));
	s[4528] = ((12 : GoUInt8));
	s[4529] = ((12 : GoUInt8));
	s[4530] = ((12 : GoUInt8));
	s[4531] = ((12 : GoUInt8));
	s[4532] = ((12 : GoUInt8));
	s[4533] = ((12 : GoUInt8));
	s[4534] = ((12 : GoUInt8));
	s[4535] = ((12 : GoUInt8));
	s[4536] = ((12 : GoUInt8));
	s[4537] = ((12 : GoUInt8));
	s[4538] = ((12 : GoUInt8));
	s[4539] = ((12 : GoUInt8));
	s[4540] = ((12 : GoUInt8));
	s[4541] = ((12 : GoUInt8));
	s[4542] = ((12 : GoUInt8));
	s[4543] = ((12 : GoUInt8));
	s[4544] = ((12 : GoUInt8));
	s[4608] = ((12 : GoUInt8));
	s[4609] = ((12 : GoUInt8));
	s[4610] = ((12 : GoUInt8));
	s[4611] = ((12 : GoUInt8));
	s[4660] = ((12 : GoUInt8));
	s[4662] = ((12 : GoUInt8));
	s[4663] = ((12 : GoUInt8));
	s[4664] = ((12 : GoUInt8));
	s[4665] = ((12 : GoUInt8));
	s[4666] = ((12 : GoUInt8));
	s[4668] = ((12 : GoUInt8));
	s[4674] = ((12 : GoUInt8));
	s[4715] = ((12 : GoUInt8));
	s[4716] = ((12 : GoUInt8));
	s[4717] = ((12 : GoUInt8));
	s[4718] = ((12 : GoUInt8));
	s[4719] = ((12 : GoUInt8));
	s[4720] = ((12 : GoUInt8));
	s[4721] = ((12 : GoUInt8));
	s[4722] = ((12 : GoUInt8));
	s[4723] = ((12 : GoUInt8));
	s[4736] = ((12 : GoUInt8));
	s[4737] = ((12 : GoUInt8));
	s[4770] = ((12 : GoUInt8));
	s[4771] = ((12 : GoUInt8));
	s[4772] = ((12 : GoUInt8));
	s[4773] = ((12 : GoUInt8));
	s[4776] = ((12 : GoUInt8));
	s[4777] = ((12 : GoUInt8));
	s[4779] = ((12 : GoUInt8));
	s[4780] = ((12 : GoUInt8));
	s[4781] = ((12 : GoUInt8));
	s[4838] = ((12 : GoUInt8));
	s[4840] = ((12 : GoUInt8));
	s[4841] = ((12 : GoUInt8));
	s[4845] = ((12 : GoUInt8));
	s[4847] = ((12 : GoUInt8));
	s[4848] = ((12 : GoUInt8));
	s[4849] = ((12 : GoUInt8));
	s[4908] = ((12 : GoUInt8));
	s[4909] = ((12 : GoUInt8));
	s[4910] = ((12 : GoUInt8));
	s[4911] = ((12 : GoUInt8));
	s[4912] = ((12 : GoUInt8));
	s[4913] = ((12 : GoUInt8));
	s[4914] = ((12 : GoUInt8));
	s[4915] = ((12 : GoUInt8));
	s[4918] = ((12 : GoUInt8));
	s[4919] = ((12 : GoUInt8));
	s[4944] = ((12 : GoUInt8));
	s[4945] = ((12 : GoUInt8));
	s[4946] = ((12 : GoUInt8));
	s[4948] = ((12 : GoUInt8));
	s[4949] = ((12 : GoUInt8));
	s[4950] = ((12 : GoUInt8));
	s[4951] = ((12 : GoUInt8));
	s[4952] = ((12 : GoUInt8));
	s[4953] = ((12 : GoUInt8));
	s[4954] = ((12 : GoUInt8));
	s[4955] = ((12 : GoUInt8));
	s[4956] = ((12 : GoUInt8));
	s[4957] = ((12 : GoUInt8));
	s[4958] = ((12 : GoUInt8));
	s[4959] = ((12 : GoUInt8));
	s[4960] = ((12 : GoUInt8));
	s[4962] = ((12 : GoUInt8));
	s[4963] = ((12 : GoUInt8));
	s[4964] = ((12 : GoUInt8));
	s[4965] = ((12 : GoUInt8));
	s[4966] = ((12 : GoUInt8));
	s[4967] = ((12 : GoUInt8));
	s[4968] = ((12 : GoUInt8));
	s[4973] = ((12 : GoUInt8));
	s[4980] = ((12 : GoUInt8));
	s[4984] = ((12 : GoUInt8));
	s[4985] = ((12 : GoUInt8));
	s[4992] = ((12 : GoUInt8));
	s[4993] = ((12 : GoUInt8));
	s[4994] = ((12 : GoUInt8));
	s[4995] = ((12 : GoUInt8));
	s[4996] = ((12 : GoUInt8));
	s[4997] = ((12 : GoUInt8));
	s[4998] = ((12 : GoUInt8));
	s[4999] = ((12 : GoUInt8));
	s[5000] = ((12 : GoUInt8));
	s[5001] = ((12 : GoUInt8));
	s[5002] = ((12 : GoUInt8));
	s[5003] = ((12 : GoUInt8));
	s[5004] = ((12 : GoUInt8));
	s[5005] = ((12 : GoUInt8));
	s[5006] = ((12 : GoUInt8));
	s[5007] = ((12 : GoUInt8));
	s[5008] = ((12 : GoUInt8));
	s[5009] = ((12 : GoUInt8));
	s[5010] = ((12 : GoUInt8));
	s[5011] = ((12 : GoUInt8));
	s[5012] = ((12 : GoUInt8));
	s[5013] = ((12 : GoUInt8));
	s[5014] = ((12 : GoUInt8));
	s[5015] = ((12 : GoUInt8));
	s[5016] = ((12 : GoUInt8));
	s[5017] = ((12 : GoUInt8));
	s[5018] = ((12 : GoUInt8));
	s[5019] = ((12 : GoUInt8));
	s[5020] = ((12 : GoUInt8));
	s[5021] = ((12 : GoUInt8));
	s[5022] = ((12 : GoUInt8));
	s[5023] = ((12 : GoUInt8));
	s[5024] = ((12 : GoUInt8));
	s[5025] = ((12 : GoUInt8));
	s[5026] = ((12 : GoUInt8));
	s[5027] = ((12 : GoUInt8));
	s[5028] = ((12 : GoUInt8));
	s[5029] = ((12 : GoUInt8));
	s[5030] = ((12 : GoUInt8));
	s[5031] = ((12 : GoUInt8));
	s[5032] = ((12 : GoUInt8));
	s[5033] = ((12 : GoUInt8));
	s[5034] = ((12 : GoUInt8));
	s[5035] = ((12 : GoUInt8));
	s[5036] = ((12 : GoUInt8));
	s[5037] = ((12 : GoUInt8));
	s[5038] = ((12 : GoUInt8));
	s[5039] = ((12 : GoUInt8));
	s[5040] = ((12 : GoUInt8));
	s[5041] = ((12 : GoUInt8));
	s[5042] = ((12 : GoUInt8));
	s[5043] = ((12 : GoUInt8));
	s[5044] = ((12 : GoUInt8));
	s[5045] = ((12 : GoUInt8));
	s[5046] = ((12 : GoUInt8));
	s[5047] = ((12 : GoUInt8));
	s[5048] = ((12 : GoUInt8));
	s[5049] = ((12 : GoUInt8));
	s[5051] = ((12 : GoUInt8));
	s[5052] = ((12 : GoUInt8));
	s[5053] = ((12 : GoUInt8));
	s[5054] = ((12 : GoUInt8));
	s[5055] = ((12 : GoUInt8));
	s[5117] = ((10 : GoUInt8));
	s[5119] = ((10 : GoUInt8));
	s[5120] = ((10 : GoUInt8));
	s[5121] = ((10 : GoUInt8));
	s[5133] = ((10 : GoUInt8));
	s[5134] = ((10 : GoUInt8));
	s[5135] = ((10 : GoUInt8));
	s[5149] = ((10 : GoUInt8));
	s[5150] = ((10 : GoUInt8));
	s[5151] = ((10 : GoUInt8));
	s[5165] = ((10 : GoUInt8));
	s[5166] = ((10 : GoUInt8));
	s[5167] = ((10 : GoUInt8));
	s[5181] = ((10 : GoUInt8));
	s[5182] = ((10 : GoUInt8));
	s[5184] = ((9 : GoUInt8));
	s[5185] = ((9 : GoUInt8));
	s[5186] = ((9 : GoUInt8));
	s[5187] = ((9 : GoUInt8));
	s[5188] = ((9 : GoUInt8));
	s[5189] = ((9 : GoUInt8));
	s[5190] = ((9 : GoUInt8));
	s[5191] = ((9 : GoUInt8));
	s[5192] = ((9 : GoUInt8));
	s[5193] = ((9 : GoUInt8));
	s[5194] = ((9 : GoUInt8));
	s[5195] = ((11 : GoUInt8));
	s[5196] = ((11 : GoUInt8));
	s[5197] = ((11 : GoUInt8));
	s[5199] = ((1 : GoUInt8));
	s[5200] = ((10 : GoUInt8));
	s[5201] = ((10 : GoUInt8));
	s[5202] = ((10 : GoUInt8));
	s[5203] = ((10 : GoUInt8));
	s[5204] = ((10 : GoUInt8));
	s[5205] = ((10 : GoUInt8));
	s[5206] = ((10 : GoUInt8));
	s[5207] = ((10 : GoUInt8));
	s[5208] = ((10 : GoUInt8));
	s[5209] = ((10 : GoUInt8));
	s[5210] = ((10 : GoUInt8));
	s[5211] = ((10 : GoUInt8));
	s[5212] = ((10 : GoUInt8));
	s[5213] = ((10 : GoUInt8));
	s[5214] = ((10 : GoUInt8));
	s[5215] = ((10 : GoUInt8));
	s[5216] = ((10 : GoUInt8));
	s[5217] = ((10 : GoUInt8));
	s[5218] = ((10 : GoUInt8));
	s[5219] = ((10 : GoUInt8));
	s[5220] = ((10 : GoUInt8));
	s[5221] = ((10 : GoUInt8));
	s[5222] = ((10 : GoUInt8));
	s[5223] = ((10 : GoUInt8));
	s[5224] = ((9 : GoUInt8));
	s[5225] = ((7 : GoUInt8));
	s[5226] = ((14 : GoUInt8));
	s[5227] = ((14 : GoUInt8));
	s[5228] = ((14 : GoUInt8));
	s[5229] = ((14 : GoUInt8));
	s[5230] = ((14 : GoUInt8));
	s[5231] = ((6 : GoUInt8));
	s[5232] = ((4 : GoUInt8));
	s[5233] = ((4 : GoUInt8));
	s[5234] = ((4 : GoUInt8));
	s[5235] = ((4 : GoUInt8));
	s[5236] = ((4 : GoUInt8));
	s[5237] = ((10 : GoUInt8));
	s[5238] = ((10 : GoUInt8));
	s[5239] = ((10 : GoUInt8));
	s[5240] = ((10 : GoUInt8));
	s[5241] = ((10 : GoUInt8));
	s[5242] = ((10 : GoUInt8));
	s[5243] = ((10 : GoUInt8));
	s[5244] = ((10 : GoUInt8));
	s[5245] = ((10 : GoUInt8));
	s[5246] = ((10 : GoUInt8));
	s[5247] = ((10 : GoUInt8));
	s[5248] = ((10 : GoUInt8));
	s[5249] = ((10 : GoUInt8));
	s[5250] = ((10 : GoUInt8));
	s[5251] = ((10 : GoUInt8));
	s[5252] = ((6 : GoUInt8));
	s[5253] = ((154 : GoUInt8));
	s[5254] = ((138 : GoUInt8));
	s[5255] = ((10 : GoUInt8));
	s[5256] = ((10 : GoUInt8));
	s[5257] = ((10 : GoUInt8));
	s[5258] = ((10 : GoUInt8));
	s[5259] = ((10 : GoUInt8));
	s[5260] = ((10 : GoUInt8));
	s[5261] = ((10 : GoUInt8));
	s[5262] = ((10 : GoUInt8));
	s[5263] = ((10 : GoUInt8));
	s[5264] = ((10 : GoUInt8));
	s[5265] = ((10 : GoUInt8));
	s[5266] = ((10 : GoUInt8));
	s[5267] = ((10 : GoUInt8));
	s[5268] = ((10 : GoUInt8));
	s[5269] = ((10 : GoUInt8));
	s[5270] = ((10 : GoUInt8));
	s[5271] = ((10 : GoUInt8));
	s[5272] = ((10 : GoUInt8));
	s[5273] = ((10 : GoUInt8));
	s[5274] = ((10 : GoUInt8));
	s[5275] = ((10 : GoUInt8));
	s[5276] = ((10 : GoUInt8));
	s[5277] = ((10 : GoUInt8));
	s[5278] = ((10 : GoUInt8));
	s[5279] = ((9 : GoUInt8));
	s[5280] = ((11 : GoUInt8));
	s[5281] = ((11 : GoUInt8));
	s[5282] = ((11 : GoUInt8));
	s[5283] = ((11 : GoUInt8));
	s[5284] = ((11 : GoUInt8));
	s[5285] = ((11 : GoUInt8));
	s[5286] = ((14 : GoUInt8));
	s[5287] = ((14 : GoUInt8));
	s[5288] = ((14 : GoUInt8));
	s[5289] = ((14 : GoUInt8));
	s[5290] = ((11 : GoUInt8));
	s[5291] = ((11 : GoUInt8));
	s[5292] = ((11 : GoUInt8));
	s[5293] = ((11 : GoUInt8));
	s[5294] = ((11 : GoUInt8));
	s[5295] = ((11 : GoUInt8));
	s[5296] = ((2 : GoUInt8));
	s[5300] = ((2 : GoUInt8));
	s[5301] = ((2 : GoUInt8));
	s[5302] = ((2 : GoUInt8));
	s[5303] = ((2 : GoUInt8));
	s[5304] = ((2 : GoUInt8));
	s[5305] = ((2 : GoUInt8));
	s[5306] = ((3 : GoUInt8));
	s[5307] = ((3 : GoUInt8));
	s[5308] = ((10 : GoUInt8));
	s[5309] = ((154 : GoUInt8));
	s[5310] = ((138 : GoUInt8));
	s[5312] = ((2 : GoUInt8));
	s[5313] = ((2 : GoUInt8));
	s[5314] = ((2 : GoUInt8));
	s[5315] = ((2 : GoUInt8));
	s[5316] = ((2 : GoUInt8));
	s[5317] = ((2 : GoUInt8));
	s[5318] = ((2 : GoUInt8));
	s[5319] = ((2 : GoUInt8));
	s[5320] = ((2 : GoUInt8));
	s[5321] = ((2 : GoUInt8));
	s[5322] = ((3 : GoUInt8));
	s[5323] = ((3 : GoUInt8));
	s[5324] = ((10 : GoUInt8));
	s[5325] = ((154 : GoUInt8));
	s[5326] = ((138 : GoUInt8));
	s[5344] = ((4 : GoUInt8));
	s[5345] = ((4 : GoUInt8));
	s[5346] = ((4 : GoUInt8));
	s[5347] = ((4 : GoUInt8));
	s[5348] = ((4 : GoUInt8));
	s[5349] = ((4 : GoUInt8));
	s[5350] = ((4 : GoUInt8));
	s[5351] = ((4 : GoUInt8));
	s[5352] = ((4 : GoUInt8));
	s[5353] = ((4 : GoUInt8));
	s[5354] = ((4 : GoUInt8));
	s[5355] = ((4 : GoUInt8));
	s[5356] = ((4 : GoUInt8));
	s[5357] = ((4 : GoUInt8));
	s[5358] = ((4 : GoUInt8));
	s[5359] = ((4 : GoUInt8));
	s[5360] = ((4 : GoUInt8));
	s[5361] = ((4 : GoUInt8));
	s[5362] = ((4 : GoUInt8));
	s[5363] = ((4 : GoUInt8));
	s[5364] = ((4 : GoUInt8));
	s[5365] = ((4 : GoUInt8));
	s[5366] = ((4 : GoUInt8));
	s[5367] = ((4 : GoUInt8));
	s[5368] = ((4 : GoUInt8));
	s[5369] = ((4 : GoUInt8));
	s[5370] = ((4 : GoUInt8));
	s[5371] = ((4 : GoUInt8));
	s[5372] = ((4 : GoUInt8));
	s[5373] = ((4 : GoUInt8));
	s[5374] = ((4 : GoUInt8));
	s[5375] = ((4 : GoUInt8));
	s[5376] = ((4 : GoUInt8));
	s[5377] = ((4 : GoUInt8));
	s[5378] = ((4 : GoUInt8));
	s[5379] = ((4 : GoUInt8));
	s[5380] = ((4 : GoUInt8));
	s[5381] = ((4 : GoUInt8));
	s[5382] = ((4 : GoUInt8));
	s[5383] = ((4 : GoUInt8));
	s[5384] = ((4 : GoUInt8));
	s[5385] = ((4 : GoUInt8));
	s[5386] = ((4 : GoUInt8));
	s[5387] = ((4 : GoUInt8));
	s[5388] = ((4 : GoUInt8));
	s[5389] = ((4 : GoUInt8));
	s[5390] = ((4 : GoUInt8));
	s[5391] = ((4 : GoUInt8));
	s[5392] = ((12 : GoUInt8));
	s[5393] = ((12 : GoUInt8));
	s[5394] = ((12 : GoUInt8));
	s[5395] = ((12 : GoUInt8));
	s[5396] = ((12 : GoUInt8));
	s[5397] = ((12 : GoUInt8));
	s[5398] = ((12 : GoUInt8));
	s[5399] = ((12 : GoUInt8));
	s[5400] = ((12 : GoUInt8));
	s[5401] = ((12 : GoUInt8));
	s[5402] = ((12 : GoUInt8));
	s[5403] = ((12 : GoUInt8));
	s[5404] = ((12 : GoUInt8));
	s[5405] = ((12 : GoUInt8));
	s[5406] = ((12 : GoUInt8));
	s[5407] = ((12 : GoUInt8));
	s[5408] = ((12 : GoUInt8));
	s[5409] = ((12 : GoUInt8));
	s[5410] = ((12 : GoUInt8));
	s[5411] = ((12 : GoUInt8));
	s[5412] = ((12 : GoUInt8));
	s[5413] = ((12 : GoUInt8));
	s[5414] = ((12 : GoUInt8));
	s[5415] = ((12 : GoUInt8));
	s[5416] = ((12 : GoUInt8));
	s[5417] = ((12 : GoUInt8));
	s[5418] = ((12 : GoUInt8));
	s[5419] = ((12 : GoUInt8));
	s[5420] = ((12 : GoUInt8));
	s[5421] = ((12 : GoUInt8));
	s[5422] = ((12 : GoUInt8));
	s[5423] = ((12 : GoUInt8));
	s[5424] = ((12 : GoUInt8));
	s[5440] = ((10 : GoUInt8));
	s[5441] = ((10 : GoUInt8));
	s[5443] = ((10 : GoUInt8));
	s[5444] = ((10 : GoUInt8));
	s[5445] = ((10 : GoUInt8));
	s[5446] = ((10 : GoUInt8));
	s[5448] = ((10 : GoUInt8));
	s[5449] = ((10 : GoUInt8));
	s[5460] = ((10 : GoUInt8));
	s[5462] = ((10 : GoUInt8));
	s[5463] = ((10 : GoUInt8));
	s[5464] = ((10 : GoUInt8));
	s[5470] = ((10 : GoUInt8));
	s[5471] = ((10 : GoUInt8));
	s[5472] = ((10 : GoUInt8));
	s[5473] = ((10 : GoUInt8));
	s[5474] = ((10 : GoUInt8));
	s[5475] = ((10 : GoUInt8));
	s[5477] = ((10 : GoUInt8));
	s[5479] = ((10 : GoUInt8));
	s[5481] = ((10 : GoUInt8));
	s[5486] = ((4 : GoUInt8));
	s[5498] = ((10 : GoUInt8));
	s[5499] = ((10 : GoUInt8));
	s[5504] = ((10 : GoUInt8));
	s[5505] = ((10 : GoUInt8));
	s[5506] = ((10 : GoUInt8));
	s[5507] = ((10 : GoUInt8));
	s[5508] = ((10 : GoUInt8));
	s[5514] = ((10 : GoUInt8));
	s[5515] = ((10 : GoUInt8));
	s[5516] = ((10 : GoUInt8));
	s[5517] = ((10 : GoUInt8));
	s[5520] = ((10 : GoUInt8));
	s[5521] = ((10 : GoUInt8));
	s[5522] = ((10 : GoUInt8));
	s[5523] = ((10 : GoUInt8));
	s[5524] = ((10 : GoUInt8));
	s[5525] = ((10 : GoUInt8));
	s[5526] = ((10 : GoUInt8));
	s[5527] = ((10 : GoUInt8));
	s[5528] = ((10 : GoUInt8));
	s[5529] = ((10 : GoUInt8));
	s[5530] = ((10 : GoUInt8));
	s[5531] = ((10 : GoUInt8));
	s[5532] = ((10 : GoUInt8));
	s[5533] = ((10 : GoUInt8));
	s[5534] = ((10 : GoUInt8));
	s[5535] = ((10 : GoUInt8));
	s[5577] = ((10 : GoUInt8));
	s[5578] = ((10 : GoUInt8));
	s[5579] = ((10 : GoUInt8));
	s[5584] = ((10 : GoUInt8));
	s[5585] = ((10 : GoUInt8));
	s[5586] = ((10 : GoUInt8));
	s[5587] = ((10 : GoUInt8));
	s[5588] = ((10 : GoUInt8));
	s[5589] = ((10 : GoUInt8));
	s[5590] = ((10 : GoUInt8));
	s[5591] = ((10 : GoUInt8));
	s[5592] = ((10 : GoUInt8));
	s[5593] = ((10 : GoUInt8));
	s[5594] = ((10 : GoUInt8));
	s[5595] = ((10 : GoUInt8));
	s[5596] = ((10 : GoUInt8));
	s[5597] = ((10 : GoUInt8));
	s[5598] = ((10 : GoUInt8));
	s[5599] = ((10 : GoUInt8));
	s[5600] = ((10 : GoUInt8));
	s[5601] = ((10 : GoUInt8));
	s[5602] = ((10 : GoUInt8));
	s[5603] = ((10 : GoUInt8));
	s[5604] = ((10 : GoUInt8));
	s[5605] = ((10 : GoUInt8));
	s[5606] = ((10 : GoUInt8));
	s[5607] = ((10 : GoUInt8));
	s[5608] = ((10 : GoUInt8));
	s[5609] = ((10 : GoUInt8));
	s[5610] = ((10 : GoUInt8));
	s[5611] = ((10 : GoUInt8));
	s[5612] = ((10 : GoUInt8));
	s[5613] = ((10 : GoUInt8));
	s[5614] = ((10 : GoUInt8));
	s[5615] = ((10 : GoUInt8));
	s[5616] = ((10 : GoUInt8));
	s[5617] = ((10 : GoUInt8));
	s[5618] = ((10 : GoUInt8));
	s[5619] = ((10 : GoUInt8));
	s[5620] = ((10 : GoUInt8));
	s[5621] = ((10 : GoUInt8));
	s[5622] = ((10 : GoUInt8));
	s[5623] = ((10 : GoUInt8));
	s[5624] = ((10 : GoUInt8));
	s[5625] = ((10 : GoUInt8));
	s[5626] = ((10 : GoUInt8));
	s[5627] = ((10 : GoUInt8));
	s[5628] = ((10 : GoUInt8));
	s[5629] = ((10 : GoUInt8));
	s[5630] = ((10 : GoUInt8));
	s[5631] = ((10 : GoUInt8));
	s[5632] = ((10 : GoUInt8));
	s[5633] = ((10 : GoUInt8));
	s[5634] = ((10 : GoUInt8));
	s[5635] = ((10 : GoUInt8));
	s[5636] = ((10 : GoUInt8));
	s[5637] = ((10 : GoUInt8));
	s[5638] = ((10 : GoUInt8));
	s[5639] = ((10 : GoUInt8));
	s[5640] = ((10 : GoUInt8));
	s[5641] = ((10 : GoUInt8));
	s[5642] = ((10 : GoUInt8));
	s[5643] = ((10 : GoUInt8));
	s[5644] = ((10 : GoUInt8));
	s[5645] = ((10 : GoUInt8));
	s[5646] = ((10 : GoUInt8));
	s[5647] = ((10 : GoUInt8));
	s[5648] = ((10 : GoUInt8));
	s[5649] = ((10 : GoUInt8));
	s[5650] = ((10 : GoUInt8));
	s[5651] = ((10 : GoUInt8));
	s[5652] = ((10 : GoUInt8));
	s[5653] = ((10 : GoUInt8));
	s[5654] = ((10 : GoUInt8));
	s[5655] = ((10 : GoUInt8));
	s[5656] = ((10 : GoUInt8));
	s[5657] = ((10 : GoUInt8));
	s[5658] = ((10 : GoUInt8));
	s[5659] = ((10 : GoUInt8));
	s[5660] = ((10 : GoUInt8));
	s[5661] = ((10 : GoUInt8));
	s[5662] = ((10 : GoUInt8));
	s[5663] = ((10 : GoUInt8));
	s[5664] = ((10 : GoUInt8));
	s[5665] = ((10 : GoUInt8));
	s[5666] = ((10 : GoUInt8));
	s[5667] = ((10 : GoUInt8));
	s[5668] = ((10 : GoUInt8));
	s[5669] = ((10 : GoUInt8));
	s[5670] = ((10 : GoUInt8));
	s[5671] = ((10 : GoUInt8));
	s[5672] = ((10 : GoUInt8));
	s[5673] = ((10 : GoUInt8));
	s[5674] = ((10 : GoUInt8));
	s[5675] = ((10 : GoUInt8));
	s[5676] = ((10 : GoUInt8));
	s[5677] = ((10 : GoUInt8));
	s[5678] = ((10 : GoUInt8));
	s[5679] = ((10 : GoUInt8));
	s[5680] = ((10 : GoUInt8));
	s[5681] = ((10 : GoUInt8));
	s[5682] = ((10 : GoUInt8));
	s[5683] = ((10 : GoUInt8));
	s[5684] = ((10 : GoUInt8));
	s[5685] = ((10 : GoUInt8));
	s[5686] = ((10 : GoUInt8));
	s[5687] = ((10 : GoUInt8));
	s[5688] = ((10 : GoUInt8));
	s[5689] = ((10 : GoUInt8));
	s[5690] = ((10 : GoUInt8));
	s[5691] = ((10 : GoUInt8));
	s[5692] = ((10 : GoUInt8));
	s[5693] = ((10 : GoUInt8));
	s[5694] = ((10 : GoUInt8));
	s[5695] = ((10 : GoUInt8));
	s[5696] = ((10 : GoUInt8));
	s[5697] = ((10 : GoUInt8));
	s[5698] = ((10 : GoUInt8));
	s[5699] = ((10 : GoUInt8));
	s[5700] = ((10 : GoUInt8));
	s[5701] = ((10 : GoUInt8));
	s[5702] = ((10 : GoUInt8));
	s[5703] = ((10 : GoUInt8));
	s[5704] = ((10 : GoUInt8));
	s[5705] = ((10 : GoUInt8));
	s[5706] = ((10 : GoUInt8));
	s[5707] = ((10 : GoUInt8));
	s[5708] = ((10 : GoUInt8));
	s[5709] = ((10 : GoUInt8));
	s[5710] = ((10 : GoUInt8));
	s[5711] = ((10 : GoUInt8));
	s[5712] = ((10 : GoUInt8));
	s[5713] = ((10 : GoUInt8));
	s[5714] = ((3 : GoUInt8));
	s[5715] = ((4 : GoUInt8));
	s[5716] = ((10 : GoUInt8));
	s[5717] = ((10 : GoUInt8));
	s[5718] = ((10 : GoUInt8));
	s[5719] = ((10 : GoUInt8));
	s[5720] = ((10 : GoUInt8));
	s[5721] = ((10 : GoUInt8));
	s[5722] = ((10 : GoUInt8));
	s[5723] = ((10 : GoUInt8));
	s[5724] = ((10 : GoUInt8));
	s[5725] = ((10 : GoUInt8));
	s[5726] = ((10 : GoUInt8));
	s[5727] = ((10 : GoUInt8));
	s[5728] = ((10 : GoUInt8));
	s[5729] = ((10 : GoUInt8));
	s[5730] = ((10 : GoUInt8));
	s[5731] = ((10 : GoUInt8));
	s[5732] = ((10 : GoUInt8));
	s[5733] = ((10 : GoUInt8));
	s[5734] = ((10 : GoUInt8));
	s[5735] = ((10 : GoUInt8));
	s[5736] = ((10 : GoUInt8));
	s[5737] = ((10 : GoUInt8));
	s[5738] = ((10 : GoUInt8));
	s[5739] = ((10 : GoUInt8));
	s[5740] = ((10 : GoUInt8));
	s[5741] = ((10 : GoUInt8));
	s[5742] = ((10 : GoUInt8));
	s[5743] = ((10 : GoUInt8));
	s[5744] = ((10 : GoUInt8));
	s[5745] = ((10 : GoUInt8));
	s[5746] = ((10 : GoUInt8));
	s[5747] = ((10 : GoUInt8));
	s[5748] = ((10 : GoUInt8));
	s[5749] = ((10 : GoUInt8));
	s[5750] = ((10 : GoUInt8));
	s[5751] = ((10 : GoUInt8));
	s[5752] = ((10 : GoUInt8));
	s[5753] = ((10 : GoUInt8));
	s[5754] = ((10 : GoUInt8));
	s[5755] = ((10 : GoUInt8));
	s[5756] = ((10 : GoUInt8));
	s[5757] = ((10 : GoUInt8));
	s[5758] = ((10 : GoUInt8));
	s[5759] = ((10 : GoUInt8));
	s[5760] = ((10 : GoUInt8));
	s[5761] = ((10 : GoUInt8));
	s[5762] = ((10 : GoUInt8));
	s[5763] = ((10 : GoUInt8));
	s[5764] = ((10 : GoUInt8));
	s[5765] = ((10 : GoUInt8));
	s[5766] = ((10 : GoUInt8));
	s[5767] = ((10 : GoUInt8));
	s[5768] = ((58 : GoUInt8));
	s[5769] = ((42 : GoUInt8));
	s[5770] = ((58 : GoUInt8));
	s[5771] = ((42 : GoUInt8));
	s[5772] = ((10 : GoUInt8));
	s[5773] = ((10 : GoUInt8));
	s[5774] = ((10 : GoUInt8));
	s[5775] = ((10 : GoUInt8));
	s[5776] = ((10 : GoUInt8));
	s[5777] = ((10 : GoUInt8));
	s[5778] = ((10 : GoUInt8));
	s[5779] = ((10 : GoUInt8));
	s[5780] = ((10 : GoUInt8));
	s[5781] = ((10 : GoUInt8));
	s[5782] = ((10 : GoUInt8));
	s[5783] = ((10 : GoUInt8));
	s[5784] = ((10 : GoUInt8));
	s[5785] = ((10 : GoUInt8));
	s[5786] = ((10 : GoUInt8));
	s[5787] = ((10 : GoUInt8));
	s[5788] = ((10 : GoUInt8));
	s[5789] = ((10 : GoUInt8));
	s[5790] = ((10 : GoUInt8));
	s[5791] = ((10 : GoUInt8));
	s[5792] = ((10 : GoUInt8));
	s[5793] = ((10 : GoUInt8));
	s[5794] = ((10 : GoUInt8));
	s[5795] = ((10 : GoUInt8));
	s[5796] = ((10 : GoUInt8));
	s[5797] = ((10 : GoUInt8));
	s[5798] = ((10 : GoUInt8));
	s[5799] = ((10 : GoUInt8));
	s[5800] = ((10 : GoUInt8));
	s[5801] = ((154 : GoUInt8));
	s[5802] = ((138 : GoUInt8));
	s[5803] = ((10 : GoUInt8));
	s[5804] = ((10 : GoUInt8));
	s[5805] = ((10 : GoUInt8));
	s[5806] = ((10 : GoUInt8));
	s[5807] = ((10 : GoUInt8));
	s[5808] = ((10 : GoUInt8));
	s[5809] = ((10 : GoUInt8));
	s[5810] = ((10 : GoUInt8));
	s[5811] = ((10 : GoUInt8));
	s[5812] = ((10 : GoUInt8));
	s[5813] = ((10 : GoUInt8));
	s[5883] = ((10 : GoUInt8));
	s[5884] = ((10 : GoUInt8));
	s[5885] = ((10 : GoUInt8));
	s[5886] = ((10 : GoUInt8));
	s[5887] = ((10 : GoUInt8));
	s[5888] = ((10 : GoUInt8));
	s[5889] = ((10 : GoUInt8));
	s[5890] = ((10 : GoUInt8));
	s[5891] = ((10 : GoUInt8));
	s[5892] = ((10 : GoUInt8));
	s[5893] = ((10 : GoUInt8));
	s[5894] = ((10 : GoUInt8));
	s[5895] = ((10 : GoUInt8));
	s[5896] = ((10 : GoUInt8));
	s[5897] = ((10 : GoUInt8));
	s[5898] = ((10 : GoUInt8));
	s[5899] = ((10 : GoUInt8));
	s[5900] = ((10 : GoUInt8));
	s[5901] = ((10 : GoUInt8));
	s[5902] = ((10 : GoUInt8));
	s[5903] = ((10 : GoUInt8));
	s[5904] = ((10 : GoUInt8));
	s[5905] = ((10 : GoUInt8));
	s[5906] = ((10 : GoUInt8));
	s[5907] = ((10 : GoUInt8));
	s[5908] = ((10 : GoUInt8));
	s[5910] = ((10 : GoUInt8));
	s[5911] = ((10 : GoUInt8));
	s[5912] = ((10 : GoUInt8));
	s[5913] = ((10 : GoUInt8));
	s[5914] = ((10 : GoUInt8));
	s[5915] = ((10 : GoUInt8));
	s[5916] = ((10 : GoUInt8));
	s[5917] = ((10 : GoUInt8));
	s[5918] = ((10 : GoUInt8));
	s[5919] = ((10 : GoUInt8));
	s[5920] = ((10 : GoUInt8));
	s[5921] = ((10 : GoUInt8));
	s[5922] = ((10 : GoUInt8));
	s[5923] = ((10 : GoUInt8));
	s[5924] = ((10 : GoUInt8));
	s[5925] = ((10 : GoUInt8));
	s[5926] = ((10 : GoUInt8));
	s[5927] = ((10 : GoUInt8));
	s[5928] = ((10 : GoUInt8));
	s[5929] = ((10 : GoUInt8));
	s[5930] = ((10 : GoUInt8));
	s[5931] = ((10 : GoUInt8));
	s[5932] = ((10 : GoUInt8));
	s[5933] = ((10 : GoUInt8));
	s[5934] = ((10 : GoUInt8));
	s[5935] = ((10 : GoUInt8));
	s[5936] = ((10 : GoUInt8));
	s[5937] = ((10 : GoUInt8));
	s[5938] = ((10 : GoUInt8));
	s[5939] = ((10 : GoUInt8));
	s[5940] = ((10 : GoUInt8));
	s[5941] = ((10 : GoUInt8));
	s[5942] = ((10 : GoUInt8));
	s[5943] = ((10 : GoUInt8));
	s[5944] = ((10 : GoUInt8));
	s[5945] = ((10 : GoUInt8));
	s[5946] = ((10 : GoUInt8));
	s[5947] = ((10 : GoUInt8));
	s[5948] = ((10 : GoUInt8));
	s[5949] = ((10 : GoUInt8));
	s[5950] = ((10 : GoUInt8));
	s[5951] = ((10 : GoUInt8));
	s[5952] = ((10 : GoUInt8));
	s[5953] = ((10 : GoUInt8));
	s[5954] = ((10 : GoUInt8));
	s[5955] = ((10 : GoUInt8));
	s[5956] = ((10 : GoUInt8));
	s[5957] = ((10 : GoUInt8));
	s[5958] = ((10 : GoUInt8));
	s[5959] = ((10 : GoUInt8));
	s[5960] = ((10 : GoUInt8));
	s[5961] = ((10 : GoUInt8));
	s[5962] = ((10 : GoUInt8));
	s[5963] = ((10 : GoUInt8));
	s[5964] = ((10 : GoUInt8));
	s[5965] = ((10 : GoUInt8));
	s[5966] = ((10 : GoUInt8));
	s[5967] = ((10 : GoUInt8));
	s[5968] = ((10 : GoUInt8));
	s[5969] = ((10 : GoUInt8));
	s[5970] = ((10 : GoUInt8));
	s[5971] = ((10 : GoUInt8));
	s[5972] = ((10 : GoUInt8));
	s[5973] = ((10 : GoUInt8));
	s[5974] = ((10 : GoUInt8));
	s[5975] = ((10 : GoUInt8));
	s[5976] = ((10 : GoUInt8));
	s[5977] = ((10 : GoUInt8));
	s[5978] = ((10 : GoUInt8));
	s[5979] = ((10 : GoUInt8));
	s[5980] = ((10 : GoUInt8));
	s[5981] = ((10 : GoUInt8));
	s[5982] = ((10 : GoUInt8));
	s[5983] = ((10 : GoUInt8));
	s[5984] = ((10 : GoUInt8));
	s[5985] = ((10 : GoUInt8));
	s[5986] = ((10 : GoUInt8));
	s[5987] = ((10 : GoUInt8));
	s[5988] = ((10 : GoUInt8));
	s[5989] = ((10 : GoUInt8));
	s[5990] = ((10 : GoUInt8));
	s[6016] = ((10 : GoUInt8));
	s[6017] = ((10 : GoUInt8));
	s[6018] = ((10 : GoUInt8));
	s[6019] = ((10 : GoUInt8));
	s[6020] = ((10 : GoUInt8));
	s[6021] = ((10 : GoUInt8));
	s[6022] = ((10 : GoUInt8));
	s[6023] = ((10 : GoUInt8));
	s[6024] = ((10 : GoUInt8));
	s[6025] = ((10 : GoUInt8));
	s[6026] = ((10 : GoUInt8));
	s[6048] = ((10 : GoUInt8));
	s[6049] = ((10 : GoUInt8));
	s[6050] = ((10 : GoUInt8));
	s[6051] = ((10 : GoUInt8));
	s[6052] = ((10 : GoUInt8));
	s[6053] = ((10 : GoUInt8));
	s[6054] = ((10 : GoUInt8));
	s[6055] = ((10 : GoUInt8));
	s[6056] = ((10 : GoUInt8));
	s[6057] = ((10 : GoUInt8));
	s[6058] = ((10 : GoUInt8));
	s[6059] = ((10 : GoUInt8));
	s[6060] = ((10 : GoUInt8));
	s[6061] = ((10 : GoUInt8));
	s[6062] = ((10 : GoUInt8));
	s[6063] = ((10 : GoUInt8));
	s[6064] = ((10 : GoUInt8));
	s[6065] = ((10 : GoUInt8));
	s[6066] = ((10 : GoUInt8));
	s[6067] = ((10 : GoUInt8));
	s[6068] = ((10 : GoUInt8));
	s[6069] = ((10 : GoUInt8));
	s[6070] = ((10 : GoUInt8));
	s[6071] = ((10 : GoUInt8));
	s[6072] = ((10 : GoUInt8));
	s[6073] = ((10 : GoUInt8));
	s[6074] = ((10 : GoUInt8));
	s[6075] = ((10 : GoUInt8));
	s[6076] = ((10 : GoUInt8));
	s[6077] = ((10 : GoUInt8));
	s[6078] = ((10 : GoUInt8));
	s[6079] = ((10 : GoUInt8));
	s[6080] = ((10 : GoUInt8));
	s[6081] = ((10 : GoUInt8));
	s[6082] = ((10 : GoUInt8));
	s[6083] = ((10 : GoUInt8));
	s[6084] = ((10 : GoUInt8));
	s[6085] = ((10 : GoUInt8));
	s[6086] = ((10 : GoUInt8));
	s[6087] = ((10 : GoUInt8));
	s[6088] = ((2 : GoUInt8));
	s[6089] = ((2 : GoUInt8));
	s[6090] = ((2 : GoUInt8));
	s[6091] = ((2 : GoUInt8));
	s[6092] = ((2 : GoUInt8));
	s[6093] = ((2 : GoUInt8));
	s[6094] = ((2 : GoUInt8));
	s[6095] = ((2 : GoUInt8));
	s[6096] = ((2 : GoUInt8));
	s[6097] = ((2 : GoUInt8));
	s[6098] = ((2 : GoUInt8));
	s[6099] = ((2 : GoUInt8));
	s[6100] = ((2 : GoUInt8));
	s[6101] = ((2 : GoUInt8));
	s[6102] = ((2 : GoUInt8));
	s[6103] = ((2 : GoUInt8));
	s[6104] = ((2 : GoUInt8));
	s[6105] = ((2 : GoUInt8));
	s[6106] = ((2 : GoUInt8));
	s[6107] = ((2 : GoUInt8));
	s[6186] = ((10 : GoUInt8));
	s[6187] = ((10 : GoUInt8));
	s[6188] = ((10 : GoUInt8));
	s[6189] = ((10 : GoUInt8));
	s[6190] = ((10 : GoUInt8));
	s[6191] = ((10 : GoUInt8));
	s[6192] = ((10 : GoUInt8));
	s[6193] = ((10 : GoUInt8));
	s[6194] = ((10 : GoUInt8));
	s[6195] = ((10 : GoUInt8));
	s[6196] = ((10 : GoUInt8));
	s[6197] = ((10 : GoUInt8));
	s[6198] = ((10 : GoUInt8));
	s[6199] = ((10 : GoUInt8));
	s[6200] = ((10 : GoUInt8));
	s[6201] = ((10 : GoUInt8));
	s[6202] = ((10 : GoUInt8));
	s[6203] = ((10 : GoUInt8));
	s[6204] = ((10 : GoUInt8));
	s[6205] = ((10 : GoUInt8));
	s[6206] = ((10 : GoUInt8));
	s[6207] = ((10 : GoUInt8));
	s[6208] = ((10 : GoUInt8));
	s[6209] = ((10 : GoUInt8));
	s[6210] = ((10 : GoUInt8));
	s[6211] = ((10 : GoUInt8));
	s[6212] = ((10 : GoUInt8));
	s[6213] = ((10 : GoUInt8));
	s[6214] = ((10 : GoUInt8));
	s[6215] = ((10 : GoUInt8));
	s[6216] = ((10 : GoUInt8));
	s[6217] = ((10 : GoUInt8));
	s[6218] = ((10 : GoUInt8));
	s[6219] = ((10 : GoUInt8));
	s[6220] = ((10 : GoUInt8));
	s[6221] = ((10 : GoUInt8));
	s[6222] = ((10 : GoUInt8));
	s[6223] = ((10 : GoUInt8));
	s[6224] = ((10 : GoUInt8));
	s[6225] = ((10 : GoUInt8));
	s[6226] = ((10 : GoUInt8));
	s[6227] = ((10 : GoUInt8));
	s[6228] = ((10 : GoUInt8));
	s[6229] = ((10 : GoUInt8));
	s[6230] = ((10 : GoUInt8));
	s[6231] = ((10 : GoUInt8));
	s[6232] = ((10 : GoUInt8));
	s[6233] = ((10 : GoUInt8));
	s[6234] = ((10 : GoUInt8));
	s[6235] = ((10 : GoUInt8));
	s[6236] = ((10 : GoUInt8));
	s[6237] = ((10 : GoUInt8));
	s[6238] = ((10 : GoUInt8));
	s[6239] = ((10 : GoUInt8));
	s[6240] = ((10 : GoUInt8));
	s[6241] = ((10 : GoUInt8));
	s[6242] = ((10 : GoUInt8));
	s[6243] = ((10 : GoUInt8));
	s[6244] = ((10 : GoUInt8));
	s[6245] = ((10 : GoUInt8));
	s[6246] = ((10 : GoUInt8));
	s[6247] = ((10 : GoUInt8));
	s[6248] = ((10 : GoUInt8));
	s[6249] = ((10 : GoUInt8));
	s[6250] = ((10 : GoUInt8));
	s[6251] = ((10 : GoUInt8));
	s[6253] = ((10 : GoUInt8));
	s[6254] = ((10 : GoUInt8));
	s[6255] = ((10 : GoUInt8));
	s[6256] = ((10 : GoUInt8));
	s[6257] = ((10 : GoUInt8));
	s[6258] = ((10 : GoUInt8));
	s[6259] = ((10 : GoUInt8));
	s[6260] = ((10 : GoUInt8));
	s[6261] = ((10 : GoUInt8));
	s[6262] = ((10 : GoUInt8));
	s[6263] = ((10 : GoUInt8));
	s[6264] = ((10 : GoUInt8));
	s[6265] = ((10 : GoUInt8));
	s[6266] = ((10 : GoUInt8));
	s[6267] = ((10 : GoUInt8));
	s[6268] = ((10 : GoUInt8));
	s[6269] = ((10 : GoUInt8));
	s[6270] = ((10 : GoUInt8));
	s[6271] = ((10 : GoUInt8));
	s[6272] = ((10 : GoUInt8));
	s[6273] = ((10 : GoUInt8));
	s[6274] = ((10 : GoUInt8));
	s[6275] = ((10 : GoUInt8));
	s[6276] = ((10 : GoUInt8));
	s[6277] = ((10 : GoUInt8));
	s[6278] = ((10 : GoUInt8));
	s[6279] = ((10 : GoUInt8));
	s[6280] = ((10 : GoUInt8));
	s[6281] = ((10 : GoUInt8));
	s[6282] = ((10 : GoUInt8));
	s[6283] = ((10 : GoUInt8));
	s[6284] = ((10 : GoUInt8));
	s[6285] = ((10 : GoUInt8));
	s[6286] = ((10 : GoUInt8));
	s[6287] = ((10 : GoUInt8));
	s[6288] = ((10 : GoUInt8));
	s[6289] = ((10 : GoUInt8));
	s[6290] = ((10 : GoUInt8));
	s[6291] = ((10 : GoUInt8));
	s[6292] = ((10 : GoUInt8));
	s[6293] = ((10 : GoUInt8));
	s[6294] = ((10 : GoUInt8));
	s[6295] = ((10 : GoUInt8));
	s[6296] = ((10 : GoUInt8));
	s[6297] = ((10 : GoUInt8));
	s[6298] = ((10 : GoUInt8));
	s[6299] = ((10 : GoUInt8));
	s[6300] = ((10 : GoUInt8));
	s[6301] = ((10 : GoUInt8));
	s[6302] = ((10 : GoUInt8));
	s[6303] = ((10 : GoUInt8));
	s[6304] = ((10 : GoUInt8));
	s[6305] = ((10 : GoUInt8));
	s[6306] = ((10 : GoUInt8));
	s[6307] = ((10 : GoUInt8));
	s[6308] = ((10 : GoUInt8));
	s[6309] = ((10 : GoUInt8));
	s[6310] = ((10 : GoUInt8));
	s[6311] = ((10 : GoUInt8));
	s[6312] = ((58 : GoUInt8));
	s[6313] = ((42 : GoUInt8));
	s[6314] = ((58 : GoUInt8));
	s[6315] = ((42 : GoUInt8));
	s[6316] = ((58 : GoUInt8));
	s[6317] = ((42 : GoUInt8));
	s[6318] = ((58 : GoUInt8));
	s[6319] = ((42 : GoUInt8));
	s[6320] = ((58 : GoUInt8));
	s[6321] = ((42 : GoUInt8));
	s[6322] = ((58 : GoUInt8));
	s[6323] = ((42 : GoUInt8));
	s[6324] = ((58 : GoUInt8));
	s[6325] = ((42 : GoUInt8));
	s[6326] = ((10 : GoUInt8));
	s[6327] = ((10 : GoUInt8));
	s[6328] = ((10 : GoUInt8));
	s[6329] = ((10 : GoUInt8));
	s[6330] = ((10 : GoUInt8));
	s[6331] = ((10 : GoUInt8));
	s[6332] = ((10 : GoUInt8));
	s[6333] = ((10 : GoUInt8));
	s[6334] = ((10 : GoUInt8));
	s[6335] = ((10 : GoUInt8));
	s[6336] = ((10 : GoUInt8));
	s[6337] = ((10 : GoUInt8));
	s[6338] = ((10 : GoUInt8));
	s[6339] = ((10 : GoUInt8));
	s[6340] = ((10 : GoUInt8));
	s[6341] = ((154 : GoUInt8));
	s[6342] = ((138 : GoUInt8));
	s[6343] = ((10 : GoUInt8));
	s[6344] = ((10 : GoUInt8));
	s[6345] = ((10 : GoUInt8));
	s[6346] = ((10 : GoUInt8));
	s[6347] = ((10 : GoUInt8));
	s[6348] = ((10 : GoUInt8));
	s[6349] = ((10 : GoUInt8));
	s[6350] = ((10 : GoUInt8));
	s[6351] = ((10 : GoUInt8));
	s[6352] = ((10 : GoUInt8));
	s[6353] = ((10 : GoUInt8));
	s[6354] = ((10 : GoUInt8));
	s[6355] = ((10 : GoUInt8));
	s[6356] = ((10 : GoUInt8));
	s[6357] = ((10 : GoUInt8));
	s[6358] = ((10 : GoUInt8));
	s[6359] = ((10 : GoUInt8));
	s[6360] = ((10 : GoUInt8));
	s[6361] = ((10 : GoUInt8));
	s[6362] = ((10 : GoUInt8));
	s[6363] = ((10 : GoUInt8));
	s[6364] = ((10 : GoUInt8));
	s[6365] = ((10 : GoUInt8));
	s[6366] = ((10 : GoUInt8));
	s[6367] = ((10 : GoUInt8));
	s[6368] = ((10 : GoUInt8));
	s[6369] = ((10 : GoUInt8));
	s[6370] = ((10 : GoUInt8));
	s[6371] = ((10 : GoUInt8));
	s[6372] = ((10 : GoUInt8));
	s[6373] = ((10 : GoUInt8));
	s[6374] = ((58 : GoUInt8));
	s[6375] = ((42 : GoUInt8));
	s[6376] = ((58 : GoUInt8));
	s[6377] = ((42 : GoUInt8));
	s[6378] = ((58 : GoUInt8));
	s[6379] = ((42 : GoUInt8));
	s[6380] = ((58 : GoUInt8));
	s[6381] = ((42 : GoUInt8));
	s[6382] = ((58 : GoUInt8));
	s[6383] = ((42 : GoUInt8));
	s[6384] = ((10 : GoUInt8));
	s[6385] = ((10 : GoUInt8));
	s[6386] = ((10 : GoUInt8));
	s[6387] = ((10 : GoUInt8));
	s[6388] = ((10 : GoUInt8));
	s[6389] = ((10 : GoUInt8));
	s[6390] = ((10 : GoUInt8));
	s[6391] = ((10 : GoUInt8));
	s[6392] = ((10 : GoUInt8));
	s[6393] = ((10 : GoUInt8));
	s[6394] = ((10 : GoUInt8));
	s[6395] = ((10 : GoUInt8));
	s[6396] = ((10 : GoUInt8));
	s[6397] = ((10 : GoUInt8));
	s[6398] = ((10 : GoUInt8));
	s[6399] = ((10 : GoUInt8));
	s[6400] = ((10 : GoUInt8));
	s[6401] = ((10 : GoUInt8));
	s[6402] = ((10 : GoUInt8));
	s[6403] = ((122 : GoUInt8));
	s[6404] = ((106 : GoUInt8));
	s[6405] = ((154 : GoUInt8));
	s[6406] = ((138 : GoUInt8));
	s[6407] = ((186 : GoUInt8));
	s[6408] = ((170 : GoUInt8));
	s[6409] = ((154 : GoUInt8));
	s[6410] = ((138 : GoUInt8));
	s[6411] = ((122 : GoUInt8));
	s[6412] = ((106 : GoUInt8));
	s[6413] = ((218 : GoUInt8));
	s[6414] = ((42 : GoUInt8));
	s[6415] = ((58 : GoUInt8));
	s[6416] = ((202 : GoUInt8));
	s[6417] = ((154 : GoUInt8));
	s[6418] = ((138 : GoUInt8));
	s[6419] = ((122 : GoUInt8));
	s[6420] = ((106 : GoUInt8));
	s[6421] = ((154 : GoUInt8));
	s[6422] = ((138 : GoUInt8));
	s[6423] = ((186 : GoUInt8));
	s[6424] = ((170 : GoUInt8));
	s[6425] = ((10 : GoUInt8));
	s[6426] = ((10 : GoUInt8));
	s[6427] = ((10 : GoUInt8));
	s[6428] = ((10 : GoUInt8));
	s[6429] = ((10 : GoUInt8));
	s[6430] = ((10 : GoUInt8));
	s[6431] = ((10 : GoUInt8));
	s[6432] = ((10 : GoUInt8));
	s[6433] = ((10 : GoUInt8));
	s[6434] = ((10 : GoUInt8));
	s[6435] = ((10 : GoUInt8));
	s[6436] = ((10 : GoUInt8));
	s[6437] = ((10 : GoUInt8));
	s[6438] = ((10 : GoUInt8));
	s[6439] = ((10 : GoUInt8));
	s[6440] = ((10 : GoUInt8));
	s[6441] = ((10 : GoUInt8));
	s[6442] = ((10 : GoUInt8));
	s[6443] = ((10 : GoUInt8));
	s[6444] = ((10 : GoUInt8));
	s[6445] = ((10 : GoUInt8));
	s[6446] = ((10 : GoUInt8));
	s[6447] = ((10 : GoUInt8));
	s[6448] = ((10 : GoUInt8));
	s[6449] = ((10 : GoUInt8));
	s[6450] = ((10 : GoUInt8));
	s[6451] = ((10 : GoUInt8));
	s[6452] = ((10 : GoUInt8));
	s[6453] = ((10 : GoUInt8));
	s[6454] = ((10 : GoUInt8));
	s[6455] = ((10 : GoUInt8));
	s[6456] = ((10 : GoUInt8));
	s[6457] = ((10 : GoUInt8));
	s[6458] = ((10 : GoUInt8));
	s[6459] = ((10 : GoUInt8));
	s[6460] = ((10 : GoUInt8));
	s[6461] = ((10 : GoUInt8));
	s[6462] = ((10 : GoUInt8));
	s[6463] = ((10 : GoUInt8));
	s[6464] = ((10 : GoUInt8));
	s[6465] = ((10 : GoUInt8));
	s[6466] = ((10 : GoUInt8));
	s[6467] = ((10 : GoUInt8));
	s[6468] = ((10 : GoUInt8));
	s[6469] = ((10 : GoUInt8));
	s[6470] = ((10 : GoUInt8));
	s[6471] = ((10 : GoUInt8));
	s[6472] = ((10 : GoUInt8));
	s[6473] = ((10 : GoUInt8));
	s[6474] = ((10 : GoUInt8));
	s[6475] = ((10 : GoUInt8));
	s[6476] = ((10 : GoUInt8));
	s[6477] = ((10 : GoUInt8));
	s[6478] = ((10 : GoUInt8));
	s[6479] = ((10 : GoUInt8));
	s[6480] = ((10 : GoUInt8));
	s[6481] = ((10 : GoUInt8));
	s[6482] = ((10 : GoUInt8));
	s[6483] = ((10 : GoUInt8));
	s[6484] = ((10 : GoUInt8));
	s[6485] = ((10 : GoUInt8));
	s[6486] = ((10 : GoUInt8));
	s[6487] = ((10 : GoUInt8));
	s[6488] = ((58 : GoUInt8));
	s[6489] = ((42 : GoUInt8));
	s[6490] = ((58 : GoUInt8));
	s[6491] = ((42 : GoUInt8));
	s[6492] = ((10 : GoUInt8));
	s[6493] = ((10 : GoUInt8));
	s[6494] = ((10 : GoUInt8));
	s[6495] = ((10 : GoUInt8));
	s[6496] = ((10 : GoUInt8));
	s[6497] = ((10 : GoUInt8));
	s[6498] = ((10 : GoUInt8));
	s[6499] = ((10 : GoUInt8));
	s[6500] = ((10 : GoUInt8));
	s[6501] = ((10 : GoUInt8));
	s[6502] = ((10 : GoUInt8));
	s[6503] = ((10 : GoUInt8));
	s[6504] = ((10 : GoUInt8));
	s[6505] = ((10 : GoUInt8));
	s[6506] = ((10 : GoUInt8));
	s[6507] = ((10 : GoUInt8));
	s[6508] = ((10 : GoUInt8));
	s[6509] = ((10 : GoUInt8));
	s[6510] = ((10 : GoUInt8));
	s[6511] = ((10 : GoUInt8));
	s[6512] = ((10 : GoUInt8));
	s[6513] = ((10 : GoUInt8));
	s[6514] = ((10 : GoUInt8));
	s[6515] = ((10 : GoUInt8));
	s[6516] = ((10 : GoUInt8));
	s[6517] = ((10 : GoUInt8));
	s[6518] = ((10 : GoUInt8));
	s[6519] = ((10 : GoUInt8));
	s[6520] = ((10 : GoUInt8));
	s[6521] = ((10 : GoUInt8));
	s[6522] = ((10 : GoUInt8));
	s[6523] = ((10 : GoUInt8));
	s[6524] = ((58 : GoUInt8));
	s[6525] = ((42 : GoUInt8));
	s[6526] = ((10 : GoUInt8));
	s[6527] = ((10 : GoUInt8));
	s[6528] = ((10 : GoUInt8));
	s[6529] = ((10 : GoUInt8));
	s[6530] = ((10 : GoUInt8));
	s[6531] = ((10 : GoUInt8));
	s[6532] = ((10 : GoUInt8));
	s[6533] = ((10 : GoUInt8));
	s[6534] = ((10 : GoUInt8));
	s[6535] = ((10 : GoUInt8));
	s[6536] = ((10 : GoUInt8));
	s[6537] = ((10 : GoUInt8));
	s[6538] = ((10 : GoUInt8));
	s[6539] = ((10 : GoUInt8));
	s[6540] = ((10 : GoUInt8));
	s[6541] = ((10 : GoUInt8));
	s[6542] = ((10 : GoUInt8));
	s[6543] = ((10 : GoUInt8));
	s[6544] = ((10 : GoUInt8));
	s[6545] = ((10 : GoUInt8));
	s[6546] = ((10 : GoUInt8));
	s[6547] = ((10 : GoUInt8));
	s[6548] = ((10 : GoUInt8));
	s[6549] = ((10 : GoUInt8));
	s[6550] = ((10 : GoUInt8));
	s[6551] = ((10 : GoUInt8));
	s[6552] = ((10 : GoUInt8));
	s[6553] = ((10 : GoUInt8));
	s[6554] = ((10 : GoUInt8));
	s[6555] = ((10 : GoUInt8));
	s[6556] = ((10 : GoUInt8));
	s[6557] = ((10 : GoUInt8));
	s[6558] = ((10 : GoUInt8));
	s[6559] = ((10 : GoUInt8));
	s[6560] = ((10 : GoUInt8));
	s[6561] = ((10 : GoUInt8));
	s[6562] = ((10 : GoUInt8));
	s[6563] = ((10 : GoUInt8));
	s[6564] = ((10 : GoUInt8));
	s[6565] = ((10 : GoUInt8));
	s[6566] = ((10 : GoUInt8));
	s[6567] = ((10 : GoUInt8));
	s[6568] = ((10 : GoUInt8));
	s[6569] = ((10 : GoUInt8));
	s[6570] = ((10 : GoUInt8));
	s[6571] = ((10 : GoUInt8));
	s[6572] = ((10 : GoUInt8));
	s[6573] = ((10 : GoUInt8));
	s[6574] = ((10 : GoUInt8));
	s[6575] = ((10 : GoUInt8));
	s[6576] = ((10 : GoUInt8));
	s[6577] = ((10 : GoUInt8));
	s[6578] = ((10 : GoUInt8));
	s[6579] = ((10 : GoUInt8));
	s[6582] = ((10 : GoUInt8));
	s[6583] = ((10 : GoUInt8));
	s[6584] = ((10 : GoUInt8));
	s[6585] = ((10 : GoUInt8));
	s[6586] = ((10 : GoUInt8));
	s[6587] = ((10 : GoUInt8));
	s[6588] = ((10 : GoUInt8));
	s[6589] = ((10 : GoUInt8));
	s[6590] = ((10 : GoUInt8));
	s[6591] = ((10 : GoUInt8));
	s[6592] = ((10 : GoUInt8));
	s[6593] = ((10 : GoUInt8));
	s[6594] = ((10 : GoUInt8));
	s[6595] = ((10 : GoUInt8));
	s[6596] = ((10 : GoUInt8));
	s[6597] = ((10 : GoUInt8));
	s[6598] = ((10 : GoUInt8));
	s[6599] = ((10 : GoUInt8));
	s[6600] = ((10 : GoUInt8));
	s[6601] = ((10 : GoUInt8));
	s[6602] = ((10 : GoUInt8));
	s[6603] = ((10 : GoUInt8));
	s[6604] = ((10 : GoUInt8));
	s[6605] = ((10 : GoUInt8));
	s[6606] = ((10 : GoUInt8));
	s[6607] = ((10 : GoUInt8));
	s[6608] = ((10 : GoUInt8));
	s[6609] = ((10 : GoUInt8));
	s[6610] = ((10 : GoUInt8));
	s[6611] = ((10 : GoUInt8));
	s[6612] = ((10 : GoUInt8));
	s[6613] = ((10 : GoUInt8));
	s[6615] = ((10 : GoUInt8));
	s[6616] = ((10 : GoUInt8));
	s[6617] = ((10 : GoUInt8));
	s[6618] = ((10 : GoUInt8));
	s[6619] = ((10 : GoUInt8));
	s[6620] = ((10 : GoUInt8));
	s[6621] = ((10 : GoUInt8));
	s[6622] = ((10 : GoUInt8));
	s[6623] = ((10 : GoUInt8));
	s[6624] = ((10 : GoUInt8));
	s[6625] = ((10 : GoUInt8));
	s[6626] = ((10 : GoUInt8));
	s[6627] = ((10 : GoUInt8));
	s[6628] = ((10 : GoUInt8));
	s[6629] = ((10 : GoUInt8));
	s[6630] = ((10 : GoUInt8));
	s[6631] = ((10 : GoUInt8));
	s[6632] = ((10 : GoUInt8));
	s[6633] = ((10 : GoUInt8));
	s[6634] = ((10 : GoUInt8));
	s[6635] = ((10 : GoUInt8));
	s[6636] = ((10 : GoUInt8));
	s[6637] = ((10 : GoUInt8));
	s[6638] = ((10 : GoUInt8));
	s[6639] = ((10 : GoUInt8));
	s[6640] = ((10 : GoUInt8));
	s[6641] = ((10 : GoUInt8));
	s[6642] = ((10 : GoUInt8));
	s[6643] = ((10 : GoUInt8));
	s[6644] = ((10 : GoUInt8));
	s[6645] = ((10 : GoUInt8));
	s[6646] = ((10 : GoUInt8));
	s[6647] = ((10 : GoUInt8));
	s[6648] = ((10 : GoUInt8));
	s[6649] = ((10 : GoUInt8));
	s[6650] = ((10 : GoUInt8));
	s[6651] = ((10 : GoUInt8));
	s[6652] = ((10 : GoUInt8));
	s[6653] = ((10 : GoUInt8));
	s[6654] = ((10 : GoUInt8));
	s[6655] = ((10 : GoUInt8));
	s[6693] = ((10 : GoUInt8));
	s[6694] = ((10 : GoUInt8));
	s[6695] = ((10 : GoUInt8));
	s[6696] = ((10 : GoUInt8));
	s[6697] = ((10 : GoUInt8));
	s[6698] = ((10 : GoUInt8));
	s[6703] = ((12 : GoUInt8));
	s[6704] = ((12 : GoUInt8));
	s[6705] = ((12 : GoUInt8));
	s[6713] = ((10 : GoUInt8));
	s[6714] = ((10 : GoUInt8));
	s[6715] = ((10 : GoUInt8));
	s[6716] = ((10 : GoUInt8));
	s[6717] = ((10 : GoUInt8));
	s[6718] = ((10 : GoUInt8));
	s[6719] = ((10 : GoUInt8));
	s[6783] = ((12 : GoUInt8));
	s[6816] = ((12 : GoUInt8));
	s[6817] = ((12 : GoUInt8));
	s[6818] = ((12 : GoUInt8));
	s[6819] = ((12 : GoUInt8));
	s[6820] = ((12 : GoUInt8));
	s[6821] = ((12 : GoUInt8));
	s[6822] = ((12 : GoUInt8));
	s[6823] = ((12 : GoUInt8));
	s[6824] = ((12 : GoUInt8));
	s[6825] = ((12 : GoUInt8));
	s[6826] = ((12 : GoUInt8));
	s[6827] = ((12 : GoUInt8));
	s[6828] = ((12 : GoUInt8));
	s[6829] = ((12 : GoUInt8));
	s[6830] = ((12 : GoUInt8));
	s[6831] = ((12 : GoUInt8));
	s[6832] = ((12 : GoUInt8));
	s[6833] = ((12 : GoUInt8));
	s[6834] = ((12 : GoUInt8));
	s[6835] = ((12 : GoUInt8));
	s[6836] = ((12 : GoUInt8));
	s[6837] = ((12 : GoUInt8));
	s[6838] = ((12 : GoUInt8));
	s[6839] = ((12 : GoUInt8));
	s[6840] = ((12 : GoUInt8));
	s[6841] = ((12 : GoUInt8));
	s[6842] = ((12 : GoUInt8));
	s[6843] = ((12 : GoUInt8));
	s[6844] = ((12 : GoUInt8));
	s[6845] = ((12 : GoUInt8));
	s[6846] = ((12 : GoUInt8));
	s[6847] = ((12 : GoUInt8));
	s[6848] = ((10 : GoUInt8));
	s[6849] = ((10 : GoUInt8));
	s[6850] = ((10 : GoUInt8));
	s[6851] = ((10 : GoUInt8));
	s[6852] = ((10 : GoUInt8));
	s[6853] = ((10 : GoUInt8));
	s[6854] = ((10 : GoUInt8));
	s[6855] = ((10 : GoUInt8));
	s[6856] = ((10 : GoUInt8));
	s[6857] = ((10 : GoUInt8));
	s[6858] = ((10 : GoUInt8));
	s[6859] = ((10 : GoUInt8));
	s[6860] = ((10 : GoUInt8));
	s[6861] = ((10 : GoUInt8));
	s[6862] = ((10 : GoUInt8));
	s[6863] = ((10 : GoUInt8));
	s[6864] = ((10 : GoUInt8));
	s[6865] = ((10 : GoUInt8));
	s[6866] = ((10 : GoUInt8));
	s[6867] = ((10 : GoUInt8));
	s[6868] = ((10 : GoUInt8));
	s[6869] = ((10 : GoUInt8));
	s[6870] = ((10 : GoUInt8));
	s[6871] = ((10 : GoUInt8));
	s[6872] = ((10 : GoUInt8));
	s[6873] = ((10 : GoUInt8));
	s[6874] = ((10 : GoUInt8));
	s[6875] = ((10 : GoUInt8));
	s[6876] = ((10 : GoUInt8));
	s[6877] = ((10 : GoUInt8));
	s[6878] = ((10 : GoUInt8));
	s[6879] = ((10 : GoUInt8));
	s[6880] = ((10 : GoUInt8));
	s[6881] = ((10 : GoUInt8));
	s[6882] = ((58 : GoUInt8));
	s[6883] = ((42 : GoUInt8));
	s[6884] = ((58 : GoUInt8));
	s[6885] = ((42 : GoUInt8));
	s[6886] = ((58 : GoUInt8));
	s[6887] = ((42 : GoUInt8));
	s[6888] = ((58 : GoUInt8));
	s[6889] = ((42 : GoUInt8));
	s[6890] = ((10 : GoUInt8));
	s[6891] = ((10 : GoUInt8));
	s[6892] = ((10 : GoUInt8));
	s[6893] = ((10 : GoUInt8));
	s[6894] = ((10 : GoUInt8));
	s[6895] = ((10 : GoUInt8));
	s[6896] = ((10 : GoUInt8));
	s[6897] = ((10 : GoUInt8));
	s[6898] = ((10 : GoUInt8));
	s[6899] = ((10 : GoUInt8));
	s[6900] = ((10 : GoUInt8));
	s[6901] = ((10 : GoUInt8));
	s[6902] = ((10 : GoUInt8));
	s[6903] = ((10 : GoUInt8));
	s[6904] = ((10 : GoUInt8));
	s[6905] = ((10 : GoUInt8));
	s[6906] = ((10 : GoUInt8));
	s[6907] = ((10 : GoUInt8));
	s[6908] = ((10 : GoUInt8));
	s[6909] = ((10 : GoUInt8));
	s[6910] = ((10 : GoUInt8));
	s[6911] = ((10 : GoUInt8));
	s[6912] = ((10 : GoUInt8));
	s[6913] = ((10 : GoUInt8));
	s[6914] = ((10 : GoUInt8));
	s[6915] = ((10 : GoUInt8));
	s[6916] = ((10 : GoUInt8));
	s[6917] = ((10 : GoUInt8));
	s[6918] = ((10 : GoUInt8));
	s[6919] = ((10 : GoUInt8));
	s[6920] = ((10 : GoUInt8));
	s[6921] = ((10 : GoUInt8));
	s[6922] = ((10 : GoUInt8));
	s[6923] = ((10 : GoUInt8));
	s[6924] = ((10 : GoUInt8));
	s[6925] = ((10 : GoUInt8));
	s[6926] = ((10 : GoUInt8));
	s[6927] = ((10 : GoUInt8));
	s[6928] = ((10 : GoUInt8));
	s[6929] = ((10 : GoUInt8));
	s[6930] = ((10 : GoUInt8));
	s[6976] = ((10 : GoUInt8));
	s[6977] = ((10 : GoUInt8));
	s[6978] = ((10 : GoUInt8));
	s[6979] = ((10 : GoUInt8));
	s[6980] = ((10 : GoUInt8));
	s[6981] = ((10 : GoUInt8));
	s[6982] = ((10 : GoUInt8));
	s[6983] = ((10 : GoUInt8));
	s[6984] = ((10 : GoUInt8));
	s[6985] = ((10 : GoUInt8));
	s[6986] = ((10 : GoUInt8));
	s[6987] = ((10 : GoUInt8));
	s[6988] = ((10 : GoUInt8));
	s[6989] = ((10 : GoUInt8));
	s[6990] = ((10 : GoUInt8));
	s[6991] = ((10 : GoUInt8));
	s[6992] = ((10 : GoUInt8));
	s[6993] = ((10 : GoUInt8));
	s[6994] = ((10 : GoUInt8));
	s[6995] = ((10 : GoUInt8));
	s[6996] = ((10 : GoUInt8));
	s[6997] = ((10 : GoUInt8));
	s[6998] = ((10 : GoUInt8));
	s[6999] = ((10 : GoUInt8));
	s[7000] = ((10 : GoUInt8));
	s[7001] = ((10 : GoUInt8));
	s[7003] = ((10 : GoUInt8));
	s[7004] = ((10 : GoUInt8));
	s[7005] = ((10 : GoUInt8));
	s[7006] = ((10 : GoUInt8));
	s[7007] = ((10 : GoUInt8));
	s[7008] = ((10 : GoUInt8));
	s[7009] = ((10 : GoUInt8));
	s[7010] = ((10 : GoUInt8));
	s[7011] = ((10 : GoUInt8));
	s[7012] = ((10 : GoUInt8));
	s[7013] = ((10 : GoUInt8));
	s[7014] = ((10 : GoUInt8));
	s[7015] = ((10 : GoUInt8));
	s[7016] = ((10 : GoUInt8));
	s[7017] = ((10 : GoUInt8));
	s[7018] = ((10 : GoUInt8));
	s[7019] = ((10 : GoUInt8));
	s[7020] = ((10 : GoUInt8));
	s[7021] = ((10 : GoUInt8));
	s[7022] = ((10 : GoUInt8));
	s[7023] = ((10 : GoUInt8));
	s[7024] = ((10 : GoUInt8));
	s[7025] = ((10 : GoUInt8));
	s[7026] = ((10 : GoUInt8));
	s[7027] = ((10 : GoUInt8));
	s[7028] = ((10 : GoUInt8));
	s[7029] = ((10 : GoUInt8));
	s[7030] = ((10 : GoUInt8));
	s[7031] = ((10 : GoUInt8));
	s[7032] = ((10 : GoUInt8));
	s[7033] = ((10 : GoUInt8));
	s[7034] = ((10 : GoUInt8));
	s[7035] = ((10 : GoUInt8));
	s[7036] = ((10 : GoUInt8));
	s[7037] = ((10 : GoUInt8));
	s[7038] = ((10 : GoUInt8));
	s[7039] = ((10 : GoUInt8));
	s[7040] = ((10 : GoUInt8));
	s[7041] = ((10 : GoUInt8));
	s[7042] = ((10 : GoUInt8));
	s[7043] = ((10 : GoUInt8));
	s[7044] = ((10 : GoUInt8));
	s[7045] = ((10 : GoUInt8));
	s[7046] = ((10 : GoUInt8));
	s[7047] = ((10 : GoUInt8));
	s[7048] = ((10 : GoUInt8));
	s[7049] = ((10 : GoUInt8));
	s[7050] = ((10 : GoUInt8));
	s[7051] = ((10 : GoUInt8));
	s[7052] = ((10 : GoUInt8));
	s[7053] = ((10 : GoUInt8));
	s[7054] = ((10 : GoUInt8));
	s[7055] = ((10 : GoUInt8));
	s[7056] = ((10 : GoUInt8));
	s[7057] = ((10 : GoUInt8));
	s[7058] = ((10 : GoUInt8));
	s[7059] = ((10 : GoUInt8));
	s[7060] = ((10 : GoUInt8));
	s[7061] = ((10 : GoUInt8));
	s[7062] = ((10 : GoUInt8));
	s[7063] = ((10 : GoUInt8));
	s[7064] = ((10 : GoUInt8));
	s[7065] = ((10 : GoUInt8));
	s[7066] = ((10 : GoUInt8));
	s[7067] = ((10 : GoUInt8));
	s[7068] = ((10 : GoUInt8));
	s[7069] = ((10 : GoUInt8));
	s[7070] = ((10 : GoUInt8));
	s[7071] = ((10 : GoUInt8));
	s[7072] = ((10 : GoUInt8));
	s[7073] = ((10 : GoUInt8));
	s[7074] = ((10 : GoUInt8));
	s[7075] = ((10 : GoUInt8));
	s[7076] = ((10 : GoUInt8));
	s[7077] = ((10 : GoUInt8));
	s[7078] = ((10 : GoUInt8));
	s[7079] = ((10 : GoUInt8));
	s[7080] = ((10 : GoUInt8));
	s[7081] = ((10 : GoUInt8));
	s[7082] = ((10 : GoUInt8));
	s[7083] = ((10 : GoUInt8));
	s[7084] = ((10 : GoUInt8));
	s[7085] = ((10 : GoUInt8));
	s[7086] = ((10 : GoUInt8));
	s[7087] = ((10 : GoUInt8));
	s[7088] = ((10 : GoUInt8));
	s[7089] = ((10 : GoUInt8));
	s[7090] = ((10 : GoUInt8));
	s[7091] = ((10 : GoUInt8));
	s[7104] = ((10 : GoUInt8));
	s[7105] = ((10 : GoUInt8));
	s[7106] = ((10 : GoUInt8));
	s[7107] = ((10 : GoUInt8));
	s[7108] = ((10 : GoUInt8));
	s[7109] = ((10 : GoUInt8));
	s[7110] = ((10 : GoUInt8));
	s[7111] = ((10 : GoUInt8));
	s[7112] = ((10 : GoUInt8));
	s[7113] = ((10 : GoUInt8));
	s[7114] = ((10 : GoUInt8));
	s[7115] = ((10 : GoUInt8));
	s[7116] = ((10 : GoUInt8));
	s[7117] = ((10 : GoUInt8));
	s[7118] = ((10 : GoUInt8));
	s[7119] = ((10 : GoUInt8));
	s[7120] = ((10 : GoUInt8));
	s[7121] = ((10 : GoUInt8));
	s[7122] = ((10 : GoUInt8));
	s[7123] = ((10 : GoUInt8));
	s[7124] = ((10 : GoUInt8));
	s[7125] = ((10 : GoUInt8));
	s[7152] = ((10 : GoUInt8));
	s[7153] = ((10 : GoUInt8));
	s[7154] = ((10 : GoUInt8));
	s[7155] = ((10 : GoUInt8));
	s[7156] = ((10 : GoUInt8));
	s[7157] = ((10 : GoUInt8));
	s[7158] = ((10 : GoUInt8));
	s[7159] = ((10 : GoUInt8));
	s[7160] = ((10 : GoUInt8));
	s[7161] = ((10 : GoUInt8));
	s[7162] = ((10 : GoUInt8));
	s[7163] = ((10 : GoUInt8));
	s[7168] = ((9 : GoUInt8));
	s[7169] = ((10 : GoUInt8));
	s[7170] = ((10 : GoUInt8));
	s[7171] = ((10 : GoUInt8));
	s[7172] = ((10 : GoUInt8));
	s[7176] = ((58 : GoUInt8));
	s[7177] = ((42 : GoUInt8));
	s[7178] = ((58 : GoUInt8));
	s[7179] = ((42 : GoUInt8));
	s[7180] = ((58 : GoUInt8));
	s[7181] = ((42 : GoUInt8));
	s[7182] = ((58 : GoUInt8));
	s[7183] = ((42 : GoUInt8));
	s[7184] = ((58 : GoUInt8));
	s[7185] = ((42 : GoUInt8));
	s[7186] = ((10 : GoUInt8));
	s[7187] = ((10 : GoUInt8));
	s[7188] = ((58 : GoUInt8));
	s[7189] = ((42 : GoUInt8));
	s[7190] = ((58 : GoUInt8));
	s[7191] = ((42 : GoUInt8));
	s[7192] = ((58 : GoUInt8));
	s[7193] = ((42 : GoUInt8));
	s[7194] = ((58 : GoUInt8));
	s[7195] = ((42 : GoUInt8));
	s[7196] = ((10 : GoUInt8));
	s[7197] = ((10 : GoUInt8));
	s[7198] = ((10 : GoUInt8));
	s[7199] = ((10 : GoUInt8));
	s[7200] = ((10 : GoUInt8));
	s[7210] = ((12 : GoUInt8));
	s[7211] = ((12 : GoUInt8));
	s[7212] = ((12 : GoUInt8));
	s[7213] = ((12 : GoUInt8));
	s[7216] = ((10 : GoUInt8));
	s[7222] = ((10 : GoUInt8));
	s[7223] = ((10 : GoUInt8));
	s[7229] = ((10 : GoUInt8));
	s[7230] = ((10 : GoUInt8));
	s[7231] = ((10 : GoUInt8));
	s[7257] = ((12 : GoUInt8));
	s[7258] = ((12 : GoUInt8));
	s[7259] = ((10 : GoUInt8));
	s[7260] = ((10 : GoUInt8));
	s[7264] = ((10 : GoUInt8));
	s[7355] = ((10 : GoUInt8));
	s[7360] = ((10 : GoUInt8));
	s[7361] = ((10 : GoUInt8));
	s[7362] = ((10 : GoUInt8));
	s[7363] = ((10 : GoUInt8));
	s[7364] = ((10 : GoUInt8));
	s[7365] = ((10 : GoUInt8));
	s[7366] = ((10 : GoUInt8));
	s[7367] = ((10 : GoUInt8));
	s[7368] = ((10 : GoUInt8));
	s[7369] = ((10 : GoUInt8));
	s[7370] = ((10 : GoUInt8));
	s[7371] = ((10 : GoUInt8));
	s[7372] = ((10 : GoUInt8));
	s[7373] = ((10 : GoUInt8));
	s[7374] = ((10 : GoUInt8));
	s[7375] = ((10 : GoUInt8));
	s[7376] = ((10 : GoUInt8));
	s[7377] = ((10 : GoUInt8));
	s[7378] = ((10 : GoUInt8));
	s[7379] = ((10 : GoUInt8));
	s[7380] = ((10 : GoUInt8));
	s[7381] = ((10 : GoUInt8));
	s[7382] = ((10 : GoUInt8));
	s[7383] = ((10 : GoUInt8));
	s[7384] = ((10 : GoUInt8));
	s[7385] = ((10 : GoUInt8));
	s[7386] = ((10 : GoUInt8));
	s[7387] = ((10 : GoUInt8));
	s[7388] = ((10 : GoUInt8));
	s[7389] = ((10 : GoUInt8));
	s[7390] = ((10 : GoUInt8));
	s[7391] = ((10 : GoUInt8));
	s[7392] = ((10 : GoUInt8));
	s[7393] = ((10 : GoUInt8));
	s[7394] = ((10 : GoUInt8));
	s[7395] = ((10 : GoUInt8));
	s[7453] = ((10 : GoUInt8));
	s[7454] = ((10 : GoUInt8));
	s[7504] = ((10 : GoUInt8));
	s[7505] = ((10 : GoUInt8));
	s[7506] = ((10 : GoUInt8));
	s[7507] = ((10 : GoUInt8));
	s[7508] = ((10 : GoUInt8));
	s[7509] = ((10 : GoUInt8));
	s[7510] = ((10 : GoUInt8));
	s[7511] = ((10 : GoUInt8));
	s[7512] = ((10 : GoUInt8));
	s[7513] = ((10 : GoUInt8));
	s[7514] = ((10 : GoUInt8));
	s[7515] = ((10 : GoUInt8));
	s[7516] = ((10 : GoUInt8));
	s[7517] = ((10 : GoUInt8));
	s[7518] = ((10 : GoUInt8));
	s[7519] = ((10 : GoUInt8));
	s[7548] = ((10 : GoUInt8));
	s[7549] = ((10 : GoUInt8));
	s[7550] = ((10 : GoUInt8));
	s[7601] = ((10 : GoUInt8));
	s[7602] = ((10 : GoUInt8));
	s[7603] = ((10 : GoUInt8));
	s[7604] = ((10 : GoUInt8));
	s[7605] = ((10 : GoUInt8));
	s[7606] = ((10 : GoUInt8));
	s[7607] = ((10 : GoUInt8));
	s[7608] = ((10 : GoUInt8));
	s[7609] = ((10 : GoUInt8));
	s[7610] = ((10 : GoUInt8));
	s[7611] = ((10 : GoUInt8));
	s[7612] = ((10 : GoUInt8));
	s[7613] = ((10 : GoUInt8));
	s[7614] = ((10 : GoUInt8));
	s[7615] = ((10 : GoUInt8));
	s[7628] = ((10 : GoUInt8));
	s[7629] = ((10 : GoUInt8));
	s[7630] = ((10 : GoUInt8));
	s[7631] = ((10 : GoUInt8));
	s[7735] = ((10 : GoUInt8));
	s[7736] = ((10 : GoUInt8));
	s[7737] = ((10 : GoUInt8));
	s[7738] = ((10 : GoUInt8));
	s[7774] = ((10 : GoUInt8));
	s[7775] = ((10 : GoUInt8));
	s[7807] = ((10 : GoUInt8));
	s[7824] = ((10 : GoUInt8));
	s[7825] = ((10 : GoUInt8));
	s[7826] = ((10 : GoUInt8));
	s[7827] = ((10 : GoUInt8));
	s[7828] = ((10 : GoUInt8));
	s[7829] = ((10 : GoUInt8));
	s[7830] = ((10 : GoUInt8));
	s[7831] = ((10 : GoUInt8));
	s[7832] = ((10 : GoUInt8));
	s[7833] = ((10 : GoUInt8));
	s[7834] = ((10 : GoUInt8));
	s[7835] = ((10 : GoUInt8));
	s[7836] = ((10 : GoUInt8));
	s[7837] = ((10 : GoUInt8));
	s[7838] = ((10 : GoUInt8));
	s[7839] = ((10 : GoUInt8));
	s[7840] = ((10 : GoUInt8));
	s[7841] = ((10 : GoUInt8));
	s[7842] = ((10 : GoUInt8));
	s[7843] = ((10 : GoUInt8));
	s[7844] = ((10 : GoUInt8));
	s[7845] = ((10 : GoUInt8));
	s[7846] = ((10 : GoUInt8));
	s[7847] = ((10 : GoUInt8));
	s[7848] = ((10 : GoUInt8));
	s[7849] = ((10 : GoUInt8));
	s[7850] = ((10 : GoUInt8));
	s[7851] = ((10 : GoUInt8));
	s[7852] = ((10 : GoUInt8));
	s[7853] = ((10 : GoUInt8));
	s[7854] = ((10 : GoUInt8));
	s[7855] = ((10 : GoUInt8));
	s[7856] = ((10 : GoUInt8));
	s[7857] = ((10 : GoUInt8));
	s[7858] = ((10 : GoUInt8));
	s[7859] = ((10 : GoUInt8));
	s[7860] = ((10 : GoUInt8));
	s[7861] = ((10 : GoUInt8));
	s[7862] = ((10 : GoUInt8));
	s[7863] = ((10 : GoUInt8));
	s[7864] = ((10 : GoUInt8));
	s[7865] = ((10 : GoUInt8));
	s[7866] = ((10 : GoUInt8));
	s[7867] = ((10 : GoUInt8));
	s[7868] = ((10 : GoUInt8));
	s[7869] = ((10 : GoUInt8));
	s[7870] = ((10 : GoUInt8));
	s[7871] = ((10 : GoUInt8));
	s[7872] = ((10 : GoUInt8));
	s[7873] = ((10 : GoUInt8));
	s[7874] = ((10 : GoUInt8));
	s[7875] = ((10 : GoUInt8));
	s[7876] = ((10 : GoUInt8));
	s[7877] = ((10 : GoUInt8));
	s[7878] = ((10 : GoUInt8));
	s[7949] = ((10 : GoUInt8));
	s[7950] = ((10 : GoUInt8));
	s[7951] = ((10 : GoUInt8));
	s[8047] = ((12 : GoUInt8));
	s[8048] = ((12 : GoUInt8));
	s[8049] = ((12 : GoUInt8));
	s[8050] = ((12 : GoUInt8));
	s[8051] = ((10 : GoUInt8));
	s[8052] = ((12 : GoUInt8));
	s[8053] = ((12 : GoUInt8));
	s[8054] = ((12 : GoUInt8));
	s[8055] = ((12 : GoUInt8));
	s[8056] = ((12 : GoUInt8));
	s[8057] = ((12 : GoUInt8));
	s[8058] = ((12 : GoUInt8));
	s[8059] = ((12 : GoUInt8));
	s[8060] = ((12 : GoUInt8));
	s[8061] = ((12 : GoUInt8));
	s[8062] = ((10 : GoUInt8));
	s[8063] = ((10 : GoUInt8));
	s[8094] = ((12 : GoUInt8));
	s[8095] = ((12 : GoUInt8));
	s[8176] = ((12 : GoUInt8));
	s[8177] = ((12 : GoUInt8));
	s[8192] = ((10 : GoUInt8));
	s[8193] = ((10 : GoUInt8));
	s[8194] = ((10 : GoUInt8));
	s[8195] = ((10 : GoUInt8));
	s[8196] = ((10 : GoUInt8));
	s[8197] = ((10 : GoUInt8));
	s[8198] = ((10 : GoUInt8));
	s[8199] = ((10 : GoUInt8));
	s[8200] = ((10 : GoUInt8));
	s[8201] = ((10 : GoUInt8));
	s[8202] = ((10 : GoUInt8));
	s[8203] = ((10 : GoUInt8));
	s[8204] = ((10 : GoUInt8));
	s[8205] = ((10 : GoUInt8));
	s[8206] = ((10 : GoUInt8));
	s[8207] = ((10 : GoUInt8));
	s[8208] = ((10 : GoUInt8));
	s[8209] = ((10 : GoUInt8));
	s[8210] = ((10 : GoUInt8));
	s[8211] = ((10 : GoUInt8));
	s[8212] = ((10 : GoUInt8));
	s[8213] = ((10 : GoUInt8));
	s[8214] = ((10 : GoUInt8));
	s[8215] = ((10 : GoUInt8));
	s[8216] = ((10 : GoUInt8));
	s[8217] = ((10 : GoUInt8));
	s[8218] = ((10 : GoUInt8));
	s[8219] = ((10 : GoUInt8));
	s[8220] = ((10 : GoUInt8));
	s[8221] = ((10 : GoUInt8));
	s[8222] = ((10 : GoUInt8));
	s[8223] = ((10 : GoUInt8));
	s[8224] = ((10 : GoUInt8));
	s[8225] = ((10 : GoUInt8));
	s[8264] = ((10 : GoUInt8));
	s[8322] = ((12 : GoUInt8));
	s[8326] = ((12 : GoUInt8));
	s[8331] = ((12 : GoUInt8));
	s[8357] = ((12 : GoUInt8));
	s[8358] = ((12 : GoUInt8));
	s[8360] = ((10 : GoUInt8));
	s[8361] = ((10 : GoUInt8));
	s[8362] = ((10 : GoUInt8));
	s[8363] = ((10 : GoUInt8));
	s[8364] = ((12 : GoUInt8));
	s[8376] = ((4 : GoUInt8));
	s[8377] = ((4 : GoUInt8));
	s[8436] = ((10 : GoUInt8));
	s[8437] = ((10 : GoUInt8));
	s[8438] = ((10 : GoUInt8));
	s[8439] = ((10 : GoUInt8));
	s[8452] = ((12 : GoUInt8));
	s[8453] = ((12 : GoUInt8));
	s[8480] = ((12 : GoUInt8));
	s[8481] = ((12 : GoUInt8));
	s[8482] = ((12 : GoUInt8));
	s[8483] = ((12 : GoUInt8));
	s[8484] = ((12 : GoUInt8));
	s[8485] = ((12 : GoUInt8));
	s[8486] = ((12 : GoUInt8));
	s[8487] = ((12 : GoUInt8));
	s[8488] = ((12 : GoUInt8));
	s[8489] = ((12 : GoUInt8));
	s[8490] = ((12 : GoUInt8));
	s[8491] = ((12 : GoUInt8));
	s[8492] = ((12 : GoUInt8));
	s[8493] = ((12 : GoUInt8));
	s[8494] = ((12 : GoUInt8));
	s[8495] = ((12 : GoUInt8));
	s[8496] = ((12 : GoUInt8));
	s[8497] = ((12 : GoUInt8));
	s[8511] = ((12 : GoUInt8));
	s[8550] = ((12 : GoUInt8));
	s[8551] = ((12 : GoUInt8));
	s[8552] = ((12 : GoUInt8));
	s[8553] = ((12 : GoUInt8));
	s[8554] = ((12 : GoUInt8));
	s[8555] = ((12 : GoUInt8));
	s[8556] = ((12 : GoUInt8));
	s[8557] = ((12 : GoUInt8));
	s[8583] = ((12 : GoUInt8));
	s[8584] = ((12 : GoUInt8));
	s[8585] = ((12 : GoUInt8));
	s[8586] = ((12 : GoUInt8));
	s[8587] = ((12 : GoUInt8));
	s[8588] = ((12 : GoUInt8));
	s[8589] = ((12 : GoUInt8));
	s[8590] = ((12 : GoUInt8));
	s[8591] = ((12 : GoUInt8));
	s[8592] = ((12 : GoUInt8));
	s[8593] = ((12 : GoUInt8));
	s[8640] = ((12 : GoUInt8));
	s[8641] = ((12 : GoUInt8));
	s[8642] = ((12 : GoUInt8));
	s[8691] = ((12 : GoUInt8));
	s[8694] = ((12 : GoUInt8));
	s[8695] = ((12 : GoUInt8));
	s[8696] = ((12 : GoUInt8));
	s[8697] = ((12 : GoUInt8));
	s[8700] = ((12 : GoUInt8));
	s[8701] = ((12 : GoUInt8));
	s[8741] = ((12 : GoUInt8));
	s[8809] = ((12 : GoUInt8));
	s[8810] = ((12 : GoUInt8));
	s[8811] = ((12 : GoUInt8));
	s[8812] = ((12 : GoUInt8));
	s[8813] = ((12 : GoUInt8));
	s[8814] = ((12 : GoUInt8));
	s[8817] = ((12 : GoUInt8));
	s[8818] = ((12 : GoUInt8));
	s[8821] = ((12 : GoUInt8));
	s[8822] = ((12 : GoUInt8));
	s[8835] = ((12 : GoUInt8));
	s[8844] = ((12 : GoUInt8));
	s[8892] = ((12 : GoUInt8));
	s[8944] = ((12 : GoUInt8));
	s[8946] = ((12 : GoUInt8));
	s[8947] = ((12 : GoUInt8));
	s[8948] = ((12 : GoUInt8));
	s[8951] = ((12 : GoUInt8));
	s[8952] = ((12 : GoUInt8));
	s[8958] = ((12 : GoUInt8));
	s[8959] = ((12 : GoUInt8));
	s[8961] = ((12 : GoUInt8));
	s[9004] = ((12 : GoUInt8));
	s[9005] = ((12 : GoUInt8));
	s[9014] = ((12 : GoUInt8));
	s[9066] = ((10 : GoUInt8));
	s[9067] = ((10 : GoUInt8));
	s[9125] = ((12 : GoUInt8));
	s[9128] = ((12 : GoUInt8));
	s[9133] = ((12 : GoUInt8));
	s[9181] = ((1 : GoUInt8));
	s[9182] = ((12 : GoUInt8));
	s[9183] = ((1 : GoUInt8));
	s[9184] = ((1 : GoUInt8));
	s[9185] = ((1 : GoUInt8));
	s[9186] = ((1 : GoUInt8));
	s[9187] = ((1 : GoUInt8));
	s[9188] = ((1 : GoUInt8));
	s[9189] = ((1 : GoUInt8));
	s[9190] = ((1 : GoUInt8));
	s[9191] = ((1 : GoUInt8));
	s[9192] = ((1 : GoUInt8));
	s[9193] = ((3 : GoUInt8));
	s[9194] = ((1 : GoUInt8));
	s[9195] = ((1 : GoUInt8));
	s[9196] = ((1 : GoUInt8));
	s[9197] = ((1 : GoUInt8));
	s[9198] = ((1 : GoUInt8));
	s[9199] = ((1 : GoUInt8));
	s[9200] = ((1 : GoUInt8));
	s[9201] = ((1 : GoUInt8));
	s[9202] = ((1 : GoUInt8));
	s[9203] = ((1 : GoUInt8));
	s[9204] = ((1 : GoUInt8));
	s[9205] = ((1 : GoUInt8));
	s[9206] = ((1 : GoUInt8));
	s[9207] = ((1 : GoUInt8));
	s[9208] = ((1 : GoUInt8));
	s[9209] = ((1 : GoUInt8));
	s[9210] = ((1 : GoUInt8));
	s[9211] = ((1 : GoUInt8));
	s[9212] = ((1 : GoUInt8));
	s[9213] = ((1 : GoUInt8));
	s[9214] = ((1 : GoUInt8));
	s[9215] = ((1 : GoUInt8));
	s[9216] = ((1 : GoUInt8));
	s[9217] = ((1 : GoUInt8));
	s[9218] = ((1 : GoUInt8));
	s[9219] = ((1 : GoUInt8));
	s[9220] = ((1 : GoUInt8));
	s[9221] = ((1 : GoUInt8));
	s[9222] = ((1 : GoUInt8));
	s[9223] = ((1 : GoUInt8));
	s[9224] = ((1 : GoUInt8));
	s[9225] = ((1 : GoUInt8));
	s[9226] = ((1 : GoUInt8));
	s[9227] = ((1 : GoUInt8));
	s[9228] = ((1 : GoUInt8));
	s[9229] = ((1 : GoUInt8));
	s[9230] = ((1 : GoUInt8));
	s[9231] = ((1 : GoUInt8));
	s[9232] = ((13 : GoUInt8));
	s[9233] = ((13 : GoUInt8));
	s[9234] = ((13 : GoUInt8));
	s[9235] = ((13 : GoUInt8));
	s[9236] = ((13 : GoUInt8));
	s[9237] = ((13 : GoUInt8));
	s[9238] = ((13 : GoUInt8));
	s[9239] = ((13 : GoUInt8));
	s[9240] = ((13 : GoUInt8));
	s[9241] = ((13 : GoUInt8));
	s[9242] = ((13 : GoUInt8));
	s[9243] = ((13 : GoUInt8));
	s[9244] = ((13 : GoUInt8));
	s[9245] = ((13 : GoUInt8));
	s[9246] = ((13 : GoUInt8));
	s[9247] = ((13 : GoUInt8));
	s[9248] = ((13 : GoUInt8));
	s[9249] = ((13 : GoUInt8));
	s[9250] = ((13 : GoUInt8));
	s[9251] = ((13 : GoUInt8));
	s[9252] = ((13 : GoUInt8));
	s[9253] = ((13 : GoUInt8));
	s[9254] = ((13 : GoUInt8));
	s[9255] = ((13 : GoUInt8));
	s[9256] = ((13 : GoUInt8));
	s[9257] = ((13 : GoUInt8));
	s[9258] = ((13 : GoUInt8));
	s[9259] = ((13 : GoUInt8));
	s[9260] = ((13 : GoUInt8));
	s[9261] = ((13 : GoUInt8));
	s[9262] = ((13 : GoUInt8));
	s[9263] = ((13 : GoUInt8));
	s[9264] = ((13 : GoUInt8));
	s[9265] = ((13 : GoUInt8));
	s[9266] = ((13 : GoUInt8));
	s[9267] = ((13 : GoUInt8));
	s[9268] = ((13 : GoUInt8));
	s[9269] = ((13 : GoUInt8));
	s[9270] = ((13 : GoUInt8));
	s[9271] = ((13 : GoUInt8));
	s[9272] = ((13 : GoUInt8));
	s[9273] = ((13 : GoUInt8));
	s[9274] = ((13 : GoUInt8));
	s[9275] = ((13 : GoUInt8));
	s[9276] = ((13 : GoUInt8));
	s[9277] = ((13 : GoUInt8));
	s[9278] = ((13 : GoUInt8));
	s[9279] = ((13 : GoUInt8));
	s[9280] = ((13 : GoUInt8));
	s[9281] = ((13 : GoUInt8));
	s[9282] = ((13 : GoUInt8));
	s[9283] = ((13 : GoUInt8));
	s[9284] = ((13 : GoUInt8));
	s[9285] = ((13 : GoUInt8));
	s[9286] = ((13 : GoUInt8));
	s[9287] = ((13 : GoUInt8));
	s[9288] = ((13 : GoUInt8));
	s[9289] = ((13 : GoUInt8));
	s[9290] = ((13 : GoUInt8));
	s[9291] = ((13 : GoUInt8));
	s[9292] = ((13 : GoUInt8));
	s[9293] = ((13 : GoUInt8));
	s[9294] = ((13 : GoUInt8));
	s[9295] = ((13 : GoUInt8));
	s[9296] = ((13 : GoUInt8));
	s[9297] = ((13 : GoUInt8));
	s[9298] = ((13 : GoUInt8));
	s[9299] = ((13 : GoUInt8));
	s[9300] = ((13 : GoUInt8));
	s[9301] = ((13 : GoUInt8));
	s[9302] = ((13 : GoUInt8));
	s[9303] = ((13 : GoUInt8));
	s[9304] = ((13 : GoUInt8));
	s[9305] = ((13 : GoUInt8));
	s[9306] = ((13 : GoUInt8));
	s[9307] = ((13 : GoUInt8));
	s[9308] = ((13 : GoUInt8));
	s[9309] = ((13 : GoUInt8));
	s[9310] = ((13 : GoUInt8));
	s[9311] = ((13 : GoUInt8));
	s[9312] = ((13 : GoUInt8));
	s[9313] = ((13 : GoUInt8));
	s[9314] = ((13 : GoUInt8));
	s[9315] = ((13 : GoUInt8));
	s[9316] = ((13 : GoUInt8));
	s[9317] = ((13 : GoUInt8));
	s[9318] = ((13 : GoUInt8));
	s[9319] = ((13 : GoUInt8));
	s[9320] = ((13 : GoUInt8));
	s[9321] = ((13 : GoUInt8));
	s[9322] = ((13 : GoUInt8));
	s[9323] = ((13 : GoUInt8));
	s[9324] = ((13 : GoUInt8));
	s[9325] = ((13 : GoUInt8));
	s[9326] = ((13 : GoUInt8));
	s[9327] = ((13 : GoUInt8));
	s[9328] = ((13 : GoUInt8));
	s[9329] = ((13 : GoUInt8));
	s[9330] = ((13 : GoUInt8));
	s[9331] = ((13 : GoUInt8));
	s[9332] = ((13 : GoUInt8));
	s[9333] = ((13 : GoUInt8));
	s[9334] = ((13 : GoUInt8));
	s[9335] = ((13 : GoUInt8));
	s[9336] = ((13 : GoUInt8));
	s[9337] = ((13 : GoUInt8));
	s[9338] = ((13 : GoUInt8));
	s[9339] = ((13 : GoUInt8));
	s[9340] = ((13 : GoUInt8));
	s[9341] = ((13 : GoUInt8));
	s[9342] = ((10 : GoUInt8));
	s[9343] = ((10 : GoUInt8));
	s[9344] = ((13 : GoUInt8));
	s[9345] = ((13 : GoUInt8));
	s[9346] = ((13 : GoUInt8));
	s[9347] = ((13 : GoUInt8));
	s[9348] = ((13 : GoUInt8));
	s[9349] = ((13 : GoUInt8));
	s[9350] = ((13 : GoUInt8));
	s[9351] = ((13 : GoUInt8));
	s[9352] = ((13 : GoUInt8));
	s[9353] = ((13 : GoUInt8));
	s[9354] = ((13 : GoUInt8));
	s[9355] = ((13 : GoUInt8));
	s[9356] = ((13 : GoUInt8));
	s[9357] = ((13 : GoUInt8));
	s[9358] = ((13 : GoUInt8));
	s[9359] = ((13 : GoUInt8));
	s[9360] = ((11 : GoUInt8));
	s[9361] = ((11 : GoUInt8));
	s[9362] = ((11 : GoUInt8));
	s[9363] = ((11 : GoUInt8));
	s[9364] = ((11 : GoUInt8));
	s[9365] = ((11 : GoUInt8));
	s[9366] = ((11 : GoUInt8));
	s[9367] = ((11 : GoUInt8));
	s[9368] = ((11 : GoUInt8));
	s[9369] = ((11 : GoUInt8));
	s[9370] = ((11 : GoUInt8));
	s[9371] = ((11 : GoUInt8));
	s[9372] = ((11 : GoUInt8));
	s[9373] = ((11 : GoUInt8));
	s[9374] = ((11 : GoUInt8));
	s[9375] = ((11 : GoUInt8));
	s[9376] = ((11 : GoUInt8));
	s[9377] = ((11 : GoUInt8));
	s[9378] = ((11 : GoUInt8));
	s[9379] = ((11 : GoUInt8));
	s[9380] = ((11 : GoUInt8));
	s[9381] = ((11 : GoUInt8));
	s[9382] = ((11 : GoUInt8));
	s[9383] = ((11 : GoUInt8));
	s[9384] = ((11 : GoUInt8));
	s[9385] = ((11 : GoUInt8));
	s[9386] = ((11 : GoUInt8));
	s[9387] = ((11 : GoUInt8));
	s[9388] = ((11 : GoUInt8));
	s[9389] = ((11 : GoUInt8));
	s[9390] = ((11 : GoUInt8));
	s[9391] = ((11 : GoUInt8));
	s[9392] = ((13 : GoUInt8));
	s[9393] = ((13 : GoUInt8));
	s[9394] = ((13 : GoUInt8));
	s[9395] = ((13 : GoUInt8));
	s[9396] = ((13 : GoUInt8));
	s[9397] = ((13 : GoUInt8));
	s[9398] = ((13 : GoUInt8));
	s[9399] = ((13 : GoUInt8));
	s[9400] = ((13 : GoUInt8));
	s[9401] = ((13 : GoUInt8));
	s[9402] = ((13 : GoUInt8));
	s[9403] = ((13 : GoUInt8));
	s[9404] = ((13 : GoUInt8));
	s[9405] = ((10 : GoUInt8));
	s[9406] = ((13 : GoUInt8));
	s[9407] = ((13 : GoUInt8));
	s[9408] = ((12 : GoUInt8));
	s[9409] = ((12 : GoUInt8));
	s[9410] = ((12 : GoUInt8));
	s[9411] = ((12 : GoUInt8));
	s[9412] = ((12 : GoUInt8));
	s[9413] = ((12 : GoUInt8));
	s[9414] = ((12 : GoUInt8));
	s[9415] = ((12 : GoUInt8));
	s[9416] = ((12 : GoUInt8));
	s[9417] = ((12 : GoUInt8));
	s[9418] = ((12 : GoUInt8));
	s[9419] = ((12 : GoUInt8));
	s[9420] = ((12 : GoUInt8));
	s[9421] = ((12 : GoUInt8));
	s[9422] = ((12 : GoUInt8));
	s[9423] = ((12 : GoUInt8));
	s[9424] = ((10 : GoUInt8));
	s[9425] = ((10 : GoUInt8));
	s[9426] = ((10 : GoUInt8));
	s[9427] = ((10 : GoUInt8));
	s[9428] = ((10 : GoUInt8));
	s[9429] = ((10 : GoUInt8));
	s[9430] = ((10 : GoUInt8));
	s[9431] = ((10 : GoUInt8));
	s[9432] = ((10 : GoUInt8));
	s[9433] = ((10 : GoUInt8));
	s[9440] = ((12 : GoUInt8));
	s[9441] = ((12 : GoUInt8));
	s[9442] = ((12 : GoUInt8));
	s[9443] = ((12 : GoUInt8));
	s[9444] = ((12 : GoUInt8));
	s[9445] = ((12 : GoUInt8));
	s[9446] = ((12 : GoUInt8));
	s[9447] = ((12 : GoUInt8));
	s[9448] = ((12 : GoUInt8));
	s[9449] = ((12 : GoUInt8));
	s[9450] = ((12 : GoUInt8));
	s[9451] = ((12 : GoUInt8));
	s[9452] = ((12 : GoUInt8));
	s[9453] = ((12 : GoUInt8));
	s[9454] = ((12 : GoUInt8));
	s[9455] = ((12 : GoUInt8));
	s[9456] = ((10 : GoUInt8));
	s[9457] = ((10 : GoUInt8));
	s[9458] = ((10 : GoUInt8));
	s[9459] = ((10 : GoUInt8));
	s[9460] = ((10 : GoUInt8));
	s[9461] = ((10 : GoUInt8));
	s[9462] = ((10 : GoUInt8));
	s[9463] = ((10 : GoUInt8));
	s[9464] = ((10 : GoUInt8));
	s[9465] = ((10 : GoUInt8));
	s[9466] = ((10 : GoUInt8));
	s[9467] = ((10 : GoUInt8));
	s[9468] = ((10 : GoUInt8));
	s[9469] = ((10 : GoUInt8));
	s[9470] = ((10 : GoUInt8));
	s[9471] = ((10 : GoUInt8));
	s[9472] = ((10 : GoUInt8));
	s[9473] = ((10 : GoUInt8));
	s[9474] = ((10 : GoUInt8));
	s[9475] = ((10 : GoUInt8));
	s[9476] = ((10 : GoUInt8));
	s[9477] = ((10 : GoUInt8));
	s[9478] = ((10 : GoUInt8));
	s[9479] = ((10 : GoUInt8));
	s[9480] = ((10 : GoUInt8));
	s[9481] = ((10 : GoUInt8));
	s[9482] = ((10 : GoUInt8));
	s[9483] = ((10 : GoUInt8));
	s[9484] = ((10 : GoUInt8));
	s[9485] = ((10 : GoUInt8));
	s[9486] = ((10 : GoUInt8));
	s[9487] = ((10 : GoUInt8));
	s[9488] = ((6 : GoUInt8));
	s[9489] = ((10 : GoUInt8));
	s[9490] = ((6 : GoUInt8));
	s[9492] = ((10 : GoUInt8));
	s[9493] = ((6 : GoUInt8));
	s[9494] = ((10 : GoUInt8));
	s[9495] = ((10 : GoUInt8));
	s[9496] = ((10 : GoUInt8));
	s[9497] = ((154 : GoUInt8));
	s[9498] = ((138 : GoUInt8));
	s[9499] = ((122 : GoUInt8));
	s[9500] = ((106 : GoUInt8));
	s[9501] = ((154 : GoUInt8));
	s[9502] = ((138 : GoUInt8));
	s[9503] = ((4 : GoUInt8));
	s[9504] = ((10 : GoUInt8));
	s[9505] = ((10 : GoUInt8));
	s[9506] = ((3 : GoUInt8));
	s[9507] = ((3 : GoUInt8));
	s[9508] = ((10 : GoUInt8));
	s[9509] = ((10 : GoUInt8));
	s[9510] = ((10 : GoUInt8));
	s[9512] = ((10 : GoUInt8));
	s[9513] = ((4 : GoUInt8));
	s[9514] = ((4 : GoUInt8));
	s[9515] = ((10 : GoUInt8));
	s[9520] = ((13 : GoUInt8));
	s[9521] = ((13 : GoUInt8));
	s[9522] = ((13 : GoUInt8));
	s[9523] = ((13 : GoUInt8));
	s[9524] = ((13 : GoUInt8));
	s[9525] = ((13 : GoUInt8));
	s[9526] = ((13 : GoUInt8));
	s[9527] = ((13 : GoUInt8));
	s[9528] = ((13 : GoUInt8));
	s[9529] = ((13 : GoUInt8));
	s[9530] = ((13 : GoUInt8));
	s[9531] = ((13 : GoUInt8));
	s[9532] = ((13 : GoUInt8));
	s[9533] = ((13 : GoUInt8));
	s[9534] = ((13 : GoUInt8));
	s[9535] = ((13 : GoUInt8));
	s[9536] = ((13 : GoUInt8));
	s[9537] = ((13 : GoUInt8));
	s[9538] = ((13 : GoUInt8));
	s[9539] = ((13 : GoUInt8));
	s[9540] = ((13 : GoUInt8));
	s[9541] = ((13 : GoUInt8));
	s[9542] = ((13 : GoUInt8));
	s[9543] = ((13 : GoUInt8));
	s[9544] = ((13 : GoUInt8));
	s[9545] = ((13 : GoUInt8));
	s[9546] = ((13 : GoUInt8));
	s[9547] = ((13 : GoUInt8));
	s[9548] = ((13 : GoUInt8));
	s[9549] = ((13 : GoUInt8));
	s[9550] = ((13 : GoUInt8));
	s[9551] = ((13 : GoUInt8));
	s[9552] = ((13 : GoUInt8));
	s[9553] = ((13 : GoUInt8));
	s[9554] = ((13 : GoUInt8));
	s[9555] = ((13 : GoUInt8));
	s[9556] = ((13 : GoUInt8));
	s[9557] = ((13 : GoUInt8));
	s[9558] = ((13 : GoUInt8));
	s[9559] = ((13 : GoUInt8));
	s[9560] = ((13 : GoUInt8));
	s[9561] = ((13 : GoUInt8));
	s[9562] = ((13 : GoUInt8));
	s[9563] = ((13 : GoUInt8));
	s[9564] = ((13 : GoUInt8));
	s[9565] = ((13 : GoUInt8));
	s[9566] = ((13 : GoUInt8));
	s[9567] = ((13 : GoUInt8));
	s[9568] = ((13 : GoUInt8));
	s[9569] = ((13 : GoUInt8));
	s[9570] = ((13 : GoUInt8));
	s[9571] = ((13 : GoUInt8));
	s[9572] = ((13 : GoUInt8));
	s[9573] = ((13 : GoUInt8));
	s[9574] = ((13 : GoUInt8));
	s[9575] = ((13 : GoUInt8));
	s[9576] = ((13 : GoUInt8));
	s[9577] = ((13 : GoUInt8));
	s[9578] = ((13 : GoUInt8));
	s[9579] = ((13 : GoUInt8));
	s[9580] = ((13 : GoUInt8));
	s[9581] = ((13 : GoUInt8));
	s[9582] = ((13 : GoUInt8));
	s[9583] = ((13 : GoUInt8));
	s[9584] = ((13 : GoUInt8));
	s[9585] = ((13 : GoUInt8));
	s[9586] = ((13 : GoUInt8));
	s[9587] = ((13 : GoUInt8));
	s[9588] = ((13 : GoUInt8));
	s[9589] = ((13 : GoUInt8));
	s[9590] = ((13 : GoUInt8));
	s[9591] = ((13 : GoUInt8));
	s[9592] = ((13 : GoUInt8));
	s[9593] = ((13 : GoUInt8));
	s[9594] = ((13 : GoUInt8));
	s[9595] = ((13 : GoUInt8));
	s[9596] = ((13 : GoUInt8));
	s[9597] = ((13 : GoUInt8));
	s[9598] = ((13 : GoUInt8));
	s[9599] = ((11 : GoUInt8));
	s[9601] = ((10 : GoUInt8));
	s[9602] = ((10 : GoUInt8));
	s[9603] = ((4 : GoUInt8));
	s[9604] = ((4 : GoUInt8));
	s[9605] = ((4 : GoUInt8));
	s[9606] = ((10 : GoUInt8));
	s[9607] = ((10 : GoUInt8));
	s[9608] = ((58 : GoUInt8));
	s[9609] = ((42 : GoUInt8));
	s[9610] = ((10 : GoUInt8));
	s[9611] = ((3 : GoUInt8));
	s[9612] = ((6 : GoUInt8));
	s[9613] = ((3 : GoUInt8));
	s[9614] = ((6 : GoUInt8));
	s[9615] = ((6 : GoUInt8));
	s[9616] = ((2 : GoUInt8));
	s[9617] = ((2 : GoUInt8));
	s[9618] = ((2 : GoUInt8));
	s[9619] = ((2 : GoUInt8));
	s[9620] = ((2 : GoUInt8));
	s[9621] = ((2 : GoUInt8));
	s[9622] = ((2 : GoUInt8));
	s[9623] = ((2 : GoUInt8));
	s[9624] = ((2 : GoUInt8));
	s[9625] = ((2 : GoUInt8));
	s[9626] = ((6 : GoUInt8));
	s[9627] = ((10 : GoUInt8));
	s[9628] = ((10 : GoUInt8));
	s[9629] = ((10 : GoUInt8));
	s[9630] = ((10 : GoUInt8));
	s[9631] = ((10 : GoUInt8));
	s[9632] = ((10 : GoUInt8));
	s[9659] = ((90 : GoUInt8));
	s[9660] = ((10 : GoUInt8));
	s[9661] = ((74 : GoUInt8));
	s[9662] = ((10 : GoUInt8));
	s[9663] = ((10 : GoUInt8));
	s[9664] = ((10 : GoUInt8));
	s[9691] = ((90 : GoUInt8));
	s[9692] = ((10 : GoUInt8));
	s[9693] = ((74 : GoUInt8));
	s[9694] = ((10 : GoUInt8));
	s[9695] = ((250 : GoUInt8));
	s[9696] = ((234 : GoUInt8));
	s[9697] = ((10 : GoUInt8));
	s[9698] = ((58 : GoUInt8));
	s[9699] = ((42 : GoUInt8));
	s[9700] = ((10 : GoUInt8));
	s[9701] = ((10 : GoUInt8));
	s[9760] = ((4 : GoUInt8));
	s[9761] = ((4 : GoUInt8));
	s[9762] = ((10 : GoUInt8));
	s[9763] = ((10 : GoUInt8));
	s[9764] = ((10 : GoUInt8));
	s[9765] = ((4 : GoUInt8));
	s[9766] = ((4 : GoUInt8));
	s[9768] = ((10 : GoUInt8));
	s[9769] = ((10 : GoUInt8));
	s[9770] = ((10 : GoUInt8));
	s[9771] = ((10 : GoUInt8));
	s[9772] = ((10 : GoUInt8));
	s[9773] = ((10 : GoUInt8));
	s[9774] = ((10 : GoUInt8));
	s[9776] = ((11 : GoUInt8));
	s[9777] = ((11 : GoUInt8));
	s[9778] = ((11 : GoUInt8));
	s[9779] = ((11 : GoUInt8));
	s[9780] = ((11 : GoUInt8));
	s[9781] = ((11 : GoUInt8));
	s[9782] = ((11 : GoUInt8));
	s[9783] = ((11 : GoUInt8));
	s[9784] = ((11 : GoUInt8));
	s[9785] = ((10 : GoUInt8));
	s[9786] = ((10 : GoUInt8));
	s[9787] = ((10 : GoUInt8));
	s[9788] = ((10 : GoUInt8));
	s[9789] = ((10 : GoUInt8));
	s[9790] = ((11 : GoUInt8));
	s[9791] = ((11 : GoUInt8));
	s[9793] = ((10 : GoUInt8));
	s[9856] = ((10 : GoUInt8));
	s[9857] = ((10 : GoUInt8));
	s[9858] = ((10 : GoUInt8));
	s[9859] = ((10 : GoUInt8));
	s[9860] = ((10 : GoUInt8));
	s[9861] = ((10 : GoUInt8));
	s[9862] = ((10 : GoUInt8));
	s[9863] = ((10 : GoUInt8));
	s[9864] = ((10 : GoUInt8));
	s[9865] = ((10 : GoUInt8));
	s[9866] = ((10 : GoUInt8));
	s[9867] = ((10 : GoUInt8));
	s[9868] = ((10 : GoUInt8));
	s[9872] = ((10 : GoUInt8));
	s[9873] = ((10 : GoUInt8));
	s[9874] = ((10 : GoUInt8));
	s[9875] = ((10 : GoUInt8));
	s[9876] = ((10 : GoUInt8));
	s[9877] = ((10 : GoUInt8));
	s[9878] = ((10 : GoUInt8));
	s[9879] = ((10 : GoUInt8));
	s[9880] = ((10 : GoUInt8));
	s[9881] = ((10 : GoUInt8));
	s[9882] = ((10 : GoUInt8));
	s[9883] = ((10 : GoUInt8));
	s[9884] = ((10 : GoUInt8));
	s[9888] = ((10 : GoUInt8));
	s[9981] = ((12 : GoUInt8));
	s[10016] = ((12 : GoUInt8));
	s[10017] = ((2 : GoUInt8));
	s[10018] = ((2 : GoUInt8));
	s[10019] = ((2 : GoUInt8));
	s[10020] = ((2 : GoUInt8));
	s[10021] = ((2 : GoUInt8));
	s[10022] = ((2 : GoUInt8));
	s[10023] = ((2 : GoUInt8));
	s[10024] = ((2 : GoUInt8));
	s[10025] = ((2 : GoUInt8));
	s[10026] = ((2 : GoUInt8));
	s[10027] = ((2 : GoUInt8));
	s[10028] = ((2 : GoUInt8));
	s[10029] = ((2 : GoUInt8));
	s[10030] = ((2 : GoUInt8));
	s[10031] = ((2 : GoUInt8));
	s[10032] = ((2 : GoUInt8));
	s[10033] = ((2 : GoUInt8));
	s[10034] = ((2 : GoUInt8));
	s[10035] = ((2 : GoUInt8));
	s[10036] = ((2 : GoUInt8));
	s[10037] = ((2 : GoUInt8));
	s[10038] = ((2 : GoUInt8));
	s[10039] = ((2 : GoUInt8));
	s[10040] = ((2 : GoUInt8));
	s[10041] = ((2 : GoUInt8));
	s[10042] = ((2 : GoUInt8));
	s[10043] = ((2 : GoUInt8));
	s[10102] = ((12 : GoUInt8));
	s[10103] = ((12 : GoUInt8));
	s[10104] = ((12 : GoUInt8));
	s[10105] = ((12 : GoUInt8));
	s[10106] = ((12 : GoUInt8));
	s[10112] = ((1 : GoUInt8));
	s[10113] = ((1 : GoUInt8));
	s[10114] = ((1 : GoUInt8));
	s[10115] = ((1 : GoUInt8));
	s[10116] = ((1 : GoUInt8));
	s[10117] = ((1 : GoUInt8));
	s[10118] = ((1 : GoUInt8));
	s[10119] = ((1 : GoUInt8));
	s[10120] = ((1 : GoUInt8));
	s[10121] = ((1 : GoUInt8));
	s[10122] = ((1 : GoUInt8));
	s[10123] = ((1 : GoUInt8));
	s[10124] = ((1 : GoUInt8));
	s[10125] = ((1 : GoUInt8));
	s[10126] = ((1 : GoUInt8));
	s[10127] = ((1 : GoUInt8));
	s[10128] = ((1 : GoUInt8));
	s[10129] = ((1 : GoUInt8));
	s[10130] = ((1 : GoUInt8));
	s[10131] = ((1 : GoUInt8));
	s[10132] = ((1 : GoUInt8));
	s[10133] = ((1 : GoUInt8));
	s[10134] = ((1 : GoUInt8));
	s[10135] = ((1 : GoUInt8));
	s[10136] = ((1 : GoUInt8));
	s[10137] = ((1 : GoUInt8));
	s[10138] = ((1 : GoUInt8));
	s[10139] = ((1 : GoUInt8));
	s[10140] = ((1 : GoUInt8));
	s[10141] = ((1 : GoUInt8));
	s[10142] = ((1 : GoUInt8));
	s[10143] = ((1 : GoUInt8));
	s[10144] = ((1 : GoUInt8));
	s[10145] = ((1 : GoUInt8));
	s[10146] = ((1 : GoUInt8));
	s[10147] = ((1 : GoUInt8));
	s[10148] = ((1 : GoUInt8));
	s[10149] = ((1 : GoUInt8));
	s[10150] = ((1 : GoUInt8));
	s[10151] = ((1 : GoUInt8));
	s[10152] = ((1 : GoUInt8));
	s[10153] = ((1 : GoUInt8));
	s[10154] = ((1 : GoUInt8));
	s[10155] = ((1 : GoUInt8));
	s[10156] = ((1 : GoUInt8));
	s[10157] = ((1 : GoUInt8));
	s[10158] = ((1 : GoUInt8));
	s[10159] = ((1 : GoUInt8));
	s[10160] = ((1 : GoUInt8));
	s[10161] = ((1 : GoUInt8));
	s[10162] = ((1 : GoUInt8));
	s[10163] = ((1 : GoUInt8));
	s[10164] = ((1 : GoUInt8));
	s[10165] = ((1 : GoUInt8));
	s[10166] = ((1 : GoUInt8));
	s[10167] = ((1 : GoUInt8));
	s[10168] = ((1 : GoUInt8));
	s[10169] = ((1 : GoUInt8));
	s[10170] = ((1 : GoUInt8));
	s[10171] = ((1 : GoUInt8));
	s[10172] = ((1 : GoUInt8));
	s[10173] = ((1 : GoUInt8));
	s[10174] = ((1 : GoUInt8));
	s[10175] = ((1 : GoUInt8));
	s[10176] = ((1 : GoUInt8));
	s[10177] = ((1 : GoUInt8));
	s[10178] = ((1 : GoUInt8));
	s[10179] = ((1 : GoUInt8));
	s[10180] = ((1 : GoUInt8));
	s[10181] = ((1 : GoUInt8));
	s[10182] = ((1 : GoUInt8));
	s[10183] = ((1 : GoUInt8));
	s[10184] = ((1 : GoUInt8));
	s[10185] = ((1 : GoUInt8));
	s[10186] = ((1 : GoUInt8));
	s[10187] = ((1 : GoUInt8));
	s[10188] = ((1 : GoUInt8));
	s[10189] = ((1 : GoUInt8));
	s[10190] = ((1 : GoUInt8));
	s[10191] = ((1 : GoUInt8));
	s[10192] = ((1 : GoUInt8));
	s[10193] = ((1 : GoUInt8));
	s[10194] = ((1 : GoUInt8));
	s[10195] = ((1 : GoUInt8));
	s[10196] = ((1 : GoUInt8));
	s[10197] = ((1 : GoUInt8));
	s[10198] = ((1 : GoUInt8));
	s[10199] = ((1 : GoUInt8));
	s[10200] = ((1 : GoUInt8));
	s[10201] = ((1 : GoUInt8));
	s[10202] = ((1 : GoUInt8));
	s[10203] = ((1 : GoUInt8));
	s[10204] = ((1 : GoUInt8));
	s[10205] = ((1 : GoUInt8));
	s[10206] = ((1 : GoUInt8));
	s[10207] = ((10 : GoUInt8));
	s[10208] = ((1 : GoUInt8));
	s[10209] = ((1 : GoUInt8));
	s[10210] = ((1 : GoUInt8));
	s[10211] = ((1 : GoUInt8));
	s[10212] = ((1 : GoUInt8));
	s[10213] = ((1 : GoUInt8));
	s[10214] = ((1 : GoUInt8));
	s[10215] = ((1 : GoUInt8));
	s[10216] = ((1 : GoUInt8));
	s[10217] = ((1 : GoUInt8));
	s[10218] = ((1 : GoUInt8));
	s[10219] = ((1 : GoUInt8));
	s[10220] = ((1 : GoUInt8));
	s[10221] = ((1 : GoUInt8));
	s[10222] = ((1 : GoUInt8));
	s[10223] = ((1 : GoUInt8));
	s[10224] = ((1 : GoUInt8));
	s[10225] = ((1 : GoUInt8));
	s[10226] = ((1 : GoUInt8));
	s[10227] = ((1 : GoUInt8));
	s[10228] = ((1 : GoUInt8));
	s[10229] = ((1 : GoUInt8));
	s[10230] = ((1 : GoUInt8));
	s[10231] = ((1 : GoUInt8));
	s[10232] = ((1 : GoUInt8));
	s[10233] = ((1 : GoUInt8));
	s[10234] = ((1 : GoUInt8));
	s[10235] = ((1 : GoUInt8));
	s[10236] = ((1 : GoUInt8));
	s[10237] = ((1 : GoUInt8));
	s[10238] = ((1 : GoUInt8));
	s[10239] = ((1 : GoUInt8));
	s[10240] = ((1 : GoUInt8));
	s[10241] = ((12 : GoUInt8));
	s[10242] = ((12 : GoUInt8));
	s[10243] = ((12 : GoUInt8));
	s[10244] = ((1 : GoUInt8));
	s[10245] = ((12 : GoUInt8));
	s[10246] = ((12 : GoUInt8));
	s[10247] = ((1 : GoUInt8));
	s[10248] = ((1 : GoUInt8));
	s[10249] = ((1 : GoUInt8));
	s[10250] = ((1 : GoUInt8));
	s[10251] = ((1 : GoUInt8));
	s[10252] = ((12 : GoUInt8));
	s[10253] = ((12 : GoUInt8));
	s[10254] = ((12 : GoUInt8));
	s[10255] = ((12 : GoUInt8));
	s[10256] = ((1 : GoUInt8));
	s[10257] = ((1 : GoUInt8));
	s[10258] = ((1 : GoUInt8));
	s[10259] = ((1 : GoUInt8));
	s[10260] = ((1 : GoUInt8));
	s[10261] = ((1 : GoUInt8));
	s[10262] = ((1 : GoUInt8));
	s[10263] = ((1 : GoUInt8));
	s[10264] = ((1 : GoUInt8));
	s[10265] = ((1 : GoUInt8));
	s[10266] = ((1 : GoUInt8));
	s[10267] = ((1 : GoUInt8));
	s[10268] = ((1 : GoUInt8));
	s[10269] = ((1 : GoUInt8));
	s[10270] = ((1 : GoUInt8));
	s[10271] = ((1 : GoUInt8));
	s[10272] = ((1 : GoUInt8));
	s[10273] = ((1 : GoUInt8));
	s[10274] = ((1 : GoUInt8));
	s[10275] = ((1 : GoUInt8));
	s[10276] = ((1 : GoUInt8));
	s[10277] = ((1 : GoUInt8));
	s[10278] = ((1 : GoUInt8));
	s[10279] = ((1 : GoUInt8));
	s[10280] = ((1 : GoUInt8));
	s[10281] = ((1 : GoUInt8));
	s[10282] = ((1 : GoUInt8));
	s[10283] = ((1 : GoUInt8));
	s[10284] = ((1 : GoUInt8));
	s[10285] = ((1 : GoUInt8));
	s[10286] = ((1 : GoUInt8));
	s[10287] = ((1 : GoUInt8));
	s[10288] = ((1 : GoUInt8));
	s[10289] = ((1 : GoUInt8));
	s[10290] = ((1 : GoUInt8));
	s[10291] = ((1 : GoUInt8));
	s[10292] = ((1 : GoUInt8));
	s[10293] = ((1 : GoUInt8));
	s[10294] = ((1 : GoUInt8));
	s[10295] = ((1 : GoUInt8));
	s[10296] = ((12 : GoUInt8));
	s[10297] = ((12 : GoUInt8));
	s[10298] = ((12 : GoUInt8));
	s[10299] = ((1 : GoUInt8));
	s[10300] = ((1 : GoUInt8));
	s[10301] = ((1 : GoUInt8));
	s[10302] = ((1 : GoUInt8));
	s[10303] = ((12 : GoUInt8));
	s[10304] = ((1 : GoUInt8));
	s[10305] = ((1 : GoUInt8));
	s[10306] = ((1 : GoUInt8));
	s[10307] = ((1 : GoUInt8));
	s[10308] = ((1 : GoUInt8));
	s[10309] = ((1 : GoUInt8));
	s[10310] = ((1 : GoUInt8));
	s[10311] = ((1 : GoUInt8));
	s[10312] = ((1 : GoUInt8));
	s[10313] = ((1 : GoUInt8));
	s[10314] = ((1 : GoUInt8));
	s[10315] = ((1 : GoUInt8));
	s[10316] = ((1 : GoUInt8));
	s[10317] = ((1 : GoUInt8));
	s[10318] = ((1 : GoUInt8));
	s[10319] = ((1 : GoUInt8));
	s[10320] = ((1 : GoUInt8));
	s[10321] = ((1 : GoUInt8));
	s[10322] = ((1 : GoUInt8));
	s[10323] = ((1 : GoUInt8));
	s[10324] = ((1 : GoUInt8));
	s[10325] = ((1 : GoUInt8));
	s[10326] = ((1 : GoUInt8));
	s[10327] = ((1 : GoUInt8));
	s[10328] = ((1 : GoUInt8));
	s[10329] = ((1 : GoUInt8));
	s[10330] = ((1 : GoUInt8));
	s[10331] = ((1 : GoUInt8));
	s[10332] = ((1 : GoUInt8));
	s[10333] = ((1 : GoUInt8));
	s[10334] = ((1 : GoUInt8));
	s[10335] = ((1 : GoUInt8));
	s[10336] = ((1 : GoUInt8));
	s[10337] = ((1 : GoUInt8));
	s[10338] = ((1 : GoUInt8));
	s[10339] = ((1 : GoUInt8));
	s[10340] = ((1 : GoUInt8));
	s[10341] = ((12 : GoUInt8));
	s[10342] = ((12 : GoUInt8));
	s[10343] = ((1 : GoUInt8));
	s[10344] = ((1 : GoUInt8));
	s[10345] = ((1 : GoUInt8));
	s[10346] = ((1 : GoUInt8));
	s[10347] = ((1 : GoUInt8));
	s[10348] = ((1 : GoUInt8));
	s[10349] = ((1 : GoUInt8));
	s[10350] = ((1 : GoUInt8));
	s[10351] = ((1 : GoUInt8));
	s[10352] = ((1 : GoUInt8));
	s[10353] = ((1 : GoUInt8));
	s[10354] = ((1 : GoUInt8));
	s[10355] = ((1 : GoUInt8));
	s[10356] = ((1 : GoUInt8));
	s[10357] = ((1 : GoUInt8));
	s[10358] = ((1 : GoUInt8));
	s[10359] = ((1 : GoUInt8));
	s[10360] = ((1 : GoUInt8));
	s[10361] = ((1 : GoUInt8));
	s[10362] = ((1 : GoUInt8));
	s[10363] = ((1 : GoUInt8));
	s[10364] = ((1 : GoUInt8));
	s[10365] = ((1 : GoUInt8));
	s[10366] = ((1 : GoUInt8));
	s[10367] = ((1 : GoUInt8));
	s[10368] = ((1 : GoUInt8));
	s[10369] = ((1 : GoUInt8));
	s[10370] = ((1 : GoUInt8));
	s[10371] = ((1 : GoUInt8));
	s[10372] = ((1 : GoUInt8));
	s[10373] = ((1 : GoUInt8));
	s[10374] = ((1 : GoUInt8));
	s[10375] = ((1 : GoUInt8));
	s[10376] = ((1 : GoUInt8));
	s[10377] = ((1 : GoUInt8));
	s[10378] = ((1 : GoUInt8));
	s[10379] = ((1 : GoUInt8));
	s[10380] = ((1 : GoUInt8));
	s[10381] = ((1 : GoUInt8));
	s[10382] = ((1 : GoUInt8));
	s[10383] = ((1 : GoUInt8));
	s[10384] = ((1 : GoUInt8));
	s[10385] = ((1 : GoUInt8));
	s[10386] = ((1 : GoUInt8));
	s[10387] = ((1 : GoUInt8));
	s[10388] = ((1 : GoUInt8));
	s[10389] = ((1 : GoUInt8));
	s[10390] = ((1 : GoUInt8));
	s[10391] = ((1 : GoUInt8));
	s[10392] = ((1 : GoUInt8));
	s[10393] = ((1 : GoUInt8));
	s[10394] = ((1 : GoUInt8));
	s[10395] = ((1 : GoUInt8));
	s[10396] = ((1 : GoUInt8));
	s[10397] = ((1 : GoUInt8));
	s[10398] = ((1 : GoUInt8));
	s[10399] = ((1 : GoUInt8));
	s[10400] = ((1 : GoUInt8));
	s[10401] = ((1 : GoUInt8));
	s[10402] = ((1 : GoUInt8));
	s[10403] = ((1 : GoUInt8));
	s[10404] = ((1 : GoUInt8));
	s[10405] = ((1 : GoUInt8));
	s[10406] = ((1 : GoUInt8));
	s[10407] = ((1 : GoUInt8));
	s[10408] = ((1 : GoUInt8));
	s[10409] = ((1 : GoUInt8));
	s[10410] = ((1 : GoUInt8));
	s[10411] = ((1 : GoUInt8));
	s[10412] = ((1 : GoUInt8));
	s[10413] = ((1 : GoUInt8));
	s[10414] = ((1 : GoUInt8));
	s[10415] = ((1 : GoUInt8));
	s[10416] = ((1 : GoUInt8));
	s[10417] = ((1 : GoUInt8));
	s[10418] = ((1 : GoUInt8));
	s[10419] = ((1 : GoUInt8));
	s[10420] = ((1 : GoUInt8));
	s[10421] = ((1 : GoUInt8));
	s[10422] = ((1 : GoUInt8));
	s[10423] = ((1 : GoUInt8));
	s[10424] = ((1 : GoUInt8));
	s[10425] = ((10 : GoUInt8));
	s[10426] = ((10 : GoUInt8));
	s[10427] = ((10 : GoUInt8));
	s[10428] = ((10 : GoUInt8));
	s[10429] = ((10 : GoUInt8));
	s[10430] = ((10 : GoUInt8));
	s[10431] = ((10 : GoUInt8));
	s[10432] = ((13 : GoUInt8));
	s[10433] = ((13 : GoUInt8));
	s[10434] = ((13 : GoUInt8));
	s[10435] = ((13 : GoUInt8));
	s[10436] = ((13 : GoUInt8));
	s[10437] = ((13 : GoUInt8));
	s[10438] = ((13 : GoUInt8));
	s[10439] = ((13 : GoUInt8));
	s[10440] = ((13 : GoUInt8));
	s[10441] = ((13 : GoUInt8));
	s[10442] = ((13 : GoUInt8));
	s[10443] = ((13 : GoUInt8));
	s[10444] = ((13 : GoUInt8));
	s[10445] = ((13 : GoUInt8));
	s[10446] = ((13 : GoUInt8));
	s[10447] = ((13 : GoUInt8));
	s[10448] = ((13 : GoUInt8));
	s[10449] = ((13 : GoUInt8));
	s[10450] = ((13 : GoUInt8));
	s[10451] = ((13 : GoUInt8));
	s[10452] = ((13 : GoUInt8));
	s[10453] = ((13 : GoUInt8));
	s[10454] = ((13 : GoUInt8));
	s[10455] = ((13 : GoUInt8));
	s[10456] = ((13 : GoUInt8));
	s[10457] = ((13 : GoUInt8));
	s[10458] = ((13 : GoUInt8));
	s[10459] = ((13 : GoUInt8));
	s[10460] = ((13 : GoUInt8));
	s[10461] = ((13 : GoUInt8));
	s[10462] = ((13 : GoUInt8));
	s[10463] = ((13 : GoUInt8));
	s[10464] = ((13 : GoUInt8));
	s[10465] = ((13 : GoUInt8));
	s[10466] = ((13 : GoUInt8));
	s[10467] = ((13 : GoUInt8));
	s[10468] = ((12 : GoUInt8));
	s[10469] = ((12 : GoUInt8));
	s[10470] = ((12 : GoUInt8));
	s[10471] = ((12 : GoUInt8));
	s[10472] = ((13 : GoUInt8));
	s[10473] = ((13 : GoUInt8));
	s[10474] = ((13 : GoUInt8));
	s[10475] = ((13 : GoUInt8));
	s[10476] = ((13 : GoUInt8));
	s[10477] = ((13 : GoUInt8));
	s[10478] = ((13 : GoUInt8));
	s[10479] = ((13 : GoUInt8));
	s[10480] = ((5 : GoUInt8));
	s[10481] = ((5 : GoUInt8));
	s[10482] = ((5 : GoUInt8));
	s[10483] = ((5 : GoUInt8));
	s[10484] = ((5 : GoUInt8));
	s[10485] = ((5 : GoUInt8));
	s[10486] = ((5 : GoUInt8));
	s[10487] = ((5 : GoUInt8));
	s[10488] = ((5 : GoUInt8));
	s[10489] = ((5 : GoUInt8));
	s[10490] = ((13 : GoUInt8));
	s[10491] = ((13 : GoUInt8));
	s[10492] = ((13 : GoUInt8));
	s[10493] = ((13 : GoUInt8));
	s[10494] = ((13 : GoUInt8));
	s[10495] = ((13 : GoUInt8));
	s[10496] = ((1 : GoUInt8));
	s[10497] = ((1 : GoUInt8));
	s[10498] = ((1 : GoUInt8));
	s[10499] = ((1 : GoUInt8));
	s[10500] = ((1 : GoUInt8));
	s[10501] = ((1 : GoUInt8));
	s[10502] = ((1 : GoUInt8));
	s[10503] = ((1 : GoUInt8));
	s[10504] = ((1 : GoUInt8));
	s[10505] = ((1 : GoUInt8));
	s[10506] = ((1 : GoUInt8));
	s[10507] = ((1 : GoUInt8));
	s[10508] = ((1 : GoUInt8));
	s[10509] = ((1 : GoUInt8));
	s[10510] = ((1 : GoUInt8));
	s[10511] = ((1 : GoUInt8));
	s[10512] = ((1 : GoUInt8));
	s[10513] = ((1 : GoUInt8));
	s[10514] = ((1 : GoUInt8));
	s[10515] = ((1 : GoUInt8));
	s[10516] = ((1 : GoUInt8));
	s[10517] = ((1 : GoUInt8));
	s[10518] = ((1 : GoUInt8));
	s[10519] = ((1 : GoUInt8));
	s[10520] = ((1 : GoUInt8));
	s[10521] = ((1 : GoUInt8));
	s[10522] = ((1 : GoUInt8));
	s[10523] = ((1 : GoUInt8));
	s[10524] = ((1 : GoUInt8));
	s[10525] = ((1 : GoUInt8));
	s[10526] = ((1 : GoUInt8));
	s[10527] = ((1 : GoUInt8));
	s[10528] = ((5 : GoUInt8));
	s[10529] = ((5 : GoUInt8));
	s[10530] = ((5 : GoUInt8));
	s[10531] = ((5 : GoUInt8));
	s[10532] = ((5 : GoUInt8));
	s[10533] = ((5 : GoUInt8));
	s[10534] = ((5 : GoUInt8));
	s[10535] = ((5 : GoUInt8));
	s[10536] = ((5 : GoUInt8));
	s[10537] = ((5 : GoUInt8));
	s[10538] = ((5 : GoUInt8));
	s[10539] = ((5 : GoUInt8));
	s[10540] = ((5 : GoUInt8));
	s[10541] = ((5 : GoUInt8));
	s[10542] = ((5 : GoUInt8));
	s[10543] = ((5 : GoUInt8));
	s[10544] = ((5 : GoUInt8));
	s[10545] = ((5 : GoUInt8));
	s[10546] = ((5 : GoUInt8));
	s[10547] = ((5 : GoUInt8));
	s[10548] = ((5 : GoUInt8));
	s[10549] = ((5 : GoUInt8));
	s[10550] = ((5 : GoUInt8));
	s[10551] = ((5 : GoUInt8));
	s[10552] = ((5 : GoUInt8));
	s[10553] = ((5 : GoUInt8));
	s[10554] = ((5 : GoUInt8));
	s[10555] = ((5 : GoUInt8));
	s[10556] = ((5 : GoUInt8));
	s[10557] = ((5 : GoUInt8));
	s[10558] = ((5 : GoUInt8));
	s[10559] = ((1 : GoUInt8));
	s[10560] = ((1 : GoUInt8));
	s[10561] = ((1 : GoUInt8));
	s[10562] = ((1 : GoUInt8));
	s[10563] = ((1 : GoUInt8));
	s[10564] = ((1 : GoUInt8));
	s[10565] = ((1 : GoUInt8));
	s[10566] = ((1 : GoUInt8));
	s[10567] = ((1 : GoUInt8));
	s[10568] = ((1 : GoUInt8));
	s[10569] = ((1 : GoUInt8));
	s[10570] = ((1 : GoUInt8));
	s[10571] = ((1 : GoUInt8));
	s[10572] = ((1 : GoUInt8));
	s[10573] = ((1 : GoUInt8));
	s[10574] = ((1 : GoUInt8));
	s[10575] = ((1 : GoUInt8));
	s[10576] = ((1 : GoUInt8));
	s[10577] = ((1 : GoUInt8));
	s[10578] = ((1 : GoUInt8));
	s[10579] = ((1 : GoUInt8));
	s[10580] = ((1 : GoUInt8));
	s[10581] = ((1 : GoUInt8));
	s[10582] = ((1 : GoUInt8));
	s[10583] = ((1 : GoUInt8));
	s[10584] = ((1 : GoUInt8));
	s[10585] = ((1 : GoUInt8));
	s[10586] = ((1 : GoUInt8));
	s[10587] = ((1 : GoUInt8));
	s[10588] = ((1 : GoUInt8));
	s[10589] = ((1 : GoUInt8));
	s[10590] = ((1 : GoUInt8));
	s[10591] = ((1 : GoUInt8));
	s[10592] = ((1 : GoUInt8));
	s[10593] = ((1 : GoUInt8));
	s[10594] = ((1 : GoUInt8));
	s[10595] = ((1 : GoUInt8));
	s[10596] = ((1 : GoUInt8));
	s[10597] = ((1 : GoUInt8));
	s[10598] = ((1 : GoUInt8));
	s[10599] = ((1 : GoUInt8));
	s[10600] = ((1 : GoUInt8));
	s[10601] = ((1 : GoUInt8));
	s[10602] = ((1 : GoUInt8));
	s[10603] = ((12 : GoUInt8));
	s[10604] = ((12 : GoUInt8));
	s[10605] = ((1 : GoUInt8));
	s[10606] = ((1 : GoUInt8));
	s[10607] = ((1 : GoUInt8));
	s[10608] = ((1 : GoUInt8));
	s[10609] = ((1 : GoUInt8));
	s[10610] = ((1 : GoUInt8));
	s[10611] = ((1 : GoUInt8));
	s[10612] = ((1 : GoUInt8));
	s[10613] = ((1 : GoUInt8));
	s[10614] = ((1 : GoUInt8));
	s[10615] = ((1 : GoUInt8));
	s[10616] = ((1 : GoUInt8));
	s[10617] = ((1 : GoUInt8));
	s[10618] = ((1 : GoUInt8));
	s[10619] = ((1 : GoUInt8));
	s[10620] = ((1 : GoUInt8));
	s[10621] = ((1 : GoUInt8));
	s[10622] = ((1 : GoUInt8));
	s[10623] = ((1 : GoUInt8));
	s[10624] = ((1 : GoUInt8));
	s[10625] = ((1 : GoUInt8));
	s[10626] = ((1 : GoUInt8));
	s[10627] = ((1 : GoUInt8));
	s[10628] = ((1 : GoUInt8));
	s[10629] = ((1 : GoUInt8));
	s[10630] = ((1 : GoUInt8));
	s[10631] = ((1 : GoUInt8));
	s[10632] = ((1 : GoUInt8));
	s[10633] = ((1 : GoUInt8));
	s[10634] = ((1 : GoUInt8));
	s[10635] = ((1 : GoUInt8));
	s[10636] = ((1 : GoUInt8));
	s[10637] = ((1 : GoUInt8));
	s[10638] = ((1 : GoUInt8));
	s[10639] = ((1 : GoUInt8));
	s[10640] = ((1 : GoUInt8));
	s[10641] = ((1 : GoUInt8));
	s[10642] = ((1 : GoUInt8));
	s[10643] = ((1 : GoUInt8));
	s[10644] = ((1 : GoUInt8));
	s[10645] = ((1 : GoUInt8));
	s[10646] = ((1 : GoUInt8));
	s[10647] = ((1 : GoUInt8));
	s[10648] = ((1 : GoUInt8));
	s[10649] = ((1 : GoUInt8));
	s[10650] = ((1 : GoUInt8));
	s[10651] = ((1 : GoUInt8));
	s[10652] = ((1 : GoUInt8));
	s[10653] = ((1 : GoUInt8));
	s[10654] = ((1 : GoUInt8));
	s[10655] = ((1 : GoUInt8));
	s[10656] = ((1 : GoUInt8));
	s[10657] = ((1 : GoUInt8));
	s[10658] = ((1 : GoUInt8));
	s[10659] = ((1 : GoUInt8));
	s[10660] = ((1 : GoUInt8));
	s[10661] = ((1 : GoUInt8));
	s[10662] = ((1 : GoUInt8));
	s[10663] = ((1 : GoUInt8));
	s[10664] = ((1 : GoUInt8));
	s[10665] = ((1 : GoUInt8));
	s[10666] = ((1 : GoUInt8));
	s[10667] = ((1 : GoUInt8));
	s[10668] = ((1 : GoUInt8));
	s[10669] = ((1 : GoUInt8));
	s[10670] = ((1 : GoUInt8));
	s[10671] = ((1 : GoUInt8));
	s[10672] = ((13 : GoUInt8));
	s[10673] = ((13 : GoUInt8));
	s[10674] = ((13 : GoUInt8));
	s[10675] = ((13 : GoUInt8));
	s[10676] = ((13 : GoUInt8));
	s[10677] = ((13 : GoUInt8));
	s[10678] = ((13 : GoUInt8));
	s[10679] = ((13 : GoUInt8));
	s[10680] = ((13 : GoUInt8));
	s[10681] = ((13 : GoUInt8));
	s[10682] = ((13 : GoUInt8));
	s[10683] = ((13 : GoUInt8));
	s[10684] = ((13 : GoUInt8));
	s[10685] = ((13 : GoUInt8));
	s[10686] = ((13 : GoUInt8));
	s[10687] = ((13 : GoUInt8));
	s[10688] = ((13 : GoUInt8));
	s[10689] = ((13 : GoUInt8));
	s[10690] = ((13 : GoUInt8));
	s[10691] = ((13 : GoUInt8));
	s[10692] = ((13 : GoUInt8));
	s[10693] = ((13 : GoUInt8));
	s[10694] = ((12 : GoUInt8));
	s[10695] = ((12 : GoUInt8));
	s[10696] = ((12 : GoUInt8));
	s[10697] = ((12 : GoUInt8));
	s[10698] = ((12 : GoUInt8));
	s[10699] = ((12 : GoUInt8));
	s[10700] = ((12 : GoUInt8));
	s[10701] = ((12 : GoUInt8));
	s[10702] = ((12 : GoUInt8));
	s[10703] = ((12 : GoUInt8));
	s[10704] = ((12 : GoUInt8));
	s[10705] = ((13 : GoUInt8));
	s[10706] = ((13 : GoUInt8));
	s[10707] = ((13 : GoUInt8));
	s[10708] = ((13 : GoUInt8));
	s[10709] = ((13 : GoUInt8));
	s[10710] = ((13 : GoUInt8));
	s[10711] = ((13 : GoUInt8));
	s[10712] = ((13 : GoUInt8));
	s[10713] = ((13 : GoUInt8));
	s[10714] = ((13 : GoUInt8));
	s[10715] = ((13 : GoUInt8));
	s[10716] = ((13 : GoUInt8));
	s[10717] = ((13 : GoUInt8));
	s[10718] = ((13 : GoUInt8));
	s[10719] = ((13 : GoUInt8));
	s[10720] = ((13 : GoUInt8));
	s[10721] = ((13 : GoUInt8));
	s[10722] = ((13 : GoUInt8));
	s[10723] = ((13 : GoUInt8));
	s[10724] = ((13 : GoUInt8));
	s[10725] = ((13 : GoUInt8));
	s[10726] = ((13 : GoUInt8));
	s[10727] = ((13 : GoUInt8));
	s[10728] = ((13 : GoUInt8));
	s[10729] = ((13 : GoUInt8));
	s[10730] = ((13 : GoUInt8));
	s[10731] = ((13 : GoUInt8));
	s[10732] = ((13 : GoUInt8));
	s[10733] = ((13 : GoUInt8));
	s[10734] = ((13 : GoUInt8));
	s[10735] = ((13 : GoUInt8));
	s[10736] = ((1 : GoUInt8));
	s[10737] = ((1 : GoUInt8));
	s[10738] = ((1 : GoUInt8));
	s[10739] = ((1 : GoUInt8));
	s[10740] = ((1 : GoUInt8));
	s[10741] = ((1 : GoUInt8));
	s[10742] = ((1 : GoUInt8));
	s[10743] = ((1 : GoUInt8));
	s[10744] = ((1 : GoUInt8));
	s[10745] = ((1 : GoUInt8));
	s[10746] = ((1 : GoUInt8));
	s[10747] = ((1 : GoUInt8));
	s[10748] = ((1 : GoUInt8));
	s[10749] = ((1 : GoUInt8));
	s[10750] = ((1 : GoUInt8));
	s[10751] = ((1 : GoUInt8));
	s[10753] = ((12 : GoUInt8));
	s[10808] = ((12 : GoUInt8));
	s[10809] = ((12 : GoUInt8));
	s[10810] = ((12 : GoUInt8));
	s[10811] = ((12 : GoUInt8));
	s[10812] = ((12 : GoUInt8));
	s[10813] = ((12 : GoUInt8));
	s[10814] = ((12 : GoUInt8));
	s[10815] = ((12 : GoUInt8));
	s[10816] = ((12 : GoUInt8));
	s[10817] = ((12 : GoUInt8));
	s[10818] = ((12 : GoUInt8));
	s[10819] = ((12 : GoUInt8));
	s[10820] = ((12 : GoUInt8));
	s[10821] = ((12 : GoUInt8));
	s[10822] = ((12 : GoUInt8));
	s[10834] = ((10 : GoUInt8));
	s[10835] = ((10 : GoUInt8));
	s[10836] = ((10 : GoUInt8));
	s[10837] = ((10 : GoUInt8));
	s[10838] = ((10 : GoUInt8));
	s[10839] = ((10 : GoUInt8));
	s[10840] = ((10 : GoUInt8));
	s[10841] = ((10 : GoUInt8));
	s[10842] = ((10 : GoUInt8));
	s[10843] = ((10 : GoUInt8));
	s[10844] = ((10 : GoUInt8));
	s[10845] = ((10 : GoUInt8));
	s[10846] = ((10 : GoUInt8));
	s[10847] = ((10 : GoUInt8));
	s[10848] = ((10 : GoUInt8));
	s[10849] = ((10 : GoUInt8));
	s[10850] = ((10 : GoUInt8));
	s[10851] = ((10 : GoUInt8));
	s[10852] = ((10 : GoUInt8));
	s[10853] = ((10 : GoUInt8));
	s[10879] = ((12 : GoUInt8));
	s[10880] = ((12 : GoUInt8));
	s[10881] = ((12 : GoUInt8));
	s[10931] = ((12 : GoUInt8));
	s[10932] = ((12 : GoUInt8));
	s[10933] = ((12 : GoUInt8));
	s[10934] = ((12 : GoUInt8));
	s[10937] = ((12 : GoUInt8));
	s[10938] = ((12 : GoUInt8));
	s[10944] = ((12 : GoUInt8));
	s[10945] = ((12 : GoUInt8));
	s[10946] = ((12 : GoUInt8));
	s[10983] = ((12 : GoUInt8));
	s[10984] = ((12 : GoUInt8));
	s[10985] = ((12 : GoUInt8));
	s[10986] = ((12 : GoUInt8));
	s[10987] = ((12 : GoUInt8));
	s[10989] = ((12 : GoUInt8));
	s[10990] = ((12 : GoUInt8));
	s[10991] = ((12 : GoUInt8));
	s[10992] = ((12 : GoUInt8));
	s[10993] = ((12 : GoUInt8));
	s[10994] = ((12 : GoUInt8));
	s[10995] = ((12 : GoUInt8));
	s[10996] = ((12 : GoUInt8));
	s[11059] = ((12 : GoUInt8));
	s[11072] = ((12 : GoUInt8));
	s[11073] = ((12 : GoUInt8));
	s[11126] = ((12 : GoUInt8));
	s[11127] = ((12 : GoUInt8));
	s[11128] = ((12 : GoUInt8));
	s[11129] = ((12 : GoUInt8));
	s[11130] = ((12 : GoUInt8));
	s[11131] = ((12 : GoUInt8));
	s[11132] = ((12 : GoUInt8));
	s[11133] = ((12 : GoUInt8));
	s[11134] = ((12 : GoUInt8));
	s[11145] = ((12 : GoUInt8));
	s[11146] = ((12 : GoUInt8));
	s[11147] = ((12 : GoUInt8));
	s[11148] = ((12 : GoUInt8));
	s[11151] = ((12 : GoUInt8));
	s[11247] = ((12 : GoUInt8));
	s[11248] = ((12 : GoUInt8));
	s[11249] = ((12 : GoUInt8));
	s[11252] = ((12 : GoUInt8));
	s[11254] = ((12 : GoUInt8));
	s[11255] = ((12 : GoUInt8));
	s[11262] = ((12 : GoUInt8));
	s[11295] = ((12 : GoUInt8));
	s[11299] = ((12 : GoUInt8));
	s[11300] = ((12 : GoUInt8));
	s[11301] = ((12 : GoUInt8));
	s[11302] = ((12 : GoUInt8));
	s[11303] = ((12 : GoUInt8));
	s[11304] = ((12 : GoUInt8));
	s[11305] = ((12 : GoUInt8));
	s[11306] = ((12 : GoUInt8));
	s[11328] = ((12 : GoUInt8));
	s[11366] = ((12 : GoUInt8));
	s[11367] = ((12 : GoUInt8));
	s[11368] = ((12 : GoUInt8));
	s[11369] = ((12 : GoUInt8));
	s[11370] = ((12 : GoUInt8));
	s[11371] = ((12 : GoUInt8));
	s[11372] = ((12 : GoUInt8));
	s[11376] = ((12 : GoUInt8));
	s[11377] = ((12 : GoUInt8));
	s[11378] = ((12 : GoUInt8));
	s[11379] = ((12 : GoUInt8));
	s[11380] = ((12 : GoUInt8));
	s[11448] = ((12 : GoUInt8));
	s[11449] = ((12 : GoUInt8));
	s[11450] = ((12 : GoUInt8));
	s[11451] = ((12 : GoUInt8));
	s[11452] = ((12 : GoUInt8));
	s[11453] = ((12 : GoUInt8));
	s[11454] = ((12 : GoUInt8));
	s[11455] = ((12 : GoUInt8));
	s[11458] = ((12 : GoUInt8));
	s[11459] = ((12 : GoUInt8));
	s[11460] = ((12 : GoUInt8));
	s[11462] = ((12 : GoUInt8));
	s[11486] = ((12 : GoUInt8));
	s[11571] = ((12 : GoUInt8));
	s[11572] = ((12 : GoUInt8));
	s[11573] = ((12 : GoUInt8));
	s[11574] = ((12 : GoUInt8));
	s[11575] = ((12 : GoUInt8));
	s[11576] = ((12 : GoUInt8));
	s[11578] = ((12 : GoUInt8));
	s[11583] = ((12 : GoUInt8));
	s[11584] = ((12 : GoUInt8));
	s[11586] = ((12 : GoUInt8));
	s[11587] = ((12 : GoUInt8));
	s[11698] = ((12 : GoUInt8));
	s[11699] = ((12 : GoUInt8));
	s[11700] = ((12 : GoUInt8));
	s[11701] = ((12 : GoUInt8));
	s[11708] = ((12 : GoUInt8));
	s[11709] = ((12 : GoUInt8));
	s[11711] = ((12 : GoUInt8));
	s[11712] = ((12 : GoUInt8));
	s[11740] = ((12 : GoUInt8));
	s[11741] = ((12 : GoUInt8));
	s[11827] = ((12 : GoUInt8));
	s[11828] = ((12 : GoUInt8));
	s[11829] = ((12 : GoUInt8));
	s[11830] = ((12 : GoUInt8));
	s[11831] = ((12 : GoUInt8));
	s[11832] = ((12 : GoUInt8));
	s[11833] = ((12 : GoUInt8));
	s[11834] = ((12 : GoUInt8));
	s[11837] = ((12 : GoUInt8));
	s[11839] = ((12 : GoUInt8));
	s[11840] = ((12 : GoUInt8));
	s[11872] = ((10 : GoUInt8));
	s[11873] = ((10 : GoUInt8));
	s[11874] = ((10 : GoUInt8));
	s[11875] = ((10 : GoUInt8));
	s[11876] = ((10 : GoUInt8));
	s[11877] = ((10 : GoUInt8));
	s[11878] = ((10 : GoUInt8));
	s[11879] = ((10 : GoUInt8));
	s[11880] = ((10 : GoUInt8));
	s[11881] = ((10 : GoUInt8));
	s[11882] = ((10 : GoUInt8));
	s[11883] = ((10 : GoUInt8));
	s[11884] = ((10 : GoUInt8));
	s[11947] = ((12 : GoUInt8));
	s[11949] = ((12 : GoUInt8));
	s[11952] = ((12 : GoUInt8));
	s[11953] = ((12 : GoUInt8));
	s[11954] = ((12 : GoUInt8));
	s[11955] = ((12 : GoUInt8));
	s[11956] = ((12 : GoUInt8));
	s[11957] = ((12 : GoUInt8));
	s[11959] = ((12 : GoUInt8));
	s[11997] = ((12 : GoUInt8));
	s[11998] = ((12 : GoUInt8));
	s[11999] = ((12 : GoUInt8));
	s[12002] = ((12 : GoUInt8));
	s[12003] = ((12 : GoUInt8));
	s[12004] = ((12 : GoUInt8));
	s[12005] = ((12 : GoUInt8));
	s[12007] = ((12 : GoUInt8));
	s[12008] = ((12 : GoUInt8));
	s[12009] = ((12 : GoUInt8));
	s[12010] = ((12 : GoUInt8));
	s[12011] = ((12 : GoUInt8));
	s[12079] = ((12 : GoUInt8));
	s[12080] = ((12 : GoUInt8));
	s[12081] = ((12 : GoUInt8));
	s[12082] = ((12 : GoUInt8));
	s[12083] = ((12 : GoUInt8));
	s[12084] = ((12 : GoUInt8));
	s[12085] = ((12 : GoUInt8));
	s[12086] = ((12 : GoUInt8));
	s[12087] = ((12 : GoUInt8));
	s[12089] = ((12 : GoUInt8));
	s[12090] = ((12 : GoUInt8));
	s[12155] = ((12 : GoUInt8));
	s[12156] = ((12 : GoUInt8));
	s[12158] = ((12 : GoUInt8));
	s[12163] = ((12 : GoUInt8));
	s[12244] = ((12 : GoUInt8));
	s[12245] = ((12 : GoUInt8));
	s[12246] = ((12 : GoUInt8));
	s[12247] = ((12 : GoUInt8));
	s[12250] = ((12 : GoUInt8));
	s[12251] = ((12 : GoUInt8));
	s[12256] = ((12 : GoUInt8));
	s[12289] = ((12 : GoUInt8));
	s[12290] = ((12 : GoUInt8));
	s[12291] = ((12 : GoUInt8));
	s[12292] = ((12 : GoUInt8));
	s[12293] = ((12 : GoUInt8));
	s[12294] = ((12 : GoUInt8));
	s[12297] = ((12 : GoUInt8));
	s[12298] = ((12 : GoUInt8));
	s[12339] = ((12 : GoUInt8));
	s[12340] = ((12 : GoUInt8));
	s[12341] = ((12 : GoUInt8));
	s[12342] = ((12 : GoUInt8));
	s[12343] = ((12 : GoUInt8));
	s[12344] = ((12 : GoUInt8));
	s[12347] = ((12 : GoUInt8));
	s[12348] = ((12 : GoUInt8));
	s[12349] = ((12 : GoUInt8));
	s[12350] = ((12 : GoUInt8));
	s[12359] = ((12 : GoUInt8));
	s[12369] = ((12 : GoUInt8));
	s[12370] = ((12 : GoUInt8));
	s[12371] = ((12 : GoUInt8));
	s[12372] = ((12 : GoUInt8));
	s[12373] = ((12 : GoUInt8));
	s[12374] = ((12 : GoUInt8));
	s[12377] = ((12 : GoUInt8));
	s[12378] = ((12 : GoUInt8));
	s[12379] = ((12 : GoUInt8));
	s[12426] = ((12 : GoUInt8));
	s[12427] = ((12 : GoUInt8));
	s[12428] = ((12 : GoUInt8));
	s[12429] = ((12 : GoUInt8));
	s[12430] = ((12 : GoUInt8));
	s[12431] = ((12 : GoUInt8));
	s[12432] = ((12 : GoUInt8));
	s[12433] = ((12 : GoUInt8));
	s[12434] = ((12 : GoUInt8));
	s[12435] = ((12 : GoUInt8));
	s[12436] = ((12 : GoUInt8));
	s[12437] = ((12 : GoUInt8));
	s[12438] = ((12 : GoUInt8));
	s[12440] = ((12 : GoUInt8));
	s[12441] = ((12 : GoUInt8));
	s[12528] = ((12 : GoUInt8));
	s[12529] = ((12 : GoUInt8));
	s[12530] = ((12 : GoUInt8));
	s[12531] = ((12 : GoUInt8));
	s[12532] = ((12 : GoUInt8));
	s[12533] = ((12 : GoUInt8));
	s[12534] = ((12 : GoUInt8));
	s[12536] = ((12 : GoUInt8));
	s[12537] = ((12 : GoUInt8));
	s[12538] = ((12 : GoUInt8));
	s[12539] = ((12 : GoUInt8));
	s[12540] = ((12 : GoUInt8));
	s[12541] = ((12 : GoUInt8));
	s[12562] = ((12 : GoUInt8));
	s[12563] = ((12 : GoUInt8));
	s[12564] = ((12 : GoUInt8));
	s[12565] = ((12 : GoUInt8));
	s[12566] = ((12 : GoUInt8));
	s[12567] = ((12 : GoUInt8));
	s[12568] = ((12 : GoUInt8));
	s[12569] = ((12 : GoUInt8));
	s[12570] = ((12 : GoUInt8));
	s[12571] = ((12 : GoUInt8));
	s[12572] = ((12 : GoUInt8));
	s[12573] = ((12 : GoUInt8));
	s[12574] = ((12 : GoUInt8));
	s[12575] = ((12 : GoUInt8));
	s[12576] = ((12 : GoUInt8));
	s[12577] = ((12 : GoUInt8));
	s[12578] = ((12 : GoUInt8));
	s[12579] = ((12 : GoUInt8));
	s[12580] = ((12 : GoUInt8));
	s[12581] = ((12 : GoUInt8));
	s[12582] = ((12 : GoUInt8));
	s[12583] = ((12 : GoUInt8));
	s[12586] = ((12 : GoUInt8));
	s[12587] = ((12 : GoUInt8));
	s[12588] = ((12 : GoUInt8));
	s[12589] = ((12 : GoUInt8));
	s[12590] = ((12 : GoUInt8));
	s[12591] = ((12 : GoUInt8));
	s[12592] = ((12 : GoUInt8));
	s[12594] = ((12 : GoUInt8));
	s[12595] = ((12 : GoUInt8));
	s[12597] = ((12 : GoUInt8));
	s[12598] = ((12 : GoUInt8));
	s[12657] = ((12 : GoUInt8));
	s[12658] = ((12 : GoUInt8));
	s[12659] = ((12 : GoUInt8));
	s[12660] = ((12 : GoUInt8));
	s[12661] = ((12 : GoUInt8));
	s[12662] = ((12 : GoUInt8));
	s[12666] = ((12 : GoUInt8));
	s[12668] = ((12 : GoUInt8));
	s[12669] = ((12 : GoUInt8));
	s[12671] = ((12 : GoUInt8));
	s[12672] = ((12 : GoUInt8));
	s[12673] = ((12 : GoUInt8));
	s[12674] = ((12 : GoUInt8));
	s[12675] = ((12 : GoUInt8));
	s[12676] = ((12 : GoUInt8));
	s[12677] = ((12 : GoUInt8));
	s[12679] = ((12 : GoUInt8));
	s[12752] = ((12 : GoUInt8));
	s[12753] = ((12 : GoUInt8));
	s[12757] = ((12 : GoUInt8));
	s[12759] = ((12 : GoUInt8));
	s[12851] = ((12 : GoUInt8));
	s[12852] = ((12 : GoUInt8));
	s[12885] = ((10 : GoUInt8));
	s[12886] = ((10 : GoUInt8));
	s[12887] = ((10 : GoUInt8));
	s[12888] = ((10 : GoUInt8));
	s[12889] = ((10 : GoUInt8));
	s[12890] = ((10 : GoUInt8));
	s[12891] = ((10 : GoUInt8));
	s[12892] = ((10 : GoUInt8));
	s[12893] = ((4 : GoUInt8));
	s[12894] = ((4 : GoUInt8));
	s[12895] = ((4 : GoUInt8));
	s[12896] = ((4 : GoUInt8));
	s[12897] = ((10 : GoUInt8));
	s[12898] = ((10 : GoUInt8));
	s[12899] = ((10 : GoUInt8));
	s[12900] = ((10 : GoUInt8));
	s[12901] = ((10 : GoUInt8));
	s[12902] = ((10 : GoUInt8));
	s[12903] = ((10 : GoUInt8));
	s[12904] = ((10 : GoUInt8));
	s[12905] = ((10 : GoUInt8));
	s[12906] = ((10 : GoUInt8));
	s[12907] = ((10 : GoUInt8));
	s[12908] = ((10 : GoUInt8));
	s[12909] = ((10 : GoUInt8));
	s[12910] = ((10 : GoUInt8));
	s[12911] = ((10 : GoUInt8));
	s[12912] = ((10 : GoUInt8));
	s[12913] = ((10 : GoUInt8));
	s[12976] = ((12 : GoUInt8));
	s[12977] = ((12 : GoUInt8));
	s[12978] = ((12 : GoUInt8));
	s[12979] = ((12 : GoUInt8));
	s[12980] = ((12 : GoUInt8));
	s[13040] = ((12 : GoUInt8));
	s[13041] = ((12 : GoUInt8));
	s[13042] = ((12 : GoUInt8));
	s[13043] = ((12 : GoUInt8));
	s[13044] = ((12 : GoUInt8));
	s[13045] = ((12 : GoUInt8));
	s[13046] = ((12 : GoUInt8));
	s[13071] = ((12 : GoUInt8));
	s[13135] = ((12 : GoUInt8));
	s[13136] = ((12 : GoUInt8));
	s[13137] = ((12 : GoUInt8));
	s[13138] = ((12 : GoUInt8));
	s[13218] = ((10 : GoUInt8));
	s[13220] = ((12 : GoUInt8));
	s[13277] = ((12 : GoUInt8));
	s[13278] = ((12 : GoUInt8));
	s[13280] = ((11 : GoUInt8));
	s[13281] = ((11 : GoUInt8));
	s[13282] = ((11 : GoUInt8));
	s[13283] = ((11 : GoUInt8));
	s[13351] = ((12 : GoUInt8));
	s[13352] = ((12 : GoUInt8));
	s[13353] = ((12 : GoUInt8));
	s[13363] = ((11 : GoUInt8));
	s[13364] = ((11 : GoUInt8));
	s[13365] = ((11 : GoUInt8));
	s[13366] = ((11 : GoUInt8));
	s[13367] = ((11 : GoUInt8));
	s[13368] = ((11 : GoUInt8));
	s[13369] = ((11 : GoUInt8));
	s[13370] = ((11 : GoUInt8));
	s[13371] = ((12 : GoUInt8));
	s[13372] = ((12 : GoUInt8));
	s[13373] = ((12 : GoUInt8));
	s[13374] = ((12 : GoUInt8));
	s[13375] = ((12 : GoUInt8));
	s[13376] = ((12 : GoUInt8));
	s[13377] = ((12 : GoUInt8));
	s[13378] = ((12 : GoUInt8));
	s[13381] = ((12 : GoUInt8));
	s[13382] = ((12 : GoUInt8));
	s[13383] = ((12 : GoUInt8));
	s[13384] = ((12 : GoUInt8));
	s[13385] = ((12 : GoUInt8));
	s[13386] = ((12 : GoUInt8));
	s[13387] = ((12 : GoUInt8));
	s[13418] = ((12 : GoUInt8));
	s[13419] = ((12 : GoUInt8));
	s[13420] = ((12 : GoUInt8));
	s[13421] = ((12 : GoUInt8));
	s[13440] = ((10 : GoUInt8));
	s[13441] = ((10 : GoUInt8));
	s[13442] = ((12 : GoUInt8));
	s[13443] = ((12 : GoUInt8));
	s[13444] = ((12 : GoUInt8));
	s[13445] = ((10 : GoUInt8));
	s[13504] = ((10 : GoUInt8));
	s[13505] = ((10 : GoUInt8));
	s[13506] = ((10 : GoUInt8));
	s[13507] = ((10 : GoUInt8));
	s[13508] = ((10 : GoUInt8));
	s[13509] = ((10 : GoUInt8));
	s[13510] = ((10 : GoUInt8));
	s[13511] = ((10 : GoUInt8));
	s[13512] = ((10 : GoUInt8));
	s[13513] = ((10 : GoUInt8));
	s[13514] = ((10 : GoUInt8));
	s[13515] = ((10 : GoUInt8));
	s[13516] = ((10 : GoUInt8));
	s[13517] = ((10 : GoUInt8));
	s[13518] = ((10 : GoUInt8));
	s[13519] = ((10 : GoUInt8));
	s[13520] = ((10 : GoUInt8));
	s[13521] = ((10 : GoUInt8));
	s[13522] = ((10 : GoUInt8));
	s[13523] = ((10 : GoUInt8));
	s[13524] = ((10 : GoUInt8));
	s[13525] = ((10 : GoUInt8));
	s[13526] = ((10 : GoUInt8));
	s[13595] = ((10 : GoUInt8));
	s[13653] = ((10 : GoUInt8));
	s[13711] = ((10 : GoUInt8));
	s[13769] = ((10 : GoUInt8));
	s[13827] = ((10 : GoUInt8));
	s[13838] = ((2 : GoUInt8));
	s[13839] = ((2 : GoUInt8));
	s[13840] = ((2 : GoUInt8));
	s[13841] = ((2 : GoUInt8));
	s[13842] = ((2 : GoUInt8));
	s[13843] = ((2 : GoUInt8));
	s[13844] = ((2 : GoUInt8));
	s[13845] = ((2 : GoUInt8));
	s[13846] = ((2 : GoUInt8));
	s[13847] = ((2 : GoUInt8));
	s[13848] = ((2 : GoUInt8));
	s[13849] = ((2 : GoUInt8));
	s[13850] = ((2 : GoUInt8));
	s[13851] = ((2 : GoUInt8));
	s[13852] = ((2 : GoUInt8));
	s[13853] = ((2 : GoUInt8));
	s[13854] = ((2 : GoUInt8));
	s[13855] = ((2 : GoUInt8));
	s[13856] = ((2 : GoUInt8));
	s[13857] = ((2 : GoUInt8));
	s[13858] = ((2 : GoUInt8));
	s[13859] = ((2 : GoUInt8));
	s[13860] = ((2 : GoUInt8));
	s[13861] = ((2 : GoUInt8));
	s[13862] = ((2 : GoUInt8));
	s[13863] = ((2 : GoUInt8));
	s[13864] = ((2 : GoUInt8));
	s[13865] = ((2 : GoUInt8));
	s[13866] = ((2 : GoUInt8));
	s[13867] = ((2 : GoUInt8));
	s[13868] = ((2 : GoUInt8));
	s[13869] = ((2 : GoUInt8));
	s[13870] = ((2 : GoUInt8));
	s[13871] = ((2 : GoUInt8));
	s[13872] = ((2 : GoUInt8));
	s[13873] = ((2 : GoUInt8));
	s[13874] = ((2 : GoUInt8));
	s[13875] = ((2 : GoUInt8));
	s[13876] = ((2 : GoUInt8));
	s[13877] = ((2 : GoUInt8));
	s[13878] = ((2 : GoUInt8));
	s[13879] = ((2 : GoUInt8));
	s[13880] = ((2 : GoUInt8));
	s[13881] = ((2 : GoUInt8));
	s[13882] = ((2 : GoUInt8));
	s[13883] = ((2 : GoUInt8));
	s[13884] = ((2 : GoUInt8));
	s[13885] = ((2 : GoUInt8));
	s[13886] = ((2 : GoUInt8));
	s[13887] = ((2 : GoUInt8));
	s[13888] = ((12 : GoUInt8));
	s[13889] = ((12 : GoUInt8));
	s[13890] = ((12 : GoUInt8));
	s[13891] = ((12 : GoUInt8));
	s[13892] = ((12 : GoUInt8));
	s[13893] = ((12 : GoUInt8));
	s[13894] = ((12 : GoUInt8));
	s[13895] = ((12 : GoUInt8));
	s[13896] = ((12 : GoUInt8));
	s[13897] = ((12 : GoUInt8));
	s[13898] = ((12 : GoUInt8));
	s[13899] = ((12 : GoUInt8));
	s[13900] = ((12 : GoUInt8));
	s[13901] = ((12 : GoUInt8));
	s[13902] = ((12 : GoUInt8));
	s[13903] = ((12 : GoUInt8));
	s[13904] = ((12 : GoUInt8));
	s[13905] = ((12 : GoUInt8));
	s[13906] = ((12 : GoUInt8));
	s[13907] = ((12 : GoUInt8));
	s[13908] = ((12 : GoUInt8));
	s[13909] = ((12 : GoUInt8));
	s[13910] = ((12 : GoUInt8));
	s[13911] = ((12 : GoUInt8));
	s[13912] = ((12 : GoUInt8));
	s[13913] = ((12 : GoUInt8));
	s[13914] = ((12 : GoUInt8));
	s[13915] = ((12 : GoUInt8));
	s[13916] = ((12 : GoUInt8));
	s[13917] = ((12 : GoUInt8));
	s[13918] = ((12 : GoUInt8));
	s[13919] = ((12 : GoUInt8));
	s[13920] = ((12 : GoUInt8));
	s[13921] = ((12 : GoUInt8));
	s[13922] = ((12 : GoUInt8));
	s[13923] = ((12 : GoUInt8));
	s[13924] = ((12 : GoUInt8));
	s[13925] = ((12 : GoUInt8));
	s[13926] = ((12 : GoUInt8));
	s[13927] = ((12 : GoUInt8));
	s[13928] = ((12 : GoUInt8));
	s[13929] = ((12 : GoUInt8));
	s[13930] = ((12 : GoUInt8));
	s[13931] = ((12 : GoUInt8));
	s[13932] = ((12 : GoUInt8));
	s[13933] = ((12 : GoUInt8));
	s[13934] = ((12 : GoUInt8));
	s[13935] = ((12 : GoUInt8));
	s[13936] = ((12 : GoUInt8));
	s[13937] = ((12 : GoUInt8));
	s[13938] = ((12 : GoUInt8));
	s[13939] = ((12 : GoUInt8));
	s[13940] = ((12 : GoUInt8));
	s[13941] = ((12 : GoUInt8));
	s[13942] = ((12 : GoUInt8));
	s[13947] = ((12 : GoUInt8));
	s[13948] = ((12 : GoUInt8));
	s[13949] = ((12 : GoUInt8));
	s[13950] = ((12 : GoUInt8));
	s[13951] = ((12 : GoUInt8));
	s[13952] = ((12 : GoUInt8));
	s[13953] = ((12 : GoUInt8));
	s[13954] = ((12 : GoUInt8));
	s[13955] = ((12 : GoUInt8));
	s[13956] = ((12 : GoUInt8));
	s[13957] = ((12 : GoUInt8));
	s[13958] = ((12 : GoUInt8));
	s[13959] = ((12 : GoUInt8));
	s[13960] = ((12 : GoUInt8));
	s[13961] = ((12 : GoUInt8));
	s[13962] = ((12 : GoUInt8));
	s[13963] = ((12 : GoUInt8));
	s[13964] = ((12 : GoUInt8));
	s[13965] = ((12 : GoUInt8));
	s[13966] = ((12 : GoUInt8));
	s[13967] = ((12 : GoUInt8));
	s[13968] = ((12 : GoUInt8));
	s[13969] = ((12 : GoUInt8));
	s[13970] = ((12 : GoUInt8));
	s[13971] = ((12 : GoUInt8));
	s[13972] = ((12 : GoUInt8));
	s[13973] = ((12 : GoUInt8));
	s[13974] = ((12 : GoUInt8));
	s[13975] = ((12 : GoUInt8));
	s[13976] = ((12 : GoUInt8));
	s[13977] = ((12 : GoUInt8));
	s[13978] = ((12 : GoUInt8));
	s[13979] = ((12 : GoUInt8));
	s[13980] = ((12 : GoUInt8));
	s[13981] = ((12 : GoUInt8));
	s[13982] = ((12 : GoUInt8));
	s[13983] = ((12 : GoUInt8));
	s[13984] = ((12 : GoUInt8));
	s[13985] = ((12 : GoUInt8));
	s[13986] = ((12 : GoUInt8));
	s[13987] = ((12 : GoUInt8));
	s[13988] = ((12 : GoUInt8));
	s[13989] = ((12 : GoUInt8));
	s[13990] = ((12 : GoUInt8));
	s[13991] = ((12 : GoUInt8));
	s[13992] = ((12 : GoUInt8));
	s[13993] = ((12 : GoUInt8));
	s[13994] = ((12 : GoUInt8));
	s[13995] = ((12 : GoUInt8));
	s[13996] = ((12 : GoUInt8));
	s[14005] = ((12 : GoUInt8));
	s[14020] = ((12 : GoUInt8));
	s[14043] = ((12 : GoUInt8));
	s[14044] = ((12 : GoUInt8));
	s[14045] = ((12 : GoUInt8));
	s[14046] = ((12 : GoUInt8));
	s[14047] = ((12 : GoUInt8));
	s[14049] = ((12 : GoUInt8));
	s[14050] = ((12 : GoUInt8));
	s[14051] = ((12 : GoUInt8));
	s[14052] = ((12 : GoUInt8));
	s[14053] = ((12 : GoUInt8));
	s[14054] = ((12 : GoUInt8));
	s[14055] = ((12 : GoUInt8));
	s[14056] = ((12 : GoUInt8));
	s[14057] = ((12 : GoUInt8));
	s[14058] = ((12 : GoUInt8));
	s[14059] = ((12 : GoUInt8));
	s[14060] = ((12 : GoUInt8));
	s[14061] = ((12 : GoUInt8));
	s[14062] = ((12 : GoUInt8));
	s[14063] = ((12 : GoUInt8));
	s[14080] = ((12 : GoUInt8));
	s[14081] = ((12 : GoUInt8));
	s[14082] = ((12 : GoUInt8));
	s[14083] = ((12 : GoUInt8));
	s[14084] = ((12 : GoUInt8));
	s[14085] = ((12 : GoUInt8));
	s[14086] = ((12 : GoUInt8));
	s[14088] = ((12 : GoUInt8));
	s[14089] = ((12 : GoUInt8));
	s[14090] = ((12 : GoUInt8));
	s[14091] = ((12 : GoUInt8));
	s[14092] = ((12 : GoUInt8));
	s[14093] = ((12 : GoUInt8));
	s[14094] = ((12 : GoUInt8));
	s[14095] = ((12 : GoUInt8));
	s[14096] = ((12 : GoUInt8));
	s[14097] = ((12 : GoUInt8));
	s[14098] = ((12 : GoUInt8));
	s[14099] = ((12 : GoUInt8));
	s[14100] = ((12 : GoUInt8));
	s[14101] = ((12 : GoUInt8));
	s[14102] = ((12 : GoUInt8));
	s[14103] = ((12 : GoUInt8));
	s[14104] = ((12 : GoUInt8));
	s[14107] = ((12 : GoUInt8));
	s[14108] = ((12 : GoUInt8));
	s[14109] = ((12 : GoUInt8));
	s[14110] = ((12 : GoUInt8));
	s[14111] = ((12 : GoUInt8));
	s[14112] = ((12 : GoUInt8));
	s[14113] = ((12 : GoUInt8));
	s[14115] = ((12 : GoUInt8));
	s[14116] = ((12 : GoUInt8));
	s[14118] = ((12 : GoUInt8));
	s[14119] = ((12 : GoUInt8));
	s[14120] = ((12 : GoUInt8));
	s[14121] = ((12 : GoUInt8));
	s[14122] = ((12 : GoUInt8));
	s[14188] = ((12 : GoUInt8));
	s[14189] = ((12 : GoUInt8));
	s[14190] = ((12 : GoUInt8));
	s[14191] = ((12 : GoUInt8));
	s[14207] = ((4 : GoUInt8));
	s[14208] = ((1 : GoUInt8));
	s[14209] = ((1 : GoUInt8));
	s[14210] = ((1 : GoUInt8));
	s[14211] = ((1 : GoUInt8));
	s[14212] = ((1 : GoUInt8));
	s[14213] = ((1 : GoUInt8));
	s[14214] = ((1 : GoUInt8));
	s[14215] = ((1 : GoUInt8));
	s[14216] = ((1 : GoUInt8));
	s[14217] = ((1 : GoUInt8));
	s[14218] = ((1 : GoUInt8));
	s[14219] = ((1 : GoUInt8));
	s[14220] = ((1 : GoUInt8));
	s[14221] = ((1 : GoUInt8));
	s[14222] = ((1 : GoUInt8));
	s[14223] = ((1 : GoUInt8));
	s[14224] = ((12 : GoUInt8));
	s[14225] = ((12 : GoUInt8));
	s[14226] = ((12 : GoUInt8));
	s[14227] = ((12 : GoUInt8));
	s[14228] = ((12 : GoUInt8));
	s[14229] = ((12 : GoUInt8));
	s[14230] = ((12 : GoUInt8));
	s[14231] = ((1 : GoUInt8));
	s[14232] = ((1 : GoUInt8));
	s[14233] = ((1 : GoUInt8));
	s[14234] = ((1 : GoUInt8));
	s[14235] = ((1 : GoUInt8));
	s[14236] = ((1 : GoUInt8));
	s[14237] = ((1 : GoUInt8));
	s[14238] = ((1 : GoUInt8));
	s[14239] = ((1 : GoUInt8));
	s[14240] = ((1 : GoUInt8));
	s[14241] = ((1 : GoUInt8));
	s[14242] = ((1 : GoUInt8));
	s[14243] = ((1 : GoUInt8));
	s[14244] = ((1 : GoUInt8));
	s[14245] = ((1 : GoUInt8));
	s[14246] = ((1 : GoUInt8));
	s[14247] = ((1 : GoUInt8));
	s[14248] = ((1 : GoUInt8));
	s[14249] = ((1 : GoUInt8));
	s[14250] = ((1 : GoUInt8));
	s[14251] = ((1 : GoUInt8));
	s[14252] = ((1 : GoUInt8));
	s[14253] = ((1 : GoUInt8));
	s[14254] = ((1 : GoUInt8));
	s[14255] = ((1 : GoUInt8));
	s[14256] = ((1 : GoUInt8));
	s[14257] = ((1 : GoUInt8));
	s[14258] = ((1 : GoUInt8));
	s[14259] = ((1 : GoUInt8));
	s[14260] = ((1 : GoUInt8));
	s[14261] = ((1 : GoUInt8));
	s[14262] = ((1 : GoUInt8));
	s[14263] = ((1 : GoUInt8));
	s[14264] = ((1 : GoUInt8));
	s[14265] = ((1 : GoUInt8));
	s[14266] = ((1 : GoUInt8));
	s[14267] = ((1 : GoUInt8));
	s[14268] = ((1 : GoUInt8));
	s[14269] = ((1 : GoUInt8));
	s[14270] = ((1 : GoUInt8));
	s[14271] = ((1 : GoUInt8));
	s[14272] = ((1 : GoUInt8));
	s[14273] = ((1 : GoUInt8));
	s[14274] = ((1 : GoUInt8));
	s[14275] = ((1 : GoUInt8));
	s[14276] = ((12 : GoUInt8));
	s[14277] = ((12 : GoUInt8));
	s[14278] = ((12 : GoUInt8));
	s[14279] = ((12 : GoUInt8));
	s[14280] = ((12 : GoUInt8));
	s[14281] = ((12 : GoUInt8));
	s[14282] = ((12 : GoUInt8));
	s[14283] = ((1 : GoUInt8));
	s[14284] = ((1 : GoUInt8));
	s[14285] = ((1 : GoUInt8));
	s[14286] = ((1 : GoUInt8));
	s[14287] = ((1 : GoUInt8));
	s[14288] = ((1 : GoUInt8));
	s[14289] = ((1 : GoUInt8));
	s[14290] = ((1 : GoUInt8));
	s[14291] = ((1 : GoUInt8));
	s[14292] = ((1 : GoUInt8));
	s[14293] = ((1 : GoUInt8));
	s[14294] = ((1 : GoUInt8));
	s[14295] = ((1 : GoUInt8));
	s[14296] = ((1 : GoUInt8));
	s[14297] = ((1 : GoUInt8));
	s[14298] = ((1 : GoUInt8));
	s[14299] = ((1 : GoUInt8));
	s[14300] = ((1 : GoUInt8));
	s[14301] = ((1 : GoUInt8));
	s[14302] = ((1 : GoUInt8));
	s[14303] = ((1 : GoUInt8));
	s[14304] = ((1 : GoUInt8));
	s[14305] = ((1 : GoUInt8));
	s[14306] = ((1 : GoUInt8));
	s[14307] = ((1 : GoUInt8));
	s[14308] = ((1 : GoUInt8));
	s[14309] = ((1 : GoUInt8));
	s[14310] = ((1 : GoUInt8));
	s[14311] = ((1 : GoUInt8));
	s[14312] = ((1 : GoUInt8));
	s[14313] = ((1 : GoUInt8));
	s[14314] = ((1 : GoUInt8));
	s[14315] = ((1 : GoUInt8));
	s[14316] = ((1 : GoUInt8));
	s[14317] = ((1 : GoUInt8));
	s[14318] = ((1 : GoUInt8));
	s[14319] = ((1 : GoUInt8));
	s[14320] = ((1 : GoUInt8));
	s[14321] = ((1 : GoUInt8));
	s[14322] = ((1 : GoUInt8));
	s[14323] = ((1 : GoUInt8));
	s[14324] = ((1 : GoUInt8));
	s[14325] = ((1 : GoUInt8));
	s[14326] = ((1 : GoUInt8));
	s[14327] = ((1 : GoUInt8));
	s[14328] = ((1 : GoUInt8));
	s[14329] = ((1 : GoUInt8));
	s[14330] = ((1 : GoUInt8));
	s[14331] = ((1 : GoUInt8));
	s[14332] = ((1 : GoUInt8));
	s[14333] = ((1 : GoUInt8));
	s[14334] = ((1 : GoUInt8));
	s[14335] = ((1 : GoUInt8));
	s[14336] = ((13 : GoUInt8));
	s[14337] = ((13 : GoUInt8));
	s[14338] = ((13 : GoUInt8));
	s[14339] = ((13 : GoUInt8));
	s[14340] = ((13 : GoUInt8));
	s[14341] = ((13 : GoUInt8));
	s[14342] = ((13 : GoUInt8));
	s[14343] = ((13 : GoUInt8));
	s[14344] = ((13 : GoUInt8));
	s[14345] = ((13 : GoUInt8));
	s[14346] = ((13 : GoUInt8));
	s[14347] = ((13 : GoUInt8));
	s[14348] = ((13 : GoUInt8));
	s[14349] = ((13 : GoUInt8));
	s[14350] = ((13 : GoUInt8));
	s[14351] = ((13 : GoUInt8));
	s[14352] = ((1 : GoUInt8));
	s[14353] = ((1 : GoUInt8));
	s[14354] = ((1 : GoUInt8));
	s[14355] = ((1 : GoUInt8));
	s[14356] = ((1 : GoUInt8));
	s[14357] = ((1 : GoUInt8));
	s[14358] = ((1 : GoUInt8));
	s[14359] = ((1 : GoUInt8));
	s[14360] = ((1 : GoUInt8));
	s[14361] = ((1 : GoUInt8));
	s[14362] = ((1 : GoUInt8));
	s[14363] = ((1 : GoUInt8));
	s[14364] = ((1 : GoUInt8));
	s[14365] = ((1 : GoUInt8));
	s[14366] = ((1 : GoUInt8));
	s[14367] = ((1 : GoUInt8));
	s[14368] = ((1 : GoUInt8));
	s[14369] = ((1 : GoUInt8));
	s[14370] = ((1 : GoUInt8));
	s[14371] = ((1 : GoUInt8));
	s[14372] = ((1 : GoUInt8));
	s[14373] = ((1 : GoUInt8));
	s[14374] = ((1 : GoUInt8));
	s[14375] = ((1 : GoUInt8));
	s[14376] = ((1 : GoUInt8));
	s[14377] = ((1 : GoUInt8));
	s[14378] = ((1 : GoUInt8));
	s[14379] = ((1 : GoUInt8));
	s[14380] = ((1 : GoUInt8));
	s[14381] = ((1 : GoUInt8));
	s[14382] = ((1 : GoUInt8));
	s[14383] = ((1 : GoUInt8));
	s[14384] = ((1 : GoUInt8));
	s[14385] = ((1 : GoUInt8));
	s[14386] = ((1 : GoUInt8));
	s[14387] = ((1 : GoUInt8));
	s[14388] = ((1 : GoUInt8));
	s[14389] = ((1 : GoUInt8));
	s[14390] = ((1 : GoUInt8));
	s[14391] = ((1 : GoUInt8));
	s[14392] = ((1 : GoUInt8));
	s[14393] = ((1 : GoUInt8));
	s[14394] = ((1 : GoUInt8));
	s[14395] = ((1 : GoUInt8));
	s[14396] = ((1 : GoUInt8));
	s[14397] = ((1 : GoUInt8));
	s[14398] = ((1 : GoUInt8));
	s[14399] = ((1 : GoUInt8));
	s[14400] = ((13 : GoUInt8));
	s[14401] = ((13 : GoUInt8));
	s[14402] = ((13 : GoUInt8));
	s[14403] = ((13 : GoUInt8));
	s[14404] = ((13 : GoUInt8));
	s[14405] = ((13 : GoUInt8));
	s[14406] = ((13 : GoUInt8));
	s[14407] = ((13 : GoUInt8));
	s[14408] = ((13 : GoUInt8));
	s[14409] = ((13 : GoUInt8));
	s[14410] = ((13 : GoUInt8));
	s[14411] = ((13 : GoUInt8));
	s[14412] = ((13 : GoUInt8));
	s[14413] = ((13 : GoUInt8));
	s[14414] = ((13 : GoUInt8));
	s[14415] = ((13 : GoUInt8));
	s[14416] = ((13 : GoUInt8));
	s[14417] = ((13 : GoUInt8));
	s[14418] = ((13 : GoUInt8));
	s[14419] = ((13 : GoUInt8));
	s[14420] = ((13 : GoUInt8));
	s[14421] = ((13 : GoUInt8));
	s[14422] = ((13 : GoUInt8));
	s[14423] = ((13 : GoUInt8));
	s[14424] = ((13 : GoUInt8));
	s[14425] = ((13 : GoUInt8));
	s[14426] = ((13 : GoUInt8));
	s[14427] = ((13 : GoUInt8));
	s[14428] = ((13 : GoUInt8));
	s[14429] = ((13 : GoUInt8));
	s[14430] = ((13 : GoUInt8));
	s[14431] = ((13 : GoUInt8));
	s[14432] = ((13 : GoUInt8));
	s[14433] = ((13 : GoUInt8));
	s[14434] = ((13 : GoUInt8));
	s[14435] = ((13 : GoUInt8));
	s[14436] = ((13 : GoUInt8));
	s[14437] = ((13 : GoUInt8));
	s[14438] = ((13 : GoUInt8));
	s[14439] = ((13 : GoUInt8));
	s[14440] = ((13 : GoUInt8));
	s[14441] = ((13 : GoUInt8));
	s[14442] = ((13 : GoUInt8));
	s[14443] = ((13 : GoUInt8));
	s[14444] = ((13 : GoUInt8));
	s[14445] = ((13 : GoUInt8));
	s[14446] = ((13 : GoUInt8));
	s[14447] = ((13 : GoUInt8));
	s[14448] = ((10 : GoUInt8));
	s[14449] = ((10 : GoUInt8));
	s[14450] = ((13 : GoUInt8));
	s[14451] = ((13 : GoUInt8));
	s[14452] = ((13 : GoUInt8));
	s[14453] = ((13 : GoUInt8));
	s[14454] = ((13 : GoUInt8));
	s[14455] = ((13 : GoUInt8));
	s[14456] = ((13 : GoUInt8));
	s[14457] = ((13 : GoUInt8));
	s[14458] = ((13 : GoUInt8));
	s[14459] = ((13 : GoUInt8));
	s[14460] = ((13 : GoUInt8));
	s[14461] = ((13 : GoUInt8));
	s[14462] = ((13 : GoUInt8));
	s[14463] = ((13 : GoUInt8));
	s[14464] = ((10 : GoUInt8));
	s[14465] = ((10 : GoUInt8));
	s[14466] = ((10 : GoUInt8));
	s[14467] = ((10 : GoUInt8));
	s[14468] = ((10 : GoUInt8));
	s[14469] = ((10 : GoUInt8));
	s[14470] = ((10 : GoUInt8));
	s[14471] = ((10 : GoUInt8));
	s[14472] = ((10 : GoUInt8));
	s[14473] = ((10 : GoUInt8));
	s[14474] = ((10 : GoUInt8));
	s[14475] = ((10 : GoUInt8));
	s[14476] = ((10 : GoUInt8));
	s[14477] = ((10 : GoUInt8));
	s[14478] = ((10 : GoUInt8));
	s[14479] = ((10 : GoUInt8));
	s[14480] = ((10 : GoUInt8));
	s[14481] = ((10 : GoUInt8));
	s[14482] = ((10 : GoUInt8));
	s[14483] = ((10 : GoUInt8));
	s[14484] = ((10 : GoUInt8));
	s[14485] = ((10 : GoUInt8));
	s[14486] = ((10 : GoUInt8));
	s[14487] = ((10 : GoUInt8));
	s[14488] = ((10 : GoUInt8));
	s[14489] = ((10 : GoUInt8));
	s[14490] = ((10 : GoUInt8));
	s[14491] = ((10 : GoUInt8));
	s[14492] = ((10 : GoUInt8));
	s[14493] = ((10 : GoUInt8));
	s[14494] = ((10 : GoUInt8));
	s[14495] = ((10 : GoUInt8));
	s[14496] = ((10 : GoUInt8));
	s[14497] = ((10 : GoUInt8));
	s[14498] = ((10 : GoUInt8));
	s[14499] = ((10 : GoUInt8));
	s[14500] = ((10 : GoUInt8));
	s[14501] = ((10 : GoUInt8));
	s[14502] = ((10 : GoUInt8));
	s[14503] = ((10 : GoUInt8));
	s[14504] = ((10 : GoUInt8));
	s[14505] = ((10 : GoUInt8));
	s[14506] = ((10 : GoUInt8));
	s[14507] = ((10 : GoUInt8));
	s[14512] = ((10 : GoUInt8));
	s[14513] = ((10 : GoUInt8));
	s[14514] = ((10 : GoUInt8));
	s[14515] = ((10 : GoUInt8));
	s[14516] = ((10 : GoUInt8));
	s[14517] = ((10 : GoUInt8));
	s[14518] = ((10 : GoUInt8));
	s[14519] = ((10 : GoUInt8));
	s[14520] = ((10 : GoUInt8));
	s[14521] = ((10 : GoUInt8));
	s[14522] = ((10 : GoUInt8));
	s[14523] = ((10 : GoUInt8));
	s[14524] = ((10 : GoUInt8));
	s[14525] = ((10 : GoUInt8));
	s[14526] = ((10 : GoUInt8));
	s[14527] = ((10 : GoUInt8));
	s[14528] = ((10 : GoUInt8));
	s[14529] = ((10 : GoUInt8));
	s[14530] = ((10 : GoUInt8));
	s[14531] = ((10 : GoUInt8));
	s[14532] = ((10 : GoUInt8));
	s[14533] = ((10 : GoUInt8));
	s[14534] = ((10 : GoUInt8));
	s[14535] = ((10 : GoUInt8));
	s[14536] = ((10 : GoUInt8));
	s[14537] = ((10 : GoUInt8));
	s[14538] = ((10 : GoUInt8));
	s[14539] = ((10 : GoUInt8));
	s[14540] = ((10 : GoUInt8));
	s[14541] = ((10 : GoUInt8));
	s[14542] = ((10 : GoUInt8));
	s[14543] = ((10 : GoUInt8));
	s[14544] = ((10 : GoUInt8));
	s[14545] = ((10 : GoUInt8));
	s[14546] = ((10 : GoUInt8));
	s[14547] = ((10 : GoUInt8));
	s[14560] = ((10 : GoUInt8));
	s[14561] = ((10 : GoUInt8));
	s[14562] = ((10 : GoUInt8));
	s[14563] = ((10 : GoUInt8));
	s[14564] = ((10 : GoUInt8));
	s[14565] = ((10 : GoUInt8));
	s[14566] = ((10 : GoUInt8));
	s[14567] = ((10 : GoUInt8));
	s[14568] = ((10 : GoUInt8));
	s[14569] = ((10 : GoUInt8));
	s[14570] = ((10 : GoUInt8));
	s[14571] = ((10 : GoUInt8));
	s[14572] = ((10 : GoUInt8));
	s[14573] = ((10 : GoUInt8));
	s[14574] = ((10 : GoUInt8));
	s[14577] = ((10 : GoUInt8));
	s[14578] = ((10 : GoUInt8));
	s[14579] = ((10 : GoUInt8));
	s[14580] = ((10 : GoUInt8));
	s[14581] = ((10 : GoUInt8));
	s[14582] = ((10 : GoUInt8));
	s[14583] = ((10 : GoUInt8));
	s[14584] = ((10 : GoUInt8));
	s[14585] = ((10 : GoUInt8));
	s[14586] = ((10 : GoUInt8));
	s[14587] = ((10 : GoUInt8));
	s[14588] = ((10 : GoUInt8));
	s[14589] = ((10 : GoUInt8));
	s[14590] = ((10 : GoUInt8));
	s[14591] = ((10 : GoUInt8));
	s[14593] = ((10 : GoUInt8));
	s[14594] = ((10 : GoUInt8));
	s[14595] = ((10 : GoUInt8));
	s[14596] = ((10 : GoUInt8));
	s[14597] = ((10 : GoUInt8));
	s[14598] = ((10 : GoUInt8));
	s[14599] = ((10 : GoUInt8));
	s[14600] = ((10 : GoUInt8));
	s[14601] = ((10 : GoUInt8));
	s[14602] = ((10 : GoUInt8));
	s[14603] = ((10 : GoUInt8));
	s[14604] = ((10 : GoUInt8));
	s[14605] = ((10 : GoUInt8));
	s[14606] = ((10 : GoUInt8));
	s[14607] = ((10 : GoUInt8));
	s[14609] = ((10 : GoUInt8));
	s[14610] = ((10 : GoUInt8));
	s[14611] = ((10 : GoUInt8));
	s[14612] = ((10 : GoUInt8));
	s[14613] = ((10 : GoUInt8));
	s[14614] = ((10 : GoUInt8));
	s[14615] = ((10 : GoUInt8));
	s[14616] = ((10 : GoUInt8));
	s[14617] = ((10 : GoUInt8));
	s[14618] = ((10 : GoUInt8));
	s[14619] = ((10 : GoUInt8));
	s[14620] = ((10 : GoUInt8));
	s[14621] = ((10 : GoUInt8));
	s[14622] = ((10 : GoUInt8));
	s[14623] = ((10 : GoUInt8));
	s[14624] = ((10 : GoUInt8));
	s[14625] = ((10 : GoUInt8));
	s[14626] = ((10 : GoUInt8));
	s[14627] = ((10 : GoUInt8));
	s[14628] = ((10 : GoUInt8));
	s[14629] = ((10 : GoUInt8));
	s[14630] = ((10 : GoUInt8));
	s[14631] = ((10 : GoUInt8));
	s[14632] = ((10 : GoUInt8));
	s[14633] = ((10 : GoUInt8));
	s[14634] = ((10 : GoUInt8));
	s[14635] = ((10 : GoUInt8));
	s[14636] = ((10 : GoUInt8));
	s[14637] = ((10 : GoUInt8));
	s[14638] = ((10 : GoUInt8));
	s[14639] = ((10 : GoUInt8));
	s[14640] = ((10 : GoUInt8));
	s[14641] = ((10 : GoUInt8));
	s[14642] = ((10 : GoUInt8));
	s[14643] = ((10 : GoUInt8));
	s[14644] = ((10 : GoUInt8));
	s[14645] = ((10 : GoUInt8));
	s[14656] = ((2 : GoUInt8));
	s[14657] = ((2 : GoUInt8));
	s[14658] = ((2 : GoUInt8));
	s[14659] = ((2 : GoUInt8));
	s[14660] = ((2 : GoUInt8));
	s[14661] = ((2 : GoUInt8));
	s[14662] = ((2 : GoUInt8));
	s[14663] = ((2 : GoUInt8));
	s[14664] = ((2 : GoUInt8));
	s[14665] = ((2 : GoUInt8));
	s[14666] = ((2 : GoUInt8));
	s[14667] = ((10 : GoUInt8));
	s[14668] = ((10 : GoUInt8));
	s[14669] = ((10 : GoUInt8));
	s[14670] = ((10 : GoUInt8));
	s[14671] = ((10 : GoUInt8));
	s[14703] = ((10 : GoUInt8));
	s[14762] = ((10 : GoUInt8));
	s[14763] = ((10 : GoUInt8));
	s[14764] = ((10 : GoUInt8));
	s[14765] = ((10 : GoUInt8));
	s[14766] = ((10 : GoUInt8));
	s[14767] = ((10 : GoUInt8));
	s[14829] = ((10 : GoUInt8));
	s[14880] = ((10 : GoUInt8));
	s[14881] = ((10 : GoUInt8));
	s[14882] = ((10 : GoUInt8));
	s[14883] = ((10 : GoUInt8));
	s[14884] = ((10 : GoUInt8));
	s[14885] = ((10 : GoUInt8));
	s[14912] = ((10 : GoUInt8));
	s[14913] = ((10 : GoUInt8));
	s[14914] = ((10 : GoUInt8));
	s[14915] = ((10 : GoUInt8));
	s[14916] = ((10 : GoUInt8));
	s[14917] = ((10 : GoUInt8));
	s[14918] = ((10 : GoUInt8));
	s[14919] = ((10 : GoUInt8));
	s[14920] = ((10 : GoUInt8));
	s[14921] = ((10 : GoUInt8));
	s[14922] = ((10 : GoUInt8));
	s[14923] = ((10 : GoUInt8));
	s[14924] = ((10 : GoUInt8));
	s[14925] = ((10 : GoUInt8));
	s[14926] = ((10 : GoUInt8));
	s[14927] = ((10 : GoUInt8));
	s[14928] = ((10 : GoUInt8));
	s[14929] = ((10 : GoUInt8));
	s[14930] = ((10 : GoUInt8));
	s[14931] = ((10 : GoUInt8));
	s[14932] = ((10 : GoUInt8));
	s[14933] = ((10 : GoUInt8));
	s[14934] = ((10 : GoUInt8));
	s[14935] = ((10 : GoUInt8));
	s[14944] = ((10 : GoUInt8));
	s[14945] = ((10 : GoUInt8));
	s[14946] = ((10 : GoUInt8));
	s[14947] = ((10 : GoUInt8));
	s[14948] = ((10 : GoUInt8));
	s[14949] = ((10 : GoUInt8));
	s[14950] = ((10 : GoUInt8));
	s[14951] = ((10 : GoUInt8));
	s[14952] = ((10 : GoUInt8));
	s[14953] = ((10 : GoUInt8));
	s[14954] = ((10 : GoUInt8));
	s[14955] = ((10 : GoUInt8));
	s[14956] = ((10 : GoUInt8));
	s[14960] = ((10 : GoUInt8));
	s[14961] = ((10 : GoUInt8));
	s[14962] = ((10 : GoUInt8));
	s[14963] = ((10 : GoUInt8));
	s[14964] = ((10 : GoUInt8));
	s[14965] = ((10 : GoUInt8));
	s[14966] = ((10 : GoUInt8));
	s[14967] = ((10 : GoUInt8));
	s[14968] = ((10 : GoUInt8));
	s[14969] = ((10 : GoUInt8));
	s[14970] = ((10 : GoUInt8));
	s[14971] = ((10 : GoUInt8));
	s[14972] = ((10 : GoUInt8));
	s[14976] = ((10 : GoUInt8));
	s[14977] = ((10 : GoUInt8));
	s[14978] = ((10 : GoUInt8));
	s[14979] = ((10 : GoUInt8));
	s[14980] = ((10 : GoUInt8));
	s[14981] = ((10 : GoUInt8));
	s[14982] = ((10 : GoUInt8));
	s[14983] = ((10 : GoUInt8));
	s[14984] = ((10 : GoUInt8));
	s[14985] = ((10 : GoUInt8));
	s[14986] = ((10 : GoUInt8));
	s[14987] = ((10 : GoUInt8));
	s[14988] = ((10 : GoUInt8));
	s[14989] = ((10 : GoUInt8));
	s[14990] = ((10 : GoUInt8));
	s[14991] = ((10 : GoUInt8));
	s[14992] = ((10 : GoUInt8));
	s[14993] = ((10 : GoUInt8));
	s[14994] = ((10 : GoUInt8));
	s[14995] = ((10 : GoUInt8));
	s[14996] = ((10 : GoUInt8));
	s[14997] = ((10 : GoUInt8));
	s[14998] = ((10 : GoUInt8));
	s[14999] = ((10 : GoUInt8));
	s[15000] = ((10 : GoUInt8));
	s[15008] = ((10 : GoUInt8));
	s[15009] = ((10 : GoUInt8));
	s[15010] = ((10 : GoUInt8));
	s[15011] = ((10 : GoUInt8));
	s[15012] = ((10 : GoUInt8));
	s[15013] = ((10 : GoUInt8));
	s[15014] = ((10 : GoUInt8));
	s[15015] = ((10 : GoUInt8));
	s[15016] = ((10 : GoUInt8));
	s[15017] = ((10 : GoUInt8));
	s[15018] = ((10 : GoUInt8));
	s[15019] = ((10 : GoUInt8));
	s[15040] = ((10 : GoUInt8));
	s[15041] = ((10 : GoUInt8));
	s[15042] = ((10 : GoUInt8));
	s[15043] = ((10 : GoUInt8));
	s[15044] = ((10 : GoUInt8));
	s[15045] = ((10 : GoUInt8));
	s[15046] = ((10 : GoUInt8));
	s[15047] = ((10 : GoUInt8));
	s[15048] = ((10 : GoUInt8));
	s[15049] = ((10 : GoUInt8));
	s[15050] = ((10 : GoUInt8));
	s[15051] = ((10 : GoUInt8));
	s[15056] = ((10 : GoUInt8));
	s[15057] = ((10 : GoUInt8));
	s[15058] = ((10 : GoUInt8));
	s[15059] = ((10 : GoUInt8));
	s[15060] = ((10 : GoUInt8));
	s[15061] = ((10 : GoUInt8));
	s[15062] = ((10 : GoUInt8));
	s[15063] = ((10 : GoUInt8));
	s[15064] = ((10 : GoUInt8));
	s[15065] = ((10 : GoUInt8));
	s[15066] = ((10 : GoUInt8));
	s[15067] = ((10 : GoUInt8));
	s[15068] = ((10 : GoUInt8));
	s[15069] = ((10 : GoUInt8));
	s[15070] = ((10 : GoUInt8));
	s[15071] = ((10 : GoUInt8));
	s[15072] = ((10 : GoUInt8));
	s[15073] = ((10 : GoUInt8));
	s[15074] = ((10 : GoUInt8));
	s[15075] = ((10 : GoUInt8));
	s[15076] = ((10 : GoUInt8));
	s[15077] = ((10 : GoUInt8));
	s[15078] = ((10 : GoUInt8));
	s[15079] = ((10 : GoUInt8));
	s[15080] = ((10 : GoUInt8));
	s[15081] = ((10 : GoUInt8));
	s[15082] = ((10 : GoUInt8));
	s[15083] = ((10 : GoUInt8));
	s[15084] = ((10 : GoUInt8));
	s[15085] = ((10 : GoUInt8));
	s[15086] = ((10 : GoUInt8));
	s[15087] = ((10 : GoUInt8));
	s[15088] = ((10 : GoUInt8));
	s[15089] = ((10 : GoUInt8));
	s[15090] = ((10 : GoUInt8));
	s[15091] = ((10 : GoUInt8));
	s[15092] = ((10 : GoUInt8));
	s[15093] = ((10 : GoUInt8));
	s[15094] = ((10 : GoUInt8));
	s[15095] = ((10 : GoUInt8));
	s[15096] = ((10 : GoUInt8));
	s[15097] = ((10 : GoUInt8));
	s[15098] = ((10 : GoUInt8));
	s[15099] = ((10 : GoUInt8));
	s[15100] = ((10 : GoUInt8));
	s[15101] = ((10 : GoUInt8));
	s[15102] = ((10 : GoUInt8));
	s[15103] = ((10 : GoUInt8));
	s[15104] = ((10 : GoUInt8));
	s[15105] = ((10 : GoUInt8));
	s[15106] = ((10 : GoUInt8));
	s[15107] = ((10 : GoUInt8));
	s[15108] = ((10 : GoUInt8));
	s[15109] = ((10 : GoUInt8));
	s[15110] = ((10 : GoUInt8));
	s[15111] = ((10 : GoUInt8));
	s[15120] = ((10 : GoUInt8));
	s[15121] = ((10 : GoUInt8));
	s[15122] = ((10 : GoUInt8));
	s[15123] = ((10 : GoUInt8));
	s[15124] = ((10 : GoUInt8));
	s[15125] = ((10 : GoUInt8));
	s[15126] = ((10 : GoUInt8));
	s[15127] = ((10 : GoUInt8));
	s[15128] = ((10 : GoUInt8));
	s[15129] = ((10 : GoUInt8));
	s[15136] = ((10 : GoUInt8));
	s[15137] = ((10 : GoUInt8));
	s[15138] = ((10 : GoUInt8));
	s[15139] = ((10 : GoUInt8));
	s[15140] = ((10 : GoUInt8));
	s[15141] = ((10 : GoUInt8));
	s[15142] = ((10 : GoUInt8));
	s[15143] = ((10 : GoUInt8));
	s[15144] = ((10 : GoUInt8));
	s[15145] = ((10 : GoUInt8));
	s[15146] = ((10 : GoUInt8));
	s[15147] = ((10 : GoUInt8));
	s[15148] = ((10 : GoUInt8));
	s[15149] = ((10 : GoUInt8));
	s[15150] = ((10 : GoUInt8));
	s[15151] = ((10 : GoUInt8));
	s[15152] = ((10 : GoUInt8));
	s[15153] = ((10 : GoUInt8));
	s[15154] = ((10 : GoUInt8));
	s[15155] = ((10 : GoUInt8));
	s[15156] = ((10 : GoUInt8));
	s[15157] = ((10 : GoUInt8));
	s[15158] = ((10 : GoUInt8));
	s[15159] = ((10 : GoUInt8));
	s[15160] = ((10 : GoUInt8));
	s[15161] = ((10 : GoUInt8));
	s[15162] = ((10 : GoUInt8));
	s[15163] = ((10 : GoUInt8));
	s[15164] = ((10 : GoUInt8));
	s[15165] = ((10 : GoUInt8));
	s[15166] = ((10 : GoUInt8));
	s[15167] = ((10 : GoUInt8));
	s[15168] = ((10 : GoUInt8));
	s[15169] = ((10 : GoUInt8));
	s[15170] = ((10 : GoUInt8));
	s[15171] = ((10 : GoUInt8));
	s[15172] = ((10 : GoUInt8));
	s[15173] = ((10 : GoUInt8));
	s[15174] = ((10 : GoUInt8));
	s[15175] = ((10 : GoUInt8));
	s[15184] = ((10 : GoUInt8));
	s[15185] = ((10 : GoUInt8));
	s[15186] = ((10 : GoUInt8));
	s[15187] = ((10 : GoUInt8));
	s[15188] = ((10 : GoUInt8));
	s[15189] = ((10 : GoUInt8));
	s[15190] = ((10 : GoUInt8));
	s[15191] = ((10 : GoUInt8));
	s[15192] = ((10 : GoUInt8));
	s[15193] = ((10 : GoUInt8));
	s[15194] = ((10 : GoUInt8));
	s[15195] = ((10 : GoUInt8));
	s[15196] = ((10 : GoUInt8));
	s[15197] = ((10 : GoUInt8));
	s[15198] = ((10 : GoUInt8));
	s[15199] = ((10 : GoUInt8));
	s[15200] = ((10 : GoUInt8));
	s[15201] = ((10 : GoUInt8));
	s[15202] = ((10 : GoUInt8));
	s[15203] = ((10 : GoUInt8));
	s[15204] = ((10 : GoUInt8));
	s[15205] = ((10 : GoUInt8));
	s[15206] = ((10 : GoUInt8));
	s[15207] = ((10 : GoUInt8));
	s[15208] = ((10 : GoUInt8));
	s[15209] = ((10 : GoUInt8));
	s[15210] = ((10 : GoUInt8));
	s[15211] = ((10 : GoUInt8));
	s[15212] = ((10 : GoUInt8));
	s[15213] = ((10 : GoUInt8));
	s[15216] = ((10 : GoUInt8));
	s[15217] = ((10 : GoUInt8));
	s[15232] = ((10 : GoUInt8));
	s[15233] = ((10 : GoUInt8));
	s[15234] = ((10 : GoUInt8));
	s[15235] = ((10 : GoUInt8));
	s[15236] = ((10 : GoUInt8));
	s[15237] = ((10 : GoUInt8));
	s[15238] = ((10 : GoUInt8));
	s[15239] = ((10 : GoUInt8));
	s[15240] = ((10 : GoUInt8));
	s[15241] = ((10 : GoUInt8));
	s[15242] = ((10 : GoUInt8));
	s[15243] = ((10 : GoUInt8));
	s[15244] = ((10 : GoUInt8));
	s[15245] = ((10 : GoUInt8));
	s[15246] = ((10 : GoUInt8));
	s[15247] = ((10 : GoUInt8));
	s[15248] = ((10 : GoUInt8));
	s[15249] = ((10 : GoUInt8));
	s[15250] = ((10 : GoUInt8));
	s[15251] = ((10 : GoUInt8));
	s[15252] = ((10 : GoUInt8));
	s[15253] = ((10 : GoUInt8));
	s[15254] = ((10 : GoUInt8));
	s[15255] = ((10 : GoUInt8));
	s[15256] = ((10 : GoUInt8));
	s[15257] = ((10 : GoUInt8));
	s[15258] = ((10 : GoUInt8));
	s[15259] = ((10 : GoUInt8));
	s[15260] = ((10 : GoUInt8));
	s[15261] = ((10 : GoUInt8));
	s[15262] = ((10 : GoUInt8));
	s[15263] = ((10 : GoUInt8));
	s[15264] = ((10 : GoUInt8));
	s[15265] = ((10 : GoUInt8));
	s[15266] = ((10 : GoUInt8));
	s[15267] = ((10 : GoUInt8));
	s[15268] = ((10 : GoUInt8));
	s[15269] = ((10 : GoUInt8));
	s[15270] = ((10 : GoUInt8));
	s[15271] = ((10 : GoUInt8));
	s[15272] = ((10 : GoUInt8));
	s[15273] = ((10 : GoUInt8));
	s[15274] = ((10 : GoUInt8));
	s[15275] = ((10 : GoUInt8));
	s[15276] = ((10 : GoUInt8));
	s[15277] = ((10 : GoUInt8));
	s[15278] = ((10 : GoUInt8));
	s[15279] = ((10 : GoUInt8));
	s[15280] = ((10 : GoUInt8));
	s[15281] = ((10 : GoUInt8));
	s[15282] = ((10 : GoUInt8));
	s[15283] = ((10 : GoUInt8));
	s[15284] = ((10 : GoUInt8));
	s[15285] = ((10 : GoUInt8));
	s[15286] = ((10 : GoUInt8));
	s[15287] = ((10 : GoUInt8));
	s[15288] = ((10 : GoUInt8));
	s[15290] = ((10 : GoUInt8));
	s[15291] = ((10 : GoUInt8));
	s[15292] = ((10 : GoUInt8));
	s[15293] = ((10 : GoUInt8));
	s[15294] = ((10 : GoUInt8));
	s[15295] = ((10 : GoUInt8));
	s[15296] = ((10 : GoUInt8));
	s[15297] = ((10 : GoUInt8));
	s[15298] = ((10 : GoUInt8));
	s[15299] = ((10 : GoUInt8));
	s[15300] = ((10 : GoUInt8));
	s[15301] = ((10 : GoUInt8));
	s[15302] = ((10 : GoUInt8));
	s[15303] = ((10 : GoUInt8));
	s[15304] = ((10 : GoUInt8));
	s[15305] = ((10 : GoUInt8));
	s[15306] = ((10 : GoUInt8));
	s[15307] = ((10 : GoUInt8));
	s[15309] = ((10 : GoUInt8));
	s[15310] = ((10 : GoUInt8));
	s[15311] = ((10 : GoUInt8));
	s[15312] = ((10 : GoUInt8));
	s[15313] = ((10 : GoUInt8));
	s[15314] = ((10 : GoUInt8));
	s[15315] = ((10 : GoUInt8));
	s[15316] = ((10 : GoUInt8));
	s[15317] = ((10 : GoUInt8));
	s[15318] = ((10 : GoUInt8));
	s[15319] = ((10 : GoUInt8));
	s[15320] = ((10 : GoUInt8));
	s[15321] = ((10 : GoUInt8));
	s[15322] = ((10 : GoUInt8));
	s[15323] = ((10 : GoUInt8));
	s[15324] = ((10 : GoUInt8));
	s[15325] = ((10 : GoUInt8));
	s[15326] = ((10 : GoUInt8));
	s[15327] = ((10 : GoUInt8));
	s[15328] = ((10 : GoUInt8));
	s[15329] = ((10 : GoUInt8));
	s[15330] = ((10 : GoUInt8));
	s[15331] = ((10 : GoUInt8));
	s[15332] = ((10 : GoUInt8));
	s[15333] = ((10 : GoUInt8));
	s[15334] = ((10 : GoUInt8));
	s[15335] = ((10 : GoUInt8));
	s[15336] = ((10 : GoUInt8));
	s[15337] = ((10 : GoUInt8));
	s[15338] = ((10 : GoUInt8));
	s[15339] = ((10 : GoUInt8));
	s[15340] = ((10 : GoUInt8));
	s[15341] = ((10 : GoUInt8));
	s[15342] = ((10 : GoUInt8));
	s[15343] = ((10 : GoUInt8));
	s[15344] = ((10 : GoUInt8));
	s[15345] = ((10 : GoUInt8));
	s[15346] = ((10 : GoUInt8));
	s[15347] = ((10 : GoUInt8));
	s[15348] = ((10 : GoUInt8));
	s[15349] = ((10 : GoUInt8));
	s[15350] = ((10 : GoUInt8));
	s[15351] = ((10 : GoUInt8));
	s[15352] = ((10 : GoUInt8));
	s[15353] = ((10 : GoUInt8));
	s[15354] = ((10 : GoUInt8));
	s[15355] = ((10 : GoUInt8));
	s[15356] = ((10 : GoUInt8));
	s[15357] = ((10 : GoUInt8));
	s[15358] = ((10 : GoUInt8));
	s[15359] = ((10 : GoUInt8));
	s[15360] = ((10 : GoUInt8));
	s[15361] = ((10 : GoUInt8));
	s[15362] = ((10 : GoUInt8));
	s[15363] = ((10 : GoUInt8));
	s[15364] = ((10 : GoUInt8));
	s[15365] = ((10 : GoUInt8));
	s[15366] = ((10 : GoUInt8));
	s[15367] = ((10 : GoUInt8));
	s[15368] = ((10 : GoUInt8));
	s[15369] = ((10 : GoUInt8));
	s[15370] = ((10 : GoUInt8));
	s[15371] = ((10 : GoUInt8));
	s[15372] = ((10 : GoUInt8));
	s[15373] = ((10 : GoUInt8));
	s[15374] = ((10 : GoUInt8));
	s[15375] = ((10 : GoUInt8));
	s[15376] = ((10 : GoUInt8));
	s[15377] = ((10 : GoUInt8));
	s[15378] = ((10 : GoUInt8));
	s[15379] = ((10 : GoUInt8));
	s[15392] = ((10 : GoUInt8));
	s[15393] = ((10 : GoUInt8));
	s[15394] = ((10 : GoUInt8));
	s[15395] = ((10 : GoUInt8));
	s[15396] = ((10 : GoUInt8));
	s[15397] = ((10 : GoUInt8));
	s[15398] = ((10 : GoUInt8));
	s[15399] = ((10 : GoUInt8));
	s[15400] = ((10 : GoUInt8));
	s[15401] = ((10 : GoUInt8));
	s[15402] = ((10 : GoUInt8));
	s[15403] = ((10 : GoUInt8));
	s[15404] = ((10 : GoUInt8));
	s[15405] = ((10 : GoUInt8));
	s[15408] = ((10 : GoUInt8));
	s[15409] = ((10 : GoUInt8));
	s[15410] = ((10 : GoUInt8));
	s[15411] = ((10 : GoUInt8));
	s[15412] = ((10 : GoUInt8));
	s[15416] = ((10 : GoUInt8));
	s[15417] = ((10 : GoUInt8));
	s[15418] = ((10 : GoUInt8));
	s[15424] = ((10 : GoUInt8));
	s[15425] = ((10 : GoUInt8));
	s[15426] = ((10 : GoUInt8));
	s[15427] = ((10 : GoUInt8));
	s[15428] = ((10 : GoUInt8));
	s[15429] = ((10 : GoUInt8));
	s[15430] = ((10 : GoUInt8));
	s[15440] = ((10 : GoUInt8));
	s[15441] = ((10 : GoUInt8));
	s[15442] = ((10 : GoUInt8));
	s[15443] = ((10 : GoUInt8));
	s[15444] = ((10 : GoUInt8));
	s[15445] = ((10 : GoUInt8));
	s[15446] = ((10 : GoUInt8));
	s[15447] = ((10 : GoUInt8));
	s[15448] = ((10 : GoUInt8));
	s[15449] = ((10 : GoUInt8));
	s[15450] = ((10 : GoUInt8));
	s[15451] = ((10 : GoUInt8));
	s[15452] = ((10 : GoUInt8));
	s[15453] = ((10 : GoUInt8));
	s[15454] = ((10 : GoUInt8));
	s[15455] = ((10 : GoUInt8));
	s[15456] = ((10 : GoUInt8));
	s[15457] = ((10 : GoUInt8));
	s[15458] = ((10 : GoUInt8));
	s[15459] = ((10 : GoUInt8));
	s[15460] = ((10 : GoUInt8));
	s[15461] = ((10 : GoUInt8));
	s[15462] = ((10 : GoUInt8));
	s[15463] = ((10 : GoUInt8));
	s[15464] = ((10 : GoUInt8));
	s[15472] = ((10 : GoUInt8));
	s[15473] = ((10 : GoUInt8));
	s[15474] = ((10 : GoUInt8));
	s[15475] = ((10 : GoUInt8));
	s[15476] = ((10 : GoUInt8));
	s[15477] = ((10 : GoUInt8));
	s[15478] = ((10 : GoUInt8));
	s[15488] = ((10 : GoUInt8));
	s[15489] = ((10 : GoUInt8));
	s[15490] = ((10 : GoUInt8));
	s[15504] = ((10 : GoUInt8));
	s[15505] = ((10 : GoUInt8));
	s[15506] = ((10 : GoUInt8));
	s[15507] = ((10 : GoUInt8));
	s[15508] = ((10 : GoUInt8));
	s[15509] = ((10 : GoUInt8));
	s[15510] = ((10 : GoUInt8));
	s[15552] = ((10 : GoUInt8));
	s[15553] = ((10 : GoUInt8));
	s[15554] = ((10 : GoUInt8));
	s[15555] = ((10 : GoUInt8));
	s[15556] = ((10 : GoUInt8));
	s[15557] = ((10 : GoUInt8));
	s[15558] = ((10 : GoUInt8));
	s[15559] = ((10 : GoUInt8));
	s[15560] = ((10 : GoUInt8));
	s[15561] = ((10 : GoUInt8));
	s[15562] = ((10 : GoUInt8));
	s[15563] = ((10 : GoUInt8));
	s[15564] = ((10 : GoUInt8));
	s[15565] = ((10 : GoUInt8));
	s[15566] = ((10 : GoUInt8));
	s[15567] = ((10 : GoUInt8));
	s[15568] = ((10 : GoUInt8));
	s[15569] = ((10 : GoUInt8));
	s[15570] = ((10 : GoUInt8));
	s[15572] = ((10 : GoUInt8));
	s[15573] = ((10 : GoUInt8));
	s[15574] = ((10 : GoUInt8));
	s[15575] = ((10 : GoUInt8));
	s[15576] = ((10 : GoUInt8));
	s[15577] = ((10 : GoUInt8));
	s[15578] = ((10 : GoUInt8));
	s[15579] = ((10 : GoUInt8));
	s[15580] = ((10 : GoUInt8));
	s[15581] = ((10 : GoUInt8));
	s[15582] = ((10 : GoUInt8));
	s[15583] = ((10 : GoUInt8));
	s[15584] = ((10 : GoUInt8));
	s[15585] = ((10 : GoUInt8));
	s[15586] = ((10 : GoUInt8));
	s[15587] = ((10 : GoUInt8));
	s[15588] = ((10 : GoUInt8));
	s[15589] = ((10 : GoUInt8));
	s[15590] = ((10 : GoUInt8));
	s[15591] = ((10 : GoUInt8));
	s[15592] = ((10 : GoUInt8));
	s[15593] = ((10 : GoUInt8));
	s[15594] = ((10 : GoUInt8));
	s[15595] = ((10 : GoUInt8));
	s[15596] = ((10 : GoUInt8));
	s[15597] = ((10 : GoUInt8));
	s[15598] = ((10 : GoUInt8));
	s[15599] = ((10 : GoUInt8));
	s[15600] = ((10 : GoUInt8));
	s[15601] = ((10 : GoUInt8));
	s[15602] = ((10 : GoUInt8));
	s[15603] = ((10 : GoUInt8));
	s[15604] = ((10 : GoUInt8));
	s[15605] = ((10 : GoUInt8));
	s[15606] = ((10 : GoUInt8));
	s[15607] = ((10 : GoUInt8));
	s[15608] = ((10 : GoUInt8));
	s[15609] = ((10 : GoUInt8));
	s[15610] = ((10 : GoUInt8));
	s[15611] = ((10 : GoUInt8));
	s[15612] = ((10 : GoUInt8));
	s[15613] = ((10 : GoUInt8));
	s[15614] = ((10 : GoUInt8));
	s[15615] = ((10 : GoUInt8));
	s[15616] = ((10 : GoUInt8));
	s[15617] = ((10 : GoUInt8));
	s[15618] = ((10 : GoUInt8));
	s[15619] = ((10 : GoUInt8));
	s[15620] = ((10 : GoUInt8));
	s[15621] = ((10 : GoUInt8));
	s[15622] = ((10 : GoUInt8));
	s[15623] = ((10 : GoUInt8));
	s[15624] = ((10 : GoUInt8));
	s[15625] = ((10 : GoUInt8));
	s[15626] = ((10 : GoUInt8));
	s[15664] = ((2 : GoUInt8));
	s[15665] = ((2 : GoUInt8));
	s[15666] = ((2 : GoUInt8));
	s[15667] = ((2 : GoUInt8));
	s[15668] = ((2 : GoUInt8));
	s[15669] = ((2 : GoUInt8));
	s[15670] = ((2 : GoUInt8));
	s[15671] = ((2 : GoUInt8));
	s[15672] = ((2 : GoUInt8));
	s[15673] = ((2 : GoUInt8));
	s[15742] = ((11 : GoUInt8));
	s[15743] = ((11 : GoUInt8));
	s[15744] = ((11 : GoUInt8));
	s[15745] = ((11 : GoUInt8));
	s[15746] = ((11 : GoUInt8));
	s[15747] = ((11 : GoUInt8));
	s[15748] = ((11 : GoUInt8));
	s[15749] = ((11 : GoUInt8));
	s[15750] = ((11 : GoUInt8));
	s[15751] = ((11 : GoUInt8));
	s[15752] = ((11 : GoUInt8));
	s[15753] = ((11 : GoUInt8));
	s[15754] = ((11 : GoUInt8));
	s[15755] = ((11 : GoUInt8));
	s[15756] = ((11 : GoUInt8));
	s[15757] = ((11 : GoUInt8));
	s[15758] = ((11 : GoUInt8));
	s[15759] = ((11 : GoUInt8));
	s[15760] = ((11 : GoUInt8));
	s[15761] = ((11 : GoUInt8));
	s[15762] = ((11 : GoUInt8));
	s[15763] = ((11 : GoUInt8));
	s[15764] = ((11 : GoUInt8));
	s[15765] = ((11 : GoUInt8));
	s[15766] = ((11 : GoUInt8));
	s[15767] = ((11 : GoUInt8));
	s[15768] = ((11 : GoUInt8));
	s[15769] = ((11 : GoUInt8));
	s[15770] = ((11 : GoUInt8));
	s[15771] = ((11 : GoUInt8));
	s[15772] = ((11 : GoUInt8));
	s[15773] = ((11 : GoUInt8));
	s[15774] = ((11 : GoUInt8));
	s[15775] = ((11 : GoUInt8));
	s[15776] = ((11 : GoUInt8));
	s[15777] = ((11 : GoUInt8));
	s[15778] = ((11 : GoUInt8));
	s[15779] = ((11 : GoUInt8));
	s[15780] = ((11 : GoUInt8));
	s[15781] = ((11 : GoUInt8));
	s[15782] = ((11 : GoUInt8));
	s[15783] = ((11 : GoUInt8));
	s[15784] = ((11 : GoUInt8));
	s[15785] = ((11 : GoUInt8));
	s[15786] = ((11 : GoUInt8));
	s[15787] = ((11 : GoUInt8));
	s[15788] = ((11 : GoUInt8));
	s[15789] = ((11 : GoUInt8));
	s[15790] = ((11 : GoUInt8));
	s[15791] = ((11 : GoUInt8));
	s[15792] = ((11 : GoUInt8));
	s[15793] = ((11 : GoUInt8));
	s[15794] = ((11 : GoUInt8));
	s[15795] = ((11 : GoUInt8));
	s[15796] = ((11 : GoUInt8));
	s[15797] = ((11 : GoUInt8));
	s[15798] = ((11 : GoUInt8));
	s[15799] = ((11 : GoUInt8));
	s[15800] = ((11 : GoUInt8));
	s[15801] = ((11 : GoUInt8));
	s[15802] = ((11 : GoUInt8));
	s[15803] = ((11 : GoUInt8));
	s[15804] = ((11 : GoUInt8));
	s[15805] = ((11 : GoUInt8));
	s[15806] = ((11 : GoUInt8));
	s[15807] = ((11 : GoUInt8));
	s[15808] = ((12 : GoUInt8));
	s[15809] = ((12 : GoUInt8));
	s[15810] = ((12 : GoUInt8));
	s[15811] = ((12 : GoUInt8));
	s[15812] = ((12 : GoUInt8));
	s[15813] = ((12 : GoUInt8));
	s[15814] = ((12 : GoUInt8));
	s[15815] = ((12 : GoUInt8));
	s[15816] = ((12 : GoUInt8));
	s[15817] = ((12 : GoUInt8));
	s[15818] = ((12 : GoUInt8));
	s[15819] = ((12 : GoUInt8));
	s[15820] = ((12 : GoUInt8));
	s[15821] = ((12 : GoUInt8));
	s[15822] = ((12 : GoUInt8));
	s[15823] = ((12 : GoUInt8));
	s[15824] = ((12 : GoUInt8));
	s[15825] = ((12 : GoUInt8));
	s[15826] = ((12 : GoUInt8));
	s[15827] = ((12 : GoUInt8));
	s[15828] = ((12 : GoUInt8));
	s[15829] = ((12 : GoUInt8));
	s[15830] = ((12 : GoUInt8));
	s[15831] = ((12 : GoUInt8));
	s[15832] = ((12 : GoUInt8));
	s[15833] = ((12 : GoUInt8));
	s[15834] = ((12 : GoUInt8));
	s[15835] = ((12 : GoUInt8));
	s[15836] = ((12 : GoUInt8));
	s[15837] = ((12 : GoUInt8));
	s[15838] = ((12 : GoUInt8));
	s[15839] = ((12 : GoUInt8));
	s[15840] = ((12 : GoUInt8));
	s[15841] = ((12 : GoUInt8));
	s[15842] = ((12 : GoUInt8));
	s[15843] = ((12 : GoUInt8));
	s[15844] = ((12 : GoUInt8));
	s[15845] = ((12 : GoUInt8));
	s[15846] = ((12 : GoUInt8));
	s[15847] = ((12 : GoUInt8));
	s[15848] = ((12 : GoUInt8));
	s[15849] = ((12 : GoUInt8));
	s[15850] = ((12 : GoUInt8));
	s[15851] = ((12 : GoUInt8));
	s[15852] = ((12 : GoUInt8));
	s[15853] = ((12 : GoUInt8));
	s[15854] = ((12 : GoUInt8));
	s[15855] = ((12 : GoUInt8));
	s[15856] = ((11 : GoUInt8));
	s[15857] = ((11 : GoUInt8));
	s[15858] = ((11 : GoUInt8));
	s[15859] = ((11 : GoUInt8));
	s[15860] = ((11 : GoUInt8));
	s[15861] = ((11 : GoUInt8));
	s[15862] = ((11 : GoUInt8));
	s[15863] = ((11 : GoUInt8));
	s[15864] = ((11 : GoUInt8));
	s[15865] = ((11 : GoUInt8));
	s[15866] = ((11 : GoUInt8));
	s[15867] = ((11 : GoUInt8));
	s[15868] = ((11 : GoUInt8));
	s[15869] = ((11 : GoUInt8));
	s[15870] = ((11 : GoUInt8));
	s[15871] = ((11 : GoUInt8));
	s;
};

/**
	// DefaultDirection sets the default direction for a Paragraph. The direction is
	// overridden if the text contains directional characters.
**/
function defaultDirection(_d:Direction):Option {
	return new Option(function(_opts:Pointer<T_options>):Void {
		_opts.value._defaultDirection = _d;
	});
}

function _calculateOrdering(_levels:Slice<T_level>, _runes:Slice<GoRune>):Ordering {
	var _curDir:Direction = new Direction();
	var _prevDir:Direction = neutral;
	var _prevI:GoInt = ((0 : GoInt));
	var _o:Ordering = new Ordering().__copy__();
	{
		var _i;
		var _lvl;
		for (_obj in _levels.keyValueIterator()) {
			_i = _obj.key;
			_lvl = _obj.value;
			if (new T_level(_lvl.__t__ % ((2 : GoInt8))).__t__ == ((0 : GoInt8))) {
				_curDir = leftToRight;
			} else {
				_curDir = rightToLeft;
			};
			if (_curDir.__t__ != _prevDir.__t__) {
				if (_i > ((0 : GoInt))) {
					_o._runes = _o._runes.__append__(_runes.__slice__(_prevI, _i));
					_o._directions = _o._directions.__append__(_prevDir);
					_o._startpos = _o._startpos.__append__(_prevI);
				};
				_prevI = _i;
				_prevDir = _curDir;
			};
		};
	};
	_o._runes = _o._runes.__append__(_runes.__slice__(_prevI));
	_o._directions = _o._directions.__append__(_prevDir);
	_o._startpos = _o._startpos.__append__(_prevI);
	return _o.__copy__();
}

/**
	// AppendReverse reverses the order of characters of in, appends them to out,
	// and returns the result. Modifiers will still follow the runes they modify.
	// Brackets are replaced with their counterparts.
**/
function appendReverse(_out:Slice<GoByte>, _in:Slice<GoByte>):Slice<GoByte> {
	var _ret:Slice<GoUInt8> = new Slice<GoUInt8>(...[for (i in 0...((_in.length + _out.length:GoInt)).toBasic()) ((0 : GoUInt8))]);
	Go.copy(_ret, _out);
	var _inRunes:Slice<GoInt32> = stdgo.bytes.Bytes.runes(_in);
	{
		var _i;
		var _r;
		for (_obj in _inRunes.keyValueIterator()) {
			_i = _obj.key;
			_r = _obj.value;
			var __tmp__ = lookupRune(_r),
				_prop:Properties = __tmp__._0,
				_:GoInt = __tmp__._1;
			if (_prop.isBracket()) {
				_inRunes[_i] = _prop._reverseBracket(_r);
			};
		};
	};
	{
		var _i:GoInt = ((0 : GoInt)),
			_j:GoInt = _inRunes.length - ((1 : GoInt));
		Go.cfor(_i < _j, {
			final __tmp__0 = _i + ((1 : GoInt));
			final __tmp__1 = _j - ((1 : GoInt));
			_i = __tmp__0;
			_j = __tmp__1;
		}, {
			{
				final __tmp__0 = _inRunes[_j];
				final __tmp__1 = _inRunes[_i];
				_inRunes[_i] = __tmp__0;
				_inRunes[_j] = __tmp__1;
			};
		});
	};
	Go.copy(_ret.__slice__(_out.length), ((_inRunes : GoString)));
	return _ret;
}

/**
	// ReverseString reverses the order of characters in s and returns a new string.
	// Modifiers will still follow the runes they modify. Brackets are replaced with
	// their counterparts.
**/
function reverseString(_s:GoString):GoString {
	var _input:Slice<GoInt32> = ((_s : Slice<GoRune>));
	var _li:GoInt = _input.length;
	var _ret:Slice<GoInt32> = new Slice<GoInt32>(...[for (i in 0...((_li : GoInt)).toBasic()) ((0 : GoInt32))]);
	{
		var _i;
		var _r;
		for (_obj in _input.keyValueIterator()) {
			_i = _obj.key;
			_r = _obj.value;
			var __tmp__ = lookupRune(_r),
				_prop:Properties = __tmp__._0,
				_:GoInt = __tmp__._1;
			if (_prop.isBracket()) {
				_ret[_li - _i - ((1 : GoInt))] = _prop._reverseBracket(_r);
			} else {
				_ret[_li - _i - ((1 : GoInt))] = _r;
			};
		};
	};
	return ((_ret : GoString));
}

/**
	// resolvePairedBrackets runs the paired bracket part of the UBA algorithm.
	//
	// For each rune, it takes the indexes into the original string, the class the
	// bracket type (in pairTypes) and the bracket identifier (pairValues). It also
	// takes the direction type for the start-of-sentence and the embedding level.
	//
	// The identifiers for bracket types are the rune of the canonicalized opening
	// bracket for brackets (open or close) or 0 for runes that are not brackets.
**/
function _resolvePairedBrackets(_s:Pointer<T_isolatingRunSequence>):Void {
	var _p:T_bracketPairer = (({
		_sos: _s.value._sos,
		_openers: stdgo.container.list.List_.new_(),
		_codesIsolatedRun: _s.value._types,
		_indexes: _s.value._indexes,
		_pairPositions: new T_bracketPairs()
	} : T_bracketPairer)).__copy__();
	var _dirEmbed:Class_ = l;
	if (new T_level(_s.value._level.__t__ & ((1 : GoInt8))).__t__ != ((0 : GoInt8))) {
		_dirEmbed = r;
	};
	_p._locateBrackets(_s.value._p.value._pairTypes, _s.value._p.value._pairValues);
	_p._resolveBrackets(_dirEmbed, _s.value._p.value._initialTypes);
}

/**
	// newParagraph initializes a paragraph. The user needs to supply a few arrays
	// corresponding to the preprocessed text input. The types correspond to the
	// Unicode BiDi classes for each rune. pairTypes indicates the bracket type for
	// each rune. pairValues provides a unique bracket class identifier for each
	// rune (suggested is the rune of the open bracket for opening and matching
	// close brackets, after normalization). The embedding levels are optional, but
	// may be supplied to encode embedding levels of styled text.
**/
function _newParagraph(_types:Slice<Class_>, _pairTypes:Slice<T_bracketType>, _pairValues:Slice<GoRune>,
		_levels:T_level):{var _0:Pointer<T_paragraph>; var _1:Error;} {
	var _err:Error = ((null : stdgo.Error));
	{
		_err = _validateTypes(_types);
		if (_err != null) {
			return {_0: new Pointer<T_paragraph>().nil(), _1: _err};
		};
	};
	{
		_err = _validatePbTypes(_pairTypes);
		if (_err != null) {
			return {_0: new Pointer<T_paragraph>().nil(), _1: _err};
		};
	};
	{
		_err = _validatePbValues(_pairValues, _pairTypes);
		if (_err != null) {
			return {_0: new Pointer<T_paragraph>().nil(), _1: _err};
		};
	};
	{
		_err = _validateParagraphEmbeddingLevel(_levels);
		if (_err != null) {
			return {_0: new Pointer<T_paragraph>().nil(), _1: _err};
		};
	};
	var _p:Pointer<T_paragraph> = Go.pointer((({
		_initialTypes: ((new Slice<Class_>().nil() : Slice<Class_>)).__append__(..._types.toArray()),
		_embeddingLevel: _levels,
		_pairTypes: _pairTypes,
		_pairValues: _pairValues,
		_resultTypes: ((new Slice<Class_>().nil() : Slice<Class_>)).__append__(..._types.toArray()),
		_resultLevels: new Slice<T_level>().nil(),
		_matchingPDI: new Slice<GoInt>().nil(),
		_matchingIsolateInitiator: new Slice<GoInt>().nil()
	} : T_paragraph)));
	_p.value._run();
	return {_0: _p, _1: ((null : stdgo.Error))};
}

function _maxLevel(_a:T_level, _b:T_level):T_level {
	if (_a.__t__ > _b.__t__) {
		return _a;
	};
	return _b;
}

function _setLevels(_levels:Slice<T_level>, _newLevel:T_level):Void {
	{
		var _i;
		for (_obj in _levels.keyValueIterator()) {
			_i = _obj.key;
			_levels[_i] = _newLevel;
		};
	};
}

function _setTypes(_types:Slice<Class_>, _newType:Class_):Void {
	{
		var _i;
		for (_obj in _types.keyValueIterator()) {
			_i = _obj.key;
			_types[_i] = _newType;
		};
	};
}

/**
	// Return multiline reordering array for a given level array. Reordering
	// does not occur across a line break.
**/
function _computeMultilineReordering(_levels:Slice<T_level>, _linebreaks:Slice<GoInt>):Slice<GoInt> {
	var _result:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0...((_levels.length : GoInt)).toBasic()) ((0 : GoInt))]);
	var _start:GoInt = ((0 : GoInt));
	for (_limit in _linebreaks) {
		var _tempLevels:Slice<T_level> = new Slice<T_level>(...[for (i in 0...((_limit - _start : GoInt)).toBasic()) new T_level()]);
		Go.copy(_tempLevels, _levels.__slice__(_start));
		{
			var _j;
			var _order;
			for (_obj in _computeReordering(_tempLevels).keyValueIterator()) {
				_j = _obj.key;
				_order = _obj.value;
				_result[_start + _j] = _order + _start;
			};
		};
		_start = _limit;
	};
	return _result;
}

/**
	// Return reordering array for a given level array. This reorders a single
	// line. The reordering is a visual to logical map. For example, the
	// leftmost char is string.charAt(order[0]). Rule L2.
**/
function _computeReordering(_levels:Slice<T_level>):Slice<GoInt> {
	var _result:Slice<GoInt> = new Slice<GoInt>(...[for (i in 0...((_levels.length : GoInt)).toBasic()) ((0 : GoInt))]);
	{
		var _i;
		for (_obj in _result.keyValueIterator()) {
			_i = _obj.key;
			_result[_i] = _i;
		};
	};
	var _highestLevel:T_level = new T_level(((0 : GoInt8)));
	var _lowestOddLevel:T_level = new T_level(new T_level(_maxDepth + ((2 : GoUnTypedInt))).__t__);
	for (_level in _levels) {
		if (_level.__t__ > _highestLevel.__t__) {
			_highestLevel = _level;
		};
		if (new T_level(_level.__t__ & ((1 : GoInt8))).__t__ != ((0 : GoInt8)) && _level.__t__ < _lowestOddLevel.__t__) {
			_lowestOddLevel = _level;
		};
	};
	{
		var _level:T_level = _highestLevel;
		Go.cfor(_level.__t__ >= _lowestOddLevel.__t__, _level.__t__--, {
			{
				var _i:GoInt = ((0 : GoInt));
				Go.cfor(_i < _levels.length, _i++, {
					if (_levels[_i].__t__ >= _level.__t__) {
						var _start:GoInt = _i;
						var _limit:GoInt = _i + ((1 : GoInt));
						while (_limit < _levels.length && _levels[_limit].__t__ >= _level.__t__) {
							_limit++;
						};
						{
							var _j:GoInt = _start,
								_k:GoInt = _limit - ((1 : GoInt));
							Go.cfor(_j < _k, {
								final __tmp__0 = _j + ((1 : GoInt));
								final __tmp__1 = _k - ((1 : GoInt));
								_j = __tmp__0;
								_k = __tmp__1;
							}, {
								{
									final __tmp__0 = _result[_k];
									final __tmp__1 = _result[_j];
									_result[_j] = __tmp__0;
									_result[_k] = __tmp__1;
								};
							});
						};
						_i = _limit;
					};
				});
			};
		});
	};
	return _result;
}

/**
	// isWhitespace reports whether the type is considered a whitespace type for the
	// line break rules.
**/
function _isWhitespace(_c:Class_):Bool {
	if (_c.__t__ == lre.__t__ || _c.__t__ == rle.__t__ || _c.__t__ == lro.__t__ || _c.__t__ == rlo.__t__ || _c.__t__ == pdf.__t__ || _c.__t__ == lri.__t__
		|| _c.__t__ == rli.__t__ || _c.__t__ == fsi.__t__ || _c.__t__ == pdi.__t__ || _c.__t__ == bn.__t__ || _c.__t__ == ws.__t__) {
		return true;
	};
	return false;
}

/**
	// isRemovedByX9 reports whether the type is one of the types removed in X9.
**/
function _isRemovedByX9(_c:Class_):Bool {
	if (_c.__t__ == lre.__t__ || _c.__t__ == rle.__t__ || _c.__t__ == lro.__t__ || _c.__t__ == rlo.__t__ || _c.__t__ == pdf.__t__ || _c.__t__ == bn.__t__) {
		return true;
	};
	return false;
}

/**
	// typeForLevel reports the strong type (L or R) corresponding to the level.
**/
function _typeForLevel(_level:T_level):Class_ {
	if ((new T_level(_level.__t__ & ((1 : GoInt8)))).__t__ == ((0 : GoInt8))) {
		return l;
	};
	return r;
}

function _validateTypes(_types:Slice<Class_>):Error {
	if (_types.length == ((0 : GoInt))) {
		return stdgo.fmt.Fmt.errorf("types is null");
	};
	{
		var _i;
		var _t;
		for (_obj in _types.__slice__(0, _types.length - ((1 : GoInt))).keyValueIterator()) {
			_i = _obj.key;
			_t = _obj.value;
			if (_t.__t__ == b.__t__) {
				return stdgo.fmt.Fmt.errorf("B type before end of paragraph at index: %d", Go.toInterface(_i));
			};
		};
	};
	return ((null : stdgo.Error));
}

function _validateParagraphEmbeddingLevel(_embeddingLevel:T_level):Error {
	if (_embeddingLevel.__t__ != _implicitLevel.__t__
		&& _embeddingLevel.__t__ != ((0 : GoInt8))
		&& _embeddingLevel.__t__ != ((1 : GoInt8))) {
		return stdgo.fmt.Fmt.errorf("illegal paragraph embedding level: %d", Go.toInterface(_embeddingLevel));
	};
	return ((null : stdgo.Error));
}

function _validateLineBreaks(_linebreaks:Slice<GoInt>, _textLength:GoInt):Error {
	var _prev:GoInt = ((0 : GoInt));
	{
		var _i;
		var _next;
		for (_obj in _linebreaks.keyValueIterator()) {
			_i = _obj.key;
			_next = _obj.value;
			if (_next <= _prev) {
				return stdgo.fmt.Fmt.errorf("bad linebreak: %d at index: %d", Go.toInterface(_next), Go.toInterface(_i));
			};
			_prev = _next;
		};
	};
	if (_prev != _textLength) {
		return stdgo.fmt.Fmt.errorf("last linebreak was %d, want %d", Go.toInterface(_prev), Go.toInterface(_textLength));
	};
	return ((null : stdgo.Error));
}

function _validatePbTypes(_pairTypes:Slice<T_bracketType>):Error {
	if (_pairTypes.length == ((0 : GoInt))) {
		return stdgo.fmt.Fmt.errorf("pairTypes is null");
	};
	{
		var _i;
		var _pt;
		for (_obj in _pairTypes.keyValueIterator()) {
			_i = _obj.key;
			_pt = _obj.value;
			if (_pt.__t__ == _bpNone.__t__ || _pt.__t__ == _bpOpen.__t__ || _pt.__t__ == _bpClose.__t__) {} else {
				return stdgo.fmt.Fmt.errorf("illegal pairType value at %d: %v", Go.toInterface(_i), Go.toInterface(_pairTypes[_i]));
			};
		};
	};
	return ((null : stdgo.Error));
}

function _validatePbValues(_pairValues:Slice<GoRune>, _pairTypes:Slice<T_bracketType>):Error {
	if (_pairValues == null || _pairValues.isNil()) {
		return stdgo.fmt.Fmt.errorf("pairValues is null");
	};
	if (_pairTypes.length != _pairValues.length) {
		return stdgo.fmt.Fmt.errorf("pairTypes is different length from pairValues");
	};
	return ((null : stdgo.Error));
}

/**
	// LookupRune returns properties for r.
**/
function lookupRune(_r:GoRune):{var _0:Properties; var _1:GoInt;} {
	var _p:Properties = new Properties(), _size:GoInt = ((0 : GoInt));
	var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0...4) ((0 : GoUInt8))]);
	var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune(_buf.__slice__(0), _r);
	return lookup(_buf.__slice__(0, _n));
}

/**
	// Lookup returns properties for the first rune in s and the width in bytes of
	// its encoding. The size will be 0 if s does not hold enough bytes to complete
	// the encoding.
**/
function lookup(_s:Slice<GoByte>):{var _0:Properties; var _1:GoInt;} {
	var _p:Properties = new Properties(), _sz:GoInt = ((0 : GoInt));
	var _c0:GoUInt8 = _s[((0 : GoInt))];
	if (_c0 < ((128 : GoUInt8))) {
		return {_0: (({_entry: _bidiValues[_c0], _last: 0} : Properties)).__copy__(), _1: ((1 : GoInt))};
	} else if (_c0 < ((194 : GoUInt8))) {
		return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
	} else if (_c0 < ((224 : GoUInt8))) {
		if (_s.length < ((2 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c1), _last: 0} : Properties)).__copy__(), _1: ((2 : GoInt))};
	} else if (_c0 < ((240 : GoUInt8))) {
		if (_s.length < ((3 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c2:GoUInt8 = _s[((2 : GoInt))];
		if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c2), _last: _c2} : Properties)).__copy__(), _1: ((3 : GoInt))};
	} else if (_c0 < ((248 : GoUInt8))) {
		if (_s.length < ((4 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c2:GoUInt8 = _s[((2 : GoInt))];
		if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c3:GoUInt8 = _s[((3 : GoInt))];
		if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c3), _last: 0} : Properties)).__copy__(), _1: ((4 : GoInt))};
	};
	return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
}

/**
	// LookupString returns properties for the first rune in s and the width in
	// bytes of its encoding. The size will be 0 if s does not hold enough bytes to
	// complete the encoding.
**/
function lookupString(_s:GoString):{var _0:Properties; var _1:GoInt;} {
	var _p:Properties = new Properties(), _sz:GoInt = ((0 : GoInt));
	var _c0:GoUInt8 = _s[((0 : GoInt))];
	if (_c0 < ((128 : GoUInt8))) {
		return {_0: (({_entry: _bidiValues[_c0], _last: 0} : Properties)).__copy__(), _1: ((1 : GoInt))};
	} else if (_c0 < ((194 : GoUInt8))) {
		return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
	} else if (_c0 < ((224 : GoUInt8))) {
		if (_s.length < ((2 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c1), _last: 0} : Properties)).__copy__(), _1: ((2 : GoInt))};
	} else if (_c0 < ((240 : GoUInt8))) {
		if (_s.length < ((3 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c2:GoUInt8 = _s[((2 : GoInt))];
		if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c2), _last: _c2} : Properties)).__copy__(), _1: ((3 : GoInt))};
	} else if (_c0 < ((248 : GoUInt8))) {
		if (_s.length < ((4 : GoInt))) {
			return {_0: new Properties().__copy__(), _1: ((0 : GoInt))};
		};
		var _i:GoUInt8 = _bidiIndex[_c0];
		var _c1:GoUInt8 = _s[((1 : GoInt))];
		if (_c1 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c1) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		var _o:GoUInt32 = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c1 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c2:GoUInt8 = _s[((2 : GoInt))];
		if (_c2 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c2) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		_o = (((_i : GoUInt32)) << ((6 : GoUnTypedInt))) + ((_c2 : GoUInt32));
		_i = _bidiIndex[_o];
		var _c3:GoUInt8 = _s[((3 : GoInt))];
		if (_c3 < ((128 : GoUInt8)) || ((192 : GoUInt8)) <= _c3) {
			return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
		};
		return {_0: (({_entry: _trie.value._lookupValue(((_i : GoUInt32)), _c3), _last: 0} : Properties)).__copy__(), _1: ((4 : GoInt))};
	};
	return {_0: new Properties().__copy__(), _1: ((1 : GoInt))};
}

function _newBidiTrie(_i:GoInt):Pointer<T_bidiTrie> {
	return Go.pointer(new T_bidiTrie());
}

class Paragraph_extension_fields {
	public function _prepareInput(__tmp__):{var _0:GoInt; var _1:Error;}
		return __tmp__._prepareInput();

	public function setBytes(__tmp__, _b:Slice<GoByte>, _opts:haxe.Rest<Option>):{var _0:GoInt; var _1:Error;}
		return __tmp__.setBytes(_b, _opts);

	public function setString(__tmp__, _s:GoString, _opts:haxe.Rest<Option>):{var _0:GoInt; var _1:Error;}
		return __tmp__.setString(_s, _opts);

	public function isLeftToRight(__tmp__):Bool
		return __tmp__.isLeftToRight();

	public function direction(__tmp__):Direction
		return __tmp__.direction();

	public function runAt(__tmp__, _pos:GoInt):Run
		return __tmp__.runAt(_pos);

	public function order(__tmp__):{var _0:Ordering; var _1:Error;}
		return __tmp__.order();

	public function line(__tmp__, _start:GoInt, _end:GoInt):{var _0:Ordering; var _1:Error;}
		return __tmp__.line(_start, _end);
}

class Ordering_extension_fields {
	public function direction(__tmp__):Direction
		return __tmp__.direction();

	public function numRuns(__tmp__):GoInt
		return __tmp__.numRuns();

	public function run(__tmp__, _i:GoInt):Run
		return __tmp__.run(_i);
}

class Run_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();

	public function bytes(__tmp__):Slice<GoByte>
		return __tmp__.bytes();

	public function direction(__tmp__):Direction
		return __tmp__.direction();

	public function pos(__tmp__):{var _0:GoInt; var _1:GoInt;}
		return __tmp__.pos();
}

class T_bracketPair_extension_fields {
	public function toString(__tmp__):GoString
		return __tmp__.toString();
}

class T_bracketPairs_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function swap(__tmp__, _i:GoInt, _j:GoInt):Void
		__tmp__.swap(_i, _j);

	public function less(__tmp__, _i:GoInt, _j:GoInt):Bool
		return __tmp__.less(_i, _j);
}

class T_bracketPairer_extension_fields {
	public function _matchOpener(__tmp__, _pairValues:Slice<GoRune>, _opener:GoInt, _closer:GoInt):Bool
		return __tmp__._matchOpener(_pairValues, _opener, _closer);

	public function _locateBrackets(__tmp__, _pairTypes:Slice<T_bracketType>, _pairValues:Slice<GoRune>):Void
		__tmp__._locateBrackets(_pairTypes, _pairValues);

	public function _getStrongTypeN0(__tmp__, _index:GoInt):Class_
		return __tmp__._getStrongTypeN0(_index);

	public function _classifyPairContent(__tmp__, _loc:T_bracketPair, _dirEmbed:Class_):Class_
		return __tmp__._classifyPairContent(_loc, _dirEmbed);

	public function _classBeforePair(__tmp__, _loc:T_bracketPair):Class_
		return __tmp__._classBeforePair(_loc);

	public function _assignBracketType(__tmp__, _loc:T_bracketPair, _dirEmbed:Class_, _initialTypes:Slice<Class_>):Void
		__tmp__._assignBracketType(_loc, _dirEmbed, _initialTypes);

	public function _setBracketsToType(__tmp__, _loc:T_bracketPair, _dirPair:Class_, _initialTypes:Slice<Class_>):Void
		__tmp__._setBracketsToType(_loc, _dirPair, _initialTypes);

	public function _resolveBrackets(__tmp__, _dirEmbed:Class_, _initialTypes:Slice<Class_>):Void
		__tmp__._resolveBrackets(_dirEmbed, _initialTypes);
}

class T_paragraph_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function _run(__tmp__):Void
		__tmp__._run();

	public function _determineMatchingIsolates(__tmp__):Void
		__tmp__._determineMatchingIsolates();

	public function _determineParagraphEmbeddingLevel(__tmp__, _start:GoInt, _end:GoInt):T_level
		return __tmp__._determineParagraphEmbeddingLevel(_start, _end);

	public function _determineExplicitEmbeddingLevels(__tmp__):Void
		__tmp__._determineExplicitEmbeddingLevels();

	public function _isolatingRunSequence(__tmp__, _indexes:Slice<GoInt>):Pointer<T_isolatingRunSequence>
		return __tmp__._isolatingRunSequence(_indexes);

	public function _determineLevelRuns(__tmp__):Slice<Slice<GoInt>>
		return __tmp__._determineLevelRuns();

	public function _determineIsolatingRunSequences(__tmp__):Slice<Pointer<T_isolatingRunSequence>>
		return __tmp__._determineIsolatingRunSequences();

	public function _assignLevelsToCharactersRemovedByX9(__tmp__):Void
		__tmp__._assignLevelsToCharactersRemovedByX9();

	public function _getLevels(__tmp__, _linebreaks:Slice<GoInt>):Slice<T_level>
		return __tmp__._getLevels(_linebreaks);

	public function _getReordering(__tmp__, _linebreaks:Slice<GoInt>):Slice<GoInt>
		return __tmp__._getReordering(_linebreaks);
}

class T_directionalStatusStack_extension_fields {
	public function _empty(__tmp__):Void
		__tmp__._empty();

	public function _pop(__tmp__):Void
		__tmp__._pop();

	public function _depth(__tmp__):GoInt
		return __tmp__._depth();

	public function _push(__tmp__, _level:T_level, _overrideStatus:Class_, _isolateStatus:Bool):Void
		__tmp__._push(_level, _overrideStatus, _isolateStatus);

	public function _lastEmbeddingLevel(__tmp__):T_level
		return __tmp__._lastEmbeddingLevel();

	public function _lastDirectionalOverrideStatus(__tmp__):Class_
		return __tmp__._lastDirectionalOverrideStatus();

	public function _lastDirectionalIsolateStatus(__tmp__):Bool
		return __tmp__._lastDirectionalIsolateStatus();
}

class T_isolatingRunSequence_extension_fields {
	public function len(__tmp__):GoInt
		return __tmp__.len();

	public function _resolveWeakTypes(__tmp__):Void
		__tmp__._resolveWeakTypes();

	public function _resolveNeutralTypes(__tmp__):Void
		__tmp__._resolveNeutralTypes();

	public function _resolveImplicitLevels(__tmp__):Void
		__tmp__._resolveImplicitLevels();

	public function _applyLevelsAndTypes(__tmp__):Void
		__tmp__._applyLevelsAndTypes();

	public function _findRunLimit(__tmp__, _index:GoInt, _validSet:haxe.Rest<Class_>):GoInt
		return __tmp__._findRunLimit(_index, _validSet);

	public function _assertOnly(__tmp__, _codes:haxe.Rest<Class_>):Void
		__tmp__._assertOnly(_codes);
}

class Properties_extension_fields {
	public function class_(__tmp__):Class_
		return __tmp__.class_();

	public function isBracket(__tmp__):Bool
		return __tmp__.isBracket();

	public function isOpeningBracket(__tmp__):Bool
		return __tmp__.isOpeningBracket();

	public function _reverseBracket(__tmp__, _r:GoRune):GoRune
		return __tmp__._reverseBracket(_r);
}

class T_bidiTrie_extension_fields {
	public function _lookup(__tmp__, _s:Slice<GoByte>):{var _0:GoUInt8; var _1:GoInt;}
		return __tmp__._lookup(_s);

	public function _lookupUnsafe(__tmp__, _s:Slice<GoByte>):GoUInt8
		return __tmp__._lookupUnsafe(_s);

	public function _lookupString(__tmp__, _s:GoString):{var _0:GoUInt8; var _1:GoInt;}
		return __tmp__._lookupString(_s);

	public function _lookupStringUnsafe(__tmp__, _s:GoString):GoUInt8
		return __tmp__._lookupStringUnsafe(_s);

	public function _lookupValue(__tmp__, _n:GoUInt32, _b:GoByte):GoUInt8
		return __tmp__._lookupValue(_n, _b);
}

class Class__extension_fields {
	public function _in(__tmp__, _set:haxe.Rest<Class_>):Bool
		return __tmp__._in(_set);
}
