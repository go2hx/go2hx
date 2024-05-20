package stdgo.strings;
class T_replacer_static_extension {
    static public function writeString(t:T_replacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_replacer_static_extension.writeString(t, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(t:T_replacer, _s:String):String {
        return stdgo._internal.strings.Strings.T_replacer_static_extension.replace(t, _s);
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
@:structInit abstract T_fieldsFunc___localname___span_9921(stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921) from stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921 to stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921 {
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
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.strings.Strings.T_fieldsFunc___localname___span_9921(_start, _end);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
class Builder_static_extension {
    static public function writeString(_b:Builder, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Builder, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Builder, _c:StdTypes.Int):stdgo.Error {
        return stdgo._internal.strings.Strings.Builder_static_extension.writeByte(_b, _c);
    }
    static public function write(_b:Builder, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Builder_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Builder, _n:StdTypes.Int):Void {
        stdgo._internal.strings.Strings.Builder_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Builder, _n:StdTypes.Int):Void {
        stdgo._internal.strings.Strings.Builder_static_extension._grow(_b, _n);
    }
    static public function reset(_b:Builder):Void {
        stdgo._internal.strings.Strings.Builder_static_extension.reset(_b);
    }
    static public function cap(_b:Builder):StdTypes.Int {
        return stdgo._internal.strings.Strings.Builder_static_extension.cap(_b);
    }
    static public function len(_b:Builder):StdTypes.Int {
        return stdgo._internal.strings.Strings.Builder_static_extension.len(_b);
    }
    static public function string(_b:Builder):String {
        return stdgo._internal.strings.Strings.Builder_static_extension.string(_b);
    }
    static public function _copyCheck(_b:Builder):Void {
        stdgo._internal.strings.Strings.Builder_static_extension._copyCheck(_b);
    }
}
class Reader_static_extension {
    static public function reset(_r:Reader, _s:String):Void {
        stdgo._internal.strings.Strings.Reader_static_extension.reset(_r, _s);
    }
    static public function writeTo(_r:Reader, _w:stdgo._internal.io.Io.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.writeTo(_r, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(_r:Reader):stdgo.Error {
        return stdgo._internal.strings.Strings.Reader_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_r:Reader):stdgo.Error {
        return stdgo._internal.strings.Strings.Reader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:Reader, _b:Array<StdTypes.Int>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.readAt(_r, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = ([for (i in _b) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(_r:Reader):haxe.Int64 {
        return stdgo._internal.strings.Strings.Reader_static_extension.size(_r);
    }
    static public function len(_r:Reader):StdTypes.Int {
        return stdgo._internal.strings.Strings.Reader_static_extension.len(_r);
    }
}
class Replacer_static_extension {
    static public function writeString(_r:Replacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.Replacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:Replacer, _s:String):String {
        return stdgo._internal.strings.Strings.Replacer_static_extension.replace(_r, _s);
    }
    static public function _build(_b:Replacer):T_replacer {
        return stdgo._internal.strings.Strings.Replacer_static_extension._build(_b);
    }
    static public function _buildOnce(_r:Replacer):Void {
        stdgo._internal.strings.Strings.Replacer_static_extension._buildOnce(_r);
    }
    static public function printTrie(_r:Replacer):String {
        return stdgo._internal.strings.Strings.Replacer_static_extension.printTrie(_r);
    }
    static public function replacer(_r:Replacer):stdgo.AnyInterface {
        return stdgo._internal.strings.Strings.Replacer_static_extension.replacer(_r);
    }
}
class T_trieNode_static_extension {
    static public function _add(_t:T_trieNode, _key:String, _val:String, _priority:StdTypes.Int, _r:T_genericReplacer):Void {
        stdgo._internal.strings.Strings.T_trieNode_static_extension._add(_t, _key, _val, _priority, _r);
    }
}
class T_genericReplacer_static_extension {
    static public function writeString(_r:T_genericReplacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_genericReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_genericReplacer, _s:String):String {
        return stdgo._internal.strings.Strings.T_genericReplacer_static_extension.replace(_r, _s);
    }
    static public function _lookup(_r:T_genericReplacer, _s:String, _ignoreRoot:Bool):stdgo.Tuple.Tuple3<String, StdTypes.Int, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.T_genericReplacer_static_extension._lookup(_r, _s, _ignoreRoot);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printNode(_r:T_genericReplacer, _t:T_trieNode, _depth:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.T_genericReplacer_static_extension._printNode(_r, _t, _depth);
    }
}
class T_stringWriter_static_extension {
    static public function writeString(_w:T_stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_stringWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_singleStringReplacer_static_extension {
    static public function writeString(_r:T_singleStringReplacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_singleStringReplacer, _s:String):String {
        return stdgo._internal.strings.Strings.T_singleStringReplacer_static_extension.replace(_r, _s);
    }
}
class T_byteStringReplacer_static_extension {
    static public function writeString(_r:T_byteStringReplacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_byteStringReplacer, _s:String):String {
        return stdgo._internal.strings.Strings.T_byteStringReplacer_static_extension.replace(_r, _s);
    }
}
class T_stringFinder_static_extension {
    static public function _next(_f:T_stringFinder, _text:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.T_stringFinder_static_extension._next(_f, _text);
    }
}
class T_appendSliceWriter_static_extension {
    static public function writeString(_w:T_appendSliceWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_appendSliceWriter, _p:Array<StdTypes.Int>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _p = ([for (i in _p) i] : stdgo.Slice<stdgo.GoByte>);
        return {
            final obj = stdgo._internal.strings.Strings.T_appendSliceWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
class T_byteReplacer_static_extension {
    static public function writeString(_r:T_byteReplacer, _w:stdgo._internal.io.Io.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        return {
            final obj = stdgo._internal.strings.Strings.T_byteReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_byteReplacer, _s:String):String {
        return stdgo._internal.strings.Strings.T_byteReplacer_static_extension.replace(_r, _s);
    }
}
class T_asciiSet_static_extension {
    static public function _contains(_as:T_asciiSet, _c:StdTypes.Int):Bool {
        return stdgo._internal.strings.Strings.T_asciiSet_static_extension._contains(_as, _c);
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
    static public function clone(_s:String):String {
        return stdgo._internal.strings.Strings.clone(_s);
    }
    /**
        Compare returns an integer comparing two strings lexicographically.
        The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        
        Compare is included only for symmetry with package bytes.
        It is usually clearer and always faster to use the built-in
        string comparison operators ==, <, >, and so on.
    **/
    static public function compare(_a:String, _b:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.compare(_a, _b);
    }
    static public function stringFind(_pattern:String, _text:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.stringFind(_pattern, _text);
    }
    static public function dumpTables(_pattern:String):stdgo.Tuple<Array<StdTypes.Int>, Array<StdTypes.Int>> {
        return {
            final obj = stdgo._internal.strings.Strings.dumpTables(_pattern);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
    /**
        NewReader returns a new Reader reading from s.
        It is similar to bytes.NewBufferString but more efficient and non-writable.
    **/
    static public function newReader(_s:String):Reader {
        return stdgo._internal.strings.Strings.newReader(_s);
    }
    /**
        NewReplacer returns a new Replacer from a list of old, new string
        pairs. Replacements are performed in the order they appear in the
        target string, without overlapping matches. The old string
        comparisons are done in argument order.
        
        NewReplacer panics if given an odd number of arguments.
    **/
    static public function newReplacer(_oldnew:haxe.Rest<String>):Replacer {
        return stdgo._internal.strings.Strings.newReplacer(...[for (i in _oldnew) i]);
    }
    /**
        Count counts the number of non-overlapping instances of substr in s.
        If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
    **/
    static public function count(_s:String, _substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.count(_s, _substr);
    }
    /**
        Contains reports whether substr is within s.
    **/
    static public function contains(_s:String, _substr:String):Bool {
        return stdgo._internal.strings.Strings.contains(_s, _substr);
    }
    /**
        ContainsAny reports whether any Unicode code points in chars are within s.
    **/
    static public function containsAny(_s:String, _chars:String):Bool {
        return stdgo._internal.strings.Strings.containsAny(_s, _chars);
    }
    /**
        ContainsRune reports whether the Unicode code point r is within s.
    **/
    static public function containsRune(_s:String, _r:StdTypes.Int):Bool {
        return stdgo._internal.strings.Strings.containsRune(_s, _r);
    }
    /**
        ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
    **/
    static public function containsFunc(_s:String, _f:stdgo.GoRune -> Bool):Bool {
        final _f = _f;
        return stdgo._internal.strings.Strings.containsFunc(_s, _f);
    }
    /**
        LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
    **/
    static public function lastIndex(_s:String, _substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndex(_s, _substr);
    }
    /**
        IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
    **/
    static public function indexByte(_s:String, _c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexByte(_s, _c);
    }
    /**
        IndexRune returns the index of the first instance of the Unicode code point
        r, or -1 if rune is not present in s.
        If r is utf8.RuneError, it returns the first instance of any
        invalid UTF-8 byte sequence.
    **/
    static public function indexRune(_s:String, _r:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexRune(_s, _r);
    }
    /**
        IndexAny returns the index of the first instance of any Unicode code point
        from chars in s, or -1 if no Unicode code point from chars is present in s.
    **/
    static public function indexAny(_s:String, _chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.indexAny(_s, _chars);
    }
    /**
        LastIndexAny returns the index of the last instance of any Unicode code
        point from chars in s, or -1 if no Unicode code point from chars is
        present in s.
    **/
    static public function lastIndexAny(_s:String, _chars:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexAny(_s, _chars);
    }
    /**
        LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public function lastIndexByte(_s:String, _c:StdTypes.Int):StdTypes.Int {
        return stdgo._internal.strings.Strings.lastIndexByte(_s, _c);
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
    static public function splitN(_s:String, _sep:String, _n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitN(_s, _sep, _n)) i];
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
    static public function splitAfterN(_s:String, _sep:String, _n:StdTypes.Int):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfterN(_s, _sep, _n)) i];
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
    static public function split(_s:String, _sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.split(_s, _sep)) i];
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
    static public function splitAfter(_s:String, _sep:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.splitAfter(_s, _sep)) i];
    }
    /**
        Fields splits the string s around each instance of one or more consecutive white space
        characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
        empty slice if s contains only white space.
    **/
    static public function fields(_s:String):Array<String> {
        return [for (i in stdgo._internal.strings.Strings.fields(_s)) i];
    }
    /**
        FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
        and returns an array of slices of s. If all code points in s satisfy f(c) or the
        string is empty, an empty slice is returned.
        
        FieldsFunc makes no guarantees about the order in which it calls f(c)
        and assumes that f always returns the same value for a given c.
    **/
    static public function fieldsFunc(_s:String, _f:stdgo.GoRune -> Bool):Array<String> {
        final _f = _f;
        return [for (i in stdgo._internal.strings.Strings.fieldsFunc(_s, _f)) i];
    }
    /**
        Join concatenates the elements of its first argument to create a single string. The separator
        string sep is placed between elements in the resulting string.
    **/
    static public function join(_elems:Array<String>, _sep:String):String {
        final _elems = ([for (i in _elems) i] : stdgo.Slice<stdgo.GoString>);
        return stdgo._internal.strings.Strings.join(_elems, _sep);
    }
    /**
        HasPrefix tests whether the string s begins with prefix.
    **/
    static public function hasPrefix(_s:String, _prefix:String):Bool {
        return stdgo._internal.strings.Strings.hasPrefix(_s, _prefix);
    }
    /**
        HasSuffix tests whether the string s ends with suffix.
    **/
    static public function hasSuffix(_s:String, _suffix:String):Bool {
        return stdgo._internal.strings.Strings.hasSuffix(_s, _suffix);
    }
    /**
        Map returns a copy of the string s with all its characters modified
        according to the mapping function. If mapping returns a negative value, the character is
        dropped from the string with no replacement.
    **/
    static public function map_(_mapping:stdgo.GoRune -> stdgo.GoRune, _s:String):String {
        final _mapping = _mapping;
        return stdgo._internal.strings.Strings.map_(_mapping, _s);
    }
    /**
        Repeat returns a new string consisting of count copies of the string s.
        
        It panics if count is negative or if the result of (len(s) * count)
        overflows.
    **/
    static public function repeat(_s:String, _count:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.repeat(_s, _count);
    }
    /**
        ToUpper returns s with all Unicode letters mapped to their upper case.
    **/
    static public function toUpper(_s:String):String {
        return stdgo._internal.strings.Strings.toUpper(_s);
    }
    /**
        ToLower returns s with all Unicode letters mapped to their lower case.
    **/
    static public function toLower(_s:String):String {
        return stdgo._internal.strings.Strings.toLower(_s);
    }
    /**
        ToTitle returns a copy of the string s with all Unicode letters mapped to
        their Unicode title case.
    **/
    static public function toTitle(_s:String):String {
        return stdgo._internal.strings.Strings.toTitle(_s);
    }
    /**
        ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
        upper case using the case mapping specified by c.
    **/
    static public function toUpperSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:String):String {
        return stdgo._internal.strings.Strings.toUpperSpecial(_c, _s);
    }
    /**
        ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
        lower case using the case mapping specified by c.
    **/
    static public function toLowerSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:String):String {
        return stdgo._internal.strings.Strings.toLowerSpecial(_c, _s);
    }
    /**
        ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
        Unicode title case, giving priority to the special casing rules.
    **/
    static public function toTitleSpecial(_c:stdgo._internal.unicode.Unicode.SpecialCase, _s:String):String {
        return stdgo._internal.strings.Strings.toTitleSpecial(_c, _s);
    }
    /**
        ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
        replaced by the replacement string, which may be empty.
    **/
    static public function toValidUTF8(_s:String, _replacement:String):String {
        return stdgo._internal.strings.Strings.toValidUTF8(_s, _replacement);
    }
    /**
        Title returns a copy of the string s with all Unicode letters that begin words
        mapped to their Unicode title case.
        
        Deprecated: The rule Title uses for word boundaries does not handle Unicode
        punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public function title(_s:String):String {
        return stdgo._internal.strings.Strings.title(_s);
    }
    /**
        TrimLeftFunc returns a slice of the string s with all leading
        Unicode code points c satisfying f(c) removed.
    **/
    static public function trimLeftFunc(_s:String, _f:stdgo.GoRune -> Bool):String {
        final _f = _f;
        return stdgo._internal.strings.Strings.trimLeftFunc(_s, _f);
    }
    /**
        TrimRightFunc returns a slice of the string s with all trailing
        Unicode code points c satisfying f(c) removed.
    **/
    static public function trimRightFunc(_s:String, _f:stdgo.GoRune -> Bool):String {
        final _f = _f;
        return stdgo._internal.strings.Strings.trimRightFunc(_s, _f);
    }
    /**
        TrimFunc returns a slice of the string s with all leading
        and trailing Unicode code points c satisfying f(c) removed.
    **/
    static public function trimFunc(_s:String, _f:stdgo.GoRune -> Bool):String {
        final _f = _f;
        return stdgo._internal.strings.Strings.trimFunc(_s, _f);
    }
    /**
        IndexFunc returns the index into s of the first Unicode
        code point satisfying f(c), or -1 if none do.
    **/
    static public function indexFunc(_s:String, _f:stdgo.GoRune -> Bool):StdTypes.Int {
        final _f = _f;
        return stdgo._internal.strings.Strings.indexFunc(_s, _f);
    }
    /**
        LastIndexFunc returns the index into s of the last
        Unicode code point satisfying f(c), or -1 if none do.
    **/
    static public function lastIndexFunc(_s:String, _f:stdgo.GoRune -> Bool):StdTypes.Int {
        final _f = _f;
        return stdgo._internal.strings.Strings.lastIndexFunc(_s, _f);
    }
    /**
        Trim returns a slice of the string s with all leading and
        trailing Unicode code points contained in cutset removed.
    **/
    static public function trim(_s:String, _cutset:String):String {
        return stdgo._internal.strings.Strings.trim(_s, _cutset);
    }
    /**
        TrimLeft returns a slice of the string s with all leading
        Unicode code points contained in cutset removed.
        
        To remove a prefix, use TrimPrefix instead.
    **/
    static public function trimLeft(_s:String, _cutset:String):String {
        return stdgo._internal.strings.Strings.trimLeft(_s, _cutset);
    }
    /**
        TrimRight returns a slice of the string s, with all trailing
        Unicode code points contained in cutset removed.
        
        To remove a suffix, use TrimSuffix instead.
    **/
    static public function trimRight(_s:String, _cutset:String):String {
        return stdgo._internal.strings.Strings.trimRight(_s, _cutset);
    }
    /**
        TrimSpace returns a slice of the string s, with all leading
        and trailing white space removed, as defined by Unicode.
    **/
    static public function trimSpace(_s:String):String {
        return stdgo._internal.strings.Strings.trimSpace(_s);
    }
    /**
        TrimPrefix returns s without the provided leading prefix string.
        If s doesn't start with prefix, s is returned unchanged.
    **/
    static public function trimPrefix(_s:String, _prefix:String):String {
        return stdgo._internal.strings.Strings.trimPrefix(_s, _prefix);
    }
    /**
        TrimSuffix returns s without the provided trailing suffix string.
        If s doesn't end with suffix, s is returned unchanged.
    **/
    static public function trimSuffix(_s:String, _suffix:String):String {
        return stdgo._internal.strings.Strings.trimSuffix(_s, _suffix);
    }
    /**
        Replace returns a copy of the string s with the first n
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
        If n < 0, there is no limit on the number of replacements.
    **/
    static public function replace(_s:String, _old:String, _new:String, _n:StdTypes.Int):String {
        return stdgo._internal.strings.Strings.replace(_s, _old, _new, _n);
    }
    /**
        ReplaceAll returns a copy of the string s with all
        non-overlapping instances of old replaced by new.
        If old is empty, it matches at the beginning of the string
        and after each UTF-8 sequence, yielding up to k+1 replacements
        for a k-rune string.
    **/
    static public function replaceAll(_s:String, _old:String, _new:String):String {
        return stdgo._internal.strings.Strings.replaceAll(_s, _old, _new);
    }
    /**
        EqualFold reports whether s and t, interpreted as UTF-8 strings,
        are equal under simple Unicode case-folding, which is a more general
        form of case-insensitivity.
    **/
    static public function equalFold(_s:String, _t:String):Bool {
        return stdgo._internal.strings.Strings.equalFold(_s, _t);
    }
    /**
        Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
    **/
    static public function index(_s:String, _substr:String):StdTypes.Int {
        return stdgo._internal.strings.Strings.index(_s, _substr);
    }
    /**
        Cut slices s around the first instance of sep,
        returning the text before and after sep.
        The found result reports whether sep appears in s.
        If sep does not appear in s, cut returns s, "", false.
    **/
    static public function cut(_s:String, _sep:String):stdgo.Tuple.Tuple3<String, String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cut(_s, _sep);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        CutPrefix returns s without the provided leading prefix string
        and reports whether it found the prefix.
        If s doesn't start with prefix, CutPrefix returns s, false.
        If prefix is the empty string, CutPrefix returns s, true.
    **/
    static public function cutPrefix(_s:String, _prefix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutPrefix(_s, _prefix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        CutSuffix returns s without the provided ending suffix string
        and reports whether it found the suffix.
        If s doesn't end with suffix, CutSuffix returns s, false.
        If suffix is the empty string, CutSuffix returns s, true.
    **/
    static public function cutSuffix(_s:String, _suffix:String):stdgo.Tuple<String, Bool> {
        return {
            final obj = stdgo._internal.strings.Strings.cutSuffix(_s, _suffix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
