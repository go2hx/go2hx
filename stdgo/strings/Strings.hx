package stdgo.strings;

import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;

var _asciiSpace:GoArray<GoUInt8> = {
	var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) 0]);
	s[0] = (1 : GoUInt8);
	s[1] = (1 : GoUInt8);
	s[2] = (1 : GoUInt8);
	s[3] = (1 : GoUInt8);
	s[4] = (1 : GoUInt8);
	s[5] = (1 : GoUInt8);
	s;
};

final _countCutOff:GoUnTypedInt = (8 : GoUnTypedInt);

typedef T_replacer = StructType & {
	public function replace(_s:GoString):GoString;
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;};
};

@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) class Builder {
	public var _addr:Ref<Builder> = (null : Builder);
	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_addr:Ref<Builder>, ?_buf:Slice<GoUInt8>) {
		if (_addr != null)
			this._addr = _addr;
		if (_buf != null)
			this._buf = _buf;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Builder(_addr, _buf);
	}
}

@:structInit @:using(stdgo.strings.Strings.Reader_static_extension) class Reader {
	public var _s:GoString = "";
	public var _i:GoInt64 = 0;
	public var _prevRune:GoInt = 0;

	public function new(?_s:GoString, ?_i:GoInt64, ?_prevRune:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_i != null)
			this._i = _i;
		if (_prevRune != null)
			this._prevRune = _prevRune;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Reader(_s, _i, _prevRune);
	}
}

@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) class Replacer {
	public var _once:stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
	public var _r:T_replacer = (null : T_replacer);
	public var _oldnew:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_once:stdgo.sync.Sync.Once, ?_r:T_replacer, ?_oldnew:Slice<GoString>) {
		if (_once != null)
			this._once = _once;
		if (_r != null)
			this._r = _r;
		if (_oldnew != null)
			this._oldnew = _oldnew;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new Replacer(_once, _r, _oldnew);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_trieNode_static_extension) private class T_trieNode {
	public var _value:GoString = "";
	public var _priority:GoInt = 0;
	public var _prefix:GoString = "";
	public var _next:Ref<T_trieNode> = (null : T_trieNode);
	public var _table:Slice<Ref<T_trieNode>> = (null : Slice<Ref<T_trieNode>>);

	public function new(?_value:GoString, ?_priority:GoInt, ?_prefix:GoString, ?_next:Ref<T_trieNode>, ?_table:Slice<Ref<T_trieNode>>) {
		if (_value != null)
			this._value = _value;
		if (_priority != null)
			this._priority = _priority;
		if (_prefix != null)
			this._prefix = _prefix;
		if (_next != null)
			this._next = _next;
		if (_table != null)
			this._table = _table;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_trieNode(_value, _priority, _prefix, _next, _table);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) private class T_genericReplacer {
	public var _root:T_trieNode = ({} : T_trieNode);
	public var _tableSize:GoInt = 0;
	public var _mapping:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) (0 : GoUInt8)]);

	public function new(?_root:T_trieNode, ?_tableSize:GoInt, ?_mapping:GoArray<GoUInt8>) {
		if (_root != null)
			this._root = _root;
		if (_tableSize != null)
			this._tableSize = _tableSize;
		if (_mapping != null)
			this._mapping = _mapping;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_genericReplacer(_root, _tableSize, _mapping);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_stringWriter_static_extension) private class T_stringWriter {
	public var _w:stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);

	public function new(?_w:stdgo.io.Io.Writer) {
		if (_w != null)
			this._w = _w;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_stringWriter(_w);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) private class T_singleStringReplacer {
	public var _finder:Ref<T_stringFinder> = (null : T_stringFinder);
	public var _value:GoString = "";

	public function new(?_finder:Ref<T_stringFinder>, ?_value:GoString) {
		if (_finder != null)
			this._finder = _finder;
		if (_value != null)
			this._value = _value;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_singleStringReplacer(_finder, _value);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) private class T_byteStringReplacer {
	public var _replacements:GoArray<Slice<GoUInt8>> = new GoArray<Slice<GoUInt8>>(...[for (i in 0...256) (null : Slice<GoUInt8>)]);
	public var _toReplace:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_replacements:GoArray<Slice<GoUInt8>>, ?_toReplace:Slice<GoString>) {
		if (_replacements != null)
			this._replacements = _replacements;
		if (_toReplace != null)
			this._toReplace = _toReplace;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_byteStringReplacer(_replacements, _toReplace);
	}
}

@:structInit @:using(stdgo.strings.Strings.T_stringFinder_static_extension) private class T_stringFinder {
	public var _pattern:GoString = "";
	public var _badCharSkip:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) (0 : GoInt)]);
	public var _goodSuffixSkip:Slice<GoInt> = (null : Slice<GoInt>);

	public function new(?_pattern:GoString, ?_badCharSkip:GoArray<GoInt>, ?_goodSuffixSkip:Slice<GoInt>) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_badCharSkip != null)
			this._badCharSkip = _badCharSkip;
		if (_goodSuffixSkip != null)
			this._goodSuffixSkip = _goodSuffixSkip;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_stringFinder(_pattern, _badCharSkip, _goodSuffixSkip);
	}
}

@:named @:using(stdgo.strings.Strings.T_appendSliceWriter_static_extension) typedef T_appendSliceWriter = Slice<GoUInt8>;
@:named @:using(stdgo.strings.Strings.T_byteReplacer_static_extension) typedef T_byteReplacer = GoArray<GoUInt8>;
@:named @:using(stdgo.strings.Strings.T_asciiSet_static_extension) typedef T_asciiSet = GoArray<GoUInt32>;

/**
	// noescape hides a pointer from escape analysis. It is the identity function
	// but escape analysis doesn't think the output depends on the input.
	// noescape is inlined and currently compiles down to zero instructions.
	// USE CAREFULLY!
	// This was copied from the runtime; see issues 23382 and 7921.
	//
	//go:nosplit
	//go:nocheckptr
**/
function _noescape(_p:stdgo.unsafe.Unsafe.UnsafePointer):stdgo.unsafe.Unsafe.UnsafePointer {
	var _x:GoUIntptr = (_p.__convert__(stdgo.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
	return (Go.toInterface((_x ^ (0 : GoUIntptr))) : stdgo.unsafe.Unsafe.UnsafePointer);
}

/**
	// Clone returns a fresh copy of s.
	// It guarantees to make a copy of s into a new allocation,
	// which can be important when retaining only a small substring
	// of a much larger string. Using Clone can help such programs
	// use less memory. Of course, since using Clone makes a copy,
	// overuse of Clone can make programs use more memory.
	// Clone should typically be used only rarely, and only when
	// profiling indicates that it is needed.
	// For strings of length zero the string "" will be returned
	// and no allocation is made.
**/
function clone(_s:GoString):GoString {
	if ((_s.length) == (0 : GoInt)) {
		return (Go.str() : GoString);
	};
	var _b = new Slice<GoUInt8>((_s.length : GoInt).toBasic(), 0, ...[for (i in 0...(_s.length : GoInt).toBasic()) (0 : GoUInt8)]);
	Go.copySlice(_b, _s);
	return ((Go.toInterface(_b) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>).value;
}

/**
	// Compare returns an integer comparing two strings lexicographically.
	// The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
	//
	// Compare is included only for symmetry with package bytes.
	// It is usually clearer and always faster to use the built-in
	// string comparison operators ==, <, >, and so on.
**/
function compare(_a:GoString, _b:GoString):GoInt {
	if (_a == _b) {
		return (0 : GoInt);
	};
	if (_a < _b) {
		return (-1 : GoInt);
	};
	return (1 : GoInt);
}

function stringFind(_pattern:GoString, _text:GoString):GoInt {
	return _makeStringFinder(_pattern)._next(_text);
}

function dumpTables(_pattern:GoString):{var _0:Slice<GoInt>; var _1:Slice<GoInt>;} {
	var _finder = _makeStringFinder(_pattern);
	return {_0: (_finder._badCharSkip.__slice__(0) : Slice<GoInt>), _1: _finder._goodSuffixSkip};
}

/**
	// NewReader returns a new Reader reading from s.
	// It is similar to bytes.NewBufferString but more efficient and read-only.
**/
function newReader(_s:GoString):Reader {
	return (new Reader(_s, (0 : GoInt64), (-1 : GoInt)) : Reader);
}

/**
	// NewReplacer returns a new Replacer from a list of old, new string
	// pairs. Replacements are performed in the order they appear in the
	// target string, without overlapping matches. The old string
	// comparisons are done in argument order.
	//
	// NewReplacer panics if given an odd number of arguments.
**/
function newReplacer(_oldnew:haxe.Rest<GoString>):Replacer {
	var _oldnew = new Slice<GoString>(0, 0, ..._oldnew);
	if ((_oldnew.length % (2 : GoInt)) == (1 : GoInt)) {
		throw Go.toInterface((Go.str("strings.NewReplacer: odd argument count") : GoString));
	};
	return ({_oldnew: ((null : Slice<GoString>).__append__(..._oldnew.__toArray__()))} : Replacer);
}

function _makeGenericReplacer(_oldnew:Slice<GoString>):T_genericReplacer {
	var _r = ({} : T_genericReplacer);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : GoInt)), {
			var _key:GoString = _oldnew[_i];
			{
				var _j:GoInt = (0 : GoInt);
				Go.cfor(_j < (_key.length), _j++, {
					_r._mapping[_key[_j]] = (1 : GoUInt8);
				});
			};
		});
	};
	for (_0 => _b in _r._mapping) {
		_r._tableSize = _r._tableSize + ((_b : GoInt));
	};
	var _index:GoByte = (0 : GoUInt8);
	for (_i => _b in _r._mapping) {
		if (_b == (0 : GoUInt8)) {
			_r._mapping[_i] = (_r._tableSize : GoByte);
		} else {
			_r._mapping[_i] = _index;
			_index++;
		};
	};
	_r._root._table = new Slice<Ref<T_trieNode>>((_r._tableSize : GoInt).toBasic(), 0,
		...[for (i in 0...(_r._tableSize : GoInt).toBasic()) (null : T_trieNode)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : GoInt)), {
			_r._root._add(_oldnew[_i], _oldnew[_i + (1 : GoInt)], (_oldnew.length) - _i, _r);
		});
	};
	return _r;
}

function _getStringWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.StringWriter {
	var __tmp__ = try {
		{value: ((_w.__underlying__().value : Dynamic) : stdgo.io.Io.StringWriter), ok: true};
	} catch (_) {
		{value: (null : stdgo.io.Io.StringWriter), ok: false};
	}, _sw = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		_sw = {
			final __self__ = new T_stringWriter_wrapper((new T_stringWriter(_w) : T_stringWriter));
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return (new T_stringWriter(_w) : T_stringWriter).writeString(__0) #else null #end;
			__self__;
		};
	};
	return _sw;
}

function _makeSingleStringReplacer(_pattern:GoString, _value:GoString):T_singleStringReplacer {
	return ({_finder: _makeStringFinder(_pattern), _value: _value} : T_singleStringReplacer);
}

function _makeStringFinder(_pattern:GoString):T_stringFinder {
	var _f = ({_pattern: _pattern, _goodSuffixSkip: new Slice<GoInt>((_pattern.length : GoInt).toBasic(), 0,
		...[for (i in 0...(_pattern.length : GoInt).toBasic()) (0 : GoInt)])} : T_stringFinder);
	var _last:GoInt = (_pattern.length) - (1 : GoInt);
	for (_i => _ in _f._badCharSkip) {
		_f._badCharSkip[_i] = (_pattern.length);
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _last, _i++, {
			_f._badCharSkip[_pattern[_i]] = _last - _i;
		});
	};
	var _lastPrefix:GoInt = _last;
	{
		var _i:GoInt = _last;
		Go.cfor(_i >= (0 : GoInt), _i--, {
			if (hasPrefix(_pattern, (_pattern.__slice__(_i + (1 : GoInt)) : GoString))) {
				_lastPrefix = _i + (1 : GoInt);
			};
			_f._goodSuffixSkip[_i] = (_lastPrefix + _last) - _i;
		});
	};
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _last, _i++, {
			var _lenSuffix:GoInt = _longestCommonSuffix(_pattern, (_pattern.__slice__((1 : GoInt), _i + (1 : GoInt)) : GoString));
			if (_pattern[_i - _lenSuffix] != _pattern[_last - _lenSuffix]) {
				_f._goodSuffixSkip[_last - _lenSuffix] = (_lenSuffix + _last) - _i;
			};
		});
	};
	return _f;
}

