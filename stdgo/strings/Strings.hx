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

/**
	// Package strings implements simple functions to manipulate UTF-8 encoded strings.
	//
	// For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
private var __go2hxdoc__package:Bool;

private var _asciiSpace:GoArray<GoUInt8> = {
	var s:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) 0]);
	s[9] = (1 : GoUInt8);
	s[10] = (1 : GoUInt8);
	s[11] = (1 : GoUInt8);
	s[12] = (1 : GoUInt8);
	s[13] = (1 : GoUInt8);
	s[32] = (1 : GoUInt8);
	s;
};

/**
	// countCutOff controls the ratio of a string length to a number of replacements
	// at which (*byteStringReplacer).Replace switches algorithms.
	// For strings with higher ration of length to replacements than that value,
	// we call Count, for each replacement from toReplace.
	// For strings, with a lower ratio we use simple loop, because of Count overhead.
	// countCutOff is an empirically determined overhead multiplier.
	// TODO(tocarip) revisit once we have register-based abi/mid-stack inlining.
**/
private final _countCutOff:GoUInt64 = ("8" : GoUInt64);

/**
	// replacer is the interface that a replacement algorithm needs to implement.
**/
private typedef T_replacer = StructType & {
	public function replace(_s:GoString):GoString;
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;};
};

/**
	// A Builder is used to efficiently build a string using Write methods.
	// It minimizes memory copying. The zero value is ready to use.
	// Do not copy a non-zero Builder.
**/
@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) class Builder {
	/**
		// of receiver, to detect copies by value
	**/
	public var _addr:Ref<Builder> = (null : Ref<Builder>);

	public var _buf:Slice<GoUInt8> = (null : Slice<GoUInt8>);

	public function new(?_addr:Ref<Builder>, ?_buf:Slice<GoUInt8>) {
		if (_addr != null)
			this._addr = _addr;
		if (_buf != null)
			this._buf = _buf;
	}

	public function __copy__() {
		return new Builder(_addr, _buf);
	}
}

/**
	// A Reader implements the io.Reader, io.ReaderAt, io.ByteReader, io.ByteScanner,
	// io.RuneReader, io.RuneScanner, io.Seeker, and io.WriterTo interfaces by reading
	// from a string.
	// The zero value for Reader operates like a Reader of an empty string.
**/
@:structInit @:using(stdgo.strings.Strings.Reader_static_extension) class Reader {
	public var _s:GoString = "";

	/**
		// current reading index
	**/
	public var _i:GoInt64 = 0;

	/**
		// index of previous rune; or < 0
	**/
	public var _prevRune:GoInt = 0;

	public function new(?_s:GoString, ?_i:GoInt64, ?_prevRune:GoInt) {
		if (_s != null)
			this._s = _s;
		if (_i != null)
			this._i = _i;
		if (_prevRune != null)
			this._prevRune = _prevRune;
	}

	public function __copy__() {
		return new Reader(_s, _i, _prevRune);
	}
}

/**
	// Replacer replaces a list of strings with replacements.
	// It is safe for concurrent use by multiple goroutines.
**/
@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) class Replacer {
	/**
		// guards buildOnce method
	**/
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

	public function __copy__() {
		return new Replacer(_once, _r, _oldnew);
	}
}

/**
	// trieNode is a node in a lookup trie for prioritized key/value pairs. Keys
	// and values may be empty. For example, the trie containing keys "ax", "ay",
	// "bcbc", "x" and "xy" could have eight nodes:
	//
	//	n0  -
	//	n1  a-
	//	n2  .x+
	//	n3  .y+
	//	n4  b-
	//	n5  .cbc+
	//	n6  x+
	//	n7  .y+
	//
	// n0 is the root node, and its children are n1, n4 and n6; n1's children are
	// n2 and n3; n4's child is n5; n6's child is n7. Nodes n0, n1 and n4 (marked
	// with a trailing "-") are partial keys, and nodes n2, n3, n5, n6 and n7
	// (marked with a trailing "+") are complete keys.
**/
@:structInit @:using(stdgo.strings.Strings.T_trieNode_static_extension) private class T_trieNode {
	/**
		// value is the value of the trie node's key/value pair. It is empty if
		// this node is not a complete key.
	**/
	public var _value:GoString = "";

	/**
		// priority is the priority (higher is more important) of the trie node's
		// key/value pair; keys are not necessarily matched shortest- or longest-
		// first. Priority is positive if this node is a complete key, and zero
		// otherwise. In the example above, positive/zero priorities are marked
		// with a trailing "+" or "-".
	**/
	public var _priority:GoInt = 0;

	/**
		// prefix is the difference in keys between this trie node and the next.
		// In the example above, node n4 has prefix "cbc" and n4's next node is n5.
		// Node n5 has no children and so has zero prefix, next and table fields.
	**/
	public var _prefix:GoString = "";

	public var _next:Ref<T_trieNode> = (null : Ref<T_trieNode>);

	/**
		// table is a lookup table indexed by the next byte in the key, after
		// remapping that byte through genericReplacer.mapping to create a dense
		// index. In the example above, the keys only use 'a', 'b', 'c', 'x' and
		// 'y', which remap to 0, 1, 2, 3 and 4. All other bytes remap to 5, and
		// genericReplacer.tableSize will be 5. Node n0's table will be
		// []*trieNode{ 0:n1, 1:n4, 3:n6 }, where the 0, 1 and 3 are the remapped
		// 'a', 'b' and 'x'.
	**/
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

	public function __copy__() {
		return new T_trieNode(_value, _priority, _prefix, _next, _table);
	}
}

/**
	// genericReplacer is the fully generic algorithm.
	// It's used as a fallback when nothing faster can be used.
**/
@:structInit @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) private class T_genericReplacer {
	public var _root:T_trieNode = ({} : T_trieNode);

	/**
		// tableSize is the size of a trie node's lookup table. It is the number
		// of unique key bytes.
	**/
	public var _tableSize:GoInt = 0;

	/**
		// mapping maps from key bytes to a dense index for trieNode.table.
	**/
	public var _mapping:GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0...256) (0 : GoUInt8)]);

	public function new(?_root:T_trieNode, ?_tableSize:GoInt, ?_mapping:GoArray<GoUInt8>) {
		if (_root != null)
			this._root = _root;
		if (_tableSize != null)
			this._tableSize = _tableSize;
		if (_mapping != null)
			this._mapping = _mapping;
	}

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

	public function __copy__() {
		return new T_stringWriter(_w);
	}
}

/**
	// singleStringReplacer is the implementation that's used when there is only
	// one string to replace (and that string has more than one byte).
**/
@:structInit @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) private class T_singleStringReplacer {
	public var _finder:Ref<T_stringFinder> = (null : Ref<T_stringFinder>);

	/**
		// value is the new string that replaces that pattern when it's found.
	**/
	public var _value:GoString = "";

	public function new(?_finder:Ref<T_stringFinder>, ?_value:GoString) {
		if (_finder != null)
			this._finder = _finder;
		if (_value != null)
			this._value = _value;
	}

	public function __copy__() {
		return new T_singleStringReplacer(_finder, _value);
	}
}

