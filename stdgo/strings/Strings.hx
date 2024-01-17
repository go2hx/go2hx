package stdgo.strings;
/**
    // Package strings implements simple functions to manipulate UTF-8 encoded strings.
    //
    // For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
private var __go2hxdoc__package : Bool;
/**
    
    
    
**/
var _asciiSpace : stdgo.GoArray<stdgo.GoUInt8> = {
        var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 256) 0]);
        s[9] = (1 : stdgo.GoUInt8);
        s[10] = (1 : stdgo.GoUInt8);
        s[11] = (1 : stdgo.GoUInt8);
        s[12] = (1 : stdgo.GoUInt8);
        s[13] = (1 : stdgo.GoUInt8);
        s[32] = (1 : stdgo.GoUInt8);
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
final _countCutOff : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
/**
    
    
    
**/
final _maxInt : stdgo.GoInt = ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt);
/**
    // replacer is the interface that a replacement algorithm needs to implement.
    
    
**/
typedef T_replacer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
/**
    // A Builder is used to efficiently build a string using Write methods.
    // It minimizes memory copying. The zero value is ready to use.
    // Do not copy a non-zero Builder.
    
    
**/
@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) class Builder {
    public var _addr : stdgo.Ref<stdgo.strings.Strings.Builder> = (null : stdgo.Ref<stdgo.strings.Strings.Builder>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_addr:stdgo.Ref<stdgo.strings.Strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_addr != null) this._addr = _addr;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
    public var _s : stdgo.GoString = "";
    public var _i : stdgo.GoInt64 = 0;
    public var _prevRune : stdgo.GoInt = 0;
    public function new(?_s:stdgo.GoString, ?_i:stdgo.GoInt64, ?_prevRune:stdgo.GoInt) {
        if (_s != null) this._s = _s;
        if (_i != null) this._i = _i;
        if (_prevRune != null) this._prevRune = _prevRune;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Reader(_s, _i, _prevRune);
    }
}
/**
    // Replacer replaces a list of strings with replacements.
    // It is safe for concurrent use by multiple goroutines.
    
    
**/
@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) class Replacer {
    public var _once : stdgo.sync.Sync.Once = ({} : stdgo.sync.Sync.Once);
    public var _r : stdgo.strings.Strings.T_replacer = (null : stdgo.strings.Strings.T_replacer);
    public var _oldnew : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_once:stdgo.sync.Sync.Once, ?_r:stdgo.strings.Strings.T_replacer, ?_oldnew:stdgo.Slice<stdgo.GoString>) {
        if (_once != null) this._once = _once;
        if (_r != null) this._r = _r;
        if (_oldnew != null) this._oldnew = _oldnew;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
@:structInit @:private @:using(stdgo.strings.Strings.T_trieNode_static_extension) class T_trieNode {
    /**
        // value is the value of the trie node's key/value pair. It is empty if
        // this node is not a complete key.
    **/
    public var _value : stdgo.GoString = "";
    /**
        // priority is the priority (higher is more important) of the trie node's
        // key/value pair; keys are not necessarily matched shortest- or longest-
        // first. Priority is positive if this node is a complete key, and zero
        // otherwise. In the example above, positive/zero priorities are marked
        // with a trailing "+" or "-".
    **/
    public var _priority : stdgo.GoInt = 0;
    /**
        // prefix is the difference in keys between this trie node and the next.
        // In the example above, node n4 has prefix "cbc" and n4's next node is n5.
        // Node n5 has no children and so has zero prefix, next and table fields.
    **/
    public var _prefix : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo.strings.Strings.T_trieNode> = (null : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
    /**
        // table is a lookup table indexed by the next byte in the key, after
        // remapping that byte through genericReplacer.mapping to create a dense
        // index. In the example above, the keys only use 'a', 'b', 'c', 'x' and
        // 'y', which remap to 0, 1, 2, 3 and 4. All other bytes remap to 5, and
        // genericReplacer.tableSize will be 5. Node n0's table will be
        // []*trieNode{ 0:n1, 1:n4, 3:n6 }, where the 0, 1 and 3 are the remapped
        // 'a', 'b' and 'x'.
    **/
    public var _table : stdgo.Slice<stdgo.Ref<stdgo.strings.Strings.T_trieNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo.strings.Strings.T_trieNode>>);
    public function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo.strings.Strings.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo.strings.Strings.T_trieNode>>) {
        if (_value != null) this._value = _value;
        if (_priority != null) this._priority = _priority;
        if (_prefix != null) this._prefix = _prefix;
        if (_next != null) this._next = _next;
        if (_table != null) this._table = _table;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_trieNode(_value, _priority, _prefix, _next, _table);
    }
}
/**
    // genericReplacer is the fully generic algorithm.
    // It's used as a fallback when nothing faster can be used.
    
    
**/
@:structInit @:private @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) class T_genericReplacer {
    public var _root : stdgo.strings.Strings.T_trieNode = ({} : stdgo.strings.Strings.T_trieNode);
    /**
        // tableSize is the size of a trie node's lookup table. It is the number
        // of unique key bytes.
    **/
    public var _tableSize : stdgo.GoInt = 0;
    /**
        // mapping maps from key bytes to a dense index for trieNode.table.
    **/
    public var _mapping : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public function new(?_root:stdgo.strings.Strings.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_root != null) this._root = _root;
        if (_tableSize != null) this._tableSize = _tableSize;
        if (_mapping != null) this._mapping = _mapping;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_genericReplacer(_root, _tableSize, _mapping);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(stdgo.strings.Strings.T_stringWriter_static_extension) class T_stringWriter {
    public var _w : stdgo.io.Io.Writer = (null : stdgo.io.Io.Writer);
    public function new(?_w:stdgo.io.Io.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringWriter(_w);
    }
}
/**
    // singleStringReplacer is the implementation that's used when there is only
    // one string to replace (and that string has more than one byte).
    
    
**/
@:structInit @:private @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) class T_singleStringReplacer {
    public var _finder : stdgo.Ref<stdgo.strings.Strings.T_stringFinder> = (null : stdgo.Ref<stdgo.strings.Strings.T_stringFinder>);
    /**
        // value is the new string that replaces that pattern when it's found.
    **/
    public var _value : stdgo.GoString = "";
    public function new(?_finder:stdgo.Ref<stdgo.strings.Strings.T_stringFinder>, ?_value:stdgo.GoString) {
        if (_finder != null) this._finder = _finder;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_singleStringReplacer(_finder, _value);
    }
}
/**
    // byteStringReplacer is the implementation that's used when all the
    // "old" values are single ASCII bytes but the "new" values vary in size.
    
    
**/
@:structInit @:private @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) class T_byteStringReplacer {
    /**
        // replacements contains replacement byte slices indexed by old byte.
        // A nil []byte means that the old byte should not be replaced.
    **/
    public var _replacements : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(...[for (i in 0 ... 256) (null : stdgo.Slice<stdgo.GoUInt8>)]);
    /**
        // toReplace keeps a list of bytes to replace. Depending on length of toReplace
        // and length of target string it may be faster to use Count, or a plain loop.
        // We store single byte as a string, because Count takes a string.
    **/
    public var _toReplace : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_replacements:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_toReplace:stdgo.Slice<stdgo.GoString>) {
        if (_replacements != null) this._replacements = _replacements;
        if (_toReplace != null) this._toReplace = _toReplace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
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
@:structInit @:private @:using(stdgo.strings.Strings.T_stringFinder_static_extension) class T_stringFinder {
    /**
        // pattern is the string that we are searching for in the text.
    **/
    public var _pattern : stdgo.GoString = "";
    /**
        // badCharSkip[b] contains the distance between the last byte of pattern
        // and the rightmost occurrence of b in pattern. If b is not in pattern,
        // badCharSkip[b] is len(pattern).
        //
        // Whenever a mismatch is found with byte b in the text, we can safely
        // shift the matching frame at least badCharSkip[b] until the next time
        // the matching char could be in alignment.
    **/
    public var _badCharSkip : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(...[for (i in 0 ... 256) (0 : stdgo.GoInt)]);
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
    public var _goodSuffixSkip : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_pattern:stdgo.GoString, ?_badCharSkip:stdgo.GoArray<stdgo.GoInt>, ?_goodSuffixSkip:stdgo.Slice<stdgo.GoInt>) {
        if (_pattern != null) this._pattern = _pattern;
        if (_badCharSkip != null) this._badCharSkip = _badCharSkip;
        if (_goodSuffixSkip != null) this._goodSuffixSkip = _goodSuffixSkip;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringFinder(_pattern, _badCharSkip, _goodSuffixSkip);
    }
}
@:named @:using(stdgo.strings.Strings.T_appendSliceWriter_static_extension) typedef T_appendSliceWriter = stdgo.Slice<stdgo.GoUInt8>;
/**
    // byteReplacer is the implementation that's used when all the "old"
    // and "new" values are single ASCII bytes.
    // The array contains replacement bytes indexed by old byte.
**/
@:named @:using(stdgo.strings.Strings.T_byteReplacer_static_extension) typedef T_byteReplacer = stdgo.GoArray<stdgo.GoUInt8>;
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
@:named @:using(stdgo.strings.Strings.T_asciiSet_static_extension) typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
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
        var _x:stdgo.GoUIntptr = (_p.__convert__(stdgo.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        return (stdgo.Go.toInterface((_x ^ (0 : stdgo.GoUIntptr))) : stdgo.unsafe.Unsafe.UnsafePointer);
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
function clone(_s:stdgo.GoString):stdgo.GoString return _s;
/**
    // Compare returns an integer comparing two strings lexicographically.
    // The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
    //
    // Compare is included only for symmetry with package bytes.
    // It is usually clearer and always faster to use the built-in
    // string comparison operators ==, <, >, and so on.
**/
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == (_b)) {
            return (0 : stdgo.GoInt);
        };
        if (_a < _b) {
            return (-1 : stdgo.GoInt);
        };
        return (1 : stdgo.GoInt);
    }