function _longestCommonSuffix(_a:GoString, _b:GoString):GoInt {
	var _i:GoInt = (0 : GoInt);
	Go.cfor((_i < _a.length) && (_i < _b.length), _i++, {
		if (_a[(_a.length - (1 : GoInt)) - _i] != _b[(_b.length - (1 : GoInt)) - _i]) {
			break;
		};
	});
	return _i;
}

function _max(_a:GoInt, _b:GoInt):GoInt {
	if (_a > _b) {
		return _a;
	};
	return _b;
}

/**
	// explode splits s into a slice of UTF-8 strings,
	// one string per Unicode character up to a maximum of n (n < 0 means no limit).
	// Invalid UTF-8 sequences become correct encodings of U+FFFD.
**/
function _explode(_s:GoString, _n:GoInt):Slice<GoString> {
	var _l:GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_s);
	if ((_n < (0:GoInt)) || (_n > _l)) {
		_n = _l;
	};
	var _a = new Slice<GoString>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) ("" : GoString)]);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_n - (1 : GoInt)), _i++, {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s),
				_ch:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			_a[_i] = (_s.__slice__(0, _size) : GoString);
			_s = (_s.__slice__(_size) : GoString);
			if (_ch == (65533 : GoInt32)) {
				_a[_i] = ((65533 : GoInt32) : GoString);
			};
		});
	};
	if (_n > (0 : GoInt)) {
		_a[_n - (1 : GoInt)] = _s;
	};
	return _a;
}

/**
	// Count counts the number of non-overlapping instances of substr in s.
	// If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
**/
function count(_s:GoString, _substr:GoString):GoInt {
	if ((_substr.length) == (0 : GoInt)) {
		return stdgo.unicode.utf8.Utf8.runeCountInString(_s) + (1 : GoInt);
	};
	if ((_substr.length) == (1 : GoInt)) {
		return stdgo.internal.bytealg.Bytealg.countString(_s, _substr[(0 : GoInt)]);
	};
	var _n:GoInt = (0 : GoInt);
	while (true) {
		var _i:GoInt = index(_s, _substr);
		if (_i == (-1 : GoInt)) {
			return _n;
		};
		_n++;
		_s = (_s.__slice__(_i + (_substr.length)) : GoString);
	};
}

/**
	// Contains reports whether substr is within s.
**/
function contains(_s:GoString, _substr:GoString):Bool {
	return index(_s, _substr) >= (0 : GoInt);
}

/**
	// ContainsAny reports whether any Unicode code points in chars are within s.
**/
function containsAny(_s:GoString, _chars:GoString):Bool {
	return indexAny(_s, _chars) >= (0 : GoInt);
}

/**
	// ContainsRune reports whether the Unicode code point r is within s.
**/
function containsRune(_s:GoString, _r:GoRune):Bool {
	return indexRune(_s, _r) >= (0 : GoInt);
}

/**
	// LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
**/
function lastIndex(_s:GoString, _substr:GoString):GoInt {
	var _n:GoInt = (_substr.length);
	if (_n == (0 : GoInt)) {
		return (_s.length);
	} else if (_n == (1 : GoInt)) {
		return lastIndexByte(_s, _substr[(0 : GoInt)]);
	} else if (_n == (_s.length)) {
		if (_substr == _s) {
			return (0 : GoInt);
		};
		return (-1 : GoInt);
	} else if (_n > (_s.length)) {
		return (-1 : GoInt);
	};
	var __tmp__ = stdgo.internal.bytealg.Bytealg.hashStrRev(_substr),
		_hashss:GoUInt32 = __tmp__._0,
		_pow:GoUInt32 = __tmp__._1;
	var _last:GoInt = (_s.length) - _n;
	var _h:GoUInt32 = (0 : GoUInt32);
	{
		var _i:GoInt = (_s.length) - (1 : GoInt);
		Go.cfor(_i >= _last, _i--, {
			_h = (_h * (16777619 : GoUInt32)) + (_s[_i] : GoUInt32);
		});
	};
	if ((_h == _hashss) && ((_s.__slice__(_last) : GoString) == _substr)) {
		return _last;
	};
	{
		var _i:GoInt = _last - (1 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_h = _h * ((16777619 : GoUInt32));
			_h = _h + ((_s[_i] : GoUInt32));
			_h = _h - (_pow * (_s[_i + _n] : GoUInt32));
			if ((_h == _hashss) && ((_s.__slice__(_i, _i + _n) : GoString) == _substr)) {
				return _i;
			};
		});
	};
	return (-1 : GoInt);
}

/**
	// IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
**/
function indexByte(_s:GoString, _c:GoByte):GoInt {
	return stdgo.internal.bytealg.Bytealg.indexByteString(_s, _c);
}

/**
	// IndexRune returns the index of the first instance of the Unicode code point
	// r, or -1 if rune is not present in s.
	// If r is utf8.RuneError, it returns the first instance of any
	// invalid UTF-8 byte sequence.
**/
function indexRune(_s:GoString, _r:GoRune):GoInt {
	if (((0 : GoInt32) <= _r) && (_r < (128:GoInt32))) {
		return indexByte(_s, (_r : GoByte));
	} else if (_r == (65533 : GoInt32)) {
		for (_i => _r in _s) {
			if (_r == (65533 : GoInt32)) {
				return _i;
			};
		};
		return (-1 : GoInt);
	} else if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
		return (-1 : GoInt);
	} else {
		return index(_s, (_r : GoString));
	};
}

/**
	// IndexAny returns the index of the first instance of any Unicode code point
	// from chars in s, or -1 if no Unicode code point from chars is present in s.
**/
function indexAny(_s:GoString, _chars:GoString):GoInt {
	if (_chars == (Go.str() : GoString)) {
		return (-1 : GoInt);
	};
	if ((_chars.length) == (1 : GoInt)) {
		var _r:GoInt32 = (_chars[(0 : GoInt)] : GoRune);
		if (_r >= (128 : GoInt32)) {
			_r = (65533 : GoInt32);
		};
		return indexRune(_s, _r);
	};
	if ((_s.length) > (8 : GoInt)) {
		{
			var __tmp__ = _makeASCIISet(_chars),
				_as:T_asciiSet = __tmp__._0,
				_isASCII:Bool = __tmp__._1;
			if (_isASCII) {
				{
					var _i:GoInt = (0 : GoInt);
					Go.cfor(_i < (_s.length), _i++, {
						if (_as._contains(_s[_i])) {
							return _i;
						};
					});
				};
				return (-1 : GoInt);
			};
		};
	};
	for (_i => _c in _s) {
		if (indexRune(_chars, _c) >= (0 : GoInt)) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

/**
	// LastIndexAny returns the index of the last instance of any Unicode code
	// point from chars in s, or -1 if no Unicode code point from chars is
	// present in s.
**/
function lastIndexAny(_s:GoString, _chars:GoString):GoInt {
	if (_chars == (Go.str() : GoString)) {
		return (-1 : GoInt);
	};
	if ((_s.length) == (1 : GoInt)) {
		var _rc:GoInt32 = (_s[(0 : GoInt)] : GoRune);
		if (_rc >= (128 : GoInt32)) {
			_rc = (65533 : GoInt32);
		};
		if (indexRune(_chars, _rc) >= (0 : GoInt)) {
			return (0 : GoInt);
		};
		return (-1 : GoInt);
	};
	if ((_s.length) > (8 : GoInt)) {
		{
			var __tmp__ = _makeASCIISet(_chars),
				_as:T_asciiSet = __tmp__._0,
				_isASCII:Bool = __tmp__._1;
			if (_isASCII) {
				{
					var _i:GoInt = (_s.length) - (1 : GoInt);
					Go.cfor(_i >= (0 : GoInt), _i--, {
						if (_as._contains(_s[_i])) {
							return _i;
						};
					});
				};
				return (-1 : GoInt);
			};
		};
	};
	if ((_chars.length) == (1 : GoInt)) {
		var _rc:GoInt32 = (_chars[(0 : GoInt)] : GoRune);
		if (_rc >= (128 : GoInt32)) {
			_rc = (65533 : GoInt32);
		};
		{
			var _i:GoInt = (_s.length);
			while (_i > (0 : GoInt)) {
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : GoString)),
					_r:GoInt32 = __tmp__._0,
					_size:GoInt = __tmp__._1;
				_i = _i - (_size);
				if (_rc == _r) {
					return _i;
				};
			};
		};
		return (-1 : GoInt);
	};
	{
		var _i:GoInt = (_s.length);
		while (_i > (0 : GoInt)) {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : GoString)),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			_i = _i - (_size);
			if (indexRune(_chars, _r) >= (0 : GoInt)) {
				return _i;
			};
		};
	};
	return (-1 : GoInt);
}

/**
	// LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(_s:GoString, _c:GoByte):GoInt {
	{
		var _i:GoInt = (_s.length) - (1 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			if (_s[_i] == _c) {
				return _i;
			};
		});
	};
	return (-1 : GoInt);
}

/**
	// Generic split: splits after each instance of sep,
	// including sepSave bytes of sep in the subarrays.
**/
function _genSplit(_s:GoString, _sep:GoString, _sepSave:GoInt, _n:GoInt):Slice<GoString> {
	if (_n == (0 : GoInt)) {
		return (null : Slice<GoString>);
	};
	if (_sep == (Go.str() : GoString)) {
		return _explode(_s, _n);
	};
	if (_n < (0:GoInt)) {
		_n = count(_s, _sep) + (1 : GoInt);
	};
	if (_n > (_s.length + (1 : GoInt))) {
		_n = (_s.length) + (1 : GoInt);
	};
	var _a = new Slice<GoString>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) ("" : GoString)]);
	_n--;
	var _i:GoInt = (0 : GoInt);
	while (_i < _n) {
		var _m:GoInt = index(_s, _sep);
		if (_m < (0:GoInt)) {
			break;
		};
		_a[_i] = (_s.__slice__(0, _m + _sepSave) : GoString);
		_s = (_s.__slice__(_m + (_sep.length)) : GoString);
		_i++;
	};
	_a[_i] = _s;
	return (_a.__slice__(0, _i + (1 : GoInt)) : Slice<GoString>);
}

/**
	// SplitN slices s into substrings separated by sep and returns a slice of
	// the substrings between those separators.
	//
	// The count determines the number of substrings to return:
	//
	//	n > 0: at most n substrings; the last substring will be the unsplit remainder.
	//	n == 0: the result is nil (zero substrings)
	//	n < 0: all substrings
	//
	// Edge cases for s and sep (for example, empty strings) are handled
	// as described in the documentation for Split.
	//
	// To split around the first instance of a separator, see Cut.
**/
function splitN(_s:GoString, _sep:GoString, _n:GoInt):Slice<GoString> {
	return _genSplit(_s, _sep, (0 : GoInt), _n);
}

/**
	// SplitAfterN slices s into substrings after each instance of sep and
	// returns a slice of those substrings.
	//
	// The count determines the number of substrings to return:
	//
	//	n > 0: at most n substrings; the last substring will be the unsplit remainder.
	//	n == 0: the result is nil (zero substrings)
	//	n < 0: all substrings
	//
	// Edge cases for s and sep (for example, empty strings) are handled
	// as described in the documentation for SplitAfter.
**/
function splitAfterN(_s:GoString, _sep:GoString, _n:GoInt):Slice<GoString> {
	return _genSplit(_s, _sep, (_sep.length), _n);
}

