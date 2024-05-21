package stdgo._internal.strings;
private var __go2hxdoc__package : Bool;
final _countCutOff : stdgo.GoUInt64 = (8i64 : stdgo.GoUInt64);
final _maxInt : stdgo.GoInt = ((2147483647u32 : stdgo.GoUInt) : stdgo.GoInt);
var _asciiSpace : stdgo.GoArray<stdgo.GoUInt8> = {
        var s:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) 0]);
        s[9] = (1 : stdgo.GoUInt8);
        s[10] = (1 : stdgo.GoUInt8);
        s[11] = (1 : stdgo.GoUInt8);
        s[12] = (1 : stdgo.GoUInt8);
        s[13] = (1 : stdgo.GoUInt8);
        s[32] = (1 : stdgo.GoUInt8);
        s;
    };
@:keep class T_replacer_static_extension {
    static public function writeString(t:T_replacer, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return t.writeString(_w, _s);
    static public function replace(t:T_replacer, _s:stdgo.GoString):stdgo.GoString return t.replace(_s);
}
typedef T_replacer = stdgo.StructType & {
    /**
        
        
        
    **/
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString;
    /**
        
        
        
    **/
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
@:structInit @:using(stdgo._internal.strings.Strings.Builder_static_extension) class Builder {
    public var _addr : stdgo.Ref<stdgo._internal.strings.Strings.Builder> = (null : stdgo.Ref<stdgo._internal.strings.Strings.Builder>);
    public var _buf : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public function new(?_addr:stdgo.Ref<stdgo._internal.strings.Strings.Builder>, ?_buf:stdgo.Slice<stdgo.GoUInt8>) {
        if (_addr != null) this._addr = _addr;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Builder(_addr, _buf);
    }
}
@:structInit @:using(stdgo._internal.strings.Strings.Reader_static_extension) class Reader {
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
@:structInit @:using(stdgo._internal.strings.Strings.Replacer_static_extension) class Replacer {
    public var _once : stdgo._internal.sync.Sync.Once = ({} : stdgo._internal.sync.Sync.Once);
    public var _r : stdgo._internal.strings.Strings.T_replacer = (null : stdgo._internal.strings.Strings.T_replacer);
    public var _oldnew : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_once:stdgo._internal.sync.Sync.Once, ?_r:stdgo._internal.strings.Strings.T_replacer, ?_oldnew:stdgo.Slice<stdgo.GoString>) {
        if (_once != null) this._once = _once;
        if (_r != null) this._r = _r;
        if (_oldnew != null) this._oldnew = _oldnew;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Replacer(_once, _r, _oldnew);
    }
}
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_trieNode_static_extension) class T_trieNode {
    public var _value : stdgo.GoString = "";
    public var _priority : stdgo.GoInt = 0;
    public var _prefix : stdgo.GoString = "";
    public var _next : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
    public var _table : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>);
    public function new(?_value:stdgo.GoString, ?_priority:stdgo.GoInt, ?_prefix:stdgo.GoString, ?_next:stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>, ?_table:stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>) {
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
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_genericReplacer_static_extension) class T_genericReplacer {
    public var _root : stdgo._internal.strings.Strings.T_trieNode = ({} : stdgo._internal.strings.Strings.T_trieNode);
    public var _tableSize : stdgo.GoInt = 0;
    public var _mapping : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public function new(?_root:stdgo._internal.strings.Strings.T_trieNode, ?_tableSize:stdgo.GoInt, ?_mapping:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_root != null) this._root = _root;
        if (_tableSize != null) this._tableSize = _tableSize;
        if (_mapping != null) this._mapping = _mapping;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_genericReplacer(_root, _tableSize, _mapping);
    }
}
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_stringWriter_static_extension) class T_stringWriter {
    public var _w : stdgo._internal.io.Io.Writer = (null : stdgo._internal.io.Io.Writer);
    public function new(?_w:stdgo._internal.io.Io.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringWriter(_w);
    }
}
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension) class T_singleStringReplacer {
    public var _finder : stdgo.Ref<stdgo._internal.strings.Strings.T_stringFinder> = (null : stdgo.Ref<stdgo._internal.strings.Strings.T_stringFinder>);
    public var _value : stdgo.GoString = "";
    public function new(?_finder:stdgo.Ref<stdgo._internal.strings.Strings.T_stringFinder>, ?_value:stdgo.GoString) {
        if (_finder != null) this._finder = _finder;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_singleStringReplacer(_finder, _value);
    }
}
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension) class T_byteStringReplacer {
    public var _replacements : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(256, 256, ...[for (i in 0 ... 256) (null : stdgo.Slice<stdgo.GoUInt8>)]);
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
@:structInit @:private @:using(stdgo._internal.strings.Strings.T_stringFinder_static_extension) class T_stringFinder {
    public var _pattern : stdgo.GoString = "";
    public var _badCharSkip : stdgo.GoArray<stdgo.GoInt> = new stdgo.GoArray<stdgo.GoInt>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoInt)]);
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
@:named @:using(stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension) typedef T_appendSliceWriter = stdgo.Slice<stdgo.GoUInt8>;
@:named @:using(stdgo._internal.strings.Strings.T_byteReplacer_static_extension) typedef T_byteReplacer = stdgo.GoArray<stdgo.GoUInt8>;
@:named @:using(stdgo._internal.strings.Strings.T_asciiSet_static_extension) typedef T_asciiSet = stdgo.GoArray<stdgo.GoUInt32>;
function _noescape(_p:stdgo._internal.unsafe.Unsafe.UnsafePointer):stdgo._internal.unsafe.Unsafe.UnsafePointer {
        var _x:stdgo.GoUIntptr = (_p.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr);
        return (stdgo.Go.toInterface((_x ^ (0 : stdgo.GoUIntptr) : stdgo.GoUIntptr)) : stdgo._internal.unsafe.Unsafe.UnsafePointer);
    }
function clone(_s:stdgo.GoString):stdgo.GoString return _s;
function compare(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        if (_a == (_b)) {
            return (0 : stdgo.GoInt);
        };
        if ((_a < _b : Bool)) {
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
function newReader(_s:stdgo.GoString):stdgo.Ref<Reader> {
        return (stdgo.Go.setRef((new stdgo._internal.strings.Strings.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings.Reader)) : stdgo.Ref<stdgo._internal.strings.Strings.Reader>);
    }
function newReplacer(_oldnew:haxe.Rest<stdgo.GoString>):stdgo.Ref<Replacer> {
        var _oldnew = new stdgo.Slice<stdgo.GoString>(_oldnew.length, 0, ..._oldnew);
        if (((_oldnew.length) % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("strings.NewReplacer: odd argument count" : stdgo.GoString));
        };
        return (stdgo.Go.setRef(({ _oldnew : ((null : stdgo.Slice<stdgo.GoString>).__append__(...(_oldnew : Array<stdgo.GoString>))) } : stdgo._internal.strings.Strings.Replacer)) : stdgo.Ref<stdgo._internal.strings.Strings.Replacer>);
    }
function _makeGenericReplacer(_oldnew:stdgo.Slice<stdgo.GoString>):stdgo.Ref<T_genericReplacer> {
        var _r = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.T_genericReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings.T_genericReplacer>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oldnew.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var _key:stdgo.GoString = _oldnew[(_i : stdgo.GoInt)]?.__copy__();
                {
                    var _j:stdgo.GoInt = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_j < (_key.length) : Bool), _j++, {
                        _r._mapping[(_key[(_j : stdgo.GoInt)] : stdgo.GoInt)] = (1 : stdgo.GoUInt8);
                    });
                };
            });
        };
        for (__0 => _b in _r._mapping) {
            _r._tableSize = (_r._tableSize + ((_b : stdgo.GoInt)) : stdgo.GoInt);
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
        _r._root._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oldnew.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _r._root._add(_oldnew[(_i : stdgo.GoInt)]?.__copy__(), _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__(), ((_oldnew.length) - _i : stdgo.GoInt), _r);
            });
        };
        return _r;
    }
function _getStringWriter(_w:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.StringWriter {
        var __tmp__ = try {
            { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_w) : stdgo._internal.io.Io.StringWriter)) : stdgo._internal.io.Io.StringWriter), _1 : true };
        } catch(_) {
            { _0 : (null : stdgo._internal.io.Io.StringWriter), _1 : false };
        }, _sw = __tmp__._0, _ok = __tmp__._1;
        if (!_ok) {
            _sw = stdgo.Go.asInterface((new stdgo._internal.strings.Strings.T_stringWriter(_w) : stdgo._internal.strings.Strings.T_stringWriter));
        };
        return _sw;
    }