function stringFind(_pattern:stdgo.GoString, _text:stdgo.GoString):stdgo.GoInt {
        return _makeStringFinder(_pattern?.__copy__())._next(_text?.__copy__());
    }
function dumpTables(_pattern:stdgo.GoString):{ var _0 : stdgo.Slice<stdgo.GoInt>; var _1 : stdgo.Slice<stdgo.GoInt>; } {
        var _finder = _makeStringFinder(_pattern?.__copy__());
        return { _0 : (_finder._badCharSkip.__slice__(0) : stdgo.Slice<stdgo.GoInt>), _1 : _finder._goodSuffixSkip };
    }
/**
    // NewReader returns a new Reader reading from s.
    // It is similar to bytes.NewBufferString but more efficient and non-writable.
**/
function newReader(_s:stdgo.GoString):stdgo.Ref<Reader> {
        return (stdgo.Go.setRef((new stdgo.strings.Strings.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo.strings.Strings.Reader)) : stdgo.Ref<stdgo.strings.Strings.Reader>);
    }
/**
    // NewReplacer returns a new Replacer from a list of old, new string
    // pairs. Replacements are performed in the order they appear in the
    // target string, without overlapping matches. The old string
    // comparisons are done in argument order.
    //
    // NewReplacer panics if given an odd number of arguments.
**/
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        if ((_oldnew.length) % (2 : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString));
        };
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(..._oldnew.__toArray__())) } : stdgo.strings.Strings.Replacer)) : stdgo.Ref<stdgo.strings.Strings.Replacer>);
    }
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<T_genericReplacer> {
        var _r = (stdgo.Go.setRef(({} : stdgo.strings.Strings.T_genericReplacer)) : stdgo.Ref<stdgo.strings.Strings.T_genericReplacer>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : stdgo.GoInt)), {
                var _key:stdgo.GoString = _oldnew[(_i : stdgo.GoInt)]?.__copy__();
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(_j < (_key.length), _j++, {
                        _r._mapping[(_key[(_j : stdgo.GoInt)] : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
            });
        };
        for (__0 => _b in _r._mapping) {
            _r._tableSize = _r._tableSize + ((_b : stdgo.GoInt));
        };
        var _index:stdgo.GoByte = (0 : stdgo.GoUInt8);
        for (_i => _b in _r._mapping) {
            if (_b == ((0 : stdgo.GoUInt8))) {
                _r._mapping[(_i : stdgo.GoInt)] = (_r._tableSize : stdgo.GoByte);
            } else {
                _r._mapping[(_i : stdgo.GoInt)] = _index;
                _index++;
            };
        };
        _r._root._table = new stdgo.Slice<stdgo.Ref<stdgo.strings.Strings.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : stdgo.GoInt)), {
                _r._root._add(_oldnew[(_i : stdgo.GoInt)]?.__copy__(), _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), (_oldnew.length) - _i, _r);
            });
        };
        return _r;
    }
function _getStringWriter(_w:stdgo.io.Io.Writer):stdgo.io.Io.StringWriter {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo.io.Io.StringWriter)) : stdgo.io.Io.StringWriter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo.io.Io.StringWriter), _1 : false };
        }, _sw = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _sw = stdgo.Go.asInterface((new stdgo.strings.Strings.T_stringWriter(_w) : stdgo.strings.Strings.T_stringWriter));
        };
        return _sw;
    }
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<T_singleStringReplacer> {
        return (stdgo.Go.setRef(({ _finder : _makeStringFinder(_pattern?.__copy__()), _value : _value?.__copy__() } : stdgo.strings.Strings.T_singleStringReplacer)) : stdgo.Ref<stdgo.strings.Strings.T_singleStringReplacer>);
    }
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<T_stringFinder> {
        var _f = (stdgo.Go.setRef(({ _pattern : _pattern?.__copy__(), _goodSuffixSkip : new stdgo.Slice<stdgo.GoInt>((_pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() } : stdgo.strings.Strings.T_stringFinder)) : stdgo.Ref<stdgo.strings.Strings.T_stringFinder>);
        var _last:stdgo.GoInt = (_pattern.length) - (1 : stdgo.GoInt);
        for (_i => _ in _f._badCharSkip) {
            _f._badCharSkip[(_i : stdgo.GoInt)] = (_pattern.length);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _last, _i++, {
                _f._badCharSkip[(_pattern[(_i : stdgo.GoInt)] : stdgo.GoInt)] = _last - _i;
            });
        };
        var _lastPrefix:stdgo.GoInt = _last;
        {
            var _i:stdgo.GoInt = _last;
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                if (hasPrefix(_pattern?.__copy__(), (_pattern.__slice__(_i + (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                    _lastPrefix = _i + (1 : stdgo.GoInt);
                };
                _f._goodSuffixSkip[(_i : stdgo.GoInt)] = (_lastPrefix + _last) - _i;
            });
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _last, _i++, {
                var _lenSuffix:stdgo.GoInt = _longestCommonSuffix(_pattern?.__copy__(), (_pattern.__slice__((1 : stdgo.GoInt), _i + (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_pattern[(_i - _lenSuffix : stdgo.GoInt)] != (_pattern[(_last - _lenSuffix : stdgo.GoInt)])) {
                    _f._goodSuffixSkip[(_last - _lenSuffix : stdgo.GoInt)] = (_lenSuffix + _last) - _i;
                };
            });
        };
        return _f;
    }
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_i < _a.length) && (_i < _b.length), _i++, {
            if (_a[((_a.length - (1 : stdgo.GoInt)) - _i : stdgo.GoInt)] != (_b[((_b.length - (1 : stdgo.GoInt)) - _i : stdgo.GoInt)])) {
                break;
            };
        });
        return _i;
    }
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if (_a > _b) {
            return _a;
        };
        return _b;
    }
/**
    // explode splits s into a slice of UTF-8 strings,
    // one string per Unicode character up to a maximum of n (n < 0 means no limit).
    // Invalid UTF-8 bytes are sliced individually.
**/
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _l:stdgo.GoInt = stdgo.unicode.utf8.Utf8.runeCountInString(_s?.__copy__());
        if ((_n < (0 : stdgo.GoInt)) || (_n > _l)) {
            _n = _l;
        };
        var _a = new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__();
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_n - (1 : stdgo.GoInt)), _i++, {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, _size) : stdgo.GoString)?.__copy__();
                _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
            });
        };
        if (_n > (0 : stdgo.GoInt)) {
            _a[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _s?.__copy__();
        };
        return _a;
    }
/**
    // Count counts the number of non-overlapping instances of substr in s.
    // If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
**/
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        if ((_substr.length) == ((0 : stdgo.GoInt))) {
            return stdgo.unicode.utf8.Utf8.runeCountInString(_s?.__copy__()) + (1 : stdgo.GoInt);
        };
        if ((_substr.length) == ((1 : stdgo.GoInt))) {
            return stdgo.internal.bytealg.Bytealg.countString(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var _i:stdgo.GoInt = index(_s?.__copy__(), _substr?.__copy__());
            if (_i == ((-1 : stdgo.GoInt))) {
                return _n;
            };
            _n++;
            _s = (_s.__slice__(_i + (_substr.length)) : stdgo.GoString)?.__copy__();
        };
    }
/**
    // Contains reports whether substr is within s.
**/
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool {
        return index(_s?.__copy__(), _substr?.__copy__()) >= (0 : stdgo.GoInt);
    }
/**
    // ContainsAny reports whether any Unicode code points in chars are within s.
**/
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool {
        return indexAny(_s?.__copy__(), _chars?.__copy__()) >= (0 : stdgo.GoInt);
    }
/**
    // ContainsRune reports whether the Unicode code point r is within s.
**/
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool {
        return indexRune(_s?.__copy__(), _r) >= (0 : stdgo.GoInt);
    }
/**
    // ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
**/
function containsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Bool {
        return indexFunc(_s?.__copy__(), _f) >= (0 : stdgo.GoInt);
    }
/**
    // LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
**/
function lastIndex(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n:stdgo.GoInt = (_substr.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return (_s.length);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return lastIndexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (_substr == (_s)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if (_n > (_s.length)) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo.internal.bytealg.Bytealg.hashStrRev(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last:stdgo.GoInt = (_s.length) - _n;
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i:stdgo.GoInt = (_s.length) - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= _last, _i--, {
                _h = (_h * (16777619u32 : stdgo.GoUInt32)) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32);
            });
        };
        if ((_h == _hashss) && ((_s.__slice__(_last) : stdgo.GoString) == _substr)) {
            return _last;
        };
        {
            var _i:stdgo.GoInt = _last - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                _h = _h * ((16777619u32 : stdgo.GoUInt32));
                _h = _h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32));
                _h = _h - (_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32));
                if ((_h == _hashss) && ((_s.__slice__(_i, _i + _n) : stdgo.GoString) == _substr)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
**/
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        return stdgo.internal.bytealg.Bytealg.indexByteString(_s?.__copy__(), _c);
    }
/**
    // IndexRune returns the index of the first instance of the Unicode code point
    // r, or -1 if rune is not present in s.
    // If r is utf8.RuneError, it returns the first instance of any
    // invalid UTF-8 byte sequence.
**/
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt {
        if (((0 : stdgo.GoInt32) <= _r) && (_r < (128 : stdgo.GoInt32))) {
            return indexByte(_s?.__copy__(), (_r : stdgo.GoByte));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            for (_i => _r in _s) {
                if (_r == ((65533 : stdgo.GoInt32))) {
                    return _i;
                };
            };
            return (-1 : stdgo.GoInt);
        } else if (!stdgo.unicode.utf8.Utf8.validRune(_r)) {
            return (-1 : stdgo.GoInt);
        } else {
            return index(_s?.__copy__(), (_r : stdgo.GoString)?.__copy__());
        };
    }