/**
	// Split slices s into all substrings separated by sep and returns a slice of
	// the substrings between those separators.
	//
	// If s does not contain sep and sep is not empty, Split returns a
	// slice of length 1 whose only element is s.
	//
	// If sep is empty, Split splits after each UTF-8 sequence. If both s
	// and sep are empty, Split returns an empty slice.
	//
	// It is equivalent to SplitN with a count of -1.
	//
	// To split around the first instance of a separator, see Cut.
**/
function split(_s:GoString, _sep:GoString):Slice<GoString> {
	return _genSplit(_s, _sep, (0 : GoInt), (-1 : GoInt));
}

/**
	// SplitAfter slices s into all substrings after each instance of sep and
	// returns a slice of those substrings.
	//
	// If s does not contain sep and sep is not empty, SplitAfter returns
	// a slice of length 1 whose only element is s.
	//
	// If sep is empty, SplitAfter splits after each UTF-8 sequence. If
	// both s and sep are empty, SplitAfter returns an empty slice.
	//
	// It is equivalent to SplitAfterN with a count of -1.
**/
function splitAfter(_s:GoString, _sep:GoString):Slice<GoString> {
	return _genSplit(_s, _sep, (_sep.length), (-1 : GoInt));
}

/**
	// Fields splits the string s around each instance of one or more consecutive white space
	// characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
	// empty slice if s contains only white space.
**/
function fields(_s:GoString):Slice<GoString> {
	var _n:GoInt = (0 : GoInt);
	var _wasSpace:GoInt = (1 : GoInt);
	var _setBits:GoUInt8 = (0 : GoUInt8);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _r:GoUInt8 = _s[_i];
			_setBits = _setBits | (_r);
			var _isSpace:GoInt = (_asciiSpace[_r] : GoInt);
			_n = _n + (_wasSpace & (-1 ^ _isSpace));
			_wasSpace = _isSpace;
		});
	};
	if (_setBits >= (128 : GoUInt8)) {
		return fieldsFunc(_s, stdgo.unicode.Unicode.isSpace);
	};
	var _a = new Slice<GoString>((_n : GoInt).toBasic(), 0, ...[for (i in 0...(_n : GoInt).toBasic()) ("" : GoString)]);
	var _na:GoInt = (0 : GoInt);
	var _fieldStart:GoInt = (0 : GoInt);
	var _i:GoInt = (0 : GoInt);
	while ((_i < _s.length) && (_asciiSpace[_s[_i]] != (0 : GoUInt8))) {
		_i++;
	};
	_fieldStart = _i;
	while (_i < (_s.length)) {
		if (_asciiSpace[_s[_i]] == (0 : GoUInt8)) {
			_i++;
			continue;
		};
		_a[_na] = (_s.__slice__(_fieldStart, _i) : GoString);
		_na++;
		_i++;
		while ((_i < _s.length) && (_asciiSpace[_s[_i]] != (0 : GoUInt8))) {
			_i++;
		};
		_fieldStart = _i;
	};
	if (_fieldStart < (_s.length)) {
		_a[_na] = (_s.__slice__(_fieldStart) : GoString);
	};
	return _a;
}

@:structInit private class T_span_fieldsFunc_0 {
	public var _start:GoInt = 0;
	public var _end:GoInt = 0;

	public function new(?_start:GoInt, ?_end:GoInt) {
		if (_start != null)
			this._start = _start;
		if (_end != null)
			this._end = _end;
	}

	public function __underlying__():AnyInterface
		return Go.toInterface(this);

	public function __copy__() {
		return new T_span_fieldsFunc_0(_start, _end);
	}
}

/**
	// FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
	// and returns an array of slices of s. If all code points in s satisfy f(c) or the
	// string is empty, an empty slice is returned.
	//
	// FieldsFunc makes no guarantees about the order in which it calls f(c)
	// and assumes that f always returns the same value for a given c.
**/
function fieldsFunc(_s:GoString, _f:GoRune->Bool):Slice<GoString> {
	{};
	var _spans = new Slice<T_span_fieldsFunc_0>((0 : GoInt).toBasic(), (32 : GoInt), ...[for (i in 0...(0 : GoInt).toBasic()) ({} : T_span_fieldsFunc_0)]);
	var _start:GoInt = (-1 : GoInt);
	for (_end => _rune in _s) {
		if (_f(_rune)) {
			if (_start >= (0 : GoInt)) {
				_spans = (_spans.__append__((new T_span_fieldsFunc_0(_start, _end) : T_span_fieldsFunc_0)));
				_start = (-1 ^ _start);
			};
		} else {
			if (_start < (0:GoInt)) {
				_start = _end;
			};
		};
	};
	if (_start >= (0 : GoInt)) {
		_spans = (_spans.__append__((new T_span_fieldsFunc_0(_start, (_s.length)) : T_span_fieldsFunc_0)));
	};
	var _a = new Slice<GoString>((_spans.length : GoInt).toBasic(), 0, ...[for (i in 0...(_spans.length : GoInt).toBasic()) ("" : GoString)]);
	for (_i => _span in _spans) {
		_a[_i] = (_s.__slice__(_span._start, _span._end) : GoString);
	};
	return _a;
}

/**
	// Join concatenates the elements of its first argument to create a single string. The separator
	// string sep is placed between elements in the resulting string.
**/
function join(_elems:Slice<GoString>, _sep:GoString):GoString {
	if ((_elems.length) == (0 : GoInt)) {
		return (Go.str() : GoString);
	} else if ((_elems.length) == (1 : GoInt)) {
		return _elems[(0 : GoInt)];
	};
	var _n:GoInt = (_sep.length) * (_elems.length - (1 : GoInt));
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_elems.length), _i++, {
			_n = _n + ((_elems[_i].length));
		});
	};
	var _b:Builder = ({} : Builder);
	_b.grow(_n);
	_b.writeString(_elems[(0 : GoInt)]);
	for (_0 => _s in (_elems.__slice__((1 : GoInt)) : Slice<GoString>)) {
		_b.writeString(_sep);
		_b.writeString(_s);
	};
	return (_b.string() : GoString);
}

/**
	// HasPrefix tests whether the string s begins with prefix.
**/
function hasPrefix(_s:GoString, _prefix:GoString):Bool {
	return (_s.length >= _prefix.length) && ((_s.__slice__((0 : GoInt), (_prefix.length)) : GoString) == _prefix);
}

/**
	// HasSuffix tests whether the string s ends with suffix.
**/
function hasSuffix(_s:GoString, _suffix:GoString):Bool {
	return (_s.length >= _suffix.length) && ((_s.__slice__((_s.length) - (_suffix.length)) : GoString) == _suffix);
}

/**
	// Map returns a copy of the string s with all its characters modified
	// according to the mapping function. If mapping returns a negative value, the character is
	// dropped from the string with no replacement.
**/
function map(_mapping:GoRune->GoRune, _s:GoString):GoString {
	var _b:Builder = ({} : Builder);
	for (_i => _c in _s) {
		var _r:GoInt32 = _mapping(_c);
		if ((_r == _c) && (_c != (65533 : GoInt32))) {
			continue;
		};
		var _width:GoInt = (0 : GoInt);
		if (_c == (65533 : GoInt32)) {
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString));
				_c = __tmp__._0;
				_width = __tmp__._1;
			};
			if ((_width != (1 : GoInt)) && (_r == _c)) {
				continue;
			};
		} else {
			_width = stdgo.unicode.utf8.Utf8.runeLen(_c);
		};
		_b.grow((_s.length) + (4 : GoInt));
		_b.writeString((_s.__slice__(0, _i) : GoString));
		if (_r >= (0 : GoInt32)) {
			_b.writeRune(_r);
		};
		_s = (_s.__slice__(_i + _width) : GoString);
		break;
	};
	if (_b.cap() == (0 : GoInt)) {
		return _s;
	};
	for (_0 => _c in _s) {
		var _r:GoInt32 = _mapping(_c);
		if (_r >= (0 : GoInt32)) {
			if (_r < (128:GoInt32)) {
				_b.writeByte((_r : GoByte));
			} else {
				_b.writeRune(_r);
			};
		};
	};
	return (_b.string() : GoString);
}

/**
	// Repeat returns a new string consisting of count copies of the string s.
	//
	// It panics if count is negative or if
	// the result of (len(s) * count) overflows.
**/
function repeat(_s:GoString, _count:GoInt):GoString {
	if (_count == (0 : GoInt)) {
		return (Go.str() : GoString);
	};
	if (_count < (0:GoInt)) {
		throw Go.toInterface((Go.str("strings: negative Repeat count") : GoString));
	} else if (((_s.length * _count) / _count) != (_s.length)) {
		throw Go.toInterface((Go.str("strings: Repeat count causes overflow") : GoString));
	};
	var _n:GoInt = (_s.length) * _count;
	var _b:Builder = ({} : Builder);
	_b.grow(_n);
	_b.writeString(_s);
	while (_b.len() < _n) {
		if (_b.len() <= (_n / (2 : GoInt))) {
			_b.writeString((_b.string() : GoString));
		} else {
			_b.writeString(((_b.string() : GoString).__slice__(0, _n - _b.len()) : GoString));
			break;
		};
	};
	return (_b.string() : GoString);
}

/**
	// ToUpper returns s with all Unicode letters mapped to their upper case.
**/
function toUpper(_s:GoString):GoString {
	var _isASCII:Bool = true, _hasLower:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= (128 : GoUInt8)) {
				_isASCII = false;
				break;
			};
			_hasLower = _hasLower || ((("a".code : GoUInt8) <= _c) && (_c <= ("z".code : GoUInt8)));
		});
	};
	if (_isASCII) {
		if (!_hasLower) {
			return _s;
		};
		var _b:Builder = ({} : Builder);
		_b.grow((_s.length));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _c:GoUInt8 = _s[_i];
				if ((("a".code : GoUInt8) <= _c) && (_c <= ("z".code : GoUInt8))) {
					_c = _c - ((32 : GoUInt8));
				};
				_b.writeByte(_c);
			});
		};
		return (_b.string() : GoString);
	};
	return map(stdgo.unicode.Unicode.toUpper, _s);
}

/**
	// ToLower returns s with all Unicode letters mapped to their lower case.
**/
function toLower(_s:GoString):GoString {
	var _isASCII:Bool = true, _hasUpper:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= (128 : GoUInt8)) {
				_isASCII = false;
				break;
			};
			_hasUpper = _hasUpper || ((("A".code : GoUInt8) <= _c) && (_c <= ("Z".code : GoUInt8)));
		});
	};
	if (_isASCII) {
		if (!_hasUpper) {
			return _s;
		};
		var _b:Builder = ({} : Builder);
		_b.grow((_s.length));
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _c:GoUInt8 = _s[_i];
				if ((("A".code : GoUInt8) <= _c) && (_c <= ("Z".code : GoUInt8))) {
					_c = _c + ((32 : GoUInt8));
				};
				_b.writeByte(_c);
			});
		};
		return (_b.string() : GoString);
	};
	return map(stdgo.unicode.Unicode.toLower, _s);
}

/**
	// ToTitle returns a copy of the string s with all Unicode letters mapped to
	// their Unicode title case.
**/
function toTitle(_s:GoString):GoString {
	return map(stdgo.unicode.Unicode.toTitle, _s);
}

/**
	// ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
	// upper case using the case mapping specified by c.
**/
function toUpperSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:GoString):GoString {
	return map(_c.toUpper, _s);
}

/**
	// ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
	// lower case using the case mapping specified by c.
**/
function toLowerSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:GoString):GoString {
	return map(_c.toLower, _s);
}

/**
	// ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
	// Unicode title case, giving priority to the special casing rules.
**/
function toTitleSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:GoString):GoString {
	return map(_c.toTitle, _s);
}