/**
	// byteStringReplacer is the implementation that's used when all the
	// "old" values are single ASCII bytes but the "new" values vary in size.
**/
@:structInit @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) private class T_byteStringReplacer {
	/**
		// replacements contains replacement byte slices indexed by old byte.
		// A nil []byte means that the old byte should not be replaced.
	**/
	public var _replacements:GoArray<Slice<GoUInt8>> = new GoArray<Slice<GoUInt8>>(...[for (i in 0...256) (null : Slice<GoUInt8>)]);

	/**
		// toReplace keeps a list of bytes to replace. Depending on length of toReplace
		// and length of target string it may be faster to use Count, or a plain loop.
		// We store single byte as a string, because Count takes a string.
	**/
	public var _toReplace:Slice<GoString> = (null : Slice<GoString>);

	public function new(?_replacements:GoArray<Slice<GoUInt8>>, ?_toReplace:Slice<GoString>) {
		if (_replacements != null)
			this._replacements = _replacements;
		if (_toReplace != null)
			this._toReplace = _toReplace;
	}

	public function __copy__() {
		return new T_byteStringReplacer(_replacements, _toReplace);
	}
}

/**
	// stringFinder efficiently finds strings in a source text. It's implemented
	// using the Boyer-Moore string search algorithm:
	// https://en.wikipedia.org/wiki/Boyer-Moore_string_search_algorithm
	// https://www.cs.utexas.edu/~moore/publications/fstrpos.pdf (note: this aged
	// document uses 1-based indexing)
**/
@:structInit @:using(stdgo.strings.Strings.T_stringFinder_static_extension) private class T_stringFinder {
	/**
		// pattern is the string that we are searching for in the text.
	**/
	public var _pattern:GoString = "";

	/**
		// badCharSkip[b] contains the distance between the last byte of pattern
		// and the rightmost occurrence of b in pattern. If b is not in pattern,
		// badCharSkip[b] is len(pattern).
		//
		// Whenever a mismatch is found with byte b in the text, we can safely
		// shift the matching frame at least badCharSkip[b] until the next time
		// the matching char could be in alignment.
	**/
	public var _badCharSkip:GoArray<GoInt> = new GoArray<GoInt>(...[for (i in 0...256) (0 : GoInt)]);

	/**
		// goodSuffixSkip[i] defines how far we can shift the matching frame given
		// that the suffix pattern[i+1:] matches, but the byte pattern[i] does
		// not. There are two cases to consider:
		//
		// 1. The matched suffix occurs elsewhere in pattern (with a different
		// byte preceding it that we might possibly match). In this case, we can
		// shift the matching frame to align with the next suffix chunk. For
		// example, the pattern "mississi" has the suffix "issi" next occurring
		// (in right-to-left order) at index 1, so goodSuffixSkip[3] ==
		// shift+len(suffix) == 3+4 == 7.
		//
		// 2. If the matched suffix does not occur elsewhere in pattern, then the
		// matching frame may share part of its prefix with the end of the
		// matching suffix. In this case, goodSuffixSkip[i] will contain how far
		// to shift the frame to align this portion of the prefix to the
		// suffix. For example, in the pattern "abcxxxabc", when the first
		// mismatch from the back is found to be in position 3, the matching
		// suffix "xxabc" is not found elsewhere in the pattern. However, its
		// rightmost "abc" (at position 6) is a prefix of the whole pattern, so
		// goodSuffixSkip[3] == shift+len(suffix) == 6+5 == 11.
	**/
	public var _goodSuffixSkip:Slice<GoInt> = (null : Slice<GoInt>);

	public function new(?_pattern:GoString, ?_badCharSkip:GoArray<GoInt>, ?_goodSuffixSkip:Slice<GoInt>) {
		if (_pattern != null)
			this._pattern = _pattern;
		if (_badCharSkip != null)
			this._badCharSkip = _badCharSkip;
		if (_goodSuffixSkip != null)
			this._goodSuffixSkip = _goodSuffixSkip;
	}

	public function __copy__() {
		return new T_stringFinder(_pattern, _badCharSkip, _goodSuffixSkip);
	}
}

@:named @:using(stdgo.strings.Strings.T_appendSliceWriter_static_extension) private typedef T_appendSliceWriter = Slice<GoUInt8>;

/**
	// byteReplacer is the implementation that's used when all the "old"
	// and "new" values are single ASCII bytes.
	// The array contains replacement bytes indexed by old byte.
**/
@:named @:using(stdgo.strings.Strings.T_byteReplacer_static_extension) private typedef T_byteReplacer = GoArray<GoUInt8>;

/**
	// asciiSet is a 32-byte value, where each bit represents the presence of a
	// given ASCII character in the set. The 128-bits of the lower 16 bytes,
	// starting with the least-significant bit of the lowest word to the
	// most-significant bit of the highest word, map to the full range of all
	// 128 ASCII characters. The 128-bits of the upper 16 bytes will be zeroed,
	// ensuring that any non-ASCII character will be reported as not in the set.
	// This allocates a total of 32 bytes even though the upper half
	// is unused to avoid bounds checks in asciiSet.contains.
**/
@:named @:using(stdgo.strings.Strings.T_asciiSet_static_extension) private typedef T_asciiSet = GoArray<GoUInt32>;

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
	var _x:GoUIntptr = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : GoUIntptr);
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
	if ((_s.length) == ((0 : GoInt))) {
		return Go.str();
	};
	var _b = new Slice<GoUInt8>((_s.length : GoInt).toBasic(), 0, ...[for (i in 0...(_s.length : GoInt).toBasic()) (0 : GoUInt8)]);
	Go.copySlice(_b, _s);
	return ((Go.toInterface((_b : Ref<Slice<GoUInt8>>)) : stdgo.unsafe.Unsafe.UnsafePointer)
		.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>).value;
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
	if (_a == (_b)) {
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
function newReader(_s:GoString):Ref<Reader> {
	return ((new Reader(_s, ("0" : GoInt64), (-1 : GoInt)) : Reader) : Ref<Reader>);
}

/**
	// NewReplacer returns a new Replacer from a list of old, new string
	// pairs. Replacements are performed in the order they appear in the
	// target string, without overlapping matches. The old string
	// comparisons are done in argument order.
	//
	// NewReplacer panics if given an odd number of arguments.
**/
function newReplacer(_oldnew:haxe.Rest<GoString>):Ref<Replacer> {
	var _oldnew = new Slice<GoString>(0, 0, ..._oldnew);
	if ((_oldnew.length) % (2 : GoInt) == ((1 : GoInt))) {
		throw Go.toInterface(Go.str("strings.NewReplacer: odd argument count"));
	};
	return (({_oldnew: ((null : Slice<GoString>).__append__(..._oldnew.__toArray__()))} : Replacer) : Ref<Replacer>);
}

function _makeGenericReplacer(_oldnew:Slice<GoString>):Ref<T_genericReplacer> {
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
		if (_b == ((0 : GoUInt8))) {
			_r._mapping[_i] = (_r._tableSize : GoByte);
		} else {
			_r._mapping[_i] = _index;
			_index++;
		};
	};
	_r._root._table = new Slice<Ref<T_trieNode>>((_r._tableSize : GoInt).toBasic(), 0,
		...[for (i in 0...(_r._tableSize : GoInt).toBasic()) (null : Ref<T_trieNode>)]);
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
		{value: (Go.typeAssert((Go.toInterface(_w) : stdgo.io.Io.StringWriter)) : stdgo.io.Io.StringWriter), ok: true};
	} catch (_) {
		{value: (null : stdgo.io.Io.StringWriter), ok: false};
	}, _sw = __tmp__.value, _ok = __tmp__.ok;
	if (!_ok) {
		_sw = Go.asInterface((new T_stringWriter(_w) : T_stringWriter));
	};
	return _sw;
}