/**
    // IndexAny returns the index of the first instance of any Unicode code point
    // from chars in s, or -1 if no Unicode code point from chars is present in s.
**/
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r:stdgo.GoInt32 = (_chars[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if (_r >= (128 : stdgo.GoInt32)) {
                _r = (65533 : stdgo.GoInt32);
            };
            return indexRune(_s?.__copy__(), _r);
        };
        if ((_s.length) > (8 : stdgo.GoInt)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo.strings.Strings.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor(_i < (_s.length), _i++, {
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                        });
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        for (_i => _c in _s) {
            if (indexRune(_chars?.__copy__(), _c) >= (0 : stdgo.GoInt)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // LastIndexAny returns the index of the last instance of any Unicode code
    // point from chars in s, or -1 if no Unicode code point from chars is
    // present in s.
**/
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _rc:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if (_rc >= (128 : stdgo.GoInt32)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            if (indexRune(_chars?.__copy__(), _rc) >= (0 : stdgo.GoInt)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if ((_s.length) > (8 : stdgo.GoInt)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo.strings.Strings.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:stdgo.GoInt = (_s.length) - (1 : stdgo.GoInt);
                        stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                            if (_as._contains(_s[(_i : stdgo.GoInt)])) {
                                return _i;
                            };
                        });
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _rc:stdgo.GoInt32 = (_chars[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if (_rc >= (128 : stdgo.GoInt32)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            {
                var _i:stdgo.GoInt = (_s.length);
                while (_i > (0 : stdgo.GoInt)) {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = _i - (_size);
                    if (_rc == (_r)) {
                        return _i;
                    };
                };
            };
            return (-1 : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (_s.length);
            while (_i > (0 : stdgo.GoInt)) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = _i - (_size);
                if (indexRune(_chars?.__copy__(), _r) >= (0 : stdgo.GoInt)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
**/
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = (_s.length) - (1 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i--, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // Generic split: splits after each instance of sep,
    // including sepSave bytes of sep in the subarrays.
**/
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (_sep == (stdgo.Go.str())) {
            return _explode(_s?.__copy__(), _n);
        };
        if (_n < (0 : stdgo.GoInt)) {
            _n = count(_s?.__copy__(), _sep?.__copy__()) + (1 : stdgo.GoInt);
        };
        if (_n > (_s.length + (1 : stdgo.GoInt))) {
            _n = (_s.length) + (1 : stdgo.GoInt);
        };
        var _a = new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__();
        _n--;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_i < _n) {
            var _m:stdgo.GoInt = index(_s?.__copy__(), _sep?.__copy__());
            if (_m < (0 : stdgo.GoInt)) {
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, _m + _sepSave) : stdgo.GoString)?.__copy__();
            _s = (_s.__slice__(_m + (_sep.length)) : stdgo.GoString)?.__copy__();
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s?.__copy__();
        return (_a.__slice__(0, _i + (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
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
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (0 : stdgo.GoInt), _n);
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
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), _n);
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
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
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
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), (-1 : stdgo.GoInt));
    }
/**
    // Fields splits the string s around each instance of one or more consecutive white space
    // characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
    // empty slice if s contains only white space.
**/
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _wasSpace:stdgo.GoInt = (1 : stdgo.GoInt);
        var _setBits:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _r:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                _setBits = _setBits | (_r);
                var _isSpace:stdgo.GoInt = (_asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
                _n = _n + (_wasSpace & (-1 ^ _isSpace));
                _wasSpace = _isSpace;
            });
        };
        if (_setBits >= (128 : stdgo.GoUInt8)) {
            return fieldsFunc(_s?.__copy__(), stdgo.unicode.Unicode.isSpace);
        };
        var _a = new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__();
        var _na:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldStart:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_i < _s.length) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8))) {
            _i++;
        };
        _fieldStart = _i;
        while (_i < (_s.length)) {
            if (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                _i++;
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i) : stdgo.GoString)?.__copy__();
            _na++;
            _i++;
            while ((_i < _s.length) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8))) {
                _i++;
            };
            _fieldStart = _i;
        };
        if (_fieldStart < (_s.length)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart) : stdgo.GoString)?.__copy__();
        };
        return _a;
    }
/**
    // A span is used to record a slice of s of the form s[start:end].
    // The start index is inclusive and the end index is exclusive.
    
    
**/
@:structInit class T_fieldsFunc_1___localname___span {
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldsFunc_1___localname___span(_start, _end);
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
function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.Slice<stdgo.GoString> {
        {};
        var _spans = new stdgo.Slice<stdgo.strings.Strings.T_fieldsFunc_1___localname___span>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo.strings.Strings.T_fieldsFunc_1___localname___span)]);
        var _start:stdgo.GoInt = (-1 : stdgo.GoInt);
        for (_end => _rune in _s) {
            if (_f(_rune)) {
                if (_start >= (0 : stdgo.GoInt)) {
                    _spans = (_spans.__append__((new stdgo.strings.Strings.T_fieldsFunc_1___localname___span(_start, _end) : stdgo.strings.Strings.T_fieldsFunc_1___localname___span)));
                    _start = (-1 ^ _start);
                };
            } else {
                if (_start < (0 : stdgo.GoInt)) {
                    _start = _end;
                };
            };
        };
        if (_start >= (0 : stdgo.GoInt)) {
            _spans = (_spans.__append__((new stdgo.strings.Strings.T_fieldsFunc_1___localname___span(_start, (_s.length)) : stdgo.strings.Strings.T_fieldsFunc_1___localname___span)));
        };
        var _a = new stdgo.Slice<stdgo.GoString>((_spans.length : stdgo.GoInt).toBasic(), 0).__setString__();
        for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end) : stdgo.GoString)?.__copy__();
        };
        return _a;
    }
/**
    // Join concatenates the elements of its first argument to create a single string. The separator
    // string sep is placed between elements in the resulting string.
**/
function join(_elems:stdgo.Slice<stdgo.GoString>, _sep:stdgo.GoString):stdgo.GoString {
        {
            final __value__ = (_elems.length);
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.str()?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _elems[(0 : stdgo.GoInt)]?.__copy__();
            };
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        if ((_sep.length) > (0 : stdgo.GoInt)) {
            if ((_sep.length) >= ((2147483647 : stdgo.GoInt) / (_elems.length - (1 : stdgo.GoInt)))) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = _n + (_sep.length * (_elems.length - (1 : stdgo.GoInt)));
        };
        for (__0 => _elem in _elems) {
            if ((_elem.length) > ((2147483647 : stdgo.GoInt) - _n)) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = _n + ((_elem.length));
        };
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _b.grow(_n);
        _b.writeString(_elems[(0 : stdgo.GoInt)]?.__copy__());
        for (__1 => _s in (_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            _b.writeString(_sep?.__copy__());
            _b.writeString(_s?.__copy__());
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // HasPrefix tests whether the string s begins with prefix.
**/
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return (_s.length >= _prefix.length) && ((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.GoString) == _prefix);
    }
/**
    // HasSuffix tests whether the string s ends with suffix.
**/
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool {
        return (_s.length >= _suffix.length) && ((_s.__slice__((_s.length) - (_suffix.length)) : stdgo.GoString) == _suffix);
    }
/**
    // Map returns a copy of the string s with all its characters modified
    // according to the mapping function. If mapping returns a negative value, the character is
    // dropped from the string with no replacement.
**/
function map_(_mapping:stdgo.GoRune -> stdgo.GoRune, _s:stdgo.GoString):stdgo.GoString {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        for (_i => _c in _s) {
            var _r:stdgo.GoInt32 = _mapping(_c);
            if ((_r == _c) && (_c != (65533 : stdgo.GoInt32))) {
                continue;
            };
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_c == ((65533 : stdgo.GoInt32))) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _c = __tmp__._0;
                    _width = __tmp__._1;
                };
                if ((_width != (1 : stdgo.GoInt)) && (_r == _c)) {
                    continue;
                };
            } else {
                _width = stdgo.unicode.utf8.Utf8.runeLen(_c);
            };
            _b.grow((_s.length) + (4 : stdgo.GoInt));
            _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            if (_r >= (0 : stdgo.GoInt32)) {
                _b.writeRune(_r);
            };
            _s = (_s.__slice__(_i + _width) : stdgo.GoString)?.__copy__();
            break;
        };
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        for (__0 => _c in _s) {
            var _r:stdgo.GoInt32 = _mapping(_c);
            if (_r >= (0 : stdgo.GoInt32)) {
                if (_r < (128 : stdgo.GoInt32)) {
                    _b.writeByte((_r : stdgo.GoByte));
                } else {
                    _b.writeRune(_r);
                };
            };
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // Repeat returns a new string consisting of count copies of the string s.
    //
    // It panics if count is negative or if the result of (len(s) * count)
    // overflows.
**/
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _count;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.str()?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _s?.__copy__();
            };
        };
        if (_count < (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("strings: negative Repeat count" : stdgo.GoString));
        };
        if ((_s.length) >= ((2147483647 : stdgo.GoInt) / _count)) {
            throw stdgo.Go.toInterface(("strings: Repeat output length overflow" : stdgo.GoString));
        };
        var _n:stdgo.GoInt = (_s.length) * _count;
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        {};
        var _chunkMax:stdgo.GoInt = _n;
        if (_n > (8192 : stdgo.GoInt)) {
            _chunkMax = ((8192 : stdgo.GoInt) / _s.length) * (_s.length);
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_s.length);
            };
        };
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _b.grow(_n);
        _b.writeString(_s?.__copy__());
        while (_b.len() < _n) {
            var _chunk:stdgo.GoInt = _n - _b.len();
            if (_chunk > _b.len()) {
                _chunk = _b.len();
            };
            if (_chunk > _chunkMax) {
                _chunk = _chunkMax;
            };
            _b.writeString(((_b.string() : stdgo.GoString).__slice__(0, _chunk) : stdgo.GoString)?.__copy__());
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // ToUpper returns s with all Unicode letters mapped to their upper case.
**/
function toUpper(_s:stdgo.GoString):stdgo.GoString {
        var __0:Bool = true, __1:Bool = false, _hasLower:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_c >= (128 : stdgo.GoUInt8)) {
                    _isASCII = false;
                    break;
                };
                _hasLower = _hasLower || (((97 : stdgo.GoUInt8) <= _c) && (_c <= (122 : stdgo.GoUInt8)));
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return _s?.__copy__();
            };
            var __0:Builder = ({} : stdgo.strings.Strings.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt), _pos:stdgo.GoInt = __1, _b:Builder = __0;
            _b.grow((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_i < (_s.length), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if (((97 : stdgo.GoUInt8) <= _c) && (_c <= (122 : stdgo.GoUInt8))) {
                        _c = _c - ((32 : stdgo.GoUInt8));
                        if (_pos < _i) {
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString)?.__copy__());
                        };
                        _b.writeByte(_c);
                        _pos = _i + (1 : stdgo.GoInt);
                    };
                });
            };
            if (_pos < (_s.length)) {
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        return map_(stdgo.unicode.Unicode.toUpper, _s?.__copy__())?.__copy__();
    }