/**
	// ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
	// replaced by the replacement string, which may be empty.
**/
function toValidUTF8(_s:GoString, _replacement:GoString):GoString {
	var _b:Builder = ({} : Builder);
	for (_i => _c in _s) {
		if (_c != (65533 : GoInt32)) {
			continue;
		};
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString)),
			_0:GoInt32 = __tmp__._0,
			_wid:GoInt = __tmp__._1;
		if (_wid == (1 : GoInt)) {
			_b.grow((_s.length) + (_replacement.length));
			_b.writeString((_s.__slice__(0, _i) : GoString));
			_s = (_s.__slice__(_i) : GoString);
			break;
		};
	};
	if (_b.cap() == (0 : GoInt)) {
		return _s;
	};
	var _invalid:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		while (_i < (_s.length)) {
			var _c:GoUInt8 = _s[_i];
			if (_c < (128:GoUInt8)) {
				_i++;
				_invalid = false;
				_b.writeByte(_c);
				continue;
			};
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString)),
				_1:GoInt32 = __tmp__._0,
				_wid:GoInt = __tmp__._1;
			if (_wid == (1 : GoInt)) {
				_i++;
				if (!_invalid) {
					_invalid = true;
					_b.writeString(_replacement);
				};
				continue;
			};
			_invalid = false;
			_b.writeString((_s.__slice__(_i, _i + _wid) : GoString));
			_i = _i + (_wid);
		};
	};
	return (_b.string() : GoString);
}

/**
	// isSeparator reports whether the rune could mark a word boundary.
	// TODO: update when package unicode captures more of the properties.
**/
function _isSeparator(_r:GoRune):Bool {
	if (_r <= (127 : GoInt32)) {
		if ((("0".code : GoInt32) <= _r) && (_r <= ("9".code : GoInt32))) {
			return false;
		} else if ((("a".code : GoInt32) <= _r) && (_r <= ("z".code : GoInt32))) {
			return false;
		} else if ((("A".code : GoInt32) <= _r) && (_r <= ("Z".code : GoInt32))) {
			return false;
		} else if (_r == ("_".code : GoInt32)) {
			return false;
		};
		return true;
	};
	if (stdgo.unicode.Unicode.isLetter(_r) || stdgo.unicode.Unicode.isDigit(_r)) {
		return false;
	};
	return stdgo.unicode.Unicode.isSpace(_r);
}

/**
	// Title returns a copy of the string s with all Unicode letters that begin words
	// mapped to their Unicode title case.
	//
	// Deprecated: The rule Title uses for word boundaries does not handle Unicode
	// punctuation properly. Use golang.org/x/text/cases instead.
**/
function title(_s:GoString):GoString {
	var _prev:GoInt32 = (" ".code : GoInt32);
	return map(function(_r:GoRune):GoRune {
		if (_isSeparator(_prev)) {
			_prev = _r;
			return stdgo.unicode.Unicode.toTitle(_r);
		};
		_prev = _r;
		return _r;
	}, _s);
}

/**
	// TrimLeftFunc returns a slice of the string s with all leading
	// Unicode code points c satisfying f(c) removed.
**/
function trimLeftFunc(_s:GoString, _f:GoRune->Bool):GoString {
	var _i:GoInt = _indexFunc(_s, _f, false);
	if (_i == (-1 : GoInt)) {
		return (Go.str() : GoString);
	};
	return (_s.__slice__(_i) : GoString);
}

/**
	// TrimRightFunc returns a slice of the string s with all trailing
	// Unicode code points c satisfying f(c) removed.
**/
function trimRightFunc(_s:GoString, _f:GoRune->Bool):GoString {
	var _i:GoInt = _lastIndexFunc(_s, _f, false);
	if ((_i >= (0 : GoInt)) && (_s[_i] >= (128 : GoUInt8))) {
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString)),
			_0:GoInt32 = __tmp__._0,
			_wid:GoInt = __tmp__._1;
		_i = _i + (_wid);
	} else {
		_i++;
	};
	return (_s.__slice__((0 : GoInt), _i) : GoString);
}

/**
	// TrimFunc returns a slice of the string s with all leading
	// and trailing Unicode code points c satisfying f(c) removed.
**/
function trimFunc(_s:GoString, _f:GoRune->Bool):GoString {
	return trimRightFunc(trimLeftFunc(_s, _f), _f);
}

/**
	// IndexFunc returns the index into s of the first Unicode
	// code point satisfying f(c), or -1 if none do.
**/
function indexFunc(_s:GoString, _f:GoRune->Bool):GoInt {
	return _indexFunc(_s, _f, true);
}

/**
	// LastIndexFunc returns the index into s of the last
	// Unicode code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(_s:GoString, _f:GoRune->Bool):GoInt {
	return _lastIndexFunc(_s, _f, true);
}

/**
	// indexFunc is the same as IndexFunc except that if
	// truth==false, the sense of the predicate function is
	// inverted.
**/
function _indexFunc(_s:GoString, _f:GoRune->Bool, _truth:Bool):GoInt {
	for (_i => _r in _s) {
		if (_f(_r) == _truth) {
			return _i;
		};
	};
	return (-1 : GoInt);
}

/**
	// lastIndexFunc is the same as LastIndexFunc except that if
	// truth==false, the sense of the predicate function is
	// inverted.
**/
function _lastIndexFunc(_s:GoString, _f:GoRune->Bool, _truth:Bool):GoInt {
	{
		var _i:GoInt = (_s.length);
		while (_i > (0 : GoInt)) {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__((0 : GoInt), _i) : GoString)),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			_i = _i - (_size);
			if (_f(_r) == _truth) {
				return _i;
			};
		};
	};
	return (-1 : GoInt);
}

/**
	// makeASCIISet creates a set of ASCII characters and reports whether all
	// characters in chars are ASCII.
**/
function _makeASCIISet(_chars:GoString):{var _0:T_asciiSet; var _1:Bool;} {
	var _as:T_asciiSet = new T_asciiSet(), _ok:Bool = false;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_chars.length), _i++, {
			var _c:GoUInt8 = _chars[_i];
			if (_c >= (128 : GoUInt8)) {
				return {_0: (_as == null ? null : _as.__copy__()), _1: false};
			};
			_as[_c / (32 : GoUInt8)] = _as[_c / (32 : GoUInt8)] | ((1 : GoUInt32) << (_c % (32 : GoUInt8)));
		});
	};
	return {_0: (_as == null ? null : _as.__copy__()), _1: true};
}

/**
	// Trim returns a slice of the string s with all leading and
	// trailing Unicode code points contained in cutset removed.
**/
function trim(_s:GoString, _cutset:GoString):GoString {
	if ((_s == (Go.str() : GoString)) || (_cutset == (Go.str() : GoString))) {
		return _s;
	};
	if ((_cutset.length == (1 : GoInt)) && (_cutset[(0 : GoInt)] < (128 : GoUInt8))) {
		return _trimLeftByte(_trimRightByte(_s, _cutset[(0 : GoInt)]), _cutset[(0 : GoInt)]);
	};
	{
		var __tmp__ = _makeASCIISet(_cutset),
			_as:T_asciiSet = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			return _trimLeftASCII(_trimRightASCII(_s, _as), _as);
		};
	};
	return _trimLeftUnicode(_trimRightUnicode(_s, _cutset), _cutset);
}

/**
	// TrimLeft returns a slice of the string s with all leading
	// Unicode code points contained in cutset removed.
	//
	// To remove a prefix, use TrimPrefix instead.
**/
function trimLeft(_s:GoString, _cutset:GoString):GoString {
	if ((_s == (Go.str() : GoString)) || (_cutset == (Go.str() : GoString))) {
		return _s;
	};
	if ((_cutset.length == (1 : GoInt)) && (_cutset[(0 : GoInt)] < (128 : GoUInt8))) {
		return _trimLeftByte(_s, _cutset[(0 : GoInt)]);
	};
	{
		var __tmp__ = _makeASCIISet(_cutset),
			_as:T_asciiSet = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			return _trimLeftASCII(_s, _as);
		};
	};
	return _trimLeftUnicode(_s, _cutset);
}

function _trimLeftByte(_s:GoString, _c:GoByte):GoString {
	while ((_s.length > (0 : GoInt)) && (_s[(0 : GoInt)] == _c)) {
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	return _s;
}

function _trimLeftASCII(_s:GoString, _as:T_asciiSet):GoString {
	while ((_s.length) > (0 : GoInt)) {
		if (!_as._contains(_s[(0 : GoInt)])) {
			break;
		};
		_s = (_s.__slice__((1 : GoInt)) : GoString);
	};
	return _s;
}

function _trimLeftUnicode(_s:GoString, _cutset:GoString):GoString {
	while ((_s.length) > (0 : GoInt)) {
		var _r:GoInt32 = (_s[(0 : GoInt)] : GoRune), _n:GoInt = (1 : GoInt);
		if (_r >= (128 : GoInt32)) {
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s);
				_r = __tmp__._0;
				_n = __tmp__._1;
			};
		};
		if (!containsRune(_cutset, _r)) {
			break;
		};
		_s = (_s.__slice__(_n) : GoString);
	};
	return _s;
}

/**
	// TrimRight returns a slice of the string s, with all trailing
	// Unicode code points contained in cutset removed.
	//
	// To remove a suffix, use TrimSuffix instead.
**/
function trimRight(_s:GoString, _cutset:GoString):GoString {
	if ((_s == (Go.str() : GoString)) || (_cutset == (Go.str() : GoString))) {
		return _s;
	};
	if ((_cutset.length == (1 : GoInt)) && (_cutset[(0 : GoInt)] < (128 : GoUInt8))) {
		return _trimRightByte(_s, _cutset[(0 : GoInt)]);
	};
	{
		var __tmp__ = _makeASCIISet(_cutset),
			_as:T_asciiSet = __tmp__._0,
			_ok:Bool = __tmp__._1;
		if (_ok) {
			return _trimRightASCII(_s, _as);
		};
	};
	return _trimRightUnicode(_s, _cutset);
}

function _trimRightByte(_s:GoString, _c:GoByte):GoString {
	while ((_s.length > (0 : GoInt)) && (_s[(_s.length) - (1 : GoInt)] == _c)) {
		_s = (_s.__slice__(0, (_s.length) - (1 : GoInt)) : GoString);
	};
	return _s;
}

function _trimRightASCII(_s:GoString, _as:T_asciiSet):GoString {
	while ((_s.length) > (0 : GoInt)) {
		if (!_as._contains(_s[(_s.length) - (1 : GoInt)])) {
			break;
		};
		_s = (_s.__slice__(0, (_s.length) - (1 : GoInt)) : GoString);
	};
	return _s;
}

function _trimRightUnicode(_s:GoString, _cutset:GoString):GoString {
	while ((_s.length) > (0 : GoInt)) {
		var _r:GoInt32 = (_s[(_s.length) - (1 : GoInt)] : GoRune),
			_n:GoInt = (1 : GoInt);
		if (_r >= (128 : GoInt32)) {
			{
				var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_s);
				_r = __tmp__._0;
				_n = __tmp__._1;
			};
		};
		if (!containsRune(_cutset, _r)) {
			break;
		};
		_s = (_s.__slice__(0, (_s.length) - _n) : GoString);
	};
	return _s;
}

/**
	// TrimSpace returns a slice of the string s, with all leading
	// and trailing white space removed, as defined by Unicode.
**/
function trimSpace(_s:GoString):GoString {
	var _start:GoInt = (0 : GoInt);
	Go.cfor(_start < (_s.length), _start++, {
		var _c:GoUInt8 = _s[_start];
		if (_c >= (128 : GoUInt8)) {
			return trimFunc((_s.__slice__(_start) : GoString), stdgo.unicode.Unicode.isSpace);
		};
		if (_asciiSpace[_c] == (0 : GoUInt8)) {
			break;
		};
	});
	var _stop:GoInt = (_s.length);
	Go.cfor(_stop > _start, _stop--, {
		var _c:GoUInt8 = _s[_stop - (1 : GoInt)];
		if (_c >= (128 : GoUInt8)) {
			return trimRightFunc((_s.__slice__(_start, _stop) : GoString), stdgo.unicode.Unicode.isSpace);
		};
		if (_asciiSpace[_c] == (0 : GoUInt8)) {
			break;
		};
	});
	return (_s.__slice__(_start, _stop) : GoString);
}