function _makeSingleStringReplacer(_pattern:stdgo.GoString, _value:stdgo.GoString):stdgo.Ref<T_singleStringReplacer> {
        return (stdgo.Go.setRef(({ _finder : _makeStringFinder(_pattern?.__copy__()), _value : _value?.__copy__() } : stdgo._internal.strings.Strings.T_singleStringReplacer)) : stdgo.Ref<stdgo._internal.strings.Strings.T_singleStringReplacer>);
    }
function _makeStringFinder(_pattern:stdgo.GoString):stdgo.Ref<T_stringFinder> {
        var _f = (stdgo.Go.setRef(({ _pattern : _pattern?.__copy__(), _goodSuffixSkip : (new stdgo.Slice<stdgo.GoInt>((_pattern.length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.strings.Strings.T_stringFinder)) : stdgo.Ref<stdgo._internal.strings.Strings.T_stringFinder>);
        var _last:stdgo.GoInt = ((_pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        for (_i => _ in _f._badCharSkip) {
            _f._badCharSkip[(_i : stdgo.GoInt)] = (_pattern.length);
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _last : Bool), _i++, {
                _f._badCharSkip[(_pattern[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_last - _i : stdgo.GoInt);
            });
        };
        var _lastPrefix:stdgo.GoInt = _last;
        {
            var _i:stdgo.GoInt = _last;
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (hasPrefix(_pattern?.__copy__(), (_pattern.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__())) {
                    _lastPrefix = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                };
                _f._goodSuffixSkip[(_i : stdgo.GoInt)] = ((_lastPrefix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
            });
        };
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _last : Bool), _i++, {
                var _lenSuffix:stdgo.GoInt = _longestCommonSuffix(_pattern?.__copy__(), (_pattern.__slice__((1 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                if (_pattern[(_i - _lenSuffix : stdgo.GoInt)] != (_pattern[((_last - _lenSuffix : stdgo.GoInt) : stdgo.GoInt)])) {
                    _f._goodSuffixSkip[(_last - _lenSuffix : stdgo.GoInt)] = ((_lenSuffix + _last : stdgo.GoInt) - _i : stdgo.GoInt);
                };
            });
        };
        return _f;
    }
function _longestCommonSuffix(_a:stdgo.GoString, _b:stdgo.GoString):stdgo.GoInt {
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor(((_i < (_a.length) : Bool) && (_i < (_b.length) : Bool) : Bool), _i++, {
            if (_a[(((_a.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt)] != (_b[((((_b.length) - (1 : stdgo.GoInt) : stdgo.GoInt) - _i : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
        });
        return _i;
    }
function _max(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
        if ((_a > _b : Bool)) {
            return _a;
        };
        return _b;
    }
function _explode(_s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _l:stdgo.GoInt = stdgo._internal.unicode.utf8.Utf8.runeCountInString(_s?.__copy__());
        if (((_n < (0 : stdgo.GoInt) : Bool) || (_n > _l : Bool) : Bool)) {
            _n = _l;
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_n - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _i++, {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, _size) : stdgo.GoString)?.__copy__();
                _s = (_s.__slice__(_size) : stdgo.GoString)?.__copy__();
            });
        };
        if ((_n > (0 : stdgo.GoInt) : Bool)) {
            _a[(_n - (1 : stdgo.GoInt) : stdgo.GoInt)] = _s?.__copy__();
        };
        return _a;
    }
function count(_s:stdgo.GoString, _substr:stdgo.GoString):stdgo.GoInt {
        if ((_substr.length) == ((0 : stdgo.GoInt))) {
            return (stdgo._internal.unicode.utf8.Utf8.runeCountInString(_s?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_substr.length) == ((1 : stdgo.GoInt))) {
            return stdgo._internal.internal.bytealg.Bytealg.countString(_s?.__copy__(), _substr[(0 : stdgo.GoInt)]);
        };
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (true) {
            var _i:stdgo.GoInt = index(_s?.__copy__(), _substr?.__copy__());
            if (_i == ((-1 : stdgo.GoInt))) {
                return _n;
            };
            _n++;
            _s = (_s.__slice__((_i + (_substr.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
    }
function contains(_s:stdgo.GoString, _substr:stdgo.GoString):Bool {
        return (index(_s?.__copy__(), _substr?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
function containsAny(_s:stdgo.GoString, _chars:stdgo.GoString):Bool {
        return (indexAny(_s?.__copy__(), _chars?.__copy__()) >= (0 : stdgo.GoInt) : Bool);
    }
function containsRune(_s:stdgo.GoString, _r:stdgo.GoRune):Bool {
        return (indexRune(_s?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool);
    }
function containsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):Bool {
        return (indexFunc(_s?.__copy__(), _f) >= (0 : stdgo.GoInt) : Bool);
    }
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
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        };
        var __tmp__ = stdgo._internal.internal.bytealg.Bytealg.hashStrRev(_substr?.__copy__()), _hashss:stdgo.GoUInt32 = __tmp__._0, _pow:stdgo.GoUInt32 = __tmp__._1;
        var _last:stdgo.GoInt = ((_s.length) - _n : stdgo.GoInt);
        var _h:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        {
            var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= _last : Bool), _i--, {
                _h = ((_h * (16777619u32 : stdgo.GoUInt32) : stdgo.GoUInt32) + (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32);
            });
        };
        if (((_h == _hashss) && ((_s.__slice__(_last) : stdgo.GoString) == _substr) : Bool)) {
            return _last;
        };
        {
            var _i:stdgo.GoInt = (_last - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _h = (_h * ((16777619u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h + ((_s[(_i : stdgo.GoInt)] : stdgo.GoUInt32)) : stdgo.GoUInt32);
                _h = (_h - ((_pow * (_s[(_i + _n : stdgo.GoInt)] : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                if (((_h == _hashss) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function indexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        return stdgo._internal.internal.bytealg.Bytealg.indexByteString(_s?.__copy__(), _c);
    }
function indexRune(_s:stdgo.GoString, _r:stdgo.GoRune):stdgo.GoInt {
        if ((((0 : stdgo.GoInt32) <= _r : Bool) && (_r < (128 : stdgo.GoInt32) : Bool) : Bool)) {
            return indexByte(_s?.__copy__(), (_r : stdgo.GoByte));
        } else if (_r == ((65533 : stdgo.GoInt32))) {
            for (_i => _r in _s) {
                if (_r == ((65533 : stdgo.GoInt32))) {
                    return _i;
                };
            };
            return (-1 : stdgo.GoInt);
        } else if (!stdgo._internal.unicode.utf8.Utf8.validRune(_r)) {
            return (-1 : stdgo.GoInt);
        } else {
            return index(_s?.__copy__(), (_r : stdgo.GoString)?.__copy__());
        };
    }
function indexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if ((_chars.length) == ((1 : stdgo.GoInt))) {
            var _r:stdgo.GoInt32 = (_chars[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                _r = (65533 : stdgo.GoInt32);
            };
            return indexRune(_s?.__copy__(), _r);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                        stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
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
            if ((indexRune(_chars?.__copy__(), _c) >= (0 : stdgo.GoInt) : Bool)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function lastIndexAny(_s:stdgo.GoString, _chars:stdgo.GoString):stdgo.GoInt {
        if (_chars == (stdgo.Go.str())) {
            return (-1 : stdgo.GoInt);
        };
        if ((_s.length) == ((1 : stdgo.GoInt))) {
            var _rc:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune);
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            if ((indexRune(_chars?.__copy__(), _rc) >= (0 : stdgo.GoInt) : Bool)) {
                return (0 : stdgo.GoInt);
            };
            return (-1 : stdgo.GoInt);
        };
        if (((_s.length) > (8 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = _makeASCIISet(_chars?.__copy__()), _as:stdgo._internal.strings.Strings.T_asciiSet = __tmp__._0, _isASCII:Bool = __tmp__._1;
                if (_isASCII) {
                    {
                        var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
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
            if ((_rc >= (128 : stdgo.GoInt32) : Bool)) {
                _rc = (65533 : stdgo.GoInt32);
            };
            {
                var _i:stdgo.GoInt = (_s.length);
                while ((_i > (0 : stdgo.GoInt) : Bool)) {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                    _i = (_i - (_size) : stdgo.GoInt);
                    if (_rc == (_r)) {
                        return _i;
                    };
                };
            };
            return (-1 : stdgo.GoInt);
        };
        {
            var _i:stdgo.GoInt = (_s.length);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if ((indexRune(_chars?.__copy__(), _r) >= (0 : stdgo.GoInt) : Bool)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function lastIndexByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                if (_s[(_i : stdgo.GoInt)] == (_c)) {
                    return _i;
                };
            });
        };
        return (-1 : stdgo.GoInt);
    }
function _genSplit(_s:stdgo.GoString, _sep:stdgo.GoString, _sepSave:stdgo.GoInt, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        if (_n == ((0 : stdgo.GoInt))) {
            return (null : stdgo.Slice<stdgo.GoString>);
        };
        if (_sep == (stdgo.Go.str())) {
            return _explode(_s?.__copy__(), _n);
        };
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            _n = (count(_s?.__copy__(), _sep?.__copy__()) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        if ((_n > ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
            _n = ((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        _n--;
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_i < _n : Bool)) {
            var _m:stdgo.GoInt = index(_s?.__copy__(), _sep?.__copy__());
            if ((_m < (0 : stdgo.GoInt) : Bool)) {
                break;
            };
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(0, (_m + _sepSave : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _s = (_s.__slice__((_m + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _i++;
        };
        _a[(_i : stdgo.GoInt)] = _s?.__copy__();
        return (_a.__slice__(0, (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>);
    }
function splitN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (0 : stdgo.GoInt), _n);
    }
function splitAfterN(_s:stdgo.GoString, _sep:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), _n);
    }
function split(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (0 : stdgo.GoInt), (-1 : stdgo.GoInt));
    }
function splitAfter(_s:stdgo.GoString, _sep:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        return _genSplit(_s?.__copy__(), _sep?.__copy__(), (_sep.length), (-1 : stdgo.GoInt));
    }
function fields(_s:stdgo.GoString):stdgo.Slice<stdgo.GoString> {
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        var _wasSpace:stdgo.GoInt = (1 : stdgo.GoInt);
        var _setBits:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _r:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                _setBits = (_setBits | (_r) : stdgo.GoUInt8);
                var _isSpace:stdgo.GoInt = (_asciiSpace[(_r : stdgo.GoInt)] : stdgo.GoInt);
                _n = (_n + ((_wasSpace & (-1 ^ _isSpace) : stdgo.GoInt)) : stdgo.GoInt);
                _wasSpace = _isSpace;
            });
        };
        if ((_setBits >= (128 : stdgo.GoUInt8) : Bool)) {
            return fieldsFunc(_s?.__copy__(), stdgo._internal.unicode.Unicode.isSpace);
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        var _na:stdgo.GoInt = (0 : stdgo.GoInt);
        var _fieldStart:stdgo.GoInt = (0 : stdgo.GoInt);
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        while (((_i < (_s.length) : Bool) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
            _i++;
        };
        _fieldStart = _i;
        while ((_i < (_s.length) : Bool)) {
            if (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                _i++;
                continue;
            };
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart, _i) : stdgo.GoString)?.__copy__();
            _na++;
            _i++;
            while (((_i < (_s.length) : Bool) && (_asciiSpace[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] != (0 : stdgo.GoUInt8)) : Bool)) {
                _i++;
            };
            _fieldStart = _i;
        };
        if ((_fieldStart < (_s.length) : Bool)) {
            _a[(_na : stdgo.GoInt)] = (_s.__slice__(_fieldStart) : stdgo.GoString)?.__copy__();
        };
        return _a;
    }
@:structInit class T_fieldsFunc___localname___span_9921 {
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldsFunc___localname___span_9921(_start, _end);
    }
}
function fieldsFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.Slice<stdgo.GoString> {
        {};
        var _spans = (new stdgo.Slice<stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921>((0 : stdgo.GoInt).toBasic(), (32 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (32 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (32 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921)]) : stdgo.Slice<stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921>);
        var _start:stdgo.GoInt = (-1 : stdgo.GoInt);
        for (_end => _rune in _s) {
            if (_f(_rune)) {
                if ((_start >= (0 : stdgo.GoInt) : Bool)) {
                    _spans = (_spans.__append__((new stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921(_start, _end) : stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921)));
                    _start = (-1 ^ _start);
                };
            } else {
                if ((_start < (0 : stdgo.GoInt) : Bool)) {
                    _start = _end;
                };
            };
        };
        if ((_start >= (0 : stdgo.GoInt) : Bool)) {
            _spans = (_spans.__append__((new stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921(_start, (_s.length)) : stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921)));
        };
        var _a = (new stdgo.Slice<stdgo.GoString>((_spans.length : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _span in _spans) {
            _a[(_i : stdgo.GoInt)] = (_s.__slice__(_span._start, _span._end) : stdgo.GoString)?.__copy__();
        };
        return _a;
    }
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
        if (((_sep.length) > (0 : stdgo.GoInt) : Bool)) {
            if (((_sep.length) >= ((2147483647 : stdgo.GoInt) / (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + (((_sep.length) * (((_elems.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
        };
        for (__0 => _elem in _elems) {
            if (((_elem.length) > ((2147483647 : stdgo.GoInt) - _n : stdgo.GoInt) : Bool)) {
                throw stdgo.Go.toInterface(("strings: Join output length overflow" : stdgo.GoString));
            };
            _n = (_n + ((_elem.length)) : stdgo.GoInt);
        };
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _b.grow(_n);
        _b.writeString(_elems[(0 : stdgo.GoInt)]?.__copy__());
        for (__1 => _s in (_elems.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoString>)) {
            _b.writeString(_sep?.__copy__());
            _b.writeString(_s?.__copy__());
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function hasPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):Bool {
        return (((_s.length) >= (_prefix.length) : Bool) && ((_s.__slice__((0 : stdgo.GoInt), (_prefix.length)) : stdgo.GoString) == _prefix) : Bool);
    }
function hasSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):Bool {
        return (((_s.length) >= (_suffix.length) : Bool) && ((_s.__slice__(((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString) == _suffix) : Bool);
    }
function map_(_mapping:stdgo.GoRune -> stdgo.GoRune, _s:stdgo.GoString):stdgo.GoString {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        for (_i => _c in _s) {
            var _r:stdgo.GoInt32 = _mapping(_c);
            if (((_r == _c) && (_c != (65533 : stdgo.GoInt32)) : Bool)) {
                continue;
            };
            var _width:stdgo.GoInt = (0 : stdgo.GoInt);
            if (_c == ((65533 : stdgo.GoInt32))) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _c = __tmp__._0;
                    _width = __tmp__._1;
                };
                if (((_width != (1 : stdgo.GoInt)) && (_r == _c) : Bool)) {
                    continue;
                };
            } else {
                _width = stdgo._internal.unicode.utf8.Utf8.runeLen(_c);
            };
            _b.grow(((_s.length) + (4 : stdgo.GoInt) : stdgo.GoInt));
            _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                _b.writeRune(_r);
            };
            _s = (_s.__slice__((_i + _width : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            break;
        };
        if (_b.cap() == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        for (__0 => _c in _s) {
            var _r:stdgo.GoInt32 = _mapping(_c);
            if ((_r >= (0 : stdgo.GoInt32) : Bool)) {
                if ((_r < (128 : stdgo.GoInt32) : Bool)) {
                    _b.writeByte((_r : stdgo.GoByte));
                } else {
                    _b.writeRune(_r);
                };
            };
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function repeat(_s:stdgo.GoString, _count:stdgo.GoInt):stdgo.GoString {
        {
            final __value__ = _count;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return stdgo.Go.str()?.__copy__();
            } else if (__value__ == ((1 : stdgo.GoInt))) {
                return _s?.__copy__();
            };
        };
        if ((_count < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings: negative Repeat count" : stdgo.GoString));
        };
        if (((_s.length) >= ((2147483647 : stdgo.GoInt) / _count : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings: Repeat output length overflow" : stdgo.GoString));
        };
        var _n:stdgo.GoInt = ((_s.length) * _count : stdgo.GoInt);
        if ((_s.length) == ((0 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        {};
        var _chunkMax:stdgo.GoInt = _n;
        if ((_n > (8192 : stdgo.GoInt) : Bool)) {
            _chunkMax = (((8192 : stdgo.GoInt) / (_s.length) : stdgo.GoInt) * (_s.length) : stdgo.GoInt);
            if (_chunkMax == ((0 : stdgo.GoInt))) {
                _chunkMax = (_s.length);
            };
        };
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _b.grow(_n);
        _b.writeString(_s?.__copy__());
        while ((_b.len() < _n : Bool)) {
            var _chunk:stdgo.GoInt = (_n - _b.len() : stdgo.GoInt);
            if ((_chunk > _b.len() : Bool)) {
                _chunk = _b.len();
            };
            if ((_chunk > _chunkMax : Bool)) {
                _chunk = _chunkMax;
            };
            _b.writeString(((_b.string() : stdgo.GoString).__slice__(0, _chunk) : stdgo.GoString)?.__copy__());
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function toUpper(_s:stdgo.GoString):stdgo.GoString {
        var __0:Bool = true, __1:Bool = false, _hasLower:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
                _hasLower = (_hasLower || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
            });
        };
        if (_isASCII) {
            if (!_hasLower) {
                return _s?.__copy__();
            };
            var __0:Builder = ({} : stdgo._internal.strings.Strings.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt), _pos:stdgo.GoInt = __1, _b:Builder = __0;
            _b.grow((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        if ((_pos < _i : Bool)) {
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString)?.__copy__());
                        };
                        _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                });
            };
            if ((_pos < (_s.length) : Bool)) {
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        return map_(stdgo._internal.unicode.Unicode.toUpper, _s?.__copy__())?.__copy__();
    }
function toLower(_s:stdgo.GoString):stdgo.GoString {
        var __0:Bool = true, __1:Bool = false, _hasUpper:Bool = __1, _isASCII:Bool = __0;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    _isASCII = false;
                    break;
                };
                _hasUpper = (_hasUpper || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool);
            });
        };
        if (_isASCII) {
            if (!_hasUpper) {
                return _s?.__copy__();
            };
            var __0:Builder = ({} : stdgo._internal.strings.Strings.Builder), __1:stdgo.GoInt = (0 : stdgo.GoInt), _pos:stdgo.GoInt = __1, _b:Builder = __0;
            _b.grow((_s.length));
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) {
                        _c = (_c + ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        if ((_pos < _i : Bool)) {
                            _b.writeString((_s.__slice__(_pos, _i) : stdgo.GoString)?.__copy__());
                        };
                        _b.writeByte(_c);
                        _pos = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                    };
                });
            };
            if ((_pos < (_s.length) : Bool)) {
                _b.writeString((_s.__slice__(_pos) : stdgo.GoString)?.__copy__());
            };
            return (_b.string() : stdgo.GoString)?.__copy__();
        };
        return map_(stdgo._internal.unicode.Unicode.toLower, _s?.__copy__())?.__copy__();
    }
function toTitle(_s:stdgo.GoString):stdgo.GoString {
        return map_(stdgo._internal.unicode.Unicode.toTitle, _s?.__copy__())?.__copy__();
    }
function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toUpper, _s?.__copy__())?.__copy__();
    }
function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toLower, _s?.__copy__())?.__copy__();
    }
function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:stdgo.GoString):stdgo.GoString {
        return map_(_c.toTitle, _s?.__copy__())?.__copy__();
    }
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString {
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        for (_i => _c in _s) {
            if (_c != ((65533 : stdgo.GoInt32))) {
                continue;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            if (_wid == ((1 : stdgo.GoInt))) {
                _b.grow(((_s.length) + (_replacement.length) : stdgo.GoInt));
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
            while ((_i < (_s.length) : Bool)) {
                var _c:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    _invalid = false;
                    _b.writeByte(_c);
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __1:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                if (_wid == ((1 : stdgo.GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        _b.writeString(_replacement?.__copy__());
                    };
                    continue;
                };
                _invalid = false;
                _b.writeString((_s.__slice__(_i, (_i + _wid : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function _isSeparator(_r:stdgo.GoRune):Bool {
        if ((_r <= (127 : stdgo.GoInt32) : Bool)) {
            if ((((48 : stdgo.GoInt32) <= _r : Bool) && (_r <= (57 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((97 : stdgo.GoInt32) <= _r : Bool) && (_r <= (122 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if ((((65 : stdgo.GoInt32) <= _r : Bool) && (_r <= (90 : stdgo.GoInt32) : Bool) : Bool)) {
                return false;
            } else if (_r == ((95 : stdgo.GoInt32))) {
                return false;
            };
            return true;
        };
        if ((stdgo._internal.unicode.Unicode.isLetter(_r) || stdgo._internal.unicode.Unicode.isDigit(_r) : Bool)) {
            return false;
        };
        return stdgo._internal.unicode.Unicode.isSpace(_r);
    }
function title(_s:stdgo.GoString):stdgo.GoString {
        var _prev:stdgo.GoInt32 = (32 : stdgo.GoInt32);
        return map_(function(_r:stdgo.GoRune):stdgo.GoRune {
            if (_isSeparator(_prev)) {
                _prev = _r;
                return stdgo._internal.unicode.Unicode.toTitle(_r);
            };
            _prev = _r;
            return _r;
        }, _s?.__copy__())?.__copy__();
    }
function trimLeftFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        var _i:stdgo.GoInt = _indexFunc(_s?.__copy__(), _f, false);
        if (_i == ((-1 : stdgo.GoInt))) {
            return stdgo.Go.str()?.__copy__();
        };
        return (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
    }
function trimRightFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        var _i:stdgo.GoInt = _lastIndexFunc(_s?.__copy__(), _f, false);
        if (((_i >= (0 : stdgo.GoInt) : Bool) && (_s[(_i : stdgo.GoInt)] >= (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            _i = (_i + (_wid) : stdgo.GoInt);
        } else {
            _i++;
        };
        return (_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__();
    }
function trimFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoString {
        return trimRightFunc(trimLeftFunc(_s?.__copy__(), _f)?.__copy__(), _f)?.__copy__();
    }
function indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoInt {
        return _indexFunc(_s?.__copy__(), _f, true);
    }
function lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool):stdgo.GoInt {
        return _lastIndexFunc(_s?.__copy__(), _f, true);
    }
function _indexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):stdgo.GoInt {
        for (_i => _r in _s) {
            if (_f(_r) == (_truth)) {
                return _i;
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _lastIndexFunc(_s:stdgo.GoString, _f:stdgo.GoRune -> Bool, _truth:Bool):stdgo.GoInt {
        {
            var _i:stdgo.GoInt = (_s.length);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString((_s.__slice__((0 : stdgo.GoInt), _i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i - (_size) : stdgo.GoInt);
                if (_f(_r) == (_truth)) {
                    return _i;
                };
            };
        };
        return (-1 : stdgo.GoInt);
    }
function _makeASCIISet(_chars:stdgo.GoString):{ var _0 : T_asciiSet; var _1 : Bool; } {
        var _as:T_asciiSet = new stdgo._internal.strings.Strings.T_asciiSet(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt32)]), _ok:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_chars.length) : Bool), _i++, {
                var _c:stdgo.GoUInt8 = _chars[(_i : stdgo.GoInt)];
                if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                    return { _0 : _as?.__copy__(), _1 : false };
                };
                _as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] = (_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] | (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32);
            });
        };
        return { _0 : _as?.__copy__(), _1 : true };
    }
function trim(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if (((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s?.__copy__();
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimLeftByte(_trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings.T_asciiSet>))?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimLeftUnicode(_trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
function trimLeft(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if (((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s?.__copy__();
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimLeftByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimLeftASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimLeftUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
function _trimLeftByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[(0 : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimLeftASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[(0 : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimLeftUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoInt32 = (_s[(0 : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_s?.__copy__());
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
function trimRight(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        if (((_s == stdgo.Go.str()) || (_cutset == stdgo.Go.str()) : Bool)) {
            return _s?.__copy__();
        };
        if (((_cutset.length == (1 : stdgo.GoInt)) && (_cutset[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool) : Bool)) {
            return _trimRightByte(_s?.__copy__(), _cutset[(0 : stdgo.GoInt)])?.__copy__();
        };
        {
            var __tmp__ = _makeASCIISet(_cutset?.__copy__()), _as:stdgo._internal.strings.Strings.T_asciiSet = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                return _trimRightASCII(_s?.__copy__(), (stdgo.Go.setRef(_as) : stdgo.Ref<stdgo._internal.strings.Strings.T_asciiSet>))?.__copy__();
            };
        };
        return _trimRightUnicode(_s?.__copy__(), _cutset?.__copy__())?.__copy__();
    }
function _trimRightByte(_s:stdgo.GoString, _c:stdgo.GoByte):stdgo.GoString {
        while ((((_s.length) > (0 : stdgo.GoInt) : Bool) && (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == _c) : Bool)) {
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimRightASCII(_s:stdgo.GoString, _as:stdgo.Ref<T_asciiSet>):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            if (!_as._contains(_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)])) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function _trimRightUnicode(_s:stdgo.GoString, _cutset:stdgo.GoString):stdgo.GoString {
        while (((_s.length) > (0 : stdgo.GoInt) : Bool)) {
            var __0:stdgo.GoInt32 = (_s[((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoRune), __1:stdgo.GoInt = (1 : stdgo.GoInt), _n:stdgo.GoInt = __1, _r:stdgo.GoInt32 = __0;
            if ((_r >= (128 : stdgo.GoInt32) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeLastRuneInString(_s?.__copy__());
                    _r = __tmp__._0;
                    _n = __tmp__._1;
                };
            };
            if (!containsRune(_cutset?.__copy__(), _r)) {
                break;
            };
            _s = (_s.__slice__(0, ((_s.length) - _n : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function trimSpace(_s:stdgo.GoString):stdgo.GoString {
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        stdgo.Go.cfor((_start < (_s.length) : Bool), _start++, {
            var _c:stdgo.GoUInt8 = _s[(_start : stdgo.GoInt)];
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return trimFunc((_s.__slice__(_start) : stdgo.GoString)?.__copy__(), stdgo._internal.unicode.Unicode.isSpace)?.__copy__();
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        var _stop:stdgo.GoInt = (_s.length);
        stdgo.Go.cfor((_stop > _start : Bool), _stop--, {
            var _c:stdgo.GoUInt8 = _s[(_stop - (1 : stdgo.GoInt) : stdgo.GoInt)];
            if ((_c >= (128 : stdgo.GoUInt8) : Bool)) {
                return trimRightFunc((_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__(), stdgo._internal.unicode.Unicode.isSpace)?.__copy__();
            };
            if (_asciiSpace[(_c : stdgo.GoInt)] == ((0 : stdgo.GoUInt8))) {
                break;
            };
        });
        return (_s.__slice__(_start, _stop) : stdgo.GoString)?.__copy__();
    }
function trimPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):stdgo.GoString {
        if (hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function trimSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):stdgo.GoString {
        if (hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
        };
        return _s?.__copy__();
    }
function replace(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString, _n:stdgo.GoInt):stdgo.GoString {
        if (((_old == _new) || (_n == (0 : stdgo.GoInt)) : Bool)) {
            return _s?.__copy__();
        };
        {
            var _m:stdgo.GoInt = count(_s?.__copy__(), _old?.__copy__());
            if (_m == ((0 : stdgo.GoInt))) {
                return _s?.__copy__();
            } else if (((_n < (0 : stdgo.GoInt) : Bool) || (_m < _n : Bool) : Bool)) {
                _n = _m;
            };
        };
        var _b:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        _b.grow(((_s.length) + (_n * (((_new.length) - (_old.length) : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt));
        var _start:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                var _j:stdgo.GoInt = _start;
                if ((_old.length) == ((0 : stdgo.GoInt))) {
                    if ((_i > (0 : stdgo.GoInt) : Bool)) {
                        var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_s.__slice__(_start) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                        _j = (_j + (_wid) : stdgo.GoInt);
                    };
                } else {
                    _j = (_j + (index((_s.__slice__(_start) : stdgo.GoString)?.__copy__(), _old?.__copy__())) : stdgo.GoInt);
                };
                _b.writeString((_s.__slice__(_start, _j) : stdgo.GoString)?.__copy__());
                _b.writeString(_new?.__copy__());
                _start = (_j + (_old.length) : stdgo.GoInt);
            });
        };
        _b.writeString((_s.__slice__(_start) : stdgo.GoString)?.__copy__());
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
function replaceAll(_s:stdgo.GoString, _old:stdgo.GoString, _new:stdgo.GoString):stdgo.GoString {
        return replace(_s?.__copy__(), _old?.__copy__(), _new?.__copy__(), (-1 : stdgo.GoInt))?.__copy__();
    }
function equalFold(_s:stdgo.GoString, _t:stdgo.GoString):Bool {
        stdgo._internal.internal.Macro.controlFlow({
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor(((_i < (_s.length) : Bool) && (_i < (_t.length) : Bool) : Bool), _i++, {
                var _sr:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                var _tr:stdgo.GoUInt8 = _t[(_i : stdgo.GoInt)];
                if (((_sr | _tr : stdgo.GoUInt8) >= (128 : stdgo.GoUInt8) : Bool)) {
                    @:goto "hasUnicode";
                };
                if (_tr == (_sr)) {
                    continue;
                };
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if (((((65 : stdgo.GoUInt8) <= _sr : Bool) && (_sr <= (90 : stdgo.GoUInt8) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoUInt8) : stdgo.GoUInt8) - (65 : stdgo.GoUInt8) : stdgo.GoUInt8)) : Bool)) {
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
                if ((_t[(0 : stdgo.GoInt)] < (128 : stdgo.GoUInt8) : Bool)) {
                    {
                        final __tmp__0 = (_t[(0 : stdgo.GoInt)] : stdgo.GoRune);
                        final __tmp__1 = (_t.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        _tr = __tmp__0;
                        _t = __tmp__1;
                    };
                } else {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString(_t?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
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
                if ((_tr < _sr : Bool)) {
                    {
                        final __tmp__0 = _sr;
                        final __tmp__1 = _tr;
                        _tr = __tmp__0;
                        _sr = __tmp__1;
                    };
                };
                if ((_tr < (128 : stdgo.GoInt32) : Bool)) {
                    if (((((65 : stdgo.GoInt32) <= _sr : Bool) && (_sr <= (90 : stdgo.GoInt32) : Bool) : Bool) && (_tr == ((_sr + (97 : stdgo.GoInt32) : stdgo.GoInt32) - (65 : stdgo.GoInt32) : stdgo.GoInt32)) : Bool)) {
                        continue;
                    };
                    return false;
                };
                var _r:stdgo.GoInt32 = stdgo._internal.unicode.Unicode.simpleFold(_sr);
                while (((_r != _sr) && (_r < _tr : Bool) : Bool)) {
                    _r = stdgo._internal.unicode.Unicode.simpleFold(_r);
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
        } else if ((_n > (_s.length) : Bool)) {
            return (-1 : stdgo.GoInt);
        } else if ((_n <= stdgo._internal.internal.bytealg.Bytealg.maxLen : Bool)) {
            if (((_s.length) <= (0 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.internal.bytealg.Bytealg.indexString(_s?.__copy__(), _substr?.__copy__());
            };
            var _c0:stdgo.GoUInt8 = _substr[(0 : stdgo.GoInt)];
            var _c1:stdgo.GoUInt8 = _substr[(1 : stdgo.GoInt)];
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            var _t:stdgo.GoInt = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i < _t : Bool)) {
                if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                    var _o:stdgo.GoInt = indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0);
                    if ((_o < (0 : stdgo.GoInt) : Bool)) {
                        return (-1 : stdgo.GoInt);
                    };
                    _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                };
                if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                    return _i;
                };
                _fails++;
                _i++;
                if ((_fails > stdgo._internal.internal.bytealg.Bytealg.cutover(_i) : Bool)) {
                    var _r:stdgo.GoInt = stdgo._internal.internal.bytealg.Bytealg.indexString((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__());
                    if ((_r >= (0 : stdgo.GoInt) : Bool)) {
                        return (_r + _i : stdgo.GoInt);
                    };
                    return (-1 : stdgo.GoInt);
                };
            };
            return (-1 : stdgo.GoInt);
        };
        var _c0:stdgo.GoUInt8 = _substr[(0 : stdgo.GoInt)];
        var _c1:stdgo.GoUInt8 = _substr[(1 : stdgo.GoInt)];
        var _i:stdgo.GoInt = (0 : stdgo.GoInt);
        var _t:stdgo.GoInt = (((_s.length) - _n : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
        var _fails:stdgo.GoInt = (0 : stdgo.GoInt);
        while ((_i < _t : Bool)) {
            if (_s[(_i : stdgo.GoInt)] != (_c0)) {
                var _o:stdgo.GoInt = indexByte((_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt), _t) : stdgo.GoString)?.__copy__(), _c0);
                if ((_o < (0 : stdgo.GoInt) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                _i = (_i + ((_o + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            };
            if (((_s[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] == _c1) && ((_s.__slice__(_i, (_i + _n : stdgo.GoInt)) : stdgo.GoString) == _substr) : Bool)) {
                return _i;
            };
            _i++;
            _fails++;
            if (((_fails >= ((4 : stdgo.GoInt) + (_i >> (4i64 : stdgo.GoUInt64) : stdgo.GoInt) : stdgo.GoInt) : Bool) && (_i < _t : Bool) : Bool)) {
                var _j:stdgo.GoInt = stdgo._internal.internal.bytealg.Bytealg.indexRabinKarp((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _substr?.__copy__());
                if ((_j < (0 : stdgo.GoInt) : Bool)) {
                    return (-1 : stdgo.GoInt);
                };
                return (_i + _j : stdgo.GoInt);
            };
        };
        return (-1 : stdgo.GoInt);
    }
function cut(_s:stdgo.GoString, _sep:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; } {
        var _before:stdgo.GoString = ("" : stdgo.GoString), _after:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        {
            var _i:stdgo.GoInt = index(_s?.__copy__(), _sep?.__copy__());
            if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__(), _1 : (_s.__slice__((_i + (_sep.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _2 : true };
            };
        };
        return { _0 : _s?.__copy__(), _1 : stdgo.Go.str()?.__copy__(), _2 : false };
    }
function cutPrefix(_s:stdgo.GoString, _prefix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _after:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        if (!hasPrefix(_s?.__copy__(), _prefix?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : false };
        };
        return { _0 : (_s.__slice__((_prefix.length)) : stdgo.GoString)?.__copy__(), _1 : true };
    }
function cutSuffix(_s:stdgo.GoString, _suffix:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : Bool; } {
        var _before:stdgo.GoString = ("" : stdgo.GoString), _found:Bool = false;
        if (!hasSuffix(_s?.__copy__(), _suffix?.__copy__())) {
            return { _0 : _s?.__copy__(), _1 : false };
        };
        return { _0 : (_s.__slice__(0, ((_s.length) - (_suffix.length) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : true };
    }
class Builder_asInterface {
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function writeRune(_r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeRune(_r);
    @:keep
    public dynamic function writeByte(_c:stdgo.GoByte):stdgo.Error return __self__.value.writeByte(_c);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    @:keep
    public dynamic function grow(_n:stdgo.GoInt):Void __self__.value.grow(_n);
    @:keep
    public dynamic function _grow(_n:stdgo.GoInt):Void __self__.value._grow(_n);
    @:keep
    public dynamic function reset():Void __self__.value.reset();
    @:keep
    public dynamic function cap():stdgo.GoInt return __self__.value.cap();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function string():stdgo.GoString return __self__.value.string();
    @:keep
    public dynamic function _copyCheck():Void __self__.value._copyCheck();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Builder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.Builder_asInterface) class Builder_static_extension {
    @:keep
    static public function writeString( _b:stdgo.Ref<Builder>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(...(_s : Array<stdgo.GoUInt8>)));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeRune( _b:stdgo.Ref<Builder>, _r:stdgo.GoRune):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        var _n:stdgo.GoInt = (_b._buf.length);
        _b._buf = stdgo._internal.unicode.utf8.Utf8.appendRune(_b._buf, _r);
        return { _0 : ((_b._buf.length) - _n : stdgo.GoInt), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function writeByte( _b:stdgo.Ref<Builder>, _c:stdgo.GoByte):stdgo.Error {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(_c));
        return (null : stdgo.Error);
    }
    @:keep
    static public function write( _b:stdgo.Ref<Builder>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        _b._buf = (_b._buf.__append__(...(_p : Array<stdgo.GoUInt8>)));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function grow( _b:stdgo.Ref<Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._copyCheck();
        if ((_n < (0 : stdgo.GoInt) : Bool)) {
            throw stdgo.Go.toInterface(("strings.Builder.Grow: negative count" : stdgo.GoString));
        };
        if (((_b._buf.capacity - (_b._buf.length) : stdgo.GoInt) < _n : Bool)) {
            _b._grow(_n);
        };
    }
    @:keep
    static public function _grow( _b:stdgo.Ref<Builder>, _n:stdgo.GoInt):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        var _buf = (stdgo._internal.internal.bytealg.Bytealg.makeNoZero((((2 : stdgo.GoInt) * _b._buf.capacity : stdgo.GoInt) + _n : stdgo.GoInt)).__slice__(0, (_b._buf.length)) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo.Go.copySlice(_buf, _b._buf);
        _b._buf = _buf;
    }
    @:keep
    static public function reset( _b:stdgo.Ref<Builder>):Void {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        _b._addr = null;
        _b._buf = (null : stdgo.Slice<stdgo.GoUInt8>);
    }
    @:keep
    static public function cap( _b:stdgo.Ref<Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return _b._buf.capacity;
    }
    @:keep
    static public function len( _b:stdgo.Ref<Builder>):stdgo.GoInt {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return (_b._buf.length);
    }
    @:keep
    static public function string( _b:stdgo.Ref<Builder>):stdgo.GoString {
        @:recv var _b:stdgo.Ref<Builder> = _b;
        return ((stdgo.Go.toInterface((_b._buf : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>)) : stdgo._internal.unsafe.Unsafe.UnsafePointer).__convert__(stdgo._internal.internal.reflect.Reflect.GoType.pointerType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) })) : stdgo.Pointer<stdgo.GoString>).value;
    }
    @:keep
    static public function _copyCheck( _b:stdgo.Ref<Builder>):Void _b._addr = _b;
}
class Reader_asInterface {
    @:keep
    public dynamic function reset(_s:stdgo.GoString):Void __self__.value.reset(_s);
    @:keep
    public dynamic function writeTo(_w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.writeTo(_w);
    @:keep
    public dynamic function seek(_offset:stdgo.GoInt64, _whence:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } return __self__.value.seek(_offset, _whence);
    @:keep
    public dynamic function unreadRune():stdgo.Error return __self__.value.unreadRune();
    @:keep
    public dynamic function readRune():{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } return __self__.value.readRune();
    @:keep
    public dynamic function unreadByte():stdgo.Error return __self__.value.unreadByte();
    @:keep
    public dynamic function readByte():{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } return __self__.value.readByte();
    @:keep
    public dynamic function readAt(_b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.readAt(_b, _off);
    @:keep
    public dynamic function read(_b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.read(_b);
    @:keep
    public dynamic function size():stdgo.GoInt64 return __self__.value.size();
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Reader>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.Reader_asInterface) class Reader_static_extension {
    @:keep
    static public function reset( _r:stdgo.Ref<Reader>, _s:stdgo.GoString):Void {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        {
            var __tmp__ = (new stdgo._internal.strings.Strings.Reader(_s?.__copy__(), (0i64 : stdgo.GoInt64), (-1 : stdgo.GoInt)) : stdgo._internal.strings.Strings.Reader);
            _r._s = __tmp__._s;
            _r._i = __tmp__._i;
            _r._prevRune = __tmp__._prevRune;
        };
    }
    @:keep
    static public function writeTo( _r:stdgo.Ref<Reader>, _w:stdgo._internal.io.Io.Writer):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt64 = (0 : stdgo.GoInt64), _err:stdgo.Error = (null : stdgo.Error);
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : (null : stdgo.Error) };
        };
        var _s:stdgo.GoString = (_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__();
        var __tmp__ = stdgo._internal.io.Io.writeString(_w, _s?.__copy__()), _m:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if ((_m > (_s.length) : Bool)) {
            throw stdgo.Go.toInterface(("strings.Reader.WriteTo: invalid WriteString count" : stdgo.GoString));
        };
        _r._i = (_r._i + ((_m : stdgo.GoInt64)) : stdgo.GoInt64);
        _n = (_m : stdgo.GoInt64);
        if (((_m != (_s.length)) && (_err == null) : Bool)) {
            _err = stdgo._internal.io.Io.errShortWrite;
        };
        return { _0 : _n, _1 : _err };
    }
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
                _abs = (_r._i + _offset : stdgo.GoInt64);
            } else if (__value__ == ((2 : stdgo.GoInt))) {
                _abs = ((_r._s.length : stdgo.GoInt64) + _offset : stdgo.GoInt64);
            } else {
                return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors.new_(("strings.Reader.Seek: invalid whence" : stdgo.GoString)) };
            };
        };
        if ((_abs < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0i64 : stdgo.GoInt64), _1 : stdgo._internal.errors.Errors.new_(("strings.Reader.Seek: negative position" : stdgo.GoString)) };
        };
        _r._i = _abs;
        return { _0 : _abs, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function unreadRune( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("strings.Reader.UnreadRune: at beginning of string" : stdgo.GoString));
        };
        if ((_r._prevRune < (0 : stdgo.GoInt) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("strings.Reader.UnreadRune: previous operation was not ReadRune" : stdgo.GoString));
        };
        _r._i = (_r._prevRune : stdgo.GoInt64);
        _r._prevRune = (-1 : stdgo.GoInt);
        return (null : stdgo.Error);
    }
    @:keep
    static public function readRune( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoRune; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _ch:stdgo.GoRune = (0 : stdgo.GoInt32), _size:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            _r._prevRune = (-1 : stdgo.GoInt);
            return { _0 : (0 : stdgo.GoInt32), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.io.Io.eof };
        };
        _r._prevRune = (_r._i : stdgo.GoInt);
        {
            var _c:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
            if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                _r._i++;
                return { _0 : (_c : stdgo.GoRune), _1 : (1 : stdgo.GoInt), _2 : (null : stdgo.Error) };
            };
        };
        {
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8.decodeRuneInString((_r._s.__slice__(_r._i) : stdgo.GoString)?.__copy__());
            _ch = __tmp__._0;
            _size = __tmp__._1;
        };
        _r._i = (_r._i + ((_size : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _ch, _1 : _size, _2 : _err };
    }
    @:keep
    static public function unreadByte( _r:stdgo.Ref<Reader>):stdgo.Error {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i <= (0i64 : stdgo.GoInt64) : Bool)) {
            return stdgo._internal.errors.Errors.new_(("strings.Reader.UnreadByte: at beginning of string" : stdgo.GoString));
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _r._i--;
        return (null : stdgo.Error);
    }
    @:keep
    static public function readByte( _r:stdgo.Ref<Reader>):{ var _0 : stdgo.GoByte; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        _r._prevRune = (-1 : stdgo.GoInt);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoUInt8), _1 : stdgo._internal.io.Io.eof };
        };
        var _b:stdgo.GoUInt8 = _r._s[(_r._i : stdgo.GoInt)];
        _r._i++;
        return { _0 : _b, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function readAt( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_off < (0i64 : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.errors.Errors.new_(("strings.Reader.ReadAt: negative offset" : stdgo.GoString)) };
        };
        if ((_off >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_off) : stdgo.GoString));
        if ((_n < (_b.length) : Bool)) {
            _err = stdgo._internal.io.Io.eof;
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function read( _r:stdgo.Ref<Reader>, _b:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return { _0 : (0 : stdgo.GoInt), _1 : stdgo._internal.io.Io.eof };
        };
        _r._prevRune = (-1 : stdgo.GoInt);
        _n = stdgo.Go.copySlice(_b, (_r._s.__slice__(_r._i) : stdgo.GoString));
        _r._i = (_r._i + ((_n : stdgo.GoInt64)) : stdgo.GoInt64);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function size( _r:stdgo.Ref<Reader>):stdgo.GoInt64 {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        return (_r._s.length : stdgo.GoInt64);
    }
    @:keep
    static public function len( _r:stdgo.Ref<Reader>):stdgo.GoInt {
        @:recv var _r:stdgo.Ref<Reader> = _r;
        if ((_r._i >= (_r._s.length : stdgo.GoInt64) : Bool)) {
            return (0 : stdgo.GoInt);
        };
        return (((_r._s.length : stdgo.GoInt64) - _r._i : stdgo.GoInt64) : stdgo.GoInt);
    }
}
class Replacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Replacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.Replacer_asInterface) class Replacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<Replacer>, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<Replacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        _r._once.do_(_r._buildOnce);
        return _r._r.writeString(_w, _s?.__copy__());
    }
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
        if (((_oldnew.length == (2 : stdgo.GoInt)) && ((_oldnew[(0 : stdgo.GoInt)].length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            return stdgo.Go.asInterface(_makeSingleStringReplacer(_oldnew[(0 : stdgo.GoInt)]?.__copy__(), _oldnew[(1 : stdgo.GoInt)]?.__copy__()));
        };
        var _allNewBytes:Bool = true;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_oldnew.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if ((_oldnew[(_i : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    return stdgo.Go.asInterface(_makeGenericReplacer(_oldnew));
                };
                if ((_oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)].length) != ((1 : stdgo.GoInt))) {
                    _allNewBytes = false;
                };
            });
        };
        if (_allNewBytes) {
            var _r:stdgo._internal.strings.Strings.T_byteReplacer = (new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[]).__setNumber32__() : stdgo._internal.strings.Strings.T_byteReplacer)?.__copy__();
            for (_i => _ in _r) {
                _r[(_i : stdgo.GoInt)] = (_i : stdgo.GoByte);
            };
            {
                var _i:stdgo.GoInt = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                    var _o:stdgo.GoUInt8 = _oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)];
                    var _n:stdgo.GoUInt8 = _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)][(0 : stdgo.GoInt)];
                    _r[(_o : stdgo.GoInt)] = _n;
                });
            };
            return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings.T_byteReplacer>));
        };
        var _r:stdgo._internal.strings.Strings.T_byteStringReplacer = ({ _toReplace : (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), ((_oldnew.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>) } : stdgo._internal.strings.Strings.T_byteStringReplacer);
        {
            var _i:stdgo.GoInt = ((_oldnew.length) - (2 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i = (_i - ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                var _o:stdgo.GoUInt8 = _oldnew[(_i : stdgo.GoInt)][(0 : stdgo.GoInt)];
                var _n:stdgo.GoString = _oldnew[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
                if (_r._replacements[(_o : stdgo.GoInt)] == null) {
                    _r._toReplace = (_r._toReplace.__append__(((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[_o]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__()));
                };
                _r._replacements[(_o : stdgo.GoInt)] = (_n : stdgo.Slice<stdgo.GoByte>);
            });
        };
        return stdgo.Go.asInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.strings.Strings.T_byteStringReplacer>));
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
        return _gen._printNode((stdgo.Go.setRef(_gen._root) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>), (0 : stdgo.GoInt))?.__copy__();
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_trieNode>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_trieNode_asInterface) class T_trieNode_static_extension {
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
            stdgo.Go.cfor(((_n < (_t._prefix.length) : Bool) && (_n < (_key.length) : Bool) : Bool), _n++, {
                if (_t._prefix[(_n : stdgo.GoInt)] != (_key[(_n : stdgo.GoInt)])) {
                    break;
                };
            });
            if (_n == ((_t._prefix.length))) {
                _t._next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else if (_n == ((0 : stdgo.GoInt))) {
                var _prefixNode:stdgo.Ref<T_trieNode> = (null : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
                if ((_t._prefix.length) == ((1 : stdgo.GoInt))) {
                    _prefixNode = _t._next;
                } else {
                    _prefixNode = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo._internal.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
                };
                var _keyNode = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
                _t._table = (new stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>((_r._tableSize : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>);
                _t._table[(_r._mapping[(_t._prefix[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _prefixNode;
                _t._table[(_r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt)] = _keyNode;
                _t._prefix = stdgo.Go.str()?.__copy__();
                _t._next = null;
                _keyNode._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            } else {
                var _next = (stdgo.Go.setRef(({ _prefix : (_t._prefix.__slice__(_n) : stdgo.GoString)?.__copy__(), _next : _t._next } : stdgo._internal.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
                _t._prefix = (_t._prefix.__slice__(0, _n) : stdgo.GoString)?.__copy__();
                _t._next = _next;
                _next._add((_key.__slice__(_n) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
            };
        } else if (_t._table != null) {
            var _m:stdgo.GoUInt8 = _r._mapping[(_key[(0 : stdgo.GoInt)] : stdgo.GoInt)];
            if (_t._table[(_m : stdgo.GoInt)] == null || (_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__) {
                _t._table[(_m : stdgo.GoInt)] = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
            };
            _t._table[(_m : stdgo.GoInt)]._add((_key.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _val?.__copy__(), _priority, _r);
        } else {
            _t._prefix = _key?.__copy__();
            _t._next = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings.T_trieNode)) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
            _t._next._add(stdgo.Go.str()?.__copy__(), _val?.__copy__(), _priority, _r);
        };
    }
}
class T_genericReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_genericReplacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_genericReplacer_asInterface) class T_genericReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_genericReplacer>, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo._internal.io.Io.StringWriter = _getStringWriter(_w);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = __1, _last:stdgo.GoInt = __0;
        var _prevMatchEmpty:Bool = false;
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            while ((_i <= (_s.length) : Bool)) {
                if (((_i != (_s.length)) && (_r._root._priority == (0 : stdgo.GoInt)) : Bool)) {
                    var _index:stdgo.GoInt = (_r._mapping[(_s[(_i : stdgo.GoInt)] : stdgo.GoInt)] : stdgo.GoInt);
                    if (((_index == _r._tableSize) || ((_r._root._table[(_index : stdgo.GoInt)] == null) || (_r._root._table[(_index : stdgo.GoInt)] : Dynamic).__nil__) : Bool)) {
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = _r._lookup((_s.__slice__(_i) : stdgo.GoString)?.__copy__(), _prevMatchEmpty), _val:stdgo.GoString = __tmp__._0, _keylen:stdgo.GoInt = __tmp__._1, _match:Bool = __tmp__._2;
                _prevMatchEmpty = (_match && (_keylen == (0 : stdgo.GoInt)) : Bool);
                if (_match) {
                    {
                        var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    {
                        var __tmp__ = _sw.writeString(_val?.__copy__());
                        _wn = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                    _i = (_i + (_keylen) : stdgo.GoInt);
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
            _n = (_n + (_wn) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_genericReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _buf:stdgo._internal.strings.Strings.T_appendSliceWriter = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), (_s.length)).__setNumber32__() : stdgo._internal.strings.Strings.T_appendSliceWriter);
        _r.writeString(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings.T_appendSliceWriter>)), _s?.__copy__());
        return (_buf : stdgo.GoString)?.__copy__();
    }
    @:keep
    static public function _lookup( _r:stdgo.Ref<T_genericReplacer>, _s:stdgo.GoString, _ignoreRoot:Bool):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : Bool; } {
        @:recv var _r:stdgo.Ref<T_genericReplacer> = _r;
        var _val:stdgo.GoString = ("" : stdgo.GoString), _keylen:stdgo.GoInt = (0 : stdgo.GoInt), _found:Bool = false;
        var _bestPriority:stdgo.GoInt = (0 : stdgo.GoInt);
        var _node = (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>);
        var _n:stdgo.GoInt = (0 : stdgo.GoInt);
        while (_node != null && ((_node : Dynamic).__nil__ == null || !(_node : Dynamic).__nil__)) {
            if (((_node._priority > _bestPriority : Bool) && !((_ignoreRoot && (_node == (stdgo.Go.setRef(_r._root) : stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>)) : Bool)) : Bool)) {
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
            } else if (((_node._prefix != stdgo.Go.str()) && hasPrefix(_s?.__copy__(), _node._prefix?.__copy__()) : Bool)) {
                _n = (_n + ((_node._prefix.length)) : stdgo.GoInt);
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
        if ((_t._priority > (0 : stdgo.GoInt) : Bool)) {
            _s = (_s + (("+" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        } else {
            _s = (_s + (("-" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        };
        _s = (_s + (("\n" : stdgo.GoString))?.__copy__() : stdgo.GoString);
        if (_t._prefix != (stdgo.Go.str())) {
            _s = (_s + ((repeat(("." : stdgo.GoString), _depth) + _t._prefix?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
            _s = (_s + (_r._printNode(_t._next, (_depth + (_t._prefix.length) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
        } else if (_t._table != null) {
            for (_b => _m in _r._mapping) {
                if ((((_m : stdgo.GoInt) != _r._tableSize) && ((_t._table[(_m : stdgo.GoInt)] != null) && ((_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__ == null || !(_t._table[(_m : stdgo.GoInt)] : Dynamic).__nil__)) : Bool)) {
                    _s = (_s + ((repeat(("." : stdgo.GoString), _depth) + ((new stdgo.Slice<stdgo.GoUInt8>(1, 1, ...[(_b : stdgo.GoByte)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    _s = (_s + (_r._printNode(_t._table[(_m : stdgo.GoInt)], (_depth + (1 : stdgo.GoInt) : stdgo.GoInt)))?.__copy__() : stdgo.GoString);
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
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_stringWriter_asInterface) class T_stringWriter_static_extension {
    @:keep
    static public function writeString( _w:T_stringWriter, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:T_stringWriter = _w?.__copy__();
        return _w._w.write((_s : stdgo.Slice<stdgo.GoByte>));
    }
}
class T_singleStringReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_singleStringReplacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface) class T_singleStringReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_singleStringReplacer>, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_singleStringReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo._internal.io.Io.StringWriter = _getStringWriter(_w);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt), _wn:stdgo.GoInt = __1, _i:stdgo.GoInt = __0;
        while (true) {
            var _match:stdgo.GoInt = _r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            {
                var __tmp__ = _sw.writeString(_r._value?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _i = (_i + ((_match + (_r._finder._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = _sw.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            _wn = __tmp__._0;
            _err = __tmp__._1;
        };
        _n = (_n + (_wn) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_singleStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_singleStringReplacer> = _r;
        var _buf:Builder = ({} : stdgo._internal.strings.Strings.Builder);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:Bool = false, _matched:Bool = __1, _i:stdgo.GoInt = __0;
        while (true) {
            var _match:stdgo.GoInt = _r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            _matched = true;
            _buf.grow((_match + (_r._value.length) : stdgo.GoInt));
            _buf.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            _buf.writeString(_r._value?.__copy__());
            _i = (_i + ((_match + (_r._finder._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
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
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteStringReplacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_byteStringReplacer_asInterface) class T_byteStringReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_byteStringReplacer>, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_byteStringReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo._internal.io.Io.StringWriter = _getStringWriter(_w);
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r._replacements[(_b : stdgo.GoInt)] == null) {
                    continue;
                };
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = (_n + (_nw) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                var __tmp__ = _w.write(_r._replacements[(_b : stdgo.GoInt)]), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_nw) : stdgo.GoInt);
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
            _n = (_n + (_nw) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<T_byteStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<T_byteStringReplacer> = _r;
        var _newSize:stdgo.GoInt = (_s.length);
        var _anyChanges:Bool = false;
        if ((((_r._toReplace.length) * (8 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool)) {
            for (__0 => _x in _r._toReplace) {
                {
                    var _c:stdgo.GoInt = count(_s?.__copy__(), _x?.__copy__());
                    if (_c != ((0 : stdgo.GoInt))) {
                        _newSize = (_newSize + ((_c * (((_r._replacements[(_x[(0 : stdgo.GoInt)] : stdgo.GoInt)].length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
                        _anyChanges = true;
                    };
                };
            };
        } else {
            {
                var _i:stdgo.GoInt = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                    var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                    if (_r._replacements[(_b : stdgo.GoInt)] != null) {
                        _newSize = (_newSize + (((_r._replacements[(_b : stdgo.GoInt)].length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        _anyChanges = true;
                    };
                });
            };
        };
        if (!_anyChanges) {
            return _s?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _j:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r._replacements[(_b : stdgo.GoInt)] != null) {
                    _j = (_j + (stdgo.Go.copySlice((_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>), _r._replacements[(_b : stdgo.GoInt)])) : stdgo.GoInt);
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
    @:keep
    public dynamic function _next(_text:stdgo.GoString):stdgo.GoInt return __self__.value._next(_text);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_stringFinder>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_stringFinder_asInterface) class T_stringFinder_static_extension {
    @:keep
    static public function _next( _f:stdgo.Ref<T_stringFinder>, _text:stdgo.GoString):stdgo.GoInt {
        @:recv var _f:stdgo.Ref<T_stringFinder> = _f;
        var _i:stdgo.GoInt = ((_f._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < (_text.length) : Bool)) {
            var _j:stdgo.GoInt = ((_f._pattern.length) - (1 : stdgo.GoInt) : stdgo.GoInt);
            while (((_j >= (0 : stdgo.GoInt) : Bool) && (_text[(_i : stdgo.GoInt)] == _f._pattern[(_j : stdgo.GoInt)]) : Bool)) {
                _i--;
                _j--;
            };
            if ((_j < (0 : stdgo.GoInt) : Bool)) {
                return (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
            _i = (_i + (_max(_f._badCharSkip[(_text[(_i : stdgo.GoInt)] : stdgo.GoInt)], _f._goodSuffixSkip[(_j : stdgo.GoInt)])) : stdgo.GoInt);
        };
        return (-1 : stdgo.GoInt);
    }
}
class T_appendSliceWriter_asInterface {
    @:keep
    public dynamic function writeString(_s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_s);
    @:keep
    public dynamic function write(_p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.write(_p);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_appendSliceWriter>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_appendSliceWriter_asInterface) class T_appendSliceWriter_static_extension {
    @:keep
    static public function writeString( _w:stdgo.Ref<T_appendSliceWriter>, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_appendSliceWriter> = _w;
        _w.__setData__(((_w : stdgo._internal.strings.Strings.T_appendSliceWriter).__append__(...(_s : Array<stdgo.GoUInt8>))));
        return { _0 : (_s.length), _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function write( _w:stdgo.Ref<T_appendSliceWriter>, _p:stdgo.Slice<stdgo.GoByte>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _w:stdgo.Ref<T_appendSliceWriter> = _w;
        _w.__setData__(((_w : stdgo._internal.strings.Strings.T_appendSliceWriter).__append__(...(_p : Array<stdgo.GoUInt8>))));
        return { _0 : (_p.length), _1 : (null : stdgo.Error) };
    }
}
class T_byteReplacer_asInterface {
    @:keep
    public dynamic function writeString(_w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } return __self__.value.writeString(_w, _s);
    @:keep
    public dynamic function replace(_s:stdgo.GoString):stdgo.GoString return __self__.value.replace(_s);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_byteReplacer>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_byteReplacer_asInterface) class T_byteReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<T_byteReplacer>, _w:stdgo._internal.io.Io.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<T_byteReplacer> = _r;
        var _n:stdgo.GoInt = (0 : stdgo.GoInt), _err:stdgo.Error = (null : stdgo.Error);
        var _sw:stdgo._internal.io.Io.StringWriter = _getStringWriter(_w);
        var _last:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i:stdgo.GoInt = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b:stdgo.GoUInt8 = _s[(_i : stdgo.GoInt)];
                if (_r[(_b : stdgo.GoInt)] == (_b)) {
                    continue;
                };
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__()), _wn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                var __tmp__ = _w.write((_r.__slice__(_b, ((_b : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_nw) : stdgo.GoInt);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            });
        };
        if (_last != ((_s.length))) {
            var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_nw) : stdgo.GoInt);
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
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
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
    @:keep
    public dynamic function _contains(_c:stdgo.GoByte):Bool return __self__.value._contains(_c);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_asciiSet>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.strings.Strings.T_asciiSet_asInterface) class T_asciiSet_static_extension {
    @:keep
    static public function _contains( _as:stdgo.Ref<T_asciiSet>, _c:stdgo.GoByte):Bool {
        @:recv var _as:stdgo.Ref<T_asciiSet> = _as;
        return ((_as[((_c / (32 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)] & (((1u32 : stdgo.GoUInt32) << ((_c % (32 : stdgo.GoUInt8) : stdgo.GoUInt8)) : stdgo.GoUInt32)) : stdgo.GoUInt32)) != ((0u32 : stdgo.GoUInt32));
    }
}