/**
    // ToLower returns s with all Unicode letters mapped to their lower case.
**/
function toLower(_s:stdgo.GoString):stdgo.GoString {
        var __0:Bool = true, __1:Bool = false, _hasUpper:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_c >= (128 : stdgo.GoUInt8)) {
                    _isASCII = false;
                    break;
                };
                _hasUpper = _hasUpper || (((65 : stdgo.GoUInt8) <= _c) && (_c <= (90 : stdgo.GoUInt8)));
            });
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return _s?.__copy__();
            };
            var __0:Builder = ({} : stdgo.strings.Strings.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt), _pos:stdgo.GoInt = __1, _b:Builder = __0;
            _b.grow((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_i < (_s.length), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if (((65 : stdgo.GoUInt8) <= _c) && (_c <= (90 : stdgo.GoUInt8))) {
                        _c = _c + ((32 : stdgo.GoUInt8));
                        if (_pos < _i) {
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString)?.__copy__());
                        };
                        _b.writeByte(_c);
                        _pos = _i + (1 : stdgo.GoInt);
                    };
                });
            };
            if (_pos < (_s.length)) {
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        return map_(stdgo.unicode.Unicode.toLower, _s?.__copy__())?.__copy__();
    }
/**
    // ToTitle returns a copy of the string s with all Unicode letters mapped to
    // their Unicode title case.
**/
function toTitle(_s:stdgo.GoString):stdgo.GoString {
        return map_(stdgo.unicode.Unicode.toTitle, _s?.__copy__())?.__copy__();
    }
/**
    // ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
    // upper case using the case mapping specified by c.
**/
function toUpperSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toUpper, _s?.__copy__())?.__copy__();
    }
/**
    // ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
    // lower case using the case mapping specified by c.
**/
function toLowerSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toLower, _s?.__copy__())?.__copy__();
    }
/**
    // ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
    // Unicode title case, giving priority to the special casing rules.
**/
function toTitleSpecial(_c:stdgo.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toTitle, _s?.__copy__())?.__copy__();
    }
/**
    // ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
    // replaced by the replacement string, which may be empty.
**/
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString {
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        for (_i => _c in _s) {
            if (_c != ((65533 : stdgo.GoInt32))) {
                continue;
            };
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            if (_wid == ((1 : stdgo.GoInt))) {
                _b.grow((_s.length) + (_replacement.length));
                _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                break;
            };
        };
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        var _invalid:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i < (_s.length)) {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_c < (128 : stdgo.GoUInt8)) {
                    _i++;
                    _invalid = false;
                    _b.writeByte(_c);
                    continue;
                };
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                if (_wid == ((1 : stdgo.GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        _b.writeString(_replacement?.__copy__());
                    };
                    continue;
                };
                _invalid = false;
                _b.writeString((_s.__slice__(_i, _i + _wid) : stdgo.GoString)?.__copy__());
                _i = _i + (_wid);
            };
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // isSeparator reports whether the rune could mark a word boundary.
    // TODO: update when package unicode captures more of the properties.