/**
	// TrimPrefix returns s without the provided leading prefix string.
	// If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(_s:GoString, _prefix:GoString):GoString {
	if (hasPrefix(_s, _prefix)) {
		return (_s.__slice__((_prefix.length)) : GoString);
	};
	return _s;
}

/**
	// TrimSuffix returns s without the provided trailing suffix string.
	// If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(_s:GoString, _suffix:GoString):GoString {
	if (hasSuffix(_s, _suffix)) {
		return (_s.__slice__(0, (_s.length) - (_suffix.length)) : GoString);
	};
	return _s;
}

/**
	// Replace returns a copy of the string s with the first n
	// non-overlapping instances of old replaced by new.
	// If old is empty, it matches at the beginning of the string
	// and after each UTF-8 sequence, yielding up to k+1 replacements
	// for a k-rune string.
	// If n < 0, there is no limit on the number of replacements.
**/
function replace(_s:GoString, _old:GoString, _new:GoString, _n:GoInt):GoString {
	if ((_old == _new) || (_n == (0 : GoInt))) {
		return _s;
	};
	{
		var _m:GoInt = count(_s, _old);
		if (_m == (0 : GoInt)) {
			return _s;
		} else if ((_n < (0:GoInt)) || (_m < _n)) {
			_n = _m;
		};
	};
	var _b:Builder = ({} : Builder);
	_b.grow((_s.length) + (_n * (_new.length - _old.length)));
	var _start:GoInt = (0 : GoInt);
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < _n, _i++, {
			var _j:GoInt = _start;
			if ((_old.length) == (0 : GoInt)) {
				if (_i > (0 : GoInt)) {
					var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_start) : GoString)),
						_0:GoInt32 = __tmp__._0,
						_wid:GoInt = __tmp__._1;
					_j = _j + (_wid);
				};
			} else {
				_j = _j + (index((_s.__slice__(_start) : GoString), _old));
			};
			_b.writeString((_s.__slice__(_start, _j) : GoString));
			_b.writeString(_new);
			_start = _j + (_old.length);
		});
	};
	_b.writeString((_s.__slice__(_start) : GoString));
	return (_b.string() : GoString);
}

/**
	// ReplaceAll returns a copy of the string s with all
	// non-overlapping instances of old replaced by new.
	// If old is empty, it matches at the beginning of the string
	// and after each UTF-8 sequence, yielding up to k+1 replacements
	// for a k-rune string.
**/
function replaceAll(_s:GoString, _old:GoString, _new:GoString):GoString {
	return replace(_s, _old, _new, (-1 : GoInt));
}

/**
	// EqualFold reports whether s and t, interpreted as UTF-8 strings,
	// are equal under simple Unicode case-folding, which is a more general
	// form of case-insensitivity.
**/
function equalFold(_s:GoString, _t:GoString):Bool {
	while ((_s != (Go.str() : GoString)) && (_t != (Go.str() : GoString))) {
		var _sr:GoRune = (0 : GoInt32), _tr:GoRune = (0 : GoInt32);
		if (_s[(0 : GoInt)] < (128 : GoUInt8)) {
			{
				final __tmp__0 = (_s[(0 : GoInt)] : GoRune);
				final __tmp__1 = (_s.__slice__((1 : GoInt)) : GoString);
				_sr = __tmp__0;
				_s = __tmp__1;
			};
		} else {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			{
				final __tmp__0 = _r;
				final __tmp__1 = (_s.__slice__(_size) : GoString);
				_sr = __tmp__0;
				_s = __tmp__1;
			};
		};
		if (_t[(0 : GoInt)] < (128 : GoUInt8)) {
			{
				final __tmp__0 = (_t[(0 : GoInt)] : GoRune);
				final __tmp__1 = (_t.__slice__((1 : GoInt)) : GoString);
				_tr = __tmp__0;
				_t = __tmp__1;
			};
		} else {
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_t),
				_r:GoInt32 = __tmp__._0,
				_size:GoInt = __tmp__._1;
			{
				final __tmp__0 = _r;
				final __tmp__1 = (_t.__slice__(_size) : GoString);
				_tr = __tmp__0;
				_t = __tmp__1;
			};
		};
		if (_tr == _sr) {
			continue;
		};
		if (_tr < _sr) {
			{
				final __tmp__0 = _sr;
				final __tmp__1 = _tr;
				_tr = __tmp__0;
				_sr = __tmp__1;
			};
		};
		if (_tr < (128:GoInt32)) {
			if (((("A".code : GoInt32) <= _sr) && (_sr <= ("Z".code : GoInt32)))
				&& (_tr == ((_sr + ("a".code : GoInt32)) - ("A".code : GoInt32)))) {
				continue;
			};
			return false;
		};
		var _r:GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
		while ((_r != _sr) && (_r < _tr)) {
			_r = stdgo.unicode.Unicode.simpleFold(_r);
		};
		if (_r == _tr) {
			continue;
		};
		return false;
	};
	return _s == _t;
}

/**
	// Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
**/
function index(_s:GoString, _substr:GoString):GoInt {
	var _n:GoInt = (_substr.length);
	if (_n == (0 : GoInt)) {
		return (0 : GoInt);
	} else if (_n == (1 : GoInt)) {
		return indexByte(_s, _substr[(0 : GoInt)]);
	} else if (_n == (_s.length)) {
		if (_substr == _s) {
			return (0 : GoInt);
		};
		return (-1 : GoInt);
	} else if (_n > (_s.length)) {
		return (-1 : GoInt);
	} else if (_n <= stdgo.internal.bytealg.Bytealg.maxLen) {
		if ((_s.length) <= (0 : GoInt)) {
			return stdgo.internal.bytealg.Bytealg.indexString(_s, _substr);
		};
		var _c0:GoUInt8 = _substr[(0 : GoInt)];
		var _c1:GoUInt8 = _substr[(1 : GoInt)];
		var _i:GoInt = (0 : GoInt);
		var _t:GoInt = (_s.length - _n) + (1 : GoInt);
		var _fails:GoInt = (0 : GoInt);
		while (_i < _t) {
			if (_s[_i] != _c0) {
				var _o:GoInt = indexByte((_s.__slice__(_i + (1 : GoInt), _t) : GoString), _c0);
				if (_o < (0:GoInt)) {
					return (-1 : GoInt);
				};
				_i = _i + (_o + (1 : GoInt));
			};
			if ((_s[_i + (1 : GoInt)] == _c1) && ((_s.__slice__(_i, _i + _n) : GoString) == _substr)) {
				return _i;
			};
			_fails++;
			_i++;
			if (_fails > stdgo.internal.bytealg.Bytealg.cutover(_i)) {
				var _r:GoInt = stdgo.internal.bytealg.Bytealg.indexString((_s.__slice__(_i) : GoString), _substr);
				if (_r >= (0 : GoInt)) {
					return _r + _i;
				};
				return (-1 : GoInt);
			};
		};
		return (-1 : GoInt);
	};
	var _c0:GoUInt8 = _substr[(0 : GoInt)];
	var _c1:GoUInt8 = _substr[(1 : GoInt)];
	var _i:GoInt = (0 : GoInt);
	var _t:GoInt = (_s.length - _n) + (1 : GoInt);
	var _fails:GoInt = (0 : GoInt);
	while (_i < _t) {
		if (_s[_i] != _c0) {
			var _o:GoInt = indexByte((_s.__slice__(_i + (1 : GoInt), _t) : GoString), _c0);
			if (_o < (0:GoInt)) {
				return (-1 : GoInt);
			};
			_i = _i + (_o + (1 : GoInt));
		};
		if ((_s[_i + (1 : GoInt)] == _c1) && ((_s.__slice__(_i, _i + _n) : GoString) == _substr)) {
			return _i;
		};
		_i++;
		_fails++;
		if ((_fails >= ((4 : GoInt) + (_i >> (4 : GoUnTypedInt)))) && (_i < _t)) {
			var _j:GoInt = stdgo.internal.bytealg.Bytealg.indexRabinKarp((_s.__slice__(_i) : GoString), _substr);
			if (_j < (0:GoInt)) {
				return (-1 : GoInt);
			};
			return _i + _j;
		};
	};
	return (-1 : GoInt);
}

/**
	// Cut slices s around the first instance of sep,
	// returning the text before and after sep.
	// The found result reports whether sep appears in s.
	// If sep does not appear in s, cut returns s, "", false.
**/
function cut(_s:GoString, _sep:GoString):{var _0:GoString; var _1:GoString; var _2:Bool;} {
	var _before:GoString = ("" : GoString),
		_after:GoString = ("" : GoString),
		_found:Bool = false;
	{
		var _i:GoInt = index(_s, _sep);
		if (_i >= (0 : GoInt)) {
			return {_0: (_s.__slice__(0, _i) : GoString), _1: (_s.__slice__(_i + (_sep.length)) : GoString), _2: true};
		};
	};
	return {_0: _s, _1: (Go.str() : GoString), _2: false};
}