function _makeSingleStringReplacer(_pattern:GoString, _value:GoString):Ref<T_singleStringReplacer> {
	return (({_finder: _makeStringFinder(_pattern), _value: _value} : T_singleStringReplacer) : Ref<T_singleStringReplacer>);
}

function _makeStringFinder(_pattern:GoString):Ref<T_stringFinder> {
	var _f = (({_pattern: _pattern, _goodSuffixSkip: new Slice<GoInt>((_pattern.length : GoInt).toBasic(), 0,
		...[for (i in 0...(_pattern.length : GoInt).toBasic()) (0 : GoInt)])} : T_stringFinder) : Ref<T_stringFinder>);
	var _last:GoInt = (_pattern.length) - (1 : GoInt);
	for (_i in 0..._f._badCharSkip.length.toBasic()) {
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
			if (_pattern[_i - _lenSuffix] != (_pattern[_last - _lenSuffix])) {
				_f._goodSuffixSkip[_last - _lenSuffix] = (_lenSuffix + _last) - _i;
			};
		});
	};
	return _f;
}

function _longestCommonSuffix(_a:GoString, _b:GoString):GoInt {
	var _i:GoInt = (0 : GoInt);
	Go.cfor((_i < _a.length) && (_i < _b.length), _i++, {
		if (_a[(_a.length - (1 : GoInt)) - _i] != (_b[(_b.length - (1 : GoInt)) - _i])) {
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
			if (_ch == ((65533 : GoInt32))) {
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
	if ((_substr.length) == ((0 : GoInt))) {
		return stdgo.unicode.utf8.Utf8.runeCountInString(_s) + (1 : GoInt);
	};
	if ((_substr.length) == ((1 : GoInt))) {
		return stdgo.internal.bytealg.Bytealg.countString(_s, _substr[(0 : GoInt)]);
	};
	var _n:GoInt = (0 : GoInt);
	while (true) {
		var _i:GoInt = index(_s, _substr);
		if (_i == ((-1 : GoInt))) {
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
	if (_n == ((0 : GoInt))) {
		return (_s.length);
	} else if (_n == ((1 : GoInt))) {
		return lastIndexByte(_s, _substr[(0 : GoInt)]);
	} else if (_n == ((_s.length))) {
		if (_substr == (_s)) {
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
			_h = (_h * (("16777619" : GoUInt32) : GoUInt32)) + (_s[_i] : GoUInt32);
		});
	};
	if ((_h == _hashss) && ((_s.__slice__(_last) : GoString) == _substr)) {
		return _last;
	};
	{
		var _i:GoInt = _last - (1 : GoInt);
		Go.cfor(_i >= (0 : GoInt), _i--, {
			_h = _h * (("16777619" : GoUInt32));
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
	} else if (_r == ((65533 : GoInt32))) {
		for (_i => _r in _s) {
			if (_r == ((65533 : GoInt32))) {
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
	if (_chars == (Go.str())) {
		return (-1 : GoInt);
	};
	if ((_chars.length) == ((1 : GoInt))) {
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
	if (_chars == (Go.str())) {
		return (-1 : GoInt);
	};
	if ((_s.length) == ((1 : GoInt))) {
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
	if ((_chars.length) == ((1 : GoInt))) {
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
				if (_rc == (_r)) {
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
			if (_s[_i] == (_c)) {
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
	if (_n == ((0 : GoInt))) {
		return (null : Slice<GoString>);
	};
	if (_sep == (Go.str())) {
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
		if (_asciiSpace[_s[_i]] == ((0 : GoUInt8))) {
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

/**
	// A span is used to record a slice of s of the form s[start:end].
	// The start index is inclusive and the end index is exclusive.
**/
@:structInit private class T_span_fieldsFunc_0 {
	public var _start:GoInt = 0;
	public var _end:GoInt = 0;

	public function new(?_start:GoInt, ?_end:GoInt) {
		if (_start != null)
			this._start = _start;
		if (_end != null)
			this._end = _end;
	}

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
				_spans = _spans.__appendref__((new T_span_fieldsFunc_0(_start, _end) : T_span_fieldsFunc_0));
				_start = (-1 ^ _start);
			};
		} else {
			if (_start < (0:GoInt)) {
				_start = _end;
			};
		};
	};
	if (_start >= (0 : GoInt)) {
		_spans = _spans.__appendref__((new T_span_fieldsFunc_0(_start, (_s.length)) : T_span_fieldsFunc_0));
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
	if ((_elems.length) == ((0 : GoInt))) {
		return Go.str();
	} else if ((_elems.length) == ((1 : GoInt))) {
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
		if (_c == ((65533 : GoInt32))) {
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
	if (_b.cap() == ((0 : GoInt))) {
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
	if (_count == ((0 : GoInt))) {
		return Go.str();
	};
	if (_count < (0:GoInt)) {
		throw Go.toInterface(Go.str("strings: negative Repeat count"));
	} else if ((_s.length) * _count / _count != ((_s.length))) {
		throw Go.toInterface(Go.str("strings: Repeat count causes overflow"));
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
	var _0:Bool = true,
		_1:Bool = false,
		_hasLower:Bool = _1,
		_isASCII:Bool = _0;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= (128 : GoUInt8)) {
				_isASCII = false;
				break;
			};
			_hasLower = _hasLower || (((97 : GoUInt8) <= _c) && (_c <= (122 : GoUInt8)));
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
				if (((97 : GoUInt8) <= _c) && (_c <= (122 : GoUInt8))) {
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
	var _0:Bool = true,
		_1:Bool = false,
		_hasUpper:Bool = _1,
		_isASCII:Bool = _0;
	{
		var _i:GoInt = (0 : GoInt);
		Go.cfor(_i < (_s.length), _i++, {
			var _c:GoUInt8 = _s[_i];
			if (_c >= (128 : GoUInt8)) {
				_isASCII = false;
				break;
			};
			_hasUpper = _hasUpper || (((65 : GoUInt8) <= _c) && (_c <= (90 : GoUInt8)));
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
				if (((65 : GoUInt8) <= _c) && (_c <= (90 : GoUInt8))) {
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
		if (_c != ((65533 : GoInt32))) {
			continue;
		};
		var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : GoString)),
			_0:GoInt32 = __tmp__._0,
			_wid:GoInt = __tmp__._1;
		if (_wid == ((1 : GoInt))) {
			_b.grow((_s.length) + (_replacement.length));
			_b.writeString((_s.__slice__(0, _i) : GoString));
			_s = (_s.__slice__(_i) : GoString);
			break;
		};
	};
	if (_b.cap() == ((0 : GoInt))) {
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
			if (_wid == ((1 : GoInt))) {
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
		if (((48 : GoInt32) <= _r) && (_r <= (57 : GoInt32))) {
			return false;
		} else if (((97 : GoInt32) <= _r) && (_r <= (122 : GoInt32))) {
			return false;
		} else if (((65 : GoInt32) <= _r) && (_r <= (90 : GoInt32))) {
			return false;
		} else if (_r == ((95 : GoInt32))) {
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
	var _prev:GoInt32 = (32 : GoInt32);
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
	if (_i == ((-1 : GoInt))) {
		return Go.str();
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
		if (_f(_r) == (_truth)) {
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
			if (_f(_r) == (_truth)) {
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
			_as[_c / (32 : GoUInt8)] = _as[_c / (32 : GoUInt8)] | ((("1" : GoUInt32) : GoUInt32) << (_c % (32 : GoUInt8)));
		});
	};
	return {_0: (_as == null ? null : _as.__copy__()), _1: true};
}

/**
	// Trim returns a slice of the string s with all leading and
	// trailing Unicode code points contained in cutset removed.
**/
function trim(_s:GoString, _cutset:GoString):GoString {
	if ((_s == Go.str()) || (_cutset == Go.str())) {
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
			return _trimLeftASCII(_trimRightASCII(_s, (_as : Ref<T_asciiSet>)), (_as : Ref<T_asciiSet>));
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
	if ((_s == Go.str()) || (_cutset == Go.str())) {
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
			return _trimLeftASCII(_s, (_as : Ref<T_asciiSet>));
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

function _trimLeftASCII(_s:GoString, _as:Ref<T_asciiSet>):GoString {
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
		var _0:GoInt32 = (_s[(0 : GoInt)] : GoRune),
			_1:GoInt = (1 : GoInt),
			_n:GoInt = _1,
			_r:GoInt32 = _0;
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
	if ((_s == Go.str()) || (_cutset == Go.str())) {
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
			return _trimRightASCII(_s, (_as : Ref<T_asciiSet>));
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

function _trimRightASCII(_s:GoString, _as:Ref<T_asciiSet>):GoString {
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
		var _0:GoInt32 = (_s[(_s.length) - (1 : GoInt)] : GoRune),
			_1:GoInt = (1 : GoInt),
			_n:GoInt = _1,
			_r:GoInt32 = _0;
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
		if (_asciiSpace[_c] == ((0 : GoUInt8))) {
			break;
		};
	});
	var _stop:GoInt = (_s.length);
	Go.cfor(_stop > _start, _stop--, {
		var _c:GoUInt8 = _s[_stop - (1 : GoInt)];
		if (_c >= (128 : GoUInt8)) {
			return trimRightFunc((_s.__slice__(_start, _stop) : GoString), stdgo.unicode.Unicode.isSpace);
		};
		if (_asciiSpace[_c] == ((0 : GoUInt8))) {
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
		if (_m == ((0 : GoInt))) {
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
			if ((_old.length) == ((0 : GoInt))) {
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
	while ((_s != Go.str()) && (_t != Go.str())) {
		var _0:GoRune = (0 : GoInt32),
			_1:GoRune = (0 : GoInt32),
			_tr:GoRune = _1,
			_sr:GoRune = _0;
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
		if (_tr == (_sr)) {
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
			if ((((65 : GoInt32) <= _sr) && (_sr <= (90 : GoInt32))) && (_tr == (_sr + (97 : GoInt32) - (65 : GoInt32)))) {
				continue;
			};
			return false;
		};
		var _r:GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
		while ((_r != _sr) && (_r < _tr)) {
			_r = stdgo.unicode.Unicode.simpleFold(_r);
		};
		if (_r == (_tr)) {
			continue;
		};
		return false;
	};
	return _s == (_t);
}

/**
	// Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
**/
function index(_s:GoString, _substr:GoString):GoInt {
	var _n:GoInt = (_substr.length);
	if (_n == ((0 : GoInt))) {
		return (0 : GoInt);
	} else if (_n == ((1 : GoInt))) {
		return indexByte(_s, _substr[(0 : GoInt)]);
	} else if (_n == ((_s.length))) {
		if (_substr == (_s)) {
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
			if (_s[_i] != (_c0)) {
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
		if (_s[_i] != (_c0)) {
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
		if ((_fails >= ((4 : GoInt) + (_i >> (("4" : GoUInt64) : GoUInt64)))) && (_i < _t)) {
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
	return {_0: _s, _1: Go.str(), _2: false};
}

class Builder_asInterface {
	/**
		// WriteString appends the contents of s to b's buffer.
		// It returns the length of s and a nil error.
	**/
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	/**
		// WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
		// It returns the length of r and a nil error.
	**/
	@:keep
	public function writeRune(_r:GoRune):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeRune(_r);

	/**
		// WriteByte appends the byte c to b's buffer.
		// The returned error is always nil.
	**/
	@:keep
	public function writeByte(_c:GoByte):Error
		return __self__.value.writeByte(_c);

	/**
		// Write appends the contents of p to b's buffer.
		// Write always returns len(p), nil.
	**/
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	/**
		// Grow grows b's capacity, if necessary, to guarantee space for
		// another n bytes. After Grow(n), at least n bytes can be written to b
		// without another allocation. If n is negative, Grow panics.
	**/
	@:keep
	public function grow(_n:GoInt):Void
		__self__.value.grow(_n);

	/**
		// grow copies the buffer to a new, larger buffer so that there are at least n
		// bytes of capacity beyond len(b.buf).
	**/
	@:keep
	public function _grow(_n:GoInt):Void
		__self__.value._grow(_n);

	/**
		// Reset resets the Builder to be empty.
	**/
	@:keep
	public function reset():Void
		__self__.value.reset();

	/**
		// Cap returns the capacity of the builder's underlying byte slice. It is the
		// total space allocated for the string being built and includes any bytes
		// already written.
	**/
	@:keep
	public function cap():GoInt
		return __self__.value.cap();

	/**
		// Len returns the number of accumulated bytes; b.Len() == len(b.String()).
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	/**
		// String returns the accumulated string.
	**/
	@:keep
	public function string():GoString
		return __self__.value.string();

	@:keep
	public function _copyCheck():Void
		__self__.value._copyCheck();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Builder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.Builder_asInterface) class Builder_static_extension {
	/**
		// WriteString appends the contents of s to b's buffer.
		// It returns the length of s and a nil error.
	**/
	@:keep
	static public function writeString(_b:Ref<Builder>, _s:GoString):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		_b._buf = _b._buf.__appendref__(..._s.__toArray__());
		return {_0: (_s.length), _1: (null : Error)};
	}

	/**
		// WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
		// It returns the length of r and a nil error.
	**/
	@:keep
	static public function writeRune(_b:Ref<Builder>, _r:GoRune):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		if ((_r : GoUInt32) < ("128" : GoUInt32)) {
			_b._buf = _b._buf.__appendref__((_r : GoByte));
			return {_0: (1 : GoInt), _1: (null : Error)};
		};
		var _l:GoInt = (_b._buf.length);
		if ((_b._buf.capacity - _l) < (4 : GoInt)) {
			_b._grow((4 : GoInt));
		};
		var _n:GoInt = stdgo.unicode.utf8.Utf8.encodeRune((_b._buf.__slice__(_l, _l + (4 : GoInt)) : Slice<GoUInt8>), _r);
		_b._buf = (_b._buf.__slice__(0, _l + _n) : Slice<GoUInt8>);
		return {_0: _n, _1: (null : Error)};
	}

	/**
		// WriteByte appends the byte c to b's buffer.
		// The returned error is always nil.
	**/
	@:keep
	static public function writeByte(_b:Ref<Builder>, _c:GoByte):Error {
		_b._copyCheck();
		_b._buf = _b._buf.__appendref__(_c);
		return (null : Error);
	}

	/**
		// Write appends the contents of p to b's buffer.
		// Write always returns len(p), nil.
	**/
	@:keep
	static public function write(_b:Ref<Builder>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_b._copyCheck();
		_b._buf = _b._buf.__appendref__(..._p.__toArray__());
		return {_0: (_p.length), _1: (null : Error)};
	}

	/**
		// Grow grows b's capacity, if necessary, to guarantee space for
		// another n bytes. After Grow(n), at least n bytes can be written to b
		// without another allocation. If n is negative, Grow panics.
	**/
	@:keep
	static public function grow(_b:Ref<Builder>, _n:GoInt):Void {
		_b._copyCheck();
		if (_n < (0:GoInt)) {
			throw Go.toInterface(Go.str("strings.Builder.Grow: negative count"));
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
	static public function _grow(_b:Ref<Builder>, _n:GoInt):Void {
		var _buf = new Slice<GoUInt8>((_b._buf.length : GoInt).toBasic(), ((2 : GoInt) * _b._buf.capacity) + _n,
			...[for (i in 0...(_b._buf.length : GoInt).toBasic()) (0 : GoUInt8)]);
		Go.copySlice(_buf, _b._buf);
		_b._buf = _buf;
	}

	/**
		// Reset resets the Builder to be empty.
	**/
	@:keep
	static public function reset(_b:Ref<Builder>):Void {
		_b._addr = null;
		_b._buf = (null : Slice<GoUInt8>);
	}

	/**
		// Cap returns the capacity of the builder's underlying byte slice. It is the
		// total space allocated for the string being built and includes any bytes
		// already written.
	**/
	@:keep
	static public function cap(_b:Ref<Builder>):GoInt {
		return _b._buf.capacity;
	}

	/**
		// Len returns the number of accumulated bytes; b.Len() == len(b.String()).
	**/
	@:keep
	static public function len(_b:Ref<Builder>):GoInt {
		return (_b._buf.length);
	}

	/**
		// String returns the accumulated string.
	**/
	@:keep
	static public function string(_b:Ref<Builder>):GoString {
		return ((Go.toInterface((_b._buf : Ref<Slice<GoUInt8>>)) : stdgo.unsafe.Unsafe.UnsafePointer)
			.__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType(stdgo.internal.reflect.Reflect.GoType.basic(string_kind))) : Pointer<GoString>)
			.value;
	}

	@:keep
	static public function _copyCheck(_b:Ref<Builder>):Void
		_b._addr = _b;
}

class Reader_asInterface {
	/**
		// Reset resets the Reader to be reading from s.
	**/
	@:keep
	public function reset(_s:GoString):Void
		__self__.value.reset(_s);

	/**
		// WriteTo implements the io.WriterTo interface.
	**/
	@:keep
	public function writeTo(_w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;}
		return __self__.value.writeTo(_w);

	/**
		// Seek implements the io.Seeker interface.
	**/
	@:keep
	public function seek(_offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;}
		return __self__.value.seek(_offset, _whence);

	/**
		// UnreadRune implements the io.RuneScanner interface.
	**/
	@:keep
	public function unreadRune():Error
		return __self__.value.unreadRune();

	/**
		// ReadRune implements the io.RuneReader interface.
	**/
	@:keep
	public function readRune():{var _0:GoRune; var _1:GoInt; var _2:Error;}
		return __self__.value.readRune();

	/**
		// UnreadByte implements the io.ByteScanner interface.
	**/
	@:keep
	public function unreadByte():Error
		return __self__.value.unreadByte();

	/**
		// ReadByte implements the io.ByteReader interface.
	**/
	@:keep
	public function readByte():{var _0:GoByte; var _1:Error;}
		return __self__.value.readByte();

	/**
		// ReadAt implements the io.ReaderAt interface.
	**/
	@:keep
	public function readAt(_b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;}
		return __self__.value.readAt(_b, _off);

	/**
		// Read implements the io.Reader interface.
	**/
	@:keep
	public function read(_b:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.read(_b);

	/**
		// Size returns the original length of the underlying string.
		// Size is the number of bytes available for reading via ReadAt.
		// The returned value is always the same and is not affected by calls
		// to any other method.
	**/
	@:keep
	public function size():GoInt64
		return __self__.value.size();

	/**
		// Len returns the number of bytes of the unread portion of the
		// string.
	**/
	@:keep
	public function len():GoInt
		return __self__.value.len();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Reader>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.Reader_asInterface) class Reader_static_extension {
	/**
		// Reset resets the Reader to be reading from s.
	**/
	@:keep
	static public function reset(_r:Ref<Reader>, _s:GoString):Void {
		{
			var __tmp__ = (new Reader(_s, ("0" : GoInt64), (-1 : GoInt)) : Reader);
			_r._s = __tmp__._s;
			_r._i = __tmp__._i;
			_r._prevRune = __tmp__._prevRune;
		};
	}

	/**
		// WriteTo implements the io.WriterTo interface.
	**/
	@:keep
	static public function writeTo(_r:Ref<Reader>, _w:stdgo.io.Io.Writer):{var _0:GoInt64; var _1:Error;} {
		var _n:GoInt64 = (0 : GoInt64), _err:Error = (null : Error);
		_r._prevRune = (-1 : GoInt);
		if (_r._i >= (_r._s.length : GoInt64)) {
			return {_0: ("0" : GoInt64), _1: (null : Error)};
		};
		var _s:GoString = (_r._s.__slice__(_r._i) : GoString);
		var __tmp__ = stdgo.io.Io.writeString(_w, _s),
			_m:GoInt = __tmp__._0,
			_err:Error = __tmp__._1;
		if (_m > (_s.length)) {
			throw Go.toInterface(Go.str("strings.Reader.WriteTo: invalid WriteString count"));
		};
		_r._i = _r._i + ((_m : GoInt64));
		_n = (_m : GoInt64);
		if ((_m != (_s.length)) && (_err == null)) {
			_err = stdgo.io.Io.errShortWrite;
		};
		return {_0: _n, _1: _err};
	}

	/**
		// Seek implements the io.Seeker interface.
	**/
	@:keep
	static public function seek(_r:Ref<Reader>, _offset:GoInt64, _whence:GoInt):{var _0:GoInt64; var _1:Error;} {
		_r._prevRune = (-1 : GoInt);
		var _abs:GoInt64 = (0 : GoInt64);
		if (_whence == ((0 : GoInt))) {
			_abs = _offset;
		} else if (_whence == ((1 : GoInt))) {
			_abs = _r._i + _offset;
		} else if (_whence == ((2 : GoInt))) {
			_abs = (_r._s.length : GoInt64) + _offset;
		} else {
			return {_0: ("0" : GoInt64), _1: stdgo.errors.Errors.new_(Go.str("strings.Reader.Seek: invalid whence"))};
		};
		if (_abs < ("0":GoInt64)) {
			return {_0: ("0" : GoInt64), _1: stdgo.errors.Errors.new_(Go.str("strings.Reader.Seek: negative position"))};
		};
		_r._i = _abs;
		return {_0: _abs, _1: (null : Error)};
	}

	/**
		// UnreadRune implements the io.RuneScanner interface.
	**/
	@:keep
	static public function unreadRune(_r:Ref<Reader>):Error {
		if (_r._i <= ("0" : GoInt64)) {
			return stdgo.errors.Errors.new_(Go.str("strings.Reader.UnreadRune: at beginning of string"));
		};
		if (_r._prevRune < (0:GoInt)) {
			return stdgo.errors.Errors.new_(Go.str("strings.Reader.UnreadRune: previous operation was not ReadRune"));
		};
		_r._i = (_r._prevRune : GoInt64);
		_r._prevRune = (-1 : GoInt);
		return (null : Error);
	}

	/**
		// ReadRune implements the io.RuneReader interface.
	**/
	@:keep
	static public function readRune(_r:Ref<Reader>):{var _0:GoRune; var _1:GoInt; var _2:Error;} {
		var _ch:GoRune = (0 : GoInt32),
			_size:GoInt = (0 : GoInt),
			_err:Error = (null : Error);
		if (_r._i >= (_r._s.length : GoInt64)) {
			_r._prevRune = (-1 : GoInt);
			return {_0: (0 : GoInt32), _1: (0 : GoInt), _2: stdgo.io.Io.eof};
		};
		_r._prevRune = (_r._i : GoInt);
		{
			var _c:GoUInt8 = _r._s[_r._i];
			if (_c < (128:GoUInt8)) {
				_r._i++;
				return {_0: (_c : GoRune), _1: (1 : GoInt), _2: (null : Error)};
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
	static public function unreadByte(_r:Ref<Reader>):Error {
		if (_r._i <= ("0" : GoInt64)) {
			return stdgo.errors.Errors.new_(Go.str("strings.Reader.UnreadByte: at beginning of string"));
		};
		_r._prevRune = (-1 : GoInt);
		_r._i--;
		return (null : Error);
	}

	/**
		// ReadByte implements the io.ByteReader interface.
	**/
	@:keep
	static public function readByte(_r:Ref<Reader>):{var _0:GoByte; var _1:Error;} {
		_r._prevRune = (-1 : GoInt);
		if (_r._i >= (_r._s.length : GoInt64)) {
			return {_0: (0 : GoUInt8), _1: stdgo.io.Io.eof};
		};
		var _b:GoUInt8 = _r._s[_r._i];
		_r._i++;
		return {_0: _b, _1: (null : Error)};
	}

	/**
		// ReadAt implements the io.ReaderAt interface.
	**/
	@:keep
	static public function readAt(_r:Ref<Reader>, _b:Slice<GoByte>, _off:GoInt64):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		if (_off < ("0":GoInt64)) {
			return {_0: (0 : GoInt), _1: stdgo.errors.Errors.new_(Go.str("strings.Reader.ReadAt: negative offset"))};
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
	static public function read(_r:Ref<Reader>, _b:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
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
	static public function size(_r:Ref<Reader>):GoInt64 {
		return (_r._s.length : GoInt64);
	}

	/**
		// Len returns the number of bytes of the unread portion of the
		// string.
	**/
	@:keep
	static public function len(_r:Ref<Reader>):GoInt {
		if (_r._i >= (_r._s.length : GoInt64)) {
			return (0 : GoInt);
		};
		return ((_r._s.length : GoInt64) - _r._i : GoInt);
	}
}

class Replacer_asInterface {
	/**
		// WriteString writes s to w with all replacements performed.
	**/
	@:keep
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_w, _s);

	/**
		// Replace returns a copy of s with all replacements performed.
	**/
	@:keep
	public function replace(_s:GoString):GoString
		return __self__.value.replace(_s);

	@:keep
	public function _build():T_replacer
		return __self__.value._build();

	@:keep
	public function _buildOnce():Void
		__self__.value._buildOnce();

	@:keep
	public function printTrie():GoString
		return __self__.value.printTrie();

	@:keep
	public function replacer():AnyInterface
		return __self__.value.replacer();

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<Replacer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.Replacer_asInterface) class Replacer_static_extension {
	/**
		// WriteString writes s to w with all replacements performed.
	**/
	@:keep
	static public function writeString(_r:Ref<Replacer>, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		_r._once.do_(_r._buildOnce);
		return _r._r.writeString(_w, _s);
	}

	/**
		// Replace returns a copy of s with all replacements performed.
	**/
	@:keep
	static public function replace(_r:Ref<Replacer>, _s:GoString):GoString {
		_r._once.do_(_r._buildOnce);
		return _r._r.replace(_s);
	}

	@:keep
	static public function _build(_b:Ref<Replacer>):T_replacer {
		var _oldnew = _b._oldnew;
		if ((_oldnew.length == (2 : GoInt)) && (_oldnew[(0 : GoInt)].length > (1 : GoInt))) {
			return Go.asInterface(_makeSingleStringReplacer(_oldnew[(0 : GoInt)], _oldnew[(1 : GoInt)]));
		};
		var _allNewBytes:Bool = true;
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : GoInt)), {
				if ((_oldnew[_i].length) != ((1 : GoInt))) {
					return Go.asInterface(_makeGenericReplacer(_oldnew));
				};
				if ((_oldnew[_i + (1 : GoInt)].length) != ((1 : GoInt))) {
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
			return Go.asInterface((_r : Ref<T_byteReplacer>));
		};
		var _r:T_byteStringReplacer = ({_toReplace: new Slice<GoString>((0 : GoInt).toBasic(), (_oldnew.length) / (2 : GoInt),
			...[for (i in 0...(0 : GoInt).toBasic()) ("" : GoString)])} : T_byteStringReplacer);
		{
			var _i:GoInt = (_oldnew.length) - (2 : GoInt);
			Go.cfor(_i >= (0 : GoInt), _i = _i - ((2 : GoInt)), {
				var _o:GoUInt8 = _oldnew[_i][(0 : GoInt)];
				var _n:GoString = _oldnew[_i + (1 : GoInt)];
				if (_r._replacements[_o] == null) {
					_r._toReplace = _r._toReplace.__appendref__(((new Slice<GoUInt8>(0, 0, _o) : Slice<GoUInt8>) : GoString));
				};
				_r._replacements[_o] = (_n : Slice<GoByte>);
			});
		};
		return Go.asInterface((_r : Ref<T_byteStringReplacer>));
	}

	@:keep
	static public function _buildOnce(_r:Ref<Replacer>):Void {
		_r._r = _r._build();
		_r._oldnew = (null : Slice<GoString>);
	}

	@:keep
	static public function printTrie(_r:Ref<Replacer>):GoString {
		_r._once.do_(_r._buildOnce);
		var _gen = (Go.typeAssert((Go.toInterface(_r._r) : Ref<T_genericReplacer>)) : Ref<T_genericReplacer>);
		return _gen._printNode((_gen._root : Ref<T_trieNode>), (0 : GoInt));
	}

	@:keep
	static public function replacer(_r:Ref<Replacer>):AnyInterface {
		_r._once.do_(_r._buildOnce);
		return Go.toInterface(_r._r);
	}
}

private class T_trieNode_asInterface {
	@:keep
	public function _add(_key:GoString, _val:GoString, _priority:GoInt, _r:Ref<T_genericReplacer>):Void
		__self__.value._add(_key, _val, _priority, _r);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_trieNode>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
	@:keep
	static public function _add(_t:Ref<T_trieNode>, _key:GoString, _val:GoString, _priority:GoInt, _r:Ref<T_genericReplacer>):Void {
		if (_key == (Go.str())) {
			if (_t._priority == ((0 : GoInt))) {
				_t._value = _val;
				_t._priority = _priority;
			};
			return;
		};
		if (_t._prefix != (Go.str())) {
			var _n:GoInt = (0 : GoInt);
			Go.cfor((_n < _t._prefix.length) && (_n < _key.length), _n++, {
				if (_t._prefix[_n] != (_key[_n])) {
					break;
				};
			});
			if (_n == ((_t._prefix.length))) {
				_t._next._add((_key.__slice__(_n) : GoString), _val, _priority, _r);
			} else if (_n == ((0 : GoInt))) {
				var _prefixNode:Ref<T_trieNode> = (null : Ref<T_trieNode>);
				if ((_t._prefix.length) == ((1 : GoInt))) {
					_prefixNode = _t._next;
				} else {
					_prefixNode = (({_prefix: (_t._prefix.__slice__((1 : GoInt)) : GoString), _next: _t._next} : T_trieNode) : Ref<T_trieNode>);
				};
				var _keyNode = ({} : T_trieNode);
				_t._table = new Slice<Ref<T_trieNode>>((_r._tableSize : GoInt).toBasic(), 0,
					...[for (i in 0...(_r._tableSize : GoInt).toBasic()) (null : Ref<T_trieNode>)]);
				_t._table[_r._mapping[_t._prefix[(0 : GoInt)]]] = _prefixNode;
				_t._table[_r._mapping[_key[(0 : GoInt)]]] = _keyNode;
				_t._prefix = Go.str();
				_t._next = null;
				_keyNode._add((_key.__slice__((1 : GoInt)) : GoString), _val, _priority, _r);
			} else {
				var _next = (({_prefix: (_t._prefix.__slice__(_n) : GoString), _next: _t._next} : T_trieNode) : Ref<T_trieNode>);
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
			_t._next._add(Go.str(), _val, _priority, _r);
		};
	}
}

private class T_genericReplacer_asInterface {
	@:keep
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_w, _s);

	@:keep
	public function replace(_s:GoString):GoString
		return __self__.value.replace(_s);

	@:keep
	public function _lookup(_s:GoString, _ignoreRoot:Bool):{var _0:GoString; var _1:GoInt; var _2:Bool;}
		return __self__.value._lookup(_s, _ignoreRoot);

	@:keep
	public function _printNode(_t:Ref<T_trieNode>, _depth:GoInt):GoString
		return __self__.value._printNode(_t, _depth);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_genericReplacer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_genericReplacer_asInterface) class T_genericReplacer_static_extension {
	@:keep
	static public function writeString(_r:Ref<T_genericReplacer>, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _0:GoInt = (0 : GoInt),
			_1:GoInt = (0 : GoInt),
			_wn:GoInt = _1,
			_last:GoInt = _0;
		var _prevMatchEmpty:Bool = false;
		{
			var _i:GoInt = (0 : GoInt);
			while (_i <= (_s.length)) {
				if ((_i != (_s.length)) && (_r._root._priority == (0 : GoInt))) {
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
		if (_last != ((_s.length))) {
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
	static public function replace(_r:Ref<T_genericReplacer>, _s:GoString):GoString {
		var _buf:T_appendSliceWriter = new T_appendSliceWriter((0 : GoInt).toBasic(), (_s.length), ...[for (i in 0...(0 : GoInt).toBasic()) (0 : GoUInt8)]);
		_r.writeString(Go.asInterface((_buf : Ref<T_appendSliceWriter>)), _s);
		return (_buf : GoString);
	}

	@:keep
	static public function _lookup(_r:Ref<T_genericReplacer>, _s:GoString, _ignoreRoot:Bool):{var _0:GoString; var _1:GoInt; var _2:Bool;} {
		var _val:GoString = ("" : GoString),
			_keylen:GoInt = (0 : GoInt),
			_found:Bool = false;
		var _bestPriority:GoInt = (0 : GoInt);
		var _node = (_r._root : Ref<T_trieNode>);
		var _n:GoInt = (0 : GoInt);
		while (_node != null) {
			if ((_node._priority > _bestPriority) && !(_ignoreRoot && (_node == (_r._root : Ref<T_trieNode>)))) {
				_bestPriority = _node._priority;
				_val = _node._value;
				_keylen = _n;
				_found = true;
			};
			if (_s == (Go.str())) {
				break;
			};
			if (_node._table != null) {
				var _index:GoUInt8 = _r._mapping[_s[(0 : GoInt)]];
				if ((_index : GoInt) == (_r._tableSize)) {
					break;
				};
				_node = _node._table[_index];
				_s = (_s.__slice__((1 : GoInt)) : GoString);
				_n++;
			} else if ((_node._prefix != Go.str()) && hasPrefix(_s, _node._prefix)) {
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
	static public function _printNode(_r:Ref<T_genericReplacer>, _t:Ref<T_trieNode>, _depth:GoInt):GoString {
		var _s:GoString = ("" : GoString);
		if (_t._priority > (0 : GoInt)) {
			_s = _s + (Go.str("+"));
		} else {
			_s = _s + (Go.str("-"));
		};
		_s = _s + (Go.str("\n"));
		if (_t._prefix != (Go.str())) {
			_s = _s + (repeat(Go.str("."), _depth) + _t._prefix);
			_s = _s + (_r._printNode(_t._next, _depth + (_t._prefix.length)));
		} else if (_t._table != null) {
			for (_b => _m in _r._mapping) {
				if (((_m : GoInt) != _r._tableSize) && (_t._table[_m] != null)) {
					_s = _s + (repeat(Go.str("."), _depth) + ((new Slice<GoUInt8>(0, 0, (_b : GoByte)) : Slice<GoUInt8>) : GoString));
					_s = _s + (_r._printNode(_t._table[_m], _depth + (1 : GoInt)));
				};
			};
		};
		return _s;
	}
}

private class T_stringWriter_asInterface {
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_stringWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_stringWriter_asInterface) class T_stringWriter_static_extension {
	@:keep
	static public function writeString(_w:T_stringWriter, _s:GoString):{var _0:GoInt; var _1:Error;} {
		return _w._w.write((_s : Slice<GoByte>));
	}
}

private class T_singleStringReplacer_asInterface {
	@:keep
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_w, _s);

	@:keep
	public function replace(_s:GoString):GoString
		return __self__.value.replace(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_singleStringReplacer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_singleStringReplacer_asInterface) class T_singleStringReplacer_static_extension {
	@:keep
	static public function writeString(_r:Ref<T_singleStringReplacer>, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _0:GoInt = (0 : GoInt),
			_1:GoInt = (0 : GoInt),
			_wn:GoInt = _1,
			_i:GoInt = _0;
		while (true) {
			var _match:GoInt = _r._finder._next((_s.__slice__(_i) : GoString));
			if (_match == ((-1 : GoInt))) {
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
	static public function replace(_r:Ref<T_singleStringReplacer>, _s:GoString):GoString {
		var _buf:Builder = ({} : Builder);
		var _0:GoInt = (0 : GoInt),
			_1:Bool = false,
			_matched:Bool = _1,
			_i:GoInt = _0;
		while (true) {
			var _match:GoInt = _r._finder._next((_s.__slice__(_i) : GoString));
			if (_match == ((-1 : GoInt))) {
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

private class T_byteStringReplacer_asInterface {
	@:keep
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_w, _s);

	@:keep
	public function replace(_s:GoString):GoString
		return __self__.value.replace(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_byteStringReplacer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_byteStringReplacer_asInterface) class T_byteStringReplacer_static_extension {
	@:keep
	static public function writeString(_r:Ref<T_byteStringReplacer>, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
		var _last:GoInt = (0 : GoInt);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _b:GoUInt8 = _s[_i];
				if (_r._replacements[_b] == null) {
					continue;
				};
				if (_last != (_i)) {
					var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : GoString)),
						_nw:GoInt = __tmp__._0,
						_err:Error = __tmp__._1;
					_n = _n + (_nw);
					if (_err != null) {
						return {_0: _n, _1: _err};
					};
				};
				_last = _i + (1 : GoInt);
				var __tmp__ = _w.write(_r._replacements[_b]),
					_nw:GoInt = __tmp__._0,
					_err:Error = __tmp__._1;
				_n = _n + (_nw);
				if (_err != null) {
					return {_0: _n, _1: _err};
				};
			});
		};
		if (_last != ((_s.length))) {
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
	static public function replace(_r:Ref<T_byteStringReplacer>, _s:GoString):GoString {
		var _newSize:GoInt = (_s.length);
		var _anyChanges:Bool = false;
		if ((_r._toReplace.length * (8 : GoInt)) <= (_s.length)) {
			for (_0 => _x in _r._toReplace) {
				{
					var _c:GoInt = count(_s, _x);
					if (_c != ((0 : GoInt))) {
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

private class T_stringFinder_asInterface {
	/**
		// next returns the index in text of the first occurrence of the pattern. If
		// the pattern is not found, it returns -1.
	**/
	@:keep
	public function _next(_text:GoString):GoInt
		return __self__.value._next(_text);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_stringFinder>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
	/**
		// next returns the index in text of the first occurrence of the pattern. If
		// the pattern is not found, it returns -1.
	**/
	@:keep
	static public function _next(_f:Ref<T_stringFinder>, _text:GoString):GoInt {
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

private class T_appendSliceWriter_asInterface {
	/**
		// WriteString writes to the buffer without string->[]byte->string allocations.
	**/
	@:keep
	public function writeString(_s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_s);

	/**
		// Write writes to the buffer to satisfy io.Writer.
	**/
	@:keep
	public function write(_p:Slice<GoByte>):{var _0:GoInt; var _1:Error;}
		return __self__.value.write(_p);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_appendSliceWriter>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_appendSliceWriter_asInterface) class T_appendSliceWriter_static_extension {
	/**
		// WriteString writes to the buffer without string->[]byte->string allocations.
	**/
	@:keep
	static public function writeString(_w:Ref<T_appendSliceWriter>, _s:GoString):{var _0:GoInt; var _1:Error;} {
		_w = _w.__appendref__(..._s.__toArray__());
		return {_0: (_s.length), _1: (null : Error)};
	}

	/**
		// Write writes to the buffer to satisfy io.Writer.
	**/
	@:keep
	static public function write(_w:Ref<T_appendSliceWriter>, _p:Slice<GoByte>):{var _0:GoInt; var _1:Error;} {
		_w = _w.__appendref__(..._p.__toArray__());
		return {_0: (_p.length), _1: (null : Error)};
	}
}

private class T_byteReplacer_asInterface {
	@:keep
	public function writeString(_w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;}
		return __self__.value.writeString(_w, _s);

	@:keep
	public function replace(_s:GoString):GoString
		return __self__.value.replace(_s);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_byteReplacer>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_byteReplacer_asInterface) class T_byteReplacer_static_extension {
	@:keep
	static public function writeString(_r:Ref<T_byteReplacer>, _w:stdgo.io.Io.Writer, _s:GoString):{var _0:GoInt; var _1:Error;} {
		var _n:GoInt = (0 : GoInt), _err:Error = (null : Error);
		var _bufsize:GoInt = (32768 : GoInt);
		if ((_s.length) < _bufsize) {
			_bufsize = (_s.length);
		};
		var _buf = new Slice<GoUInt8>((_bufsize : GoInt).toBasic(), 0, ...[for (i in 0...(_bufsize : GoInt).toBasic()) (0 : GoUInt8)]);
		while ((_s.length) > (0 : GoInt)) {
			var _ncopy:GoInt = Go.copySlice(_buf, _s);
			_s = (_s.__slice__(_ncopy) : GoString);
			for (_i => _b in (_buf.__slice__(0, _ncopy) : Slice<GoUInt8>)) {
				_buf[_i] = _r[@:invalid_index 0];
			};
			var __tmp__ = _w.write((_buf.__slice__(0, _ncopy) : Slice<GoUInt8>)),
				_wn:GoInt = __tmp__._0,
				_err:Error = __tmp__._1;
			_n = _n + (_wn);
			if (_err != null) {
				return {_0: _n, _1: _err};
			};
		};
		return {_0: _n, _1: (null : Error)};
	}

	@:keep
	static public function replace(_r:Ref<T_byteReplacer>, _s:GoString):GoString {
		var _buf:Slice<GoByte> = (null : Slice<GoUInt8>);
		{
			var _i:GoInt = (0 : GoInt);
			Go.cfor(_i < (_s.length), _i++, {
				var _b:GoUInt8 = _s[_i];
				if (_r[@:invalid_index 0] != (_b)) {
					if (_buf == null) {
						_buf = (_s : Slice<GoByte>);
					};
					_buf[_i] = _r[@:invalid_index 0];
				};
			});
		};
		if (_buf == null) {
			return _s;
		};
		return (_buf : GoString);
	}
}

private class T_asciiSet_asInterface {
	/**
		// contains reports whether c is inside the set.
	**/
	@:keep
	public function _contains(_c:GoByte):Bool
		return __self__.value._contains(_c);

	public function new(__self__, __type__) {
		this.__self__ = __self__;
		this.__type__ = __type__;
	}

	public function __underlying__()
		return new AnyInterface((__type__.kind() == stdgo.reflect.Reflect.ptr
			&& !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic),
			__type__);

	var __self__:Pointer<T_asciiSet>;
	var __type__:stdgo.internal.reflect.Reflect._Type;
}

@:keep @:allow(stdgo.strings.Strings.T_asciiSet_asInterface) class T_asciiSet_static_extension {
	/**
		// contains reports whether c is inside the set.
	**/
	@:keep
	static public function _contains(_as:Ref<T_asciiSet>, _c:GoByte):Bool {
		return (_as[@:invalid_index 0] & ((("1" : GoUInt32) : GoUInt32) << (_c % (32 : GoUInt8)))) != (("0" : GoUInt32));
	}
}