**/
function _isSeparator(_r:stdgo.GoRune):Bool {
        if (_r <= (127 : stdgo.GoInt32)) {
            if (((48 : stdgo.GoInt32) <= _r) && (_r <= (57 : stdgo.GoInt32))) {
                return false;
            } else if (((97 : stdgo.GoInt32) <= _r) && (_r <= (122 : stdgo.GoInt32))) {
                return false;
            } else if (((65 : stdgo.GoInt32) <= _r) && (_r <= (90 : stdgo.GoInt32))) {
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
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
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev:stdgo.GoInt32 = (32 : stdgo.GoInt32);
        return map_(function(_r:stdgo.GoRune):stdgo.GoRune {
            if (_isSeparator(_prev)) {
                _prev = _r;
                return stdgo.unicode.Unicode.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
/**
    // TrimLeftFunc returns a slice of the string s with all leading
    // Unicode code points c satisfying f(c) removed.
**/
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        var _i:stdgo.GoInt = _indexFunc(_s?.__copy__(), _f, false);
        if (_i == ((-1 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
/**
    // TrimRightFunc returns a slice of the string s with all trailing
    // Unicode code points c satisfying f(c) removed.
**/
function trimRightFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        var _i:stdgo.GoInt = _lastIndexFunc(_s?.__copy__(), _f, false);
        if ((_i >= (0 : stdgo.GoInt)) && (_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8))) {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _i = _i + (_wid);
        } else {
            _i++;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
/**
    // TrimFunc returns a slice of the string s with all leading
    // and trailing Unicode code points c satisfying f(c) removed.
**/
function trimFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        return trimRightFunc(trimLeftFunc(_s?.__copy__(), _f)?.__copy__(), _f)?.__copy__();
    }
/**
    // IndexFunc returns the index into s of the first Unicode
    // code point satisfying f(c), or -1 if none do.
**/
function indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoInt {
        return _indexFunc(_s?.__copy__(), _f, true);
    }
/**
    // LastIndexFunc returns the index into s of the last
    // Unicode code point satisfying f(c), or -1 if none do.
**/
function lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoInt {
        return _lastIndexFunc(_s?.__copy__(), _f, true);
    }
/**
    // indexFunc is the same as IndexFunc except that if
    // truth==false, the sense of the predicate function is
    // inverted.
**/
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):stdgo.GoInt {
        for (_i => _r in _s) {
            if (_f(_r) == (_truth)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // lastIndexFunc is the same as LastIndexFunc except that if
    // truth==false, the sense of the predicate function is
    // inverted.
**/
function _lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = (_s.length);
            while (_i > (0 : stdgo.GoInt)) {
                var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = _i - (_size);
                if (_f(_r) == (_truth)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // makeASCIISet creates a set of ASCII characters and reports whether all
    // characters in chars are ASCII.
**/
function _makeASCIISet(_chars:stdgo.GoString):{ var _0 : T_asciiSet; var _1 : Bool; } {
        var _as:T_asciiSet = new stdgo.strings.Strings.T_asciiSet(...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]), _ok:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_chars.length), _i++, {
                var _c:stdgo.GoUInt8 = _chars[(_i : stdgo.GoInt)];
                if (_c >= (128 : stdgo.GoUInt8)) {
                    return { _0 : _as?.__copy__(), _1 : false };
                };
                _as[(_c / (32 : stdgo.GoUInt8) : stdgo.GoInt)] = _as[(_c / (32 : stdgo.GoUInt8) : stdgo.GoInt)] | ((1u32 : stdgo.GoUInt32) << (_c % (32 : stdgo.GoUInt8)));
            });
        };
        return { _0 : _as?.__copy__(), _1 : true };
    }
/**
    // Trim returns a slice of the string s with all leading and
    // trailing Unicode code points contained in cutset removed.
**/
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if ((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str())) {
            return _s?.__copy__();
        };
        if ((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8))) {
            return _trimLeftByte(_trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo.strings.Strings.T_asciiSet>))?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimLeftUnicode(_trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
/**
    // TrimLeft returns a slice of the string s with all leading
    // Unicode code points contained in cutset removed.
    //
    // To remove a prefix, use TrimPrefix instead.
**/
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if ((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str())) {
            return _s?.__copy__();
        };
        if ((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8))) {
            return _trimLeftByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimLeftUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString {
        while ((_s.length > (0 : stdgo.GoInt)) && (_s[(0 : stdgo.GoInt)] == _c)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):stdgo.GoString {
        while ((_s.length) > (0 : stdgo.GoInt)) {
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        while ((_s.length) > (0 : stdgo.GoInt)) {
            var __0:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if (_r >= (128 : stdgo.GoInt32)) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(_n) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
/**
    // TrimRight returns a slice of the string s, with all trailing
    // Unicode code points contained in cutset removed.
    //
    // To remove a suffix, use TrimSuffix instead.
**/
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if ((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str())) {
            return _s?.__copy__();
        };
        if ((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8))) {
            return _trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString {
        while ((_s.length > (0 : stdgo.GoInt)) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c)) {
            _s = (_s.__slice__(0, (_s.length) - (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):stdgo.GoString {
        while ((_s.length) > (0 : stdgo.GoInt)) {
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__(0, (_s.length) - (1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        while ((_s.length) > (0 : stdgo.GoInt)) {
            var __0:stdgo.GoInt32 = (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if (_r >= (128 : stdgo.GoInt32)) {
                {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeLastRuneInString(_s?.__copy__());
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(0, (_s.length) - _n) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
/**
    // TrimSpace returns a slice of the string s, with all leading
    // and trailing white space removed, as defined by Unicode.
**/
function trimSpace(_s:stdgo.GoString):stdgo.GoString {
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor(_start < (_s.length), _start++, {
            var _c:stdgo.GoUInt8 = _s[(_start : stdgo.GoInt)];
            if (_c >= (128 : stdgo.GoUInt8)) {
                return trimFunc((_s.__slice__(_start) : stdgo.GoString)?.__copy__(), stdgo.unicode.Unicode.isSpace)?.__copy__();
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        var _stop:stdgo.GoInt = (_s.length);
        stdgo.Go.cfor(_stop > _start, _stop--, {
            var _c:stdgo.GoUInt8 = _s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if (_c >= (128 : stdgo.GoUInt8)) {
                return trimRightFunc((_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__(), stdgo.unicode.Unicode.isSpace)?.__copy__();
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        return (_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__();
    }
/**
    // TrimPrefix returns s without the provided leading prefix string.
    // If s doesn't start with prefix, s is returned unchanged.
**/
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString {
        if (hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
/**
    // TrimSuffix returns s without the provided trailing suffix string.
    // If s doesn't end with suffix, s is returned unchanged.
**/
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString {
        if (hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return (_s.__slice__(0, (_s.length) - (_suffix.length)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
/**
    // Replace returns a copy of the string s with the first n
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the string
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune string.
    // If n < 0, there is no limit on the number of replacements.
**/
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        if ((_old == _new) || (_n == (0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        {
            var _m:stdgo.GoInt = count(_s?.__copy__(), _old?.__copy__());
            if (_m == ((0 : stdgo.GoInt))) {
                return _s?.__copy__();
            } else if ((_n < (0 : stdgo.GoInt)) || (_m < _n)) {
                _n = _m;
            };
        };
        var _b:Builder = ({} : stdgo.strings.Strings.Builder);
        _b.grow((_s.length) + (_n * (_new.length - _old.length)));
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < _n, _i++, {
                var _j:stdgo.GoInt = _start;
                if ((_old.length) == ((0 : stdgo.GoInt))) {
                    if (_i > (0 : stdgo.GoInt)) {
                        var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = _j + (_wid);
                    };
                } else {
                    _j = _j + (index((_s.__slice__(_start) : stdgo.GoString)?.__copy__(), _old?.__copy__()));
                };
                _b.writeString((_s.__slice__(_start, _j) : stdgo.GoString)?.__copy__());
                _b.writeString(_new?.__copy__());
                _start = _j + (_old.length);
            });
        };
        _b.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
/**
    // ReplaceAll returns a copy of the string s with all
    // non-overlapping instances of old replaced by new.
    // If old is empty, it matches at the beginning of the string
    // and after each UTF-8 sequence, yielding up to k+1 replacements
    // for a k-rune string.
**/
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString {
        return replace(_s?.__copy__(), _old?.__copy__(), _new?.__copy__(), (-1 : stdgo.GoInt))?.__copy__();
    }
/**
    // EqualFold reports whether s and t, interpreted as UTF-8 strings,
    // are equal under simple Unicode case-folding, which is a more general
    // form of case-insensitivity.
**/
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        stdgo.internal.Macro.controlFlow({
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _s.length) && (_i < _t.length), _i++, {
                var _sr:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                var _tr:stdgo.GoUInt8 = _t[(_i : stdgo.GoInt)];
                if ((_sr | _tr) >= (128 : stdgo.GoUInt8)) {
                    @:goto "hasUnicode";
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
                if ((((65 : stdgo.GoUInt8) <= _sr) && (_sr <= (90 : stdgo.GoUInt8))) && (_tr == (_sr + (97 : stdgo.GoUInt8) - (65 : stdgo.GoUInt8)))) {
                    continue;
                };
                return false;
            });
            return (_s.length) == ((_t.length));
            @:label("hasUnicode") _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
            _t = (_t.__slice__(_i) : stdgo.GoString)?.__copy__();
            for (__0 => _sr in _s) {
                if ((_t.length) == ((0 : stdgo.GoInt))) {
                    return false;
                };
                var _tr:stdgo.GoRune = (0 : stdgo.GoInt32);
                if (_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoRune);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                } else {
                    var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString(_t?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    {
                        final __tmp__0 = _r;
                        final __tmp__1 = (_t.__slice__(_size) : stdgo.GoString)?.__copy__();
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
                if (_tr < (128 : stdgo.GoInt32)) {
                    if ((((65 : stdgo.GoInt32) <= _sr) && (_sr <= (90 : stdgo.GoInt32))) && (_tr == (_sr + (97 : stdgo.GoInt32) - (65 : stdgo.GoInt32)))) {
                        continue;
                    };
                    return false;
                };
                var _r:stdgo.GoInt32 = stdgo.unicode.Unicode.simpleFold(_sr);
                while ((_r != _sr) && (_r < _tr)) {
                    _r = stdgo.unicode.Unicode.simpleFold(_r);
                };
                if (_r == (_tr)) {
                    continue;
                };
                return false;
            };
            return (_t.length) == ((0 : stdgo.GoInt));
        });
        throw "controlFlow did not return";
    }
/**
    // Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
**/
function index(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        var _n:stdgo.GoInt = (_substr.length);
        if (_n == ((0 : stdgo.GoInt))) {
            return (0 : stdgo.GoInt);
        } else if (_n == ((1 : stdgo.GoInt))) {
            return indexByte(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        } else if (_n == ((_s.length))) {
            if (_substr == (_s)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        } else if (_n > (_s.length)) {
            return (-1 : stdgo.GoInt);
        } else if (_n <= stdgo.internal.bytealg.Bytealg.maxLen) {
            if ((_s.length) <= (0 : stdgo.GoInt)) {
                return stdgo.internal.bytealg.Bytealg.indexString(_s?.__copy__(), _substr?.__copy__());
            };
            var _c0:stdgo.GoUInt8 = _substr[(0 : stdgo.GoInt)];
            var _c1:stdgo.GoUInt8 = _substr[(1 : stdgo.GoInt)];
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t:stdgo.GoInt = (_s.length - _n) + (1 : stdgo.GoInt);
            var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i < _t) {
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o:stdgo.GoInt = indexByte((_s.__slice__(_i + (1 : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0);
                    if (_o < (0 : stdgo.GoInt)) {
                        return (-1 : stdgo.GoInt);
                    };
                    _i = _i + (_o + (1 : stdgo.GoInt));
                };
                if ((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, _i + _n) : stdgo.GoString) == _substr)) {
                    return _i;
                };
                _fails++;
                _i++;
                if (_fails > stdgo.internal.bytealg.Bytealg.cutover(_i)) {
                    var _r:stdgo.GoInt = stdgo.internal.bytealg.Bytealg.indexString((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__());
                    if (_r >= (0 : stdgo.GoInt)) {
                        return _r + _i;
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        };
        var _c0:stdgo.GoUInt8 = _substr[(0 : stdgo.GoInt)];
        var _c1:stdgo.GoUInt8 = _substr[(1 : stdgo.GoInt)];
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t:stdgo.GoInt = (_s.length - _n) + (1 : stdgo.GoInt);
        var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_i < _t) {
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o:stdgo.GoInt = indexByte((_s.__slice__(_i + (1 : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0);
                if (_o < (0 : stdgo.GoInt)) {
                    return (-1 : stdgo.GoInt);
                };
                _i = _i + (_o + (1 : stdgo.GoInt));
            };
            if ((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, _i + _n) : stdgo.GoString) == _substr)) {
                return _i;
            };
            _i++;
            _fails++;
            if ((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64)))) && (_i < _t)) {
                var _j:stdgo.GoInt = stdgo.internal.bytealg.Bytealg.indexRabinKarp((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__());
                if (_j < (0 : stdgo.GoInt)) {
                    return (-1 : stdgo.GoInt);
                };
                return _i + _j;
            };
        };
        return (-1 : stdgo.GoInt);
    }
/**
    // Cut slices s around the first instance of sep,
    // returning the text before and after sep.
    // The found result reports whether sep appears in s.
    // If sep does not appear in s, cut returns s, "", false.
**/
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before:stdgo.GoString = ("" : stdgo.GoString), _after:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        {
            var _i:stdgo.GoInt = index(_s?.__copy__(), _sep?.__copy__());
            if (_i >= (0 : stdgo.GoInt)) {
                return { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__(_i + (_sep.length)) : stdgo.GoString)?.__copy__(), _2 : true };
            };
        };
        return { _0 : _s?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
    }
/**
    // CutPrefix returns s without the provided leading prefix string
    // and reports whether it found the prefix.
    // If s doesn't start with prefix, CutPrefix returns s, false.
    // If prefix is the empty string, CutPrefix returns s, true.
**/
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _after:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        if (!hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : false };
        };
        return { _0 : (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__(), _1 : true };
    }
/**
    // CutSuffix returns s without the provided ending suffix string
    // and reports whether it found the suffix.
    // If s doesn't end with suffix, CutSuffix returns s, false.
    // If suffix is the empty string, CutSuffix returns s, true.
**/
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _before:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        if (!hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : false };
        };
        return { _0 : (_s.__slice__(0, (_s.length) - (_suffix.length)) : stdgo.GoString)?.__copy__(), _1 : true };
    }
class Builder_asInterface {
    /**
        // WriteString appends the contents of s to b's buffer.
        // It returns the length of s and a nil error.
    **/
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    /**
        // WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
        // It returns the length of r and a nil error.
    **/
    @:keep
    public dynamic function writeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    /**
        // WriteByte appends the byte c to b's buffer.
        // The returned error is always nil.
    **/
    @:keep
    public dynamic function writeByte(_c:stdgo.GoByte):stdgo.Error return __self__.value.writeByte(_c);
    /**
        // Write appends the contents of p to b's buffer.
        // Write always returns len(p), nil.
    **/
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    /**
        // Grow grows b's capacity, if necessary, to guarantee space for
        // another n bytes. After Grow(n), at least n bytes can be written to b
        // without another allocation. If n is negative, Grow panics.
    **/
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    /**
        // grow copies the buffer to a new, larger buffer so that there are at least n
        // bytes of capacity beyond len(b.buf).
    **/
    @:keep
    public dynamic function _grow(_n:stdgo.GoInt):Void __self__.value._grow(_n);
    /**
        // Reset resets the Builder to be empty.
    **/
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    /**
        // Cap returns the capacity of the builder's underlying byte slice. It is the
        // total space allocated for the string being built and includes any bytes
        // already written.
    **/
    @:keep
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    /**
        // Len returns the number of accumulated bytes; b.Len() == len(b.String()).
    **/
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    /**
        // String returns the accumulated string.
    **/
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _copyCheck():Void __self__.value._copyCheck();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Builder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.Builder_asInterface) class Builder_static_extension {
    /**
        // WriteString appends the contents of s to b's buffer.
        // It returns the length of s and a nil error.
    **/
    @:keep
    static public function writeString( _b:stdgo.Ref<Builder>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(..._s.__toArray__()));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    /**
        // WriteRune appends the UTF-8 encoding of Unicode code point r to b's buffer.
        // It returns the length of r and a nil error.
    **/
    @:keep
    static public function writeRune( _b:stdgo.Ref<Builder>, _r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        var _n:stdgo.GoInt = (_b._buf.length);
        _b._buf = stdgo.unicode.utf8.Utf8.appendRune(_b._buf, _r);
        return { _0 : (_b._buf.length) - _n, _1 : (null : stdgo.Error) };
    }
    /**
        // WriteByte appends the byte c to b's buffer.
        // The returned error is always nil.
    **/
    @:keep
    static public function writeByte( _b:stdgo.Ref<Builder>, _c:stdgo.GoByte):stdgo.Error {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(_c));
        return (null : stdgo.Error);
    }
    /**
        // Write appends the contents of p to b's buffer.
        // Write always returns len(p), nil.
    **/
    @:keep
    static public function write( _b:stdgo.Ref<Builder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(..._p.__toArray__()));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    /**
        // Grow grows b's capacity, if necessary, to guarantee space for
        // another n bytes. After Grow(n), at least n bytes can be written to b
        // without another allocation. If n is negative, Grow panics.
    **/
    @:keep
    static public function grow( _b:stdgo.Ref<Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        if (_n < (0 : stdgo.GoInt)) {
            throw stdgo.Go.toInterface(("strings.Builder.Grow: negative count" : stdgo.GoString));
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
    static public function _grow( _b:stdgo.Ref<Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        var _buf = (stdgo.internal.bytealg.Bytealg.makeNoZero(((2 : stdgo.GoInt) * _b._buf.capacity) + _n).__slice__(0, (_b._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_buf, _b._buf);
        _b._buf = _buf;
    }
    /**
        // Reset resets the Builder to be empty.
    **/
    @:keep
    static public function reset( _b:stdgo.Ref<Builder>):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._addr = null;
        _b._buf = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    /**
        // Cap returns the capacity of the builder's underlying byte slice. It is the
        // total space allocated for the string being built and includes any bytes
        // already written.
    **/
    @:keep
    static public function cap( _b:stdgo.Ref<Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return _b._buf.capacity;
    }
    /**
        // Len returns the number of accumulated bytes; b.Len() == len(b.String()).
    **/
    @:keep
    static public function len( _b:stdgo.Ref<Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return (_b._buf.length);
    }
    /**
        // String returns the accumulated string.
    **/
    @:keep
    static public function string( _b:stdgo.Ref<Builder>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo.unsafe.Unsafe.UnsafePointer).__convert__(stdgo.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) })) : stdgo.Pointer<stdgo.GoString>).value;
    }
    @:keep
    static public function _copyCheck( _b:stdgo.Ref<Builder>):Void _b._addr = _b;
}
class Reader_asInterface {
    /**
        // Reset resets the Reader to be reading from s.
    **/
    @:keep
    public dynamic function reset(_s:stdgo.GoString):Void __self__.value.reset(_s);
    /**
        // WriteTo implements the io.WriterTo interface.
    **/
    @:keep
    public dynamic function writeTo(_w:stdgo.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    /**
        // Seek implements the io.Seeker interface.
    **/
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    /**
        // UnreadRune implements the io.RuneScanner interface.
    **/
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    /**
        // ReadRune implements the io.RuneReader interface.
    **/
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    /**
        // UnreadByte implements the io.ByteScanner interface.
    **/
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    /**
        // ReadByte implements the io.ByteReader interface.
    **/
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    /**
        // ReadAt implements the io.ReaderAt interface.
    **/
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    /**
        // Read implements the io.Reader interface.
    **/
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    /**
        // Size returns the original length of the underlying string.
        // Size is the number of bytes available for reading via ReadAt.
        // The returned value is always the same and is not affected by calls
        // to any other method.
    **/
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    /**
        // Len returns the number of bytes of the unread portion of the
        // string.
    **/
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Reader>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.Reader_asInterface) class Reader_static_extension {
    /**
        // Reset resets the Reader to be reading from s.
    **/
    @:keep
    static public function reset( _r:stdgo.Ref<Reader>, _s:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        {
            var __tmp__ = (new stdgo.strings.Strings.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo.strings.Strings.Reader);
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    /**
        // WriteTo implements the io.WriterTo interface.
    **/
    @:keep
    static public function writeTo( _r:stdgo.Ref<Reader>, _w:stdgo.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _r._prevRune = (-1 : stdgo.GoInt);
        if (_r._i >= (_r._s.length : stdgo.GoInt64)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _s:stdgo.GoString = (_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo.io.Io.writeString(_w, _s?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_m > (_s.length)) {
            throw stdgo.Go.toInterface(("strings.Reader.WriteTo: invalid WriteString count" : stdgo.GoString));
        };
        _r._i = _r._i + ((_m : stdgo.GoInt64));
        _n = (_m : stdgo.GoInt64);
        if ((_m != (_s.length)) && (_err == null)) {
            _err = stdgo.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Seek implements the io.Seeker interface.
    **/
    @:keep
    static public function seek( _r:stdgo.Ref<Reader>, _offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        var _abs:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        {
            final __value__ = _whence;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _abs = _offset;
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                _abs = _r._i + _offset;
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = (_r._s.length : stdgo.GoInt64) + _offset;
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.errors.Errors.new_(("strings.Reader.Seek: invalid whence" : stdgo.GoString)) };
            };
        };
        if (_abs < (0i64 : stdgo.GoInt64)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo.errors.Errors.new_(("strings.Reader.Seek: negative position" : stdgo.GoString)) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    /**
        // UnreadRune implements the io.RuneScanner interface.
    **/
    @:keep
    static public function unreadRune( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if (_r._i <= (0i64 : stdgo.GoInt64)) {
            return stdgo.errors.Errors.new_(("strings.Reader.UnreadRune: at beginning of string" : stdgo.GoString));
        };
        if (_r._prevRune < (0 : stdgo.GoInt)) {
            return stdgo.errors.Errors.new_(("strings.Reader.UnreadRune: previous operation was not ReadRune" : stdgo.GoString));
        };
        _r._i = (_r._prevRune : stdgo.GoInt64);
        _r._prevRune = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    /**
        // ReadRune implements the io.RuneReader interface.
    **/
    @:keep
    static public function readRune( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _ch:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_r._i >= (_r._s.length : stdgo.GoInt64)) {
            _r._prevRune = (-1 : stdgo.GoInt);
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo.io.Io.eof };
        };
        _r._prevRune = (_r._i : stdgo.GoInt);
        {
            var _c:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
            if (_c < (128 : stdgo.GoUInt8)) {
                _r._i++;
                return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo.unicode.utf8.Utf8.decodeRuneInString((_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__());
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = _r._i + ((_size : stdgo.GoInt64));
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    /**
        // UnreadByte implements the io.ByteScanner interface.
    **/
    @:keep
    static public function unreadByte( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if (_r._i <= (0i64 : stdgo.GoInt64)) {
            return stdgo.errors.Errors.new_(("strings.Reader.UnreadByte: at beginning of string" : stdgo.GoString));
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _r._i--;
        return (null : stdgo.Error);
    }
    /**
        // ReadByte implements the io.ByteReader interface.
    **/
    @:keep
    static public function readByte( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        if (_r._i >= (_r._s.length : stdgo.GoInt64)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo.io.Io.eof };
        };
        var _b:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
        _r._i++;
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    /**
        // ReadAt implements the io.ReaderAt interface.
    **/
    @:keep
    static public function readAt( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_off < (0i64 : stdgo.GoInt64)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.errors.Errors.new_(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) };
        };
        if (_off >= (_r._s.length : stdgo.GoInt64)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.io.Io.eof };
        };
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_off) : stdgo.GoString));
        if (_n < (_b.length)) {
            _err = stdgo.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    /**
        // Read implements the io.Reader interface.
    **/
    @:keep
    static public function read( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if (_r._i >= (_r._s.length : stdgo.GoInt64)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo.io.Io.eof };
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_r._i) : stdgo.GoString));
        _r._i = _r._i + ((_n : stdgo.GoInt64));
        return { _0 : _n, _1 : _err };
    }
    /**
        // Size returns the original length of the underlying string.
        // Size is the number of bytes available for reading via ReadAt.
        // The returned value is always the same and is not affected by calls
        // to any other method.
    **/
    @:keep
    static public function size( _r:stdgo.Ref<Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        return (_r._s.length : stdgo.GoInt64);
    }
    /**
        // Len returns the number of bytes of the unread portion of the
        // string.
    **/
    @:keep
    static public function len( _r:stdgo.Ref<Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if (_r._i >= (_r._s.length : stdgo.GoInt64)) {
            return (0 : stdgo.GoInt);
        };
        return ((_r._s.length : stdgo.GoInt64) - _r._i : stdgo.GoInt);
    }
}
class Replacer_asInterface {
    /**
        // WriteString writes s to w with all replacements performed.
    **/
    @:keep
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    /**
        // Replace returns a copy of s with all replacements performed.
    **/
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    @:keep
    public dynamic function _build():T_replacer return __self__.value._build();
    @:keep
    public dynamic function _buildOnce():Void __self__.value._buildOnce();
    @:keep
    public dynamic function printTrie():stdgo.GoString return __self__.value.printTrie();
    @:keep
    public dynamic function replacer():stdgo.AnyInterface return __self__.value.replacer();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Replacer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.Replacer_asInterface) class Replacer_static_extension {
    /**
        // WriteString writes s to w with all replacements performed.
    **/
    @:keep
    static public function writeString( _r:stdgo.Ref<Replacer>, _w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _r._once.do_(_r._buildOnce);
        return _r._r.writeString(_w, _s?.__copy__());
    }
    /**
        // Replace returns a copy of s with all replacements performed.
    **/
    @:keep
    static public function replace( _r:stdgo.Ref<Replacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        return _r._r.replace(_s?.__copy__())?.__copy__();
    }
    @:keep
    static public function _build( _b:stdgo.Ref<Replacer>):T_replacer {
        @:recv var _b:stdgo.Ref<Replacer> = _b;
        var _oldnew = _b._oldnew;
        if ((_oldnew.length == (2 : stdgo.GoInt)) && (_oldnew[(0 : stdgo.GoInt)].length > (1 : stdgo.GoInt))) {
            return stdgo.Go.asInterface(_makeSingleStringReplacer(_oldnew[(0 : stdgo.GoInt)]?.__copy__(), _oldnew[(1 : stdgo.GoInt)]?.__copy__()));
        };
        var _allNewBytes:Bool = true;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_oldnew.length), _i = _i + ((2 : stdgo.GoInt)), {
                if ((_oldnew[(_i : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    return stdgo.Go.asInterface(_makeGenericReplacer(_oldnew));
                };
                if ((_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    _allNewBytes = false;
                };
            });
        };
        if (_allNewBytes) {
            var _r:stdgo.strings.Strings.T_byteReplacer = (new stdgo.GoArray<stdgo.GoUInt8>(...([].concat([for (i in 0 ... 256) (0 : stdgo.GoUInt8)]))) : stdgo.strings.Strings.T_byteReplacer);
            for (_i => _ in _r) {
                _r[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
            };
            {
                var _i:stdgo.GoInt = (_oldnew.length) - (2 : stdgo.GoInt);
                stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i = _i - ((2 : stdgo.GoInt)), {
                    var _o:stdgo.GoUInt8 = _oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)];
                    var _n:stdgo.GoUInt8 = _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)];
                    _r[(_o : stdgo.GoInt)] = _n;
                });
            };
            return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.strings.Strings.T_byteReplacer>));
        };
        var _r:stdgo.strings.Strings.T_byteStringReplacer = ({ _toReplace : new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_oldnew.length) / (2 : stdgo.GoInt)).__setString__() } : stdgo.strings.Strings.T_byteStringReplacer);
        {
            var _i:stdgo.GoInt = (_oldnew.length) - (2 : stdgo.GoInt);
            stdgo.Go.cfor(_i >= (0 : stdgo.GoInt), _i = _i - ((2 : stdgo.GoInt)), {
                var _o:stdgo.GoUInt8 = _oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)];
                var _n:stdgo.GoString = _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
                if (_r._replacements[(_o : stdgo.GoInt)] == null) {
                    _r._toReplace = (_r._toReplace.__append__(((new stdgo.Slice<stdgo.GoUInt8>(1, 1, _o) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)));
                };
                _r._replacements[(_o : stdgo.GoInt)] = (_n : stdgo.Slice<stdgo.GoByte>);
            });
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo.strings.Strings.T_byteStringReplacer>));
    }
    @:keep
    static public function _buildOnce( _r:stdgo.Ref<Replacer>):Void {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        _r._r = _r._build();
        _r._oldnew = (null : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    static public function printTrie( _r:stdgo.Ref<Replacer>):stdgo.GoString {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        var _gen = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_r._r) : stdgo.Ref<T_genericReplacer>)) : stdgo.Ref<T_genericReplacer>);
        return _gen._printNode((stdgo.Go.setRef(_gen._root) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>), (0 : stdgo.GoInt))?.__copy__();
    }
    @:keep
    static public function replacer( _r:stdgo.Ref<Replacer>):stdgo.AnyInterface {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        _r._once.do_(_r._buildOnce);
        return stdgo.Go.toInterface(_r._r);
    }
}
class T_trieNode_asInterface {
    @:keep
    public dynamic function _add(_key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<T_genericReplacer>):Void __self__.value._add(_key, _val, _priority, _r);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_trieNode>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
    @:keep
    static public function _add( _t:stdgo.Ref<T_trieNode>, _key:stdgo.GoString, _val:stdgo.GoString, _priority:stdgo.GoInt, _r:stdgo.Ref<T_genericReplacer>):Void {
        @:recv var _t:stdgo.Ref<T_trieNode> = _t;
        if (_key == (stdgo.Go.str())) {
            if (_t._priority == ((0 : stdgo.GoInt))) {
                _t._value = _val?.__copy__();
                _t._priority = _priority;
            };
            return;
        };
        if (_t._prefix != (stdgo.Go.str())) {
            var _n:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_n < _t._prefix.length) && (_n < _key.length), _n++, {
                if (_t._prefix[(_n : stdgo.GoInt)] != (_key[(_n : stdgo.GoInt)])) {
                    break;
                };
            });
            if (_n == ((_t._prefix.length))) {
                _t._next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else if (_n == ((0 : stdgo.GoInt))) {
                var _prefixNode:stdgo.Ref<T_trieNode> = (null : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
                if ((_t._prefix.length) == ((1 : stdgo.GoInt))) {
                    _prefixNode = _t._next;
                } else {
                    _prefixNode = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
                };
                var _keyNode = (stdgo.Go.setRef(({} : stdgo.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
                _t._table = new stdgo.Slice<stdgo.Ref<stdgo.strings.Strings.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0);
                _t._table[(_r._mapping[(_t._prefix[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _prefixNode;
                _t._table[(_r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _keyNode;
                _t._prefix = stdgo.Go.str()?.__copy__();
                _t._next = null;
                _keyNode._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else {
                var _next = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__(_n) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
                _t._prefix = (_t._prefix.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                _t._next = _next;
                _next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            };
        } else if (_t._table != null) {
            var _m:stdgo.GoUInt8 = _r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)];
            if (_t._table[(_m : stdgo.GoInt)] == null || (_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__) {
                _t._table[(_m : stdgo.GoInt)] = (stdgo.Go.setRef(({} : stdgo.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
            };
            _t._table[(_m : stdgo.GoInt)]._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        } else {
            _t._prefix = _key?.__copy__();
            _t._next = (stdgo.Go.setRef(({} : stdgo.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
            _t._next._add(stdgo.Go.str()?.__copy__(), _val?.__copy__(), _priority, _r);
        };
    }
}
class T_genericReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    @:keep
    public dynamic function _lookup(_s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } return __self__.value._lookup(_s, _ignoreRoot);
    @:keep
    public dynamic function _printNode(_t:stdgo.Ref<T_trieNode>, _depth:stdgo.GoInt):stdgo.GoString return __self__.value._printNode(_t, _depth);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_genericReplacer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_genericReplacer_asInterface) class T_genericReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_genericReplacer>, _w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = __1, _last:stdgo.GoInt = __0;
        var _prevMatchEmpty:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while (_i <= (_s.length)) {
                if ((_i != (_s.length)) && (_r._root._priority == (0 : stdgo.GoInt))) {
                    var _index:stdgo.GoInt = (_r._mapping[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt);
                    if ((_index == _r._tableSize) || ((_r._root._table[(_index : stdgo.GoInt)] == null) || (_r._root._table[(_index : stdgo.GoInt)] : Dynamic).__nil__)) {
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = _r._lookup((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _prevMatchEmpty), _val:stdgo.GoString = __tmp__._0, _keylen:stdgo.GoInt = __tmp__._1, _match:Bool = __tmp__._2;
                _prevMatchEmpty = _match && (_keylen == (0 : stdgo.GoInt));
                if (_match) {
                    {
                        var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = _n + (_wn);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    {
                        var __tmp__ = _sw.writeString(_val?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = _n + (_wn);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
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
                var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_wn);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_genericReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _buf:stdgo.strings.Strings.T_appendSliceWriter = new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__();
        _r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo.strings.Strings.T_appendSliceWriter>)), _s?.__copy__());
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _lookup( _r:stdgo.Ref<T_genericReplacer>, _s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _val:stdgo.GoString = ("" : stdgo.GoString), _keylen:stdgo.GoInt = (0 : stdgo.GoInt), _found:Bool = false;
        var _bestPriority:stdgo.GoInt = (0 : stdgo.GoInt);
        var _node = (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_node != null && ((_node : Dynamic).__nil__ == null || !(_node : Dynamic).__nil__)) {
            if ((_node._priority > _bestPriority) && !(_ignoreRoot && (_node == (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo.strings.Strings.T_trieNode>)))) {
                _bestPriority = _node._priority;
                _val = _node._value?.__copy__();
                _keylen = _n;
                _found = true;
            };
            if (_s == (stdgo.Go.str())) {
                break;
            };
            if (_node._table != null) {
                var _index:stdgo.GoUInt8 = _r._mapping[(_s[(0 : stdgo.GoInt)] : stdgo.GoInt)];
                if ((_index : stdgo.GoInt) == (_r._tableSize)) {
                    break;
                };
                _node = _node._table[(_index : stdgo.GoInt)];
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _n++;
            } else if ((_node._prefix != stdgo.Go.str()) && hasPrefix(_s?.__copy__(), _node._prefix?.__copy__())) {
                _n = _n + ((_node._prefix.length));
                _s = (_s.__slice__((_node._prefix.length)) : stdgo.GoString)?.__copy__();
                _node = _node._next;
            } else {
                break;
            };
        };
        return { _0 : _val, _1 : _keylen, _2 : _found };
    }
    @:keep
    static public function _printNode( _r:stdgo.Ref<T_genericReplacer>, _t:stdgo.Ref<T_trieNode>, _depth:stdgo.GoInt):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _s:stdgo.GoString = ("" : stdgo.GoString);
        if (_t._priority > (0 : stdgo.GoInt)) {
            _s = _s + (("+" : stdgo.GoString))?.__copy__();
        } else {
            _s = _s + (("-" : stdgo.GoString))?.__copy__();
        };
        _s = _s + (("\n" : stdgo.GoString))?.__copy__();
        if (_t._prefix != (stdgo.Go.str())) {
            _s = _s + (repeat(("." : stdgo.GoString), _depth) + _t._prefix?.__copy__())?.__copy__();
            _s = _s + (_r._printNode(_t._next, _depth + (_t._prefix.length)))?.__copy__();
        } else if (_t._table != null) {
            for (_b => _m in _r._mapping) {
                if (((_m : stdgo.GoInt) != _r._tableSize) && ((_t._table[(_m : stdgo.GoInt)] != null) && ((_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__))) {
                    _s = _s + (repeat(("." : stdgo.GoString), _depth) + ((new stdgo.Slice<stdgo.GoUInt8>(1, 1, (_b : stdgo.GoByte)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__())?.__copy__();
                    _s = _s + (_r._printNode(_t._table[(_m : stdgo.GoInt)], _depth + (1 : stdgo.GoInt)))?.__copy__();
                };
            };
        };
        return _s;
    }
}
class T_stringWriter_asInterface {
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_stringWriter_asInterface) class T_stringWriter_static_extension {
    @:keep
    static public function writeString( _w:T_stringWriter, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_stringWriter = _w?.__copy__();
        return _w._w.write((_s : stdgo.Slice<stdgo.GoByte>));
    }
}
class T_singleStringReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_singleStringReplacer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_singleStringReplacer_asInterface) class T_singleStringReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_singleStringReplacer>, _w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_singleStringReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        while (true) {
            var _match:stdgo.GoInt = _r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_i, _i + _match) : stdgo.GoString)?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_wn);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            {
                var __tmp__ = _sw.writeString(_r._value?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_wn);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _i = _i + (_match + _r._finder._pattern.length);
        };
        {
            var __tmp__ = _sw.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            _wn = __tmp__._0;
            _err = __tmp__._1;
        };
        _n = _n + (_wn);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_singleStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_singleStringReplacer> = _r;
        var _buf:Builder = ({} : stdgo.strings.Strings.Builder);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:Bool = false, _matched:Bool = __1, _i:stdgo.GoInt = __0;
        while (true) {
            var _match:stdgo.GoInt = _r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            _matched = true;
            _buf.grow(_match + (_r._value.length));
            _buf.writeString((_s.__slice__(_i, _i + _match) : stdgo.GoString)?.__copy__());
            _buf.writeString(_r._value?.__copy__());
            _i = _i + (_match + _r._finder._pattern.length);
        };
        if (!_matched) {
            return _s?.__copy__();
        };
        _buf.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
class T_byteStringReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteStringReplacer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_byteStringReplacer_asInterface) class T_byteStringReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_byteStringReplacer>, _w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_byteStringReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r._replacements[(_b : stdgo.GoInt)] == null) {
                    continue;
                };
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = _n + (_nw);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _last = _i + (1 : stdgo.GoInt);
                var __tmp__ = _w.write(_r._replacements[(_b : stdgo.GoInt)]), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_nw);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            });
        };
        if (_last != ((_s.length))) {
            var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
                _nw = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = _n + (_nw);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_byteStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_byteStringReplacer> = _r;
        var _newSize:stdgo.GoInt = (_s.length);
        var _anyChanges:Bool = false;
        if ((_r._toReplace.length * (8 : stdgo.GoInt)) <= (_s.length)) {
            for (__0 => _x in _r._toReplace) {
                {
                    var _c:stdgo.GoInt = count(_s?.__copy__(), _x?.__copy__());
                    if (_c != ((0 : stdgo.GoInt))) {
                        _newSize = _newSize + (_c * (_r._replacements[(_x[(0 : stdgo.GoInt)] : stdgo.GoInt)].length - (1 : stdgo.GoInt)));
                        _anyChanges = true;
                    };
                };
            };
        } else {
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor(_i < (_s.length), _i++, {
                    var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if (_r._replacements[(_b : stdgo.GoInt)] != null) {
                        _newSize = _newSize + (_r._replacements[(_b : stdgo.GoInt)].length - (1 : stdgo.GoInt));
                        _anyChanges = true;
                    };
                });
            };
        };
        if (!_anyChanges) {
            return _s?.__copy__();
        };
        var _buf = new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__();
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r._replacements[(_b : stdgo.GoInt)] != null) {
                    _j = _j + (stdgo.Go.copySlice((_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>), _r._replacements[(_b : stdgo.GoInt)]));
                } else {
                    _buf[(_j : stdgo.GoInt)] = _b;
                    _j++;
                };
            });
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
}
class T_stringFinder_asInterface {
    /**
        // next returns the index in text of the first occurrence of the pattern. If
        // the pattern is not found, it returns -1.
    **/
    @:keep
    public dynamic function _next(_text:stdgo.GoString):stdgo.GoInt return __self__.value._next(_text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringFinder>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
    /**
        // next returns the index in text of the first occurrence of the pattern. If
        // the pattern is not found, it returns -1.
    **/
    @:keep
    static public function _next( _f:stdgo.Ref<T_stringFinder>, _text:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<T_stringFinder> = _f;
        var _i:stdgo.GoInt = (_f._pattern.length) - (1 : stdgo.GoInt);
        while (_i < (_text.length)) {
            var _j:stdgo.GoInt = (_f._pattern.length) - (1 : stdgo.GoInt);
            while ((_j >= (0 : stdgo.GoInt)) && (_text[(_i : stdgo.GoInt)] == _f._pattern[(_j : stdgo.GoInt)])) {
                _i--;
                _j--;
            };
            if (_j < (0 : stdgo.GoInt)) {
                return _i + (1 : stdgo.GoInt);
            };
            _i = _i + (_max(_f._badCharSkip[(_text[(_i : stdgo.GoInt)] : stdgo.GoInt)], _f._goodSuffixSkip[(_j : stdgo.GoInt)]));
        };
        return (-1 : stdgo.GoInt);
    }
}
class T_appendSliceWriter_asInterface {
    /**
        // WriteString writes to the buffer without string->[]byte->string allocations.
    **/
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    /**
        // Write writes to the buffer to satisfy io.Writer.
    **/
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_appendSliceWriter>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_appendSliceWriter_asInterface) class T_appendSliceWriter_static_extension {
    /**
        // WriteString writes to the buffer without string->[]byte->string allocations.
    **/
    @:keep
    static public function writeString( _w:stdgo.Ref<T_appendSliceWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_appendSliceWriter> = _w;
        _w.__setData__(((_w : stdgo.strings.Strings.T_appendSliceWriter).__append__(..._s.__toArray__())));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    /**
        // Write writes to the buffer to satisfy io.Writer.
    **/
    @:keep
    static public function write( _w:stdgo.Ref<T_appendSliceWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_appendSliceWriter> = _w;
        _w.__setData__(((_w : stdgo.strings.Strings.T_appendSliceWriter).__append__(..._p.__toArray__())));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_byteReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteReplacer>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_byteReplacer_asInterface) class T_byteReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_byteReplacer>, _w:stdgo.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_byteReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo.io.Io.StringWriter = _getStringWriter(_w);
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r[(_b : stdgo.GoInt)] == (_b)) {
                    continue;
                };
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__()), _wn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = _n + (_wn);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _last = _i + (1 : stdgo.GoInt);
                var __tmp__ = _w.write((_r.__slice__(_b, (_b : stdgo.GoInt) + (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = _n + (_nw);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            });
        };
        if (_last != ((_s.length))) {
            var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = _n + (_nw);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_byteReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_byteReplacer> = _r;
        var _buf:stdgo.Slice<stdgo.GoByte> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(_i < (_s.length), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r[(_b : stdgo.GoInt)] != (_b)) {
                    if (_buf == null) {
                        _buf = (_s : stdgo.Slice<stdgo.GoByte>);
                    };
                    _buf[(_i : stdgo.GoInt)] = _r[(_b : stdgo.GoInt)];
                };
            });
        };
        if (_buf == null) {
            return _s?.__copy__();
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
}
class T_asciiSet_asInterface {
    /**
        // contains reports whether c is inside the set.
    **/
    @:keep
    public dynamic function _contains(_c:stdgo.GoByte):Bool return __self__.value._contains(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_asciiSet>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo.strings.Strings.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    /**
        // contains reports whether c is inside the set.
    **/
    @:keep
    static public function _contains( _as:stdgo.Ref<T_asciiSet>, _c:stdgo.GoByte):Bool {
        @:recv var _as:stdgo.Ref<T_asciiSet> = _as;
        return (_as[(_c / (32 : stdgo.GoUInt8) : stdgo.GoInt)] & ((1u32 : stdgo.GoUInt32) << (_c % (32 : stdgo.GoUInt8)))) != ((0u32 : stdgo.GoUInt32));
    }
}