@:keep class Builder_static_extension {
	/**
		// WriteString appends the contents of s to b's buffer.
		// It returns the length of s and a nil error.
	**/
	@:keep
	static public function writeString(_b:Builder, _s:GoString):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		_b._buf = (_b._buf.__append__(..._s.__toArray__()));
		return {_0: (_s.length), _1: (null : stdgo.Error)};
	}

	/**
		// WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
		// It returns the length of r and a nil error.
	**/
	@:keep
	static public function writeRune(_b:Builder, _r:GoRune):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		if ((_r : GoUInt32) < (128 : GoUInt32)) {
			_b._buf = (_b._buf.__append__((_r : GoByte)));
			return {_0: (1 : GoInt), _1: (null : stdgo.Error)};
		};
		var _l:GoInt = (_b._buf.length);
		if ((_b._buf.capacity - _l) < (4 : GoInt)) {
			_b._grow((4 : GoInt));
		};
		var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b._buf.__slice__(_l, _l + (4 : GoInt)) : Slice<GoUInt8>), _r);
		_b._buf = (_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>);
		return {_0: _n, _1: (null : stdgo.Error)};
	}

	/**
		// WriteByte appends the byte c to b's buffer.
		// The returned error is always nil.
	**/
	@:keep
	static public function writeByte(_b:Builder, _c:GoByte):Error {
		_b._copyCheck();
		_b._buf = (_b._buf.__append__(_c));
		return (null : stdgo.Error);
	}

	/**
		// Write appends the contents of p to b's buffer.
		// Write always returns len(p), nil.
	**/
	@:keep
	static public function write(_b:Builder, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		_b._buf = (_b._buf.__append__(..._p.__toArray__()));
		return {_0: (_p.length), _1: (null : stdgo.Error)};
	}

	/**
		// Grow grows b's capacity, if necessary, to guarantee space for
		// another n bytes. After Grow(n), at least n bytes can be written to b
		// without another allocation. If n is negative, Grow panics.
	**/
	@:keep
	static public function grow(_b:Builder, _n:GoInt):Void {
		_b._copyCheck();
		if (_n < (0:GoInt)) {
			throw Go.toInterface((Go.str("strings.Builder.Grow: negative count") : GoString));
		};
		if ((_b._buf.capacity - _b._buf.length) < _n) {
			_b._grow(_n);
		};
	}

	/**
		// grow copies the buffer to a new, larger buffer so that there are at least n
		// bytes of capacity beyond len(b.buf).
	**/
	@:keep
	static public function _grow(_b:Builder, _n:GoInt):Void {
		var _buf = new Slice<GoUInt8>((_b._buf.length : GoInt).toBasic(), ((2 : GoInt) * _b._buf.capacity) + _n,
			...[for (i in 0...(_b._buf.length : GoInt).toBasic()) (0 : GoUInt8)]);
		Go.copySlice(_buf, _b._buf);
		_b._buf = _buf;
	}

	/**
		// Reset resets the Builder to be empty.
	**/
	@:keep
	static public function reset(_b:Builder):Void {
		_b._addr = null;
		_b._buf = (null : Slice<GoUInt8>);
	}

	/**
		// Cap returns the capacity of the builder's underlying byte slice. It is the
		// total space allocated for the string being built and includes any bytes
		// already written.
	**/
	@:keep
	static public function cap(_b:Builder):GoInt {
		return _b._buf.capacity;
	}

	/**
		// Len returns the number of accumulated bytes; b.Len() == len(b.String()).
	**/
	@:keep
	static public function len(_b:Builder):GoInt {
		return (_b._buf.length);
	}

	/**
		// String returns the accumulated string.
	**/
	@:keep
	static public function string(_b:Builder):GoString {
		return ((Go.toInterface(_b._buf) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.reflect.Reflect.GoType.pointer(stdgo.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>).value;
	}

	@:keep
	static public function _copyCheck(_b:Builder):Void
		_b._addr = _b;
}

class Builder_wrapper {
	/**
		// WriteString appends the contents of s to b's buffer.
		// It returns the length of s and a nil error.
	**/
	@:keep
	public var writeString:GoString -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
		// It returns the length of r and a nil error.
	**/
	@:keep
	public var writeRune:GoRune -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// WriteByte appends the byte c to b's buffer.
		// The returned error is always nil.
	**/
	@:keep
	public var writeByte:GoByte->Error = null;

	/**
		// Write appends the contents of p to b's buffer.
		// Write always returns len(p), nil.
	**/
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Grow grows b's capacity, if necessary, to guarantee space for
		// another n bytes. After Grow(n), at least n bytes can be written to b
		// without another allocation. If n is negative, Grow panics.
	**/
	@:keep
	public var grow:GoInt->Void = null;

	/**
		// grow copies the buffer to a new, larger buffer so that there are at least n
		// bytes of capacity beyond len(b.buf).
	**/
	@:keep
	public var _grow:GoInt->Void = null;

	/**
		// Reset resets the Builder to be empty.
	**/
	@:keep
	public var reset:() -> Void = null;

	/**
		// Cap returns the capacity of the builder's underlying byte slice. It is the
		// total space allocated for the string being built and includes any bytes
		// already written.
	**/
	@:keep
	public var cap:() -> GoInt = null;

	/**
		// Len returns the number of accumulated bytes; b.Len() == len(b.String()).
	**/
	@:keep
	public var len:() -> GoInt = null;

	/**
		// String returns the accumulated string.
	**/
	@:keep
	public var string:() -> GoString = null;

	@:keep
	public var _copyCheck:() -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Builder;
}

@:keep class Reader_static_extension {
	/**
		// Reset resets the Reader to be reading from s.
	**/
	@:keep
	static public function reset(_r:Reader, _s:GoString):Void {
		{
			var __tmp__ = (new Reader(_s, (0 : GoInt64), (-1 : GoInt)) : Reader);
			_r._s = __tmp__._s;
			_r._i = __tmp__._i;
			_r._prevRune = __tmp__._prevRune;
		};
	}

	/**
		// WriteTo implements the io.WriterTo interface.
	**/
	@:keep
	static public function writeTo(_r:Reader, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _n:GoInt64 = (0 : GoInt64), _err:Error = (null : stdgo.Error);
		_r._prevRune = (-1 : GoInt);
		if (_r._i >= (_r._s.length : GoInt64)) {
			return {_0: (0 : GoInt64), _1: (null : stdgo.Error)};
		};
		var _s:GoString = (_r._s.__slice__(_r._i) : GoString);
		var __tmp__ = stdgo.io.Io.writeString(_w, _s),
			_m:GoInt = __tmp__._0,
			_err:stdgo.Error = __tmp__._1;
		if (_m > (_s.length)) {
			throw Go.toInterface((Go.str("strings.Reader.WriteTo: invalid WriteString count") : GoString));
		};
		_r._i = _r._i + ((_m : GoInt64));
		_n = (_m : GoInt64);
		if ((_m != _s.length) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	/**
		// Seek implements the io.Seeker interface.
	**/
	@:keep
	static public function seek(_r:Reader, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		_r._prevRune = (-1 : GoInt);
		var _abs:GoInt64 = (0 : GoInt64);
		if (_whence == (0 : GoInt)) {
			_abs = _offset;
		} else if (_whence == (1 : GoInt)) {
			_abs = _r._i + _offset;
		} else if (_whence == (2 : GoInt)) {
			_abs = (_r._s.length : GoInt64) + _offset;
		} else {
			return {_0: (0 : GoInt64), _1: stdgo.errors.Errors.new_((Go.str("strings.Reader.Seek: invalid whence") : GoString))};
		};
		if (_abs < (0:GoInt64)) {
			return {_0: (0 : GoInt64), _1: stdgo.errors.Errors.new_((Go.str("strings.Reader.Seek: negative position") : GoString))};
		};
		_r._i = _abs;
		return {_0: _abs, _1: (null : stdgo.Error)};
	}

	/**
		// UnreadRune implements the io.RuneScanner interface.
	**/
	@:keep
	static public function unreadRune(_r:Reader):Error {
		if (_r._i <= (0 : GoInt64)) {
			return stdgo.errors.Errors.new_((Go.str("strings.Reader.UnreadRune: at beginning of string") : GoString));
		};
		if (_r._prevRune < (0:GoInt)) {
			return stdgo.errors.Errors.new_((Go.str("strings.Reader.UnreadRune: previous operation was not ReadRune") : GoString));
		};
		_r._i = (_r._prevRune : GoInt64);
		_r._prevRune = (-1 : GoInt);
		return (null : stdgo.Error);
	}

	/**
		// ReadRune implements the io.RuneReader interface.
	**/
	@:keep
	static public function readRune(_r:Reader):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _ch:GoRune = (0 : GoInt32),
			_size:GoInt = (0 : GoInt),
			_err:Error = (null : stdgo.Error);
		if (_r._i >= (_r._s.length : GoInt64)) {
			_r._prevRune = (-1 : GoInt);
			return {_0: (0 : GoInt32), _1: (0 : GoInt), _2: stdgo.io.Io.eof};
		};
		_r._prevRune = (_r._i : GoInt);
		{
			var _c:GoUInt8 = _r._s[_r._i];
			if (_c < (128:GoUInt8)) {
				_r._i++;
				return {_0: (_c : GoRune), _1: (1 : GoInt), _2: (null : stdgo.Error)};
			};
		};
		{
			var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_r._s.__slice__(_r._i) : GoString));
			_ch = __tmp__._0;
			_size = __tmp__._1;
		};
		_r._i = _r._i + ((_size : GoInt64));
		return {_0: _ch, _1: _size, _2: _err};
	}

	/**
		// UnreadByte implements the io.ByteScanner interface.
	**/
	@:keep
	static public function unreadByte(_r:Reader):Error {
		if (_r._i <= (0 : GoInt64)) {
			return stdgo.errors.Errors.new_((Go.str("strings.Reader.UnreadByte: at beginning of string") : GoString));
		};
		_r._prevRune = (-1 : GoInt);
		_r._i--;
		return (null : stdgo.Error);
	}

	/**
		// ReadByte implements the io.ByteReader interface.
	**/
	@:keep
	static public function readByte(_r:Reader):{var _0:GoByte; var _1:Error;} {
		_r._prevRune = (-1 : GoInt);
		if (_r._i >= (_r._s.length : GoInt64)) {
			return {_0: (0 : GoUInt8), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = _r._s[_r._i];
		_r._i++;
		return {_0: _b, _1: (null : stdgo.Error)};
	}

	/**
		// ReadAt implements the io.ReaderAt interface.
	**/
	@:keep
	static public function readAt(_r:Reader, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		if (_off < (0:GoInt64)) {
			return {_0: (0 : GoInt), _1: stdgo.errors.Errors.new_((Go.str("strings.Reader.ReadAt: negative offset") : GoString))};
		};
		if (_off >= (_r._s.length : GoInt64)) {
			return {_0: (0 : GoInt), _1: stdgo.io.Io.eof};
		};
		_n = Go.copySlice(_b, (_r._s.__slice__(_off) : GoString));
		if (_n < (_b.length)) {
			_err = stdgo.io.Io.eof;
		};
		return {_0: _n, _1: _err};
	}

	/**
		// Read implements the io.Reader interface.
	**/
	@:keep
	static public function read(_r:Reader, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		if (_r._i >= (_r._s.length : GoInt64)) {
			return {_0: (0 : GoInt), _1: stdgo.io.Io.eof};
		};
		_r._prevRune = (-1 : GoInt);
		_n = Go.copySlice(_b, (_r._s.__slice__(_r._i) : GoString));
		_r._i = _r._i + ((_n : GoInt64));
		return {_0: _n, _1: _err};
	}

	/**
		// Size returns the original length of the underlying string.
		// Size is the number of bytes available for reading via ReadAt.
		// The returned value is always the same and is not affected by calls
		// to any other method.
	**/
	@:keep
	static public function size(_r:Reader):GoInt64 {
		return (_r._s.length : GoInt64);
	}

	/**
		// Len returns the number of bytes of the unread portion of the
		// string.
	**/
	@:keep
	static public function len(_r:Reader):GoInt {
		if (_r._i >= (_r._s.length : GoInt64)) {
			return (0 : GoInt);
		};
		return ((_r._s.length : GoInt64) - _r._i : GoInt);
	}
}

class Reader_wrapper {
	/**
		// Reset resets the Reader to be reading from s.
	**/
	@:keep
	public var reset:GoString->Void = null;

	/**
		// WriteTo implements the io.WriterTo interface.
	**/
	@:keep
	public var writeTo:stdgo.io.Io.Writer -> {
		var _0:GoInt64;
		var _1:Error;
	} = null;

	/**
		// Seek implements the io.Seeker interface.
	**/
	@:keep
	public var seek:(GoInt64, GoInt) -> {
		var _0:GoInt64;
		var _1:Error;
	} = null;

	/**
		// UnreadRune implements the io.RuneScanner interface.
	**/
	@:keep
	public var unreadRune:() -> Error = null;

	/**
		// ReadRune implements the io.RuneReader interface.
	**/
	@:keep
	public var readRune:() -> {
		var _0:GoRune;
		var _1:GoInt;
		var _2:Error;
	} = null;

	/**
		// UnreadByte implements the io.ByteScanner interface.
	**/
	@:keep
	public var unreadByte:() -> Error = null;

	/**
		// ReadByte implements the io.ByteReader interface.
	**/
	@:keep
	public var readByte:() -> {
		var _0:GoByte;
		var _1:Error;
	} = null;

	/**
		// ReadAt implements the io.ReaderAt interface.
	**/
	@:keep
	public var readAt:(Slice<GoByte>, GoInt64) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Read implements the io.Reader interface.
	**/
	@:keep
	public var read:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Size returns the original length of the underlying string.
		// Size is the number of bytes available for reading via ReadAt.
		// The returned value is always the same and is not affected by calls
		// to any other method.
	**/
	@:keep
	public var size:() -> GoInt64 = null;

	/**
		// Len returns the number of bytes of the unread portion of the
		// string.
	**/
	@:keep
	public var len:() -> GoInt = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Reader;
}

@:keep class Replacer_static_extension {
	/**
		// WriteString writes s to w with all replacements performed.
	**/
	@:keep
	static public function writeString(_r:Replacer, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		_r._once.do_(_r._buildOnce);
		return _r._r.writeString(_w, _s);
	}

	/**
		// Replace returns a copy of s with all replacements performed.
	**/
	@:keep
	static public function replace(_r:Replacer, _s:GoString):GoString {
		_r._once.do_(_r._buildOnce);
		return _r._r.replace(_s);
	}

	@:keep
	static public function _build(_b:Replacer):T_replacer {
		var _oldnew = _b._oldnew;
		if ((_oldnew.length == (2 : GoInt)) && (_oldnew[(0 : GoInt)].length > (1 : GoInt))) {
			return {
				final __self__ = new T_singleStringReplacer_wrapper(_makeSingleStringReplacer(_oldnew[(0 : GoInt)], _oldnew[(1 : GoInt)]));
				__self__.replace = #if !macro function(__0:GoString):GoString return _makeSingleStringReplacer(_oldnew[(0 : GoInt)],
					_oldnew[(1 : GoInt)]).replace(__0) #else null #end;
				__self__.writeString = #if !macro function(_w_:stdgo.io.Io.Writer, _s_:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _makeSingleStringReplacer(_oldnew[(0 : GoInt)], _oldnew[(1 : GoInt)]).writeString(_w_, _s_) #else null #end;
				__self__;
			};
		};
		var _allNewBytes:Bool = true;
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : GoInt)), {
				if ((_oldnew[_i].length) != (1 : GoInt)) {
					return {
						final __self__ = new T_genericReplacer_wrapper(_makeGenericReplacer(_oldnew));
						__self__.replace = #if !macro function(__0:GoString):GoString return _makeGenericReplacer(_oldnew).replace(__0) #else null #end;
						__self__.writeString = #if !macro function(_w_:stdgo.io.Io.Writer, _s_:GoString):{var _0:GoInt; var _1:stdgo.Error;}
							return _makeGenericReplacer(_oldnew).writeString(_w_, _s_) #else null #end;
						__self__._lookup = #if !macro function(_s__:GoString, _ignoreRoot:Bool):{var _0:GoString; var _1:GoInt; var _2:Bool;}
							return _makeGenericReplacer(_oldnew)._lookup(_s__, _ignoreRoot) #else null #end;
						__self__._printNode = #if !macro function(_t:Ref<T_trieNode>,
								_depth:GoInt):GoString return _makeGenericReplacer(_oldnew)._printNode(_t, _depth) #else null #end;
						__self__;
					};
				};
				if ((_oldnew[_i + (1 : GoInt)].length) != (1 : GoInt)) {
					_allNewBytes = false;
				};
			});
		};
		if (_allNewBytes) {
			var _r:T_byteReplacer = (new GoArray<GoUInt8>(...([].concat([for (i in 0...256) (0 : GoUInt8)]))) : T_byteReplacer);
			for (_i => _ in _r) {
				_r[_i] = (_i : GoByte);
			};
			{
				var _i:GoInt = (_oldnew.length) - (2 : GoInt);
				Go.cfor(_i >= (0 : GoInt), _i = _i - ((2 : GoInt)), {
					var _o:GoUInt8 = _oldnew[_i][(0 : GoInt)];
					var _n:GoUInt8 = _oldnew[_i + (1 : GoInt)][(0 : GoInt)];
					_r[_o] = _n;
				});
			};
			return {
				final __self__ = new T_byteReplacer_wrapper(_r);
				__self__.replace = #if !macro function(__0:GoString):GoString return _r.replace(__0) #else null #end;
				__self__.writeString = #if !macro function(_w_:stdgo.io.Io.Writer, _s_:GoString):{var _0:GoInt; var _1:stdgo.Error;}
					return _r.writeString(_w_, _s_) #else null #end;
				__self__;
			};
		};
		var _r:T_byteStringReplacer = ({_toReplace: new Slice<GoString>((0 : GoInt).toBasic(), (_oldnew.length) / (2 : GoInt),
			...[for (i in 0...(0 : GoInt).toBasic()) ("" : GoString)])} : T_byteStringReplacer);
		{
			var _i:GoInt = (_oldnew.length) - (2 : GoInt);
			Go.cfor(_i >= (0 : GoInt), _i = _i - ((2 : GoInt)), {
				var _o:GoUInt8 = _oldnew[_i][(0 : GoInt)];
				var _n:GoString = _oldnew[_i + (1 : GoInt)];
				if (_r._replacements[_o] == null) {
					_r._toReplace = (_r._toReplace.__append__(((new Slice<GoUInt8>(0, 0, _o) : Slice<GoUInt8>) : GoString)));
				};
				_r._replacements[_o] = (_n : Slice<GoByte>);
			});
		};
		return {
			final __self__ = new T_byteStringReplacer_wrapper(_r);
			__self__.replace = #if !macro function(__0:GoString):GoString return _r.replace(__0) #else null #end;
			__self__.writeString = #if !macro function(_w_:stdgo.io.Io.Writer, _s_:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _r.writeString(_w_, _s_) #else null #end;
			__self__;
		};
	}

	@:keep
	static public function _buildOnce(_r:Replacer):Void {
		_r._r = _r._build();
		_r._oldnew = (null : Slice<GoString>);
	}

	@:keep
	static public function printTrie(_r:Replacer):GoString {
		_r._once.do_(_r._buildOnce);
		var _gen = ((_r._r.__underlying__().value : Dynamic) : T_genericReplacer);
		return _gen._printNode(_gen._root, (0 : GoInt));
	}

	@:keep
	static public function replacer(_r:Replacer):AnyInterface {
		_r._once.do_(_r._buildOnce);
		return Go.toInterface(_r._r);
	}
}

