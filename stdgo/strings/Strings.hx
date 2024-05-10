package stdgo.strings;
class T_replacer_static_extension {
    static public function writeString(t:T_replacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_replacer_static_extension.writeString(t, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(t:T_replacer, s:String):String {
        return stdgo._internal.strings.Strings.T_replacer_static_extension.replace(t, s);
    }
}
typedef T_replacer = stdgo._internal.strings.Strings.T_replacer;
@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) abstract Builder(stdgo._internal.strings.Strings.Builder) from stdgo._internal.strings.Strings.Builder to stdgo._internal.strings.Strings.Builder {
    public var _addr(get, set) : stdgo._internal.strings.Strings.Builder;
    function get__addr():stdgo._internal.strings.Strings.Builder return this._addr;
    function set__addr(v:stdgo._internal.strings.Strings.Builder):stdgo._internal.strings.Strings.Builder {
        this._addr = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_addr:stdgo._internal.strings.Strings.Builder, ?_buf:Array<std.UInt>) this = new stdgo._internal.strings.Strings.Builder(_addr, ([for (i in _buf) i] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.Reader_static_extension) abstract Reader(stdgo._internal.strings.Strings.Reader) from stdgo._internal.strings.Strings.Reader to stdgo._internal.strings.Strings.Reader {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = v;
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = v;
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = v;
        return v;
    }
    public function new(?_s:String, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.strings.Strings.Reader(_s, _i, _prevRune);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) abstract Replacer(stdgo._internal.strings.Strings.Replacer) from stdgo._internal.strings.Strings.Replacer to stdgo._internal.strings.Strings.Replacer {
    public var _once(get, set) : stdgo._internal.sync.Sync.Once;
    function get__once():stdgo._internal.sync.Sync.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync.Once):stdgo._internal.sync.Sync.Once {
        this._once = v;
        return v;
    }
    public var _r(get, set) : stdgo._internal.strings.Strings.T_replacer;
    function get__r():stdgo._internal.strings.Strings.T_replacer return this._r;
    function set__r(v:stdgo._internal.strings.Strings.T_replacer):stdgo._internal.strings.Strings.T_replacer {
        this._r = v;
        return v;
    }
    public var _oldnew(get, set) : Array<String>;
    function get__oldnew():Array<String> return [for (i in this._oldnew) i];
    function set__oldnew(v:Array<String>):Array<String> {
        this._oldnew = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync.Once, ?_r:stdgo._internal.strings.Strings.T_replacer, ?_oldnew:Array<String>) this = new stdgo._internal.strings.Strings.Replacer(_once, _r, ([for (i in _oldnew) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_trieNode_static_extension) abstract T_trieNode(stdgo._internal.strings.Strings.T_trieNode) from stdgo._internal.strings.Strings.T_trieNode to stdgo._internal.strings.Strings.T_trieNode {
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = v;
        return v;
    }
    public var _priority(get, set) : StdTypes.Int;
    function get__priority():StdTypes.Int return this._priority;
    function set__priority(v:StdTypes.Int):StdTypes.Int {
        this._priority = v;
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = v;
        return v;
    }
    public var _next(get, set) : stdgo._internal.strings.Strings.T_trieNode;
    function get__next():stdgo._internal.strings.Strings.T_trieNode return this._next;
    function set__next(v:stdgo._internal.strings.Strings.T_trieNode):stdgo._internal.strings.Strings.T_trieNode {
        this._next = v;
        return v;
    }
    public var _table(get, set) : Array<stdgo._internal.strings.Strings.T_trieNode>;
    function get__table():Array<stdgo._internal.strings.Strings.T_trieNode> return [for (i in this._table) i];
    function set__table(v:Array<stdgo._internal.strings.Strings.T_trieNode>):Array<stdgo._internal.strings.Strings.T_trieNode> {
        this._table = ([for (i in v) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>);
        return v;
    }
    public function new(?_value:String, ?_priority:StdTypes.Int, ?_prefix:String, ?_next:stdgo._internal.strings.Strings.T_trieNode, ?_table:Array<stdgo._internal.strings.Strings.T_trieNode>) this = new stdgo._internal.strings.Strings.T_trieNode(_value, _priority, _prefix, _next, ([for (i in _table) i] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings.T_trieNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) abstract T_genericReplacer(stdgo._internal.strings.Strings.T_genericReplacer) from stdgo._internal.strings.Strings.T_genericReplacer to stdgo._internal.strings.Strings.T_genericReplacer {
    public var _root(get, set) : stdgo._internal.strings.Strings.T_trieNode;
    function get__root():stdgo._internal.strings.Strings.T_trieNode return this._root;
    function set__root(v:stdgo._internal.strings.Strings.T_trieNode):stdgo._internal.strings.Strings.T_trieNode {
        this._root = v;
        return v;
    }
    public var _tableSize(get, set) : StdTypes.Int;
    function get__tableSize():StdTypes.Int return this._tableSize;
    function set__tableSize(v:StdTypes.Int):StdTypes.Int {
        this._tableSize = v;
        return v;
    }
    public var _mapping(get, set) : haxe.ds.Vector<std.UInt>;
    function get__mapping():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._mapping) i]);
    function set__mapping(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._mapping = ([for (i in v) i] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_root:stdgo._internal.strings.Strings.T_trieNode, ?_tableSize:StdTypes.Int, ?_mapping:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.strings.Strings.T_genericReplacer(_root, _tableSize, ([for (i in _mapping) i] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_stringWriter_static_extension) abstract T_stringWriter(stdgo._internal.strings.Strings.T_stringWriter) from stdgo._internal.strings.Strings.T_stringWriter to stdgo._internal.strings.Strings.T_stringWriter {
    public var _w(get, set) : stdgo._internal.io.Io.Writer;
    function get__w():stdgo._internal.io.Io.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io.Writer):stdgo._internal.io.Io.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io.Writer) this = new stdgo._internal.strings.Strings.T_stringWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) abstract T_singleStringReplacer(stdgo._internal.strings.Strings.T_singleStringReplacer) from stdgo._internal.strings.Strings.T_singleStringReplacer to stdgo._internal.strings.Strings.T_singleStringReplacer {
    public var _finder(get, set) : stdgo._internal.strings.Strings.T_stringFinder;
    function get__finder():stdgo._internal.strings.Strings.T_stringFinder return this._finder;
    function set__finder(v:stdgo._internal.strings.Strings.T_stringFinder):stdgo._internal.strings.Strings.T_stringFinder {
        this._finder = v;
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = v;
        return v;
    }
    public function new(?_finder:stdgo._internal.strings.Strings.T_stringFinder, ?_value:String) this = new stdgo._internal.strings.Strings.T_singleStringReplacer(_finder, _value);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) abstract T_byteStringReplacer(stdgo._internal.strings.Strings.T_byteStringReplacer) from stdgo._internal.strings.Strings.T_byteStringReplacer to stdgo._internal.strings.Strings.T_byteStringReplacer {
    public var _replacements(get, set) : haxe.ds.Vector<Array<std.UInt>>;
    function get__replacements():haxe.ds.Vector<Array<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._replacements) [for (i in i) i]]);
    function set__replacements(v:haxe.ds.Vector<Array<std.UInt>>):haxe.ds.Vector<Array<std.UInt>> {
        this._replacements = ([for (i in v) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _toReplace(get, set) : Array<String>;
    function get__toReplace():Array<String> return [for (i in this._toReplace) i];
    function set__toReplace(v:Array<String>):Array<String> {
        this._toReplace = ([for (i in v) i] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_replacements:haxe.ds.Vector<Array<std.UInt>>, ?_toReplace:Array<String>) this = new stdgo._internal.strings.Strings.T_byteStringReplacer(([for (i in _replacements) ([for (i in i) i] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>), ([for (i in _toReplace) i] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:private @:using(stdgo.strings.Strings.T_stringFinder_static_extension) abstract T_stringFinder(stdgo._internal.strings.Strings.T_stringFinder) from stdgo._internal.strings.Strings.T_stringFinder to stdgo._internal.strings.Strings.T_stringFinder {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = v;
        return v;
    }
    public var _badCharSkip(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__badCharSkip():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._badCharSkip) i]);
    function set__badCharSkip(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._badCharSkip = ([for (i in v) i] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var _goodSuffixSkip(get, set) : Array<StdTypes.Int>;
    function get__goodSuffixSkip():Array<StdTypes.Int> return [for (i in this._goodSuffixSkip) i];
    function set__goodSuffixSkip(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._goodSuffixSkip = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_pattern:String, ?_badCharSkip:haxe.ds.Vector<StdTypes.Int>, ?_goodSuffixSkip:Array<StdTypes.Int>) this = new stdgo._internal.strings.Strings.T_stringFinder(_pattern, ([for (i in _badCharSkip) i] : stdgo.GoArray<stdgo.GoInt>), ([for (i in _goodSuffixSkip) i] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef T_appendSliceWriter = stdgo._internal.strings.Strings.T_appendSliceWriter;
typedef T_byteReplacer = stdgo._internal.strings.Strings.T_byteReplacer;
typedef T_asciiSet = stdgo._internal.strings.Strings.T_asciiSet;
@:structInit abstract T_fieldsFunc_4___localname___span(stdgo._internal.strings.Strings.T_fieldsFunc_4___localname___span) from stdgo._internal.strings.Strings.T_fieldsFunc_4___localname___span to stdgo._internal.strings.Strings.T_fieldsFunc_4___localname___span {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = v;
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = v;
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.strings.Strings.T_fieldsFunc_4___localname___span(_start, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Builder_static_extension {
    static public function writeString(b:Builder, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.writeString(b, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(b:Builder, r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.writeRune(b, r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(b:Builder, c:StdTypes.Int):stdgo.Error {
        return stdgo._internal.strings.Strings.Builder_static_extension.writeByte(b, c);
    }
    static public function write(b:Builder, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.write(b, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(b:Builder, n:StdTypes.Int):Void {
        stdgo._internal.strings.Strings.Builder_static_extension.grow(b, n);
    }
    static public function _grow(b:Builder, n:StdTypes.Int):Void {
        stdgo._internal.strings.Strings.Builder_static_extension._grow(b, n);
    }
    static public function reset(b:Builder):Void {
        stdgo._internal.strings.Strings.Builder_static_extension.reset(b);
    }
    static public function cap(b:Builder):StdTypes.Int {
        return stdgo._internal.strings.Strings.Builder_static_extension.cap(b);
    }
    static public function len(b:Builder):StdTypes.Int {
        return stdgo._internal.strings.Strings.Builder_static_extension.len(b);
    }
    static public function string(b:Builder):String {
        return stdgo._internal.strings.Strings.Builder_static_extension.string(b);
    }
    static public function _copyCheck(b:Builder):Void {
        stdgo._internal.strings.Strings.Builder_static_extension._copyCheck(b);
    }
}
class Reader_static_extension {
    static public function reset(r:Reader, s:String):Void {
        stdgo._internal.strings.Strings.Reader_static_extension.reset(r, s);
    }
    static public function writeTo(r:Reader, w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.writeTo(r, w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(r:Reader, offset:haxe.Int64, whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.seek(r, offset, whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(r:Reader):stdgo.Error {
        return stdgo._internal.strings.Strings.Reader_static_extension.unreadRune(r);
    }
    static public function readRune(r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readRune(r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(r:Reader):stdgo.Error {
        return stdgo._internal.strings.Strings.Reader_static_extension.unreadByte(r);
    }
    static public function readByte(r:Reader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readByte(r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(r:Reader, b:Array<StdTypes.Int>, off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readAt(r, b, off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(r:Reader, b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final b = ([for (i in b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.read(r, b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(r:Reader):haxe.Int64 {
        return stdgo._internal.strings.Strings.Reader_static_extension.size(r);
    }
    static public function len(r:Reader):StdTypes.Int {
        return stdgo._internal.strings.Strings.Reader_static_extension.len(r);
    }
}
class Replacer_static_extension {
    static public function writeString(r:Replacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Replacer_static_extension.writeString(r, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(r:Replacer, s:String):String {
        return stdgo._internal.strings.Strings.Replacer_static_extension.replace(r, s);
    }
    static public function _build(b:Replacer):T_replacer {
        return stdgo._internal.strings.Strings.Replacer_static_extension._build(b);
    }
    static public function _buildOnce(r:Replacer):Void {
        stdgo._internal.strings.Strings.Replacer_static_extension._buildOnce(r);
    }
    static public function printTrie(r:Replacer):String {
        return stdgo._internal.strings.Strings.Replacer_static_extension.printTrie(r);
    }
    static public function replacer(r:Replacer):stdgo.AnyInterface {
        return stdgo._internal.strings.Strings.Replacer_static_extension.replacer(r);
    }
}
class T_trieNode_static_extension {
    static public function _add(t:T_trieNode, key:String, val:String, priority:StdTypes.Int, r:T_genericReplacer):Void {
        stdgo._internal.strings.Strings.T_trieNode_static_extension._add(t, key, val, priority, r);
    }
}
class T_genericReplacer_static_extension {
    static public function writeString(r:T_genericReplacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_genericReplacer_static_extension.writeString(r, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(r:T_genericReplacer, s:String):String {
        return stdgo._internal.strings.Strings.T_genericReplacer_static_extension.replace(r, s);
    }
    static public function _lookup(r:T_genericReplacer, s:String, ignoreRoot:Bool):stdgo.Tuple.Tuple3<String, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.T_genericReplacer_static_extension._lookup(r, s, ignoreRoot);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printNode(r:T_genericReplacer, t:T_trieNode, depth:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.T_genericReplacer_static_extension._printNode(r, t, depth);
    }
}
class T_stringWriter_static_extension {
    static public function writeString(w:T_stringWriter, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_stringWriter_static_extension.writeString(w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_singleStringReplacer_static_extension {
    static public function writeString(r:T_singleStringReplacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension.writeString(r, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(r:T_singleStringReplacer, s:String):String {
        return stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension.replace(r, s);
    }
}
class T_byteStringReplacer_static_extension {
    static public function writeString(r:T_byteStringReplacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension.writeString(r, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(r:T_byteStringReplacer, s:String):String {
        return stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension.replace(r, s);
    }
}
class T_stringFinder_static_extension {
    static public function _next(f:T_stringFinder, text:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.T_stringFinder_static_extension._next(f, text);
    }
}
class T_appendSliceWriter_static_extension {
    static public function writeString(w:T_appendSliceWriter, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension.writeString(w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(w:T_appendSliceWriter, p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final p = ([for (i in p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension.write(w, p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_byteReplacer_static_extension {
    static public function writeString(r:T_byteReplacer, w:stdgo._internal.io.Io.Writer, s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_byteReplacer_static_extension.writeString(r, w, s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(r:T_byteReplacer, s:String):String {
        return stdgo._internal.strings.Strings.T_byteReplacer_static_extension.replace(r, s);
    }
}
class T_asciiSet_static_extension {
    static public function _contains(as:T_asciiSet, c:StdTypes.Int):Bool {
        return stdgo._internal.strings.Strings.T_asciiSet_static_extension._contains(as, c);
    }
}
/**
    Package strings implements simple functions to manipulate UTF-8 encoded strings.
    
    For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
class Strings {
    /**
        Clone returns a fresh copy of s.
        It guarantees to make a copy of s into a new allocation,
        which can be important when retaining only a small substring
        of a much larger string. Using Clone can help such programs
        use less memory. Of course, since using Clone makes a copy,
        overuse of Clone can make programs use more memory.
        Clone should typically be used only rarely, and only when
        profiling indicates that it is needed.
        For strings of length zero the string "" will be returned
        and no allocation is made.
    **/
    static public function clone(s:String):String {
        return stdgo._internal.strings.Strings.clone(s);
    }
    /**
        Compare returns an integer comparing two strings lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        
        Compare is included only for symmetry with package bytes.
        It is usually clearer and always faster to use the built-in
        string comparison operators ==, <, >, and so on.
    **/
    static public function compare(a:String, b:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.compare(a, b);
    }
    static public function stringFind(pattern:String, text:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.stringFind(pattern, text);
    }
    static public function dumpTables(pattern:String):stdgo.Tuple<Array<StdTypes.Int>, Array<StdTypes.Int>> {
        return {
            final obj = stdgo._internal.strings.Strings.dumpTables(pattern);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
    /**
        NewReader returns a new Reader reading from s.
        It is similar to bytes.NewBufferString but more efficient and non-writable.
    **/
    static public function newReader(s:String):Reader {
        return stdgo._internal.strings.Strings.newReader(s);
    }
    /**
        NewReplacer returns a new Replacer from a list of old, new string
        pairs. Replacements are performed in the order they appear in the
        target string, without overlapping matches. The old string
        comparisons are done in argument order.
        
        NewReplacer panics if given an odd number of arguments.
    **/
    static public function newReplacer(oldnew:haxe.Rest<String>):Replacer {
        return stdgo._internal.strings.Strings.newReplacer(...[for (i in oldnew) i]);
    }
    /**
        Count counts the number of non-overlapping instances of substr in s.
        If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
    **/
    static public function count(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.count(s, substr);
    }
    /**
        Contains reports whether substr is within s.
    **/
    static public function contains(s:String, substr:String):Bool {
        return stdgo._internal.strings.Strings.contains(s, substr);
    }
    /**
        ContainsAny reports whether any Unicode code points in chars are within s.
    **/
    static public function containsAny(s:String, chars:String):Bool {
        return stdgo._internal.strings.Strings.containsAny(s, chars);
    }
    /**
        ContainsRune reports whether the Unicode code point r is within s.
    **/
    static public function containsRune(s:String, r:StdTypes.Int):Bool {
        return stdgo._internal.strings.Strings.containsRune(s, r);
    }
    /**
        ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
    **/
    static public function containsFunc(s:String, f:stdgo.GoRune -> Bool):Bool {
        final f = f;
        return stdgo._internal.strings.Strings.containsFunc(s, f);
    }
    /**
        LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
    **/
    static public function lastIndex(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndex(s, substr);
    }
    /**
        IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
    **/
    static public function indexByte(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexByte(s, c);
    }
    /**
        IndexRune returns the index of the first instance of the Unicode code point
        r, or -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
    **/
    static public function indexRune(s:String, r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexRune(s, r);
    }
    /**
        IndexAny returns the index of the first instance of any Unicode code point
        from chars in s, or -1 if no Unicode code point from chars is present in s.
    **/
    static public function indexAny(s:String, chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexAny(s, chars);
    }
    /**
        LastIndexAny returns the index of the last instance of any Unicode code
        point from chars in s, or -1 if no Unicode code point from chars is
        present in s.
    **/
    static public function lastIndexAny(s:String, chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexAny(s, chars);
    }
    /**
        LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public function lastIndexByte(s:String, c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexByte(s, c);
    }
    /**
        SplitN slices s into substrings separated by sep and returns a slice of
        the substrings between those separators.
        
        The count determines the number of substrings to return:
        
        	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        	n == 0: the result is nil (zero substrings)
        	n < 0: all substrings
        
        Edge cases for s and sep (for example, empty strings) are handled
        as described in the documentation for Split.
        
        To split around the first instance of a separator, see Cut.
    **/
    static public function splitN(s:String, sep:String, n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitN(s, sep, n)) i];
    }
    /**
        SplitAfterN slices s into substrings after each instance of sep and
        returns a slice of those substrings.
        
        The count determines the number of substrings to return:
        
        	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        	n == 0: the result is nil (zero substrings)
        	n < 0: all substrings
        
        Edge cases for s and sep (for example, empty strings) are handled
        as described in the documentation for SplitAfter.
    **/
    static public function splitAfterN(s:String, sep:String, n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfterN(s, sep, n)) i];
    }
    /**
        Split slices s into all substrings separated by sep and returns a slice of
        the substrings between those separators.
        
        If s does not contain sep and sep is not empty, Split returns a
        slice of length 1 whose only element is s.
        
        If sep is empty, Split splits after each UTF-8 sequence. If both s
        and sep are empty, Split returns an empty slice.
        
        It is equivalent to SplitN with a count of -1.
        
        To split around the first instance of a separator, see Cut.
    **/
    static public function split(s:String, sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.split(s, sep)) i];
    }
    /**
        SplitAfter slices s into all substrings after each instance of sep and
        returns a slice of those substrings.
        
        If s does not contain sep and sep is not empty, SplitAfter returns
        a slice of length 1 whose only element is s.
        
        If sep is empty, SplitAfter splits after each UTF-8 sequence. If
        both s and sep are empty, SplitAfter returns an empty slice.
        
        It is equivalent to SplitAfterN with a count of -1.
    **/
    static public function splitAfter(s:String, sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfter(s, sep)) i];
    }
    /**
        Fields splits the string s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
        empty slice if s contains only white space.
    **/
    static public function fields(s:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.fields(s)) i];
    }
    /**
        FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
        and returns an array of slices of s. If all code points in s satisfy f(c) or the
        string is empty, an empty slice is returned.
        
        FieldsFunc makes no guarantees about the order in which it calls f(c)
        and assumes that f always returns the same value for a given c.
    **/
    static public function fieldsFunc(s:String, f:stdgo.GoRune -> Bool):Array<String> {
        final f = f;
        return [for (i in stdgo._internal.strings.Strings.fieldsFunc(s, f)) i];
    }
    /**
        Join concatenates the elements of its first argument to create a single string. The separator
        string sep is placed between elements in the resulting string.
    **/
    static public function join(elems:Array<String>, sep:String):String {
        final elems = ([for (i in elems) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.strings.Strings.join(elems, sep);
    }
    /**
        HasPrefix tests whether the string s begins with prefix.
    **/
    static public function hasPrefix(s:String, prefix:String):Bool {
        return stdgo._internal.strings.Strings.hasPrefix(s, prefix);
    }
    /**
        HasSuffix tests whether the string s ends with suffix.
    **/
    static public function hasSuffix(s:String, suffix:String):Bool {
        return stdgo._internal.strings.Strings.hasSuffix(s, suffix);
    }
    /**
        Map returns a copy of the string s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the string with no replacement.
    **/
    static public function map_(mapping:stdgo.GoRune -> stdgo.GoRune, s:String):String {
        final mapping = mapping;
        return stdgo._internal.strings.Strings.map_(mapping, s);
    }
    /**
        Repeat returns a new string consisting of count copies of the string s.
        
        It panics if count is negative or if the result of (len(s) * count)
        overflows.
    **/
    static public function repeat(s:String, count:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.repeat(s, count);
    }
    /**
        ToUpper returns s with all Unicode letters mapped to their upper case.
    **/
    static public function toUpper(s:String):String {
        return stdgo._internal.strings.Strings.toUpper(s);
    }
    /**
        ToLower returns s with all Unicode letters mapped to their lower case.
    **/
    static public function toLower(s:String):String {
        return stdgo._internal.strings.Strings.toLower(s);
    }
    /**
        ToTitle returns a copy of the string s with all Unicode letters mapped to
        their Unicode title case.
    **/
    static public function toTitle(s:String):String {
        return stdgo._internal.strings.Strings.toTitle(s);
    }
    /**
        ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
        upper case using the case mapping specified by c.
    **/
    static public function toUpperSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toUpperSpecial(c, s);
    }
    /**
        ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
        lower case using the case mapping specified by c.
    **/
    static public function toLowerSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toLowerSpecial(c, s);
    }
    /**
        ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
        Unicode title case, giving priority to the special casing rules.
    **/
    static public function toTitleSpecial(c:stdgo._internal.unicode.Unicode.SpecialCase, s:String):String {
        return stdgo._internal.strings.Strings.toTitleSpecial(c, s);
    }
    /**
        ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
        replaced by the replacement string, which may be empty.
    **/
    static public function toValidUTF8(s:String, replacement:String):String {
        return stdgo._internal.strings.Strings.toValidUTF8(s, replacement);
    }
    /**
        Title returns a copy of the string s with all Unicode letters that begin words
        mapped to their Unicode title case.
        
        Deprecated: The rule Title uses for word boundaries does not handle Unicode
        punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public function title(s:String):String {
        return stdgo._internal.strings.Strings.title(s);
    }
    /**
        TrimLeftFunc returns a slice of the string s with all leading
        Unicode code points c satisfying f(c) removed.
    **/
    static public function trimLeftFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimLeftFunc(s, f);
    }
    /**
        TrimRightFunc returns a slice of the string s with all trailing
        Unicode code points c satisfying f(c) removed.
    **/
    static public function trimRightFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimRightFunc(s, f);
    }
    /**
        TrimFunc returns a slice of the string s with all leading
        and trailing Unicode code points c satisfying f(c) removed.
    **/
    static public function trimFunc(s:String, f:stdgo.GoRune -> Bool):String {
        final f = f;
        return stdgo._internal.strings.Strings.trimFunc(s, f);
    }
    /**
        IndexFunc returns the index into s of the first Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function indexFunc(s:String, f:stdgo.GoRune -> Bool):StdTypes.Int {
        final f = f;
        return stdgo._internal.strings.Strings.indexFunc(s, f);
    }
    /**
        LastIndexFunc returns the index into s of the last
        Unicode code point satisfying f(c), or -1 if none do.
    **/
    static public function lastIndexFunc(s:String, f:stdgo.GoRune -> Bool):StdTypes.Int {
        final f = f;
        return stdgo._internal.strings.Strings.lastIndexFunc(s, f);
    }
    /**
        Trim returns a slice of the string s with all leading and
        trailing Unicode code points contained in cutset removed.
    **/
    static public function trim(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trim(s, cutset);
    }
    /**
        TrimLeft returns a slice of the string s with all leading
        Unicode code points contained in cutset removed.
        
        To remove a prefix, use TrimPrefix instead.
    **/
    static public function trimLeft(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trimLeft(s, cutset);
    }
    /**
        TrimRight returns a slice of the string s, with all trailing
        Unicode code points contained in cutset removed.
        
        To remove a suffix, use TrimSuffix instead.
    **/
    static public function trimRight(s:String, cutset:String):String {
        return stdgo._internal.strings.Strings.trimRight(s, cutset);
    }
    /**
        TrimSpace returns a slice of the string s, with all leading
        and trailing white space removed, as defined by Unicode.
    **/
    static public function trimSpace(s:String):String {
        return stdgo._internal.strings.Strings.trimSpace(s);
    }
    /**
        TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
    **/
    static public function trimPrefix(s:String, prefix:String):String {
        return stdgo._internal.strings.Strings.trimPrefix(s, prefix);
    }
    /**
        TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
    **/
    static public function trimSuffix(s:String, suffix:String):String {
        return stdgo._internal.strings.Strings.trimSuffix(s, suffix);
    }
    /**
        Replace returns a copy of the string s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
        If n < 0, there is no limit on the number of replacements.
    **/
    static public function replace(s:String, old:String, _new:String, n:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.replace(s, old, _new, n);
    }
    /**
        ReplaceAll returns a copy of the string s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
    **/
    static public function replaceAll(s:String, old:String, _new:String):String {
        return stdgo._internal.strings.Strings.replaceAll(s, old, _new);
    }
    /**
        EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
    **/
    static public function equalFold(s:String, t:String):Bool {
        return stdgo._internal.strings.Strings.equalFold(s, t);
    }
    /**
        Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
    **/
    static public function index(s:String, substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.index(s, substr);
    }
    /**
        Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, "", false.
    **/
    static public function cut(s:String, sep:String):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cut(s, sep);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        CutPrefix returns s without the provided leading prefix string
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty string, CutPrefix returns s, true.
    **/
    static public function cutPrefix(s:String, prefix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutPrefix(s, prefix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CutSuffix returns s without the provided ending suffix string
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty string, CutSuffix returns s, true.
    **/
    static public function cutSuffix(s:String, suffix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutSuffix(s, suffix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