class Replacer_wrapper {
	/**
		// WriteString writes s to w with all replacements performed.
	**/
	@:keep
	public var writeString:(stdgo.io.Io.Writer, GoString) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Replace returns a copy of s with all replacements performed.
	**/
	@:keep
	public var replace:GoString->GoString = null;

	@:keep
	public var _build:() -> T_replacer = null;
	@:keep
	public var _buildOnce:() -> Void = null;
	@:keep
	public var printTrie:() -> GoString = null;
	@:keep
	public var replacer:() -> AnyInterface = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:Replacer;
}

@:keep private class T_trieNode_static_extension {
	@:keep
	static public function _add(_t:T_trieNode, _key:GoString, _val:GoString, _priority:GoInt, _r:T_genericReplacer):Void {
		if (_key == (Go.str() : GoString)) {
			if (_t._priority == (0 : GoInt)) {
				_t._value = _val;
				_t._priority = _priority;
			};
			return;
		};
		if (_t._prefix != (Go.str() : GoString)) {
			var _n:GoInt = (0 : GoInt);
			Go.cfor((_n < _t._prefix.length) && (_n < _key.length), _n++, {
				if (_t._prefix[_n] != _key[_n]) {
					break;
				};
			});
			if (_n == (_t._prefix.length)) {
				_t._next._add((_key.__slice__(_n) : GoString), _val, _priority, _r);
			} else if (_n == (0 : GoInt)) {
				var _prefixNode:T_trieNode = (null : T_trieNode);
				if ((_t._prefix.length) == (1 : GoInt)) {
					_prefixNode = _t._next;
				} else {
					_prefixNode = ({_prefix: (_t._prefix.__slice__((1 : GoInt)) : GoString), _next: _t._next} : T_trieNode);
				};
				var _keyNode = ({} : T_trieNode);
				_t._table = new Slice<Ref<T_trieNode>>((_r._tableSize : GoInt).toBasic(), 0,
					...[for (i in 0...(_r._tableSize : GoInt).toBasic()) (null : T_trieNode)]);
				_t._table[_r._mapping[_t._prefix[(0 : GoInt)]]] = _prefixNode;
				_t._table[_r._mapping[_key[(0 : GoInt)]]] = _keyNode;
				_t._prefix = (Go.str() : GoString);
				_t._next = null;
				_keyNode._add((_key.__slice__((1 : GoInt)) : GoString), _val, _priority, _r);
			} else {
				var _next = ({_prefix: (_t._prefix.__slice__(_n) : GoString), _next: _t._next} : T_trieNode);
				_t._prefix = (_t._prefix.__slice__(0, _n) : GoString);
				_t._next = _next;
				_next._add((_key.__slice__(_n) : GoString), _val, _priority, _r);
			};
		} else if (_t._table != null) {
			var _m:GoUInt8 = _r._mapping[_key[(0 : GoInt)]];
			if (_t._table[_m] == null) {
				_t._table[_m] = ({} : T_trieNode);
			};
			_t._table[_m]._add((_key.__slice__((1 : GoInt)) : GoString), _val, _priority, _r);
		} else {
			_t._prefix = _key;
			_t._next = ({} : T_trieNode);
			_t._next._add((Go.str() : GoString), _val, _priority, _r);
		};
	}
}

class T_trieNode_wrapper {
	@:keep
	public var _add:(GoString, GoString, GoInt, T_genericReplacer) -> Void = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_trieNode;
}

@:keep private class T_genericReplacer_static_extension {
	@:keep
	static public function writeString(_r:T_genericReplacer, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _last:GoInt = (0 : GoInt), _wn:GoInt = (0 : GoInt);
		var _prevMatchEmpty:Bool = false;
		{
			var _i:GoInt = (0 : GoInt);
			while (_i <= (_s.length)) {
				if ((_i != _s.length) && (_r._root._priority == (0 : GoInt))) {
					var _index:GoInt = (_r._mapping[_s[_i]] : GoInt);
					if ((_index == _r._tableSize) || (_r._root._table[_index] == null)) {
						_i++;
						continue;
					};
				};
				var __tmp__ = _r._lookup((_s.__slice__(_i) : GoString), _prevMatchEmpty),
					_val:GoString = __tmp__._0,
					_keylen:GoInt = __tmp__._1,
					_match:Bool = __tmp__._2;
				_prevMatchEmpty = _match && (_keylen == (0 : GoInt));
				if (_match) {
					{
						var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : GoString));
						_wn = __tmp__._0;
						_err = __tmp__._1;
					};
					_n = _n + (_wn);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
					{
						var __tmp__ = _sw.writeString(_val);
						_wn = __tmp__._0;
						_err = __tmp__._1;
					};
					_n = _n + (_wn);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
					_i = _i + (_keylen);
					_last = _i;
					continue;
				};
				_i++;
			};
		};
		if (_last != (_s.length)) {
			{
				var __tmp__ = _sw.writeString((_s.__slice__(_last) : GoString));
				_wn = __tmp__._0;
				_err = __tmp__._1;
			};
			_n = _n + (_wn);
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	static public function replace(_r:T_genericReplacer, _s:GoString):GoString {
		var _buf:T_appendSliceWriter = new T_appendSliceWriter((0 : GoInt).toBasic(), (_s.length), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		_r.writeString({
			final __self__ = new T_appendSliceWriter_wrapper(_buf);
			__self__.write = #if !macro function(_p:Slice<GoUInt8>):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.write(_p) #else null #end;
			__self__.writeString = #if !macro function(__0:GoString):{var _0:GoInt; var _1:stdgo.Error;}
				return _buf.writeString(__0) #else null #end;
			__self__;
		}, _s);
		return (_buf : GoString);
	}

	@:keep
	static public function _lookup(_r:T_genericReplacer, _s:GoString, _ignoreRoot:Bool):{var _0:GoString; var _1:GoInt; var _2:Bool;} {
		var _val:GoString = ("" : GoString),
			_keylen:GoInt = (0 : GoInt),
			_found:Bool = false;
		var _bestPriority:GoInt = (0 : GoInt);
		var _node = _r._root;
		var _n:GoInt = (0 : GoInt);
		while (_node != null) {
			if ((_node._priority > _bestPriority) && !(_ignoreRoot && (_node == _r._root))) {
				_bestPriority = _node._priority;
				_val = _node._value;
				_keylen = _n;
				_found = true;
			};
			if (_s == (Go.str() : GoString)) {
				break;
			};
			if (_node._table != null) {
				var _index:GoUInt8 = _r._mapping[_s[(0 : GoInt)]];
				if ((_index : GoInt) == _r._tableSize) {
					break;
				};
				_node = _node._table[_index];
				_s = (_s.__slice__((1 : GoInt)) : GoString);
				_n++;
			} else if ((_node._prefix != (Go.str() : GoString)) && hasPrefix(_s, _node._prefix)) {
				_n = _n + ((_node._prefix.length));
				_s = (_s.__slice__((_node._prefix.length)) : GoString);
				_node = _node._next;
			} else {
				break;
			};
		};
		return {_0: _val, _1: _keylen, _2: _found};
	}

	@:keep
	static public function _printNode(_r:T_genericReplacer, _t:T_trieNode, _depth:GoInt):GoString {
		var _s:GoString = ("" : GoString);
		if (_t._priority > (0 : GoInt)) {
			_s = _s + ((Go.str("+") : GoString));
		} else {
			_s = _s + ((Go.str("-") : GoString));
		};
		_s = _s + ((Go.str("\n") : GoString));
		if (_t._prefix != (Go.str() : GoString)) {
			_s = _s + (repeat((Go.str(".") : GoString), _depth) + _t._prefix);
			_s = _s + (_r._printNode(_t._next, _depth + (_t._prefix.length)));
		} else if (_t._table != null) {
			for (_b => _m in _r._mapping) {
				if (((_m : GoInt) != _r._tableSize) && (_t._table[_m] != null)) {
					_s = _s + (repeat((Go.str(".") : GoString), _depth) + ((new Slice<GoUInt8>(0, 0, (_b : GoByte)) : Slice<GoUInt8>) : GoString));
					_s = _s + (_r._printNode(_t._table[_m], _depth + (1 : GoInt)));
				};
			};
		};
		return _s;
	}
}

class T_genericReplacer_wrapper {
	@:keep
	public var writeString:(stdgo.io.Io.Writer, GoString) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var replace:GoString->GoString = null;
	@:keep
	public var _lookup:(GoString, Bool) -> {
		var _0:GoString;
		var _1:GoInt;
		var _2:Bool;
	} = null;
	@:keep
	public var _printNode:(T_trieNode, GoInt) -> GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_genericReplacer;
}

@:keep private class T_stringWriter_static_extension {
	@:keep
	static public function writeString(_w:T_stringWriter, _s:GoString):{var _0:GoInt; var _1:Error;} {
		return _w._w.write((_s : Slice<GoByte>));
	}
}

class T_stringWriter_wrapper {
	@:keep
	public var writeString:GoString -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_stringWriter;
}

@:keep private class T_singleStringReplacer_static_extension {
	@:keep
	static public function writeString(_r:T_singleStringReplacer, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _i:GoInt = (0 : GoInt), _wn:GoInt = (0 : GoInt);
		while (true) {
			var _match:GoInt = _r._finder._next((_s.__slice__(_i) : GoString));
			if (_match == (-1 : GoInt)) {
				break;
			};
			{
				var __tmp__ = _sw.writeString((_s.__slice__(_i, _i + _match) : GoString));
				_wn = __tmp__._0;
				_err = __tmp__._1;
			};
			_n = _n + (_wn);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
			{
				var __tmp__ = _sw.writeString(_r._value);
				_wn = __tmp__._0;
				_err = __tmp__._1;
			};
			_n = _n + (_wn);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
			_i = _i + (_match + _r._finder._pattern.length);
		};
		{
			var __tmp__ = _sw.writeString((_s.__slice__(_i) : GoString));
			_wn = __tmp__._0;
			_err = __tmp__._1;
		};
		_n = _n + (_wn);
		return {_0: _n, _1: _err};
	}

	@:keep
	static public function replace(_r:T_singleStringReplacer, _s:GoString):GoString {
		var _buf:Builder = ({} : Builder);
		var _i:GoInt = (0 : GoInt), _matched:Bool = false;
		while (true) {
			var _match:GoInt = _r._finder._next((_s.__slice__(_i) : GoString));
			if (_match == (-1 : GoInt)) {
				break;
			};
			_matched = true;
			_buf.grow(_match + (_r._value.length));
			_buf.writeString((_s.__slice__(_i, _i + _match) : GoString));
			_buf.writeString(_r._value);
			_i = _i + (_match + _r._finder._pattern.length);
		};
		if (!_matched) {
			return _s;
		};
		_buf.writeString((_s.__slice__(_i) : GoString));
		return (_buf.string() : GoString);
	}
}

class T_singleStringReplacer_wrapper {
	@:keep
	public var writeString:(stdgo.io.Io.Writer, GoString) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var replace:GoString->GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_singleStringReplacer;
}

@:keep private class T_byteStringReplacer_static_extension {
	@:keep
	static public function writeString(_r:T_byteStringReplacer, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _last:GoInt = (0 : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _b:GoUInt8 = _s[_i];
				if (_r._replacements[_b] == null) {
					continue;
				};
				if (_last != _i) {
					var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : GoString)),
						_nw:GoInt = __tmp__._0,
						_err:stdgo.Error = __tmp__._1;
					_n = _n + (_nw);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
				};
				_last = _i + (1 : GoInt);
				var __tmp__ = _w.write(_r._replacements[_b]),
					_nw:GoInt = __tmp__._0,
					_err:stdgo.Error = __tmp__._1;
				_n = _n + (_nw);
				if (_err != null) {
					return {_0: _n, _1: _err};
				};
			});
		};
		if (_last != (_s.length)) {
			var _nw:GoInt = (0 : GoInt);
			{
				var __tmp__ = _sw.writeString((_s.__slice__(_last) : GoString));
				_nw = __tmp__._0;
				_err = __tmp__._1;
			};
			_n = _n + (_nw);
		};
		return {_0: _n, _1: _err};
	}

	@:keep
	static public function replace(_r:T_byteStringReplacer, _s:GoString):GoString {
		var _newSize:GoInt = (_s.length);
		var _anyChanges:Bool = false;
		if ((_r._toReplace.length * (8 : GoInt)) <= (_s.length)) {
			for (_0 => _x in _r._toReplace) {
				{
					var _c:GoInt = count(_s, _x);
					if (_c != (0 : GoInt)) {
						_newSize = _newSize + (_c * (_r._replacements[_x[(0 : GoInt)]].length - (1 : GoInt)));
						_anyChanges = true;
					};
				};
			};
		} else {
			{
				var _i:GoInt = (0 : GoInt);
				Go.cfor(_i < (_s.length), _i++, {
					var _b:GoUInt8 = _s[_i];
					if (_r._replacements[_b] != null) {
						_newSize = _newSize + (_r._replacements[_b].length - (1 : GoInt));
						_anyChanges = true;
					};
				});
			};
		};
		if (!_anyChanges) {
			return _s;
		};
		var _buf = new Slice<GoUInt8>((_newSize : GoInt).toBasic(), 0, ...[for (i in 0...(_newSize : GoInt).toBasic()) (0 : GoUInt8)]);
		var _j:GoInt = (0 : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _b:GoUInt8 = _s[_i];
				if (_r._replacements[_b] != null) {
					_j = _j + (Go.copySlice((_buf.__slice__(_j) : Slice<GoUInt8>), _r._replacements[_b]));
				} else {
					_buf[_j] = _b;
					_j++;
				};
			});
		};
		return (_buf : GoString);
	}
}

class T_byteStringReplacer_wrapper {
	@:keep
	public var writeString:(stdgo.io.Io.Writer, GoString) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var replace:GoString->GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_byteStringReplacer;
}

@:keep private class T_stringFinder_static_extension {
	/**
		// next returns the index in text of the first occurrence of the pattern. If
		// the pattern is not found, it returns -1.
	**/
	@:keep
	static public function _next(_f:T_stringFinder, _text:GoString):GoInt {
		var _i:GoInt = (_f._pattern.length) - (1 : GoInt);
		while (_i < (_text.length)) {
			var _j:GoInt = (_f._pattern.length) - (1 : GoInt);
			while ((_j >= (0 : GoInt)) && (_text[_i] == _f._pattern[_j])) {
				_i--;
				_j--;
			};
			if (_j < (0:GoInt)) {
				return _i + (1 : GoInt);
			};
			_i = _i + (_max(_f._badCharSkip[_text[_i]], _f._goodSuffixSkip[_j]));
		};
		return (-1 : GoInt);
	}
}

class T_stringFinder_wrapper {
	/**
		// next returns the index in text of the first occurrence of the pattern. If
		// the pattern is not found, it returns -1.
	**/
	@:keep
	public var _next:GoString->GoInt = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_stringFinder;
}

@:keep private class T_appendSliceWriter_static_extension {
	/**
		// WriteString writes to the buffer without string->[]byte->string allocations.
	**/
	@:keep
	static public function writeString(_w:T_appendSliceWriter, _s:GoString):{var _0:GoInt; var _1:Error;} {
		_w = (_w.__append__(..._s.__toArray__()));
		return {_0: (_s.length), _1: (null : stdgo.Error)};
	}

	/**
		// Write writes to the buffer to satisfy io.Writer.
	**/
	@:keep
	static public function write(_w:T_appendSliceWriter, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_w = (_w.__append__(..._p.__toArray__()));
		return {_0: (_p.length), _1: (null : stdgo.Error)};
	}
}

class T_appendSliceWriter_wrapper {
	/**
		// WriteString writes to the buffer without string->[]byte->string allocations.
	**/
	@:keep
	public var writeString:GoString -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	/**
		// Write writes to the buffer to satisfy io.Writer.
	**/
	@:keep
	public var write:Slice<GoByte> -> {
		var _0:GoInt;
		var _1:Error;
	} = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_appendSliceWriter;
}

@:keep private class T_byteReplacer_static_extension {
	@:keep
	static public function writeString(_r:T_byteReplacer, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : stdgo.Error);
		var _bufsize:GoInt = (32768 : GoInt);
		if ((_s.length) < _bufsize) {
			_bufsize = (_s.length);
		};
		var _buf = new Slice<GoUInt8>((_bufsize : GoInt).toBasic(), 0, ...[for (i in 0...(_bufsize : GoInt).toBasic()) (0 : GoUInt8)]);
		while ((_s.length) > (0 : GoInt)) {
			var _ncopy:GoInt = Go.copySlice(_buf, _s);
			_s = (_s.__slice__(_ncopy) : GoString);
			for (_i => _b in (_buf.__slice__(0, _ncopy) : Slice<GoUInt8>)) {
				_buf[_i] = _r[_b];
			};
			var __tmp__ = _w.write((_buf.__slice__(0, _ncopy) : Slice<GoUInt8>)),
				_wn:GoInt = __tmp__._0,
				_err:stdgo.Error = __tmp__._1;
			_n = _n + (_wn);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
		};
		return {_0: _n, _1: (null : stdgo.Error)};
	}

	@:keep
	static public function replace(_r:T_byteReplacer, _s:GoString):GoString {
		var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _b:GoUInt8 = _s[_i];
				if (_r[_b] != _b) {
					if (_buf == null) {
						_buf = (_s : Slice<GoByte>);
					};
					_buf[_i] = _r[_b];
				};
			});
		};
		if (_buf == null) {
			return _s;
		};
		return (_buf : GoString);
	}
}

class T_byteReplacer_wrapper {
	@:keep
	public var writeString:(stdgo.io.Io.Writer, GoString) -> {
		var _0:GoInt;
		var _1:Error;
	} = null;
	@:keep
	public var replace:GoString->GoString = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_byteReplacer;
}

@:keep private class T_asciiSet_static_extension {
	/**
		// contains reports whether c is inside the set.
	**/
	@:keep
	static public function _contains(_as:T_asciiSet, _c:GoByte):Bool {
		return (_as[_c / (32 : GoUInt8)] & ((1 : GoUInt32) << (_c % (32 : GoUInt8)))) != (0 : GoUInt32);
	}
}

class T_asciiSet_wrapper {
	/**
		// contains reports whether c is inside the set.
	**/
	@:keep
	public var _contains:GoByte->Bool = null;

	public function new(__self__)
		this.__self__ = __self__;

	public function __underlying__()
		return Go.toInterface(this);

	var __self__:T_asciiSet;
}
