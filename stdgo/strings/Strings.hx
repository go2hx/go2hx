package stdgo.strings;
@:dox(hide) class T_replacer_static_extension {
    static public function writeString(t:stdgo._internal.strings.Strings_t_replacer.T_replacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_replacer_static_extension.T_replacer_static_extension.writeString(t, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(t:stdgo._internal.strings.Strings_t_replacer.T_replacer, _s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_replacer_static_extension.T_replacer_static_extension.replace(t, _s);
    }
}
@:dox(hide) @:forward abstract T_replacer(stdgo._internal.strings.Strings_t_replacer.T_replacer) from stdgo._internal.strings.Strings_t_replacer.T_replacer to stdgo._internal.strings.Strings_t_replacer.T_replacer {
    @:from
    static function fromHaxeInterface(x:{ function replace(_s:String):String; function writeString(_w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error>; }):T_replacer {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:T_replacer = { replace : _0 -> x.replace(_0), writeString : (_0, _1) -> x.writeString(_0, _1), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.strings.Strings.Builder_static_extension) abstract Builder(stdgo._internal.strings.Strings_builder.Builder) from stdgo._internal.strings.Strings_builder.Builder to stdgo._internal.strings.Strings_builder.Builder {
    public var _addr(get, set) : Builder;
    function get__addr():Builder return this._addr;
    function set__addr(v:Builder):Builder {
        this._addr = (v : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_addr:Builder, ?_buf:Array<std.UInt>) this = new stdgo._internal.strings.Strings_builder.Builder((_addr : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>), ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.Reader_static_extension) abstract Reader(stdgo._internal.strings.Strings_reader.Reader) from stdgo._internal.strings.Strings_reader.Reader to stdgo._internal.strings.Strings_reader.Reader {
    public var _s(get, set) : String;
    function get__s():String return this._s;
    function set__s(v:String):String {
        this._s = (v : stdgo.GoString);
        return v;
    }
    public var _i(get, set) : haxe.Int64;
    function get__i():haxe.Int64 return this._i;
    function set__i(v:haxe.Int64):haxe.Int64 {
        this._i = (v : stdgo.GoInt64);
        return v;
    }
    public var _prevRune(get, set) : StdTypes.Int;
    function get__prevRune():StdTypes.Int return this._prevRune;
    function set__prevRune(v:StdTypes.Int):StdTypes.Int {
        this._prevRune = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_s:String, ?_i:haxe.Int64, ?_prevRune:StdTypes.Int) this = new stdgo._internal.strings.Strings_reader.Reader((_s : stdgo.GoString), (_i : stdgo.GoInt64), (_prevRune : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.Replacer_static_extension) abstract Replacer(stdgo._internal.strings.Strings_replacer.Replacer) from stdgo._internal.strings.Strings_replacer.Replacer to stdgo._internal.strings.Strings_replacer.Replacer {
    public var _once(get, set) : stdgo._internal.sync.Sync_once.Once;
    function get__once():stdgo._internal.sync.Sync_once.Once return this._once;
    function set__once(v:stdgo._internal.sync.Sync_once.Once):stdgo._internal.sync.Sync_once.Once {
        this._once = v;
        return v;
    }
    public var _r(get, set) : T_replacer;
    function get__r():T_replacer return this._r;
    function set__r(v:T_replacer):T_replacer {
        this._r = v;
        return v;
    }
    public var _oldnew(get, set) : Array<String>;
    function get__oldnew():Array<String> return [for (i in this._oldnew) i];
    function set__oldnew(v:Array<String>):Array<String> {
        this._oldnew = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_once:stdgo._internal.sync.Sync_once.Once, ?_r:T_replacer, ?_oldnew:Array<String>) this = new stdgo._internal.strings.Strings_replacer.Replacer(_once, _r, ([for (i in _oldnew) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_trieNode_static_extension) @:dox(hide) abstract T_trieNode(stdgo._internal.strings.Strings_t_trienode.T_trieNode) from stdgo._internal.strings.Strings_t_trienode.T_trieNode to stdgo._internal.strings.Strings_t_trienode.T_trieNode {
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public var _priority(get, set) : StdTypes.Int;
    function get__priority():StdTypes.Int return this._priority;
    function set__priority(v:StdTypes.Int):StdTypes.Int {
        this._priority = (v : stdgo.GoInt);
        return v;
    }
    public var _prefix(get, set) : String;
    function get__prefix():String return this._prefix;
    function set__prefix(v:String):String {
        this._prefix = (v : stdgo.GoString);
        return v;
    }
    public var _next(get, set) : T_trieNode;
    function get__next():T_trieNode return this._next;
    function set__next(v:T_trieNode):T_trieNode {
        this._next = (v : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
        return v;
    }
    public var _table(get, set) : Array<T_trieNode>;
    function get__table():Array<T_trieNode> return [for (i in this._table) i];
    function set__table(v:Array<T_trieNode>):Array<T_trieNode> {
        this._table = ([for (i in v) (i : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>);
        return v;
    }
    public function new(?_value:String, ?_priority:StdTypes.Int, ?_prefix:String, ?_next:T_trieNode, ?_table:Array<T_trieNode>) this = new stdgo._internal.strings.Strings_t_trienode.T_trieNode((_value : stdgo.GoString), (_priority : stdgo.GoInt), (_prefix : stdgo.GoString), (_next : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>), ([for (i in _table) (i : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>)] : stdgo.Slice<stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_genericReplacer_static_extension) @:dox(hide) abstract T_genericReplacer(stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer) from stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer to stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer {
    public var _root(get, set) : T_trieNode;
    function get__root():T_trieNode return this._root;
    function set__root(v:T_trieNode):T_trieNode {
        this._root = v;
        return v;
    }
    public var _tableSize(get, set) : StdTypes.Int;
    function get__tableSize():StdTypes.Int return this._tableSize;
    function set__tableSize(v:StdTypes.Int):StdTypes.Int {
        this._tableSize = (v : stdgo.GoInt);
        return v;
    }
    public var _mapping(get, set) : haxe.ds.Vector<std.UInt>;
    function get__mapping():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._mapping) i]);
    function set__mapping(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._mapping = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_root:T_trieNode, ?_tableSize:StdTypes.Int, ?_mapping:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer(_root, (_tableSize : stdgo.GoInt), ([for (i in _mapping) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_stringWriter_static_extension) @:dox(hide) abstract T_stringWriter(stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter) from stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter to stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter {
    public var _w(get, set) : stdgo._internal.io.Io_writer.Writer;
    function get__w():stdgo._internal.io.Io_writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_writer.Writer):stdgo._internal.io.Io_writer.Writer {
        this._w = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_writer.Writer) this = new stdgo._internal.strings.Strings_t_stringwriter.T_stringWriter(_w);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) @:dox(hide) abstract T_singleStringReplacer(stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer) from stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer to stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer {
    public var _finder(get, set) : T_stringFinder;
    function get__finder():T_stringFinder return this._finder;
    function set__finder(v:T_stringFinder):T_stringFinder {
        this._finder = (v : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_finder:T_stringFinder, ?_value:String) this = new stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer((_finder : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_byteStringReplacer_static_extension) @:dox(hide) abstract T_byteStringReplacer(stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer) from stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer to stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer {
    public var _replacements(get, set) : haxe.ds.Vector<Array<std.UInt>>;
    function get__replacements():haxe.ds.Vector<Array<std.UInt>> return haxe.ds.Vector.fromArrayCopy([for (i in this._replacements) [for (i in i) i]]);
    function set__replacements(v:haxe.ds.Vector<Array<std.UInt>>):haxe.ds.Vector<Array<std.UInt>> {
        this._replacements = ([for (i in v) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>);
        return v;
    }
    public var _toReplace(get, set) : Array<String>;
    function get__toReplace():Array<String> return [for (i in this._toReplace) i];
    function set__toReplace(v:Array<String>):Array<String> {
        this._toReplace = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_replacements:haxe.ds.Vector<Array<std.UInt>>, ?_toReplace:Array<String>) this = new stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer(([for (i in _replacements) ([for (i in i) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>)] : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>), ([for (i in _toReplace) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.strings.Strings.T_stringFinder_static_extension) @:dox(hide) abstract T_stringFinder(stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder) from stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder to stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder {
    public var _pattern(get, set) : String;
    function get__pattern():String return this._pattern;
    function set__pattern(v:String):String {
        this._pattern = (v : stdgo.GoString);
        return v;
    }
    public var _badCharSkip(get, set) : haxe.ds.Vector<StdTypes.Int>;
    function get__badCharSkip():haxe.ds.Vector<StdTypes.Int> return haxe.ds.Vector.fromArrayCopy([for (i in this._badCharSkip) i]);
    function set__badCharSkip(v:haxe.ds.Vector<StdTypes.Int>):haxe.ds.Vector<StdTypes.Int> {
        this._badCharSkip = ([for (i in v) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>);
        return v;
    }
    public var _goodSuffixSkip(get, set) : Array<StdTypes.Int>;
    function get__goodSuffixSkip():Array<StdTypes.Int> return [for (i in this._goodSuffixSkip) i];
    function set__goodSuffixSkip(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._goodSuffixSkip = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_pattern:String, ?_badCharSkip:haxe.ds.Vector<StdTypes.Int>, ?_goodSuffixSkip:Array<StdTypes.Int>) this = new stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder((_pattern : stdgo.GoString), ([for (i in _badCharSkip) (i : stdgo.GoInt)] : stdgo.GoArray<stdgo.GoInt>), ([for (i in _goodSuffixSkip) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_appendSliceWriter = stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter;
@:dox(hide) typedef T_byteReplacer = stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer;
@:dox(hide) typedef T_asciiSet = stdgo._internal.strings.Strings_t_asciiset.T_asciiSet;
@:structInit @:using(stdgo.strings.Strings.T_fieldsFunc___localname___span_9921_static_extension) @:dox(hide) abstract T_fieldsFunc___localname___span_9921(stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921) from stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921 to stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921 {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921.T_fieldsFunc___localname___span_9921((_start : stdgo.GoInt), (_end : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef BuilderPointer = stdgo._internal.strings.Strings_builderpointer.BuilderPointer;
class Builder_static_extension {
    static public function writeString(_b:Builder, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.writeString(_b, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeRune(_b:Builder, _r:StdTypes.Int):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _r = (_r : stdgo.GoInt32);
        return {
            final obj = stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.writeRune(_b, _r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function writeByte(_b:Builder, _c:std.UInt):stdgo.Error {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.writeByte(_b, _c);
    }
    static public function write(_b:Builder, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.write(_b, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function grow(_b:Builder, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.grow(_b, _n);
    }
    static public function _grow(_b:Builder, _n:StdTypes.Int):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        final _n = (_n : stdgo.GoInt);
        stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension._grow(_b, _n);
    }
    static public function reset(_b:Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.reset(_b);
    }
    static public function cap(_b:Builder):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        return stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.cap(_b);
    }
    static public function len(_b:Builder):StdTypes.Int {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        return stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.len(_b);
    }
    static public function string(_b:Builder):String {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        return stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension.string(_b);
    }
    static public function _copyCheck(_b:Builder):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        stdgo._internal.strings.Strings_builder_static_extension.Builder_static_extension._copyCheck(_b);
    }
}
typedef ReaderPointer = stdgo._internal.strings.Strings_readerpointer.ReaderPointer;
class Reader_static_extension {
    static public function reset(_r:Reader, _s:String):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        final _s = (_s : stdgo.GoString);
        stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.reset(_r, _s);
    }
    static public function writeTo(_r:Reader, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.writeTo(_r, _w);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function seek(_r:Reader, _offset:haxe.Int64, _whence:StdTypes.Int):stdgo.Tuple<haxe.Int64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        final _offset = (_offset : stdgo.GoInt64);
        final _whence = (_whence : stdgo.GoInt);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.seek(_r, _offset, _whence);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function unreadRune(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.unreadRune(_r);
    }
    static public function readRune(_r:Reader):stdgo.Tuple.Tuple3<StdTypes.Int, StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.readRune(_r);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function unreadByte(_r:Reader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.unreadByte(_r);
    }
    static public function readByte(_r:Reader):stdgo.Tuple<std.UInt, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.readByte(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function readAt(_r:Reader, _b:Array<std.UInt>, _off:haxe.Int64):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _off = (_off : stdgo.GoInt64);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.readAt(_r, _b, _off);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function read(_r:Reader, _b:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.read(_r, _b);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function size(_r:Reader):haxe.Int64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.size(_r);
    }
    static public function len(_r:Reader):StdTypes.Int {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_reader.Reader>);
        return stdgo._internal.strings.Strings_reader_static_extension.Reader_static_extension.len(_r);
    }
}
typedef ReplacerPointer = stdgo._internal.strings.Strings_replacerpointer.ReplacerPointer;
class Replacer_static_extension {
    static public function writeString(_r:Replacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:Replacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension.replace(_r, _s);
    }
    static public function _build(_b:Replacer):T_replacer {
        final _b = (_b : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        return stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension._build(_b);
    }
    static public function _buildOnce(_r:Replacer):Void {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension._buildOnce(_r);
    }
    static public function printTrie(_r:Replacer):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        return stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension.printTrie(_r);
    }
    static public function replacer(_r:Replacer):stdgo.AnyInterface {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_replacer.Replacer>);
        return stdgo._internal.strings.Strings_replacer_static_extension.Replacer_static_extension.replacer(_r);
    }
}
@:dox(hide) typedef T_trieNodePointer = stdgo._internal.strings.Strings_t_trienodepointer.T_trieNodePointer;
@:dox(hide) class T_trieNode_static_extension {
    static public function _add(_t:T_trieNode, _key:String, _val:String, _priority:StdTypes.Int, _r:T_genericReplacer):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
        final _key = (_key : stdgo.GoString);
        final _val = (_val : stdgo.GoString);
        final _priority = (_priority : stdgo.GoInt);
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        stdgo._internal.strings.Strings_t_trienode_static_extension.T_trieNode_static_extension._add(_t, _key, _val, _priority, _r);
    }
}
@:dox(hide) typedef T_genericReplacerPointer = stdgo._internal.strings.Strings_t_genericreplacerpointer.T_genericReplacerPointer;
@:dox(hide) class T_genericReplacer_static_extension {
    static public function writeString(_r:T_genericReplacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_genericReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension.replace(_r, _s);
    }
    static public function _lookup(_r:T_genericReplacer, _s:String, _ignoreRoot:Bool):stdgo.Tuple.Tuple3<String, StdTypes.Int, Bool> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension._lookup(_r, _s, _ignoreRoot);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    static public function _printNode(_r:T_genericReplacer, _t:T_trieNode, _depth:StdTypes.Int):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_genericreplacer.T_genericReplacer>);
        final _t = (_t : stdgo.Ref<stdgo._internal.strings.Strings_t_trienode.T_trieNode>);
        final _depth = (_depth : stdgo.GoInt);
        return stdgo._internal.strings.Strings_t_genericreplacer_static_extension.T_genericReplacer_static_extension._printNode(_r, _t, _depth);
    }
}
@:dox(hide) typedef T_stringWriterPointer = stdgo._internal.strings.Strings_t_stringwriterpointer.T_stringWriterPointer;
@:dox(hide) class T_stringWriter_static_extension {
    static public function writeString(_w:T_stringWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_stringwriter_static_extension.T_stringWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_singleStringReplacerPointer = stdgo._internal.strings.Strings_t_singlestringreplacerpointer.T_singleStringReplacerPointer;
@:dox(hide) class T_singleStringReplacer_static_extension {
    static public function writeString(_r:T_singleStringReplacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_singlestringreplacer_static_extension.T_singleStringReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_singleStringReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_singlestringreplacer.T_singleStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_singlestringreplacer_static_extension.T_singleStringReplacer_static_extension.replace(_r, _s);
    }
}
@:dox(hide) typedef T_byteStringReplacerPointer = stdgo._internal.strings.Strings_t_bytestringreplacerpointer.T_byteStringReplacerPointer;
@:dox(hide) class T_byteStringReplacer_static_extension {
    static public function writeString(_r:T_byteStringReplacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_bytestringreplacer_static_extension.T_byteStringReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_byteStringReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_bytestringreplacer_static_extension.T_byteStringReplacer_static_extension.replace(_r, _s);
    }
}
@:dox(hide) typedef T_stringFinderPointer = stdgo._internal.strings.Strings_t_stringfinderpointer.T_stringFinderPointer;
@:dox(hide) class T_stringFinder_static_extension {
    static public function _next(_f:T_stringFinder, _text:String):StdTypes.Int {
        final _f = (_f : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_stringfinder_static_extension.T_stringFinder_static_extension._next(_f, _text);
    }
}
@:dox(hide) typedef T_appendSliceWriterPointer = stdgo._internal.strings.Strings_t_appendslicewriterpointer.T_appendSliceWriterPointer;
@:dox(hide) class T_appendSliceWriter_static_extension {
    static public function writeString(_w:T_appendSliceWriter, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_appendslicewriter_static_extension.T_appendSliceWriter_static_extension.writeString(_w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function write(_w:T_appendSliceWriter, _p:Array<std.UInt>):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _w = (_w : stdgo.Ref<stdgo._internal.strings.Strings_t_appendslicewriter.T_appendSliceWriter>);
        final _p = ([for (i in _p) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.strings.Strings_t_appendslicewriter_static_extension.T_appendSliceWriter_static_extension.write(_w, _p);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
@:dox(hide) typedef T_byteReplacerPointer = stdgo._internal.strings.Strings_t_bytereplacerpointer.T_byteReplacerPointer;
@:dox(hide) class T_byteReplacer_static_extension {
    static public function writeString(_r:T_byteReplacer, _w:stdgo._internal.io.Io_writer.Writer, _s:String):stdgo.Tuple<StdTypes.Int, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer>);
        final _s = (_s : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_t_bytereplacer_static_extension.T_byteReplacer_static_extension.writeString(_r, _w, _s);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function replace(_r:T_byteReplacer, _s:String):String {
        final _r = (_r : stdgo.Ref<stdgo._internal.strings.Strings_t_bytereplacer.T_byteReplacer>);
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_t_bytereplacer_static_extension.T_byteReplacer_static_extension.replace(_r, _s);
    }
}
@:dox(hide) typedef T_asciiSetPointer = stdgo._internal.strings.Strings_t_asciisetpointer.T_asciiSetPointer;
@:dox(hide) class T_asciiSet_static_extension {
    static public function _contains(_as:T_asciiSet, _c:std.UInt):Bool {
        final _as = (_as : stdgo.Ref<stdgo._internal.strings.Strings_t_asciiset.T_asciiSet>);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.strings.Strings_t_asciiset_static_extension.T_asciiSet_static_extension._contains(_as, _c);
    }
}
@:dox(hide) typedef T_fieldsFunc___localname___span_9921Pointer = stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921pointer.T_fieldsFunc___localname___span_9921Pointer;
@:dox(hide) class T_fieldsFunc___localname___span_9921_static_extension {

}
/**
    * Package strings implements simple functions to manipulate UTF-8 encoded strings.
    * 
    * For information about UTF-8 strings in Go, see https://blog.golang.org/strings.
**/
class Strings {
    /**
        * Clone returns a fresh copy of s.
        * It guarantees to make a copy of s into a new allocation,
        * which can be important when retaining only a small substring
        * of a much larger string. Using Clone can help such programs
        * use less memory. Of course, since using Clone makes a copy,
        * overuse of Clone can make programs use more memory.
        * Clone should typically be used only rarely, and only when
        * profiling indicates that it is needed.
        * For strings of length zero the string "" will be returned
        * and no allocation is made.
    **/
    static public inline function clone(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_clone.clone(_s);
    }
    /**
        * Compare returns an integer comparing two strings lexicographically.
        * The result will be 0 if a == b, -1 if a < b, and +1 if a > b.
        * 
        * Compare is included only for symmetry with package bytes.
        * It is usually clearer and always faster to use the built-in
        * string comparison operators ==, <, >, and so on.
    **/
    static public inline function compare(_a:String, _b:String):StdTypes.Int {
        final _a = (_a : stdgo.GoString);
        final _b = (_b : stdgo.GoString);
        return stdgo._internal.strings.Strings_compare.compare(_a, _b);
    }
    static public inline function stringFind(_pattern:String, _text:String):StdTypes.Int {
        final _pattern = (_pattern : stdgo.GoString);
        final _text = (_text : stdgo.GoString);
        return stdgo._internal.strings.Strings_stringfind.stringFind(_pattern, _text);
    }
    static public inline function dumpTables(_pattern:String):stdgo.Tuple<Array<StdTypes.Int>, Array<StdTypes.Int>> {
        final _pattern = (_pattern : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_dumptables.dumpTables(_pattern);
            { _0 : [for (i in obj._0) i], _1 : [for (i in obj._1) i] };
        };
    }
    /**
        * NewReader returns a new Reader reading from s.
        * It is similar to bytes.NewBufferString but more efficient and non-writable.
    **/
    static public inline function newReader(_s:String):Reader {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_newreader.newReader(_s);
    }
    /**
        * NewReplacer returns a new Replacer from a list of old, new string
        * pairs. Replacements are performed in the order they appear in the
        * target string, without overlapping matches. The old string
        * comparisons are done in argument order.
        * 
        * NewReplacer panics if given an odd number of arguments.
    **/
    static public inline function newReplacer(_oldnew:haxe.Rest<String>):Replacer {
        return stdgo._internal.strings.Strings_newreplacer.newReplacer(...[for (i in _oldnew) i]);
    }
    /**
        * Count counts the number of non-overlapping instances of substr in s.
        * If substr is an empty string, Count returns 1 + the number of Unicode code points in s.
    **/
    static public inline function count(_s:String, _substr:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return stdgo._internal.strings.Strings_count.count(_s, _substr);
    }
    /**
        * Contains reports whether substr is within s.
    **/
    static public inline function contains(_s:String, _substr:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return stdgo._internal.strings.Strings_contains.contains(_s, _substr);
    }
    /**
        * ContainsAny reports whether any Unicode code points in chars are within s.
    **/
    static public inline function containsAny(_s:String, _chars:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.strings.Strings_containsany.containsAny(_s, _chars);
    }
    /**
        * ContainsRune reports whether the Unicode code point r is within s.
    **/
    static public inline function containsRune(_s:String, _r:StdTypes.Int):Bool {
        final _s = (_s : stdgo.GoString);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strings.Strings_containsrune.containsRune(_s, _r);
    }
    /**
        * ContainsFunc reports whether any Unicode code points r within s satisfy f(r).
    **/
    static public inline function containsFunc(_s:String, _f:StdTypes.Int -> Bool):Bool {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_containsfunc.containsFunc(_s, _f);
    }
    /**
        * LastIndex returns the index of the last instance of substr in s, or -1 if substr is not present in s.
    **/
    static public inline function lastIndex(_s:String, _substr:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return stdgo._internal.strings.Strings_lastindex.lastIndex(_s, _substr);
    }
    /**
        * IndexByte returns the index of the first instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function indexByte(_s:String, _c:std.UInt):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.strings.Strings_indexbyte.indexByte(_s, _c);
    }
    /**
        * IndexRune returns the index of the first instance of the Unicode code point
        * r, or -1 if rune is not present in s.
        * If r is utf8.RuneError, it returns the first instance of any
        * invalid UTF-8 byte sequence.
    **/
    static public inline function indexRune(_s:String, _r:StdTypes.Int):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _r = (_r : stdgo.GoInt32);
        return stdgo._internal.strings.Strings_indexrune.indexRune(_s, _r);
    }
    /**
        * IndexAny returns the index of the first instance of any Unicode code point
        * from chars in s, or -1 if no Unicode code point from chars is present in s.
    **/
    static public inline function indexAny(_s:String, _chars:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.strings.Strings_indexany.indexAny(_s, _chars);
    }
    /**
        * LastIndexAny returns the index of the last instance of any Unicode code
        * point from chars in s, or -1 if no Unicode code point from chars is
        * present in s.
    **/
    static public inline function lastIndexAny(_s:String, _chars:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _chars = (_chars : stdgo.GoString);
        return stdgo._internal.strings.Strings_lastindexany.lastIndexAny(_s, _chars);
    }
    /**
        * LastIndexByte returns the index of the last instance of c in s, or -1 if c is not present in s.
    **/
    static public inline function lastIndexByte(_s:String, _c:std.UInt):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _c = (_c : stdgo.GoUInt8);
        return stdgo._internal.strings.Strings_lastindexbyte.lastIndexByte(_s, _c);
    }
    /**
        * SplitN slices s into substrings separated by sep and returns a slice of
        * the substrings between those separators.
        * 
        * The count determines the number of substrings to return:
        * 
        * 	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        * 	n == 0: the result is nil (zero substrings)
        * 	n < 0: all substrings
        * 
        * Edge cases for s and sep (for example, empty strings) are handled
        * as described in the documentation for Split.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function splitN(_s:String, _sep:String, _n:StdTypes.Int):Array<String> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.strings.Strings_splitn.splitN(_s, _sep, _n)) i];
    }
    /**
        * SplitAfterN slices s into substrings after each instance of sep and
        * returns a slice of those substrings.
        * 
        * The count determines the number of substrings to return:
        * 
        * 	n > 0: at most n substrings; the last substring will be the unsplit remainder.
        * 	n == 0: the result is nil (zero substrings)
        * 	n < 0: all substrings
        * 
        * Edge cases for s and sep (for example, empty strings) are handled
        * as described in the documentation for SplitAfter.
    **/
    static public inline function splitAfterN(_s:String, _sep:String, _n:StdTypes.Int):Array<String> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.strings.Strings_splitaftern.splitAfterN(_s, _sep, _n)) i];
    }
    /**
        * Split slices s into all substrings separated by sep and returns a slice of
        * the substrings between those separators.
        * 
        * If s does not contain sep and sep is not empty, Split returns a
        * slice of length 1 whose only element is s.
        * 
        * If sep is empty, Split splits after each UTF-8 sequence. If both s
        * and sep are empty, Split returns an empty slice.
        * 
        * It is equivalent to SplitN with a count of -1.
        * 
        * To split around the first instance of a separator, see Cut.
    **/
    static public inline function split(_s:String, _sep:String):Array<String> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        return [for (i in stdgo._internal.strings.Strings_split.split(_s, _sep)) i];
    }
    /**
        * SplitAfter slices s into all substrings after each instance of sep and
        * returns a slice of those substrings.
        * 
        * If s does not contain sep and sep is not empty, SplitAfter returns
        * a slice of length 1 whose only element is s.
        * 
        * If sep is empty, SplitAfter splits after each UTF-8 sequence. If
        * both s and sep are empty, SplitAfter returns an empty slice.
        * 
        * It is equivalent to SplitAfterN with a count of -1.
    **/
    static public inline function splitAfter(_s:String, _sep:String):Array<String> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        return [for (i in stdgo._internal.strings.Strings_splitafter.splitAfter(_s, _sep)) i];
    }
    /**
        * Fields splits the string s around each instance of one or more consecutive white space
        * characters, as defined by unicode.IsSpace, returning a slice of substrings of s or an
        * empty slice if s contains only white space.
    **/
    static public inline function fields(_s:String):Array<String> {
        final _s = (_s : stdgo.GoString);
        return [for (i in stdgo._internal.strings.Strings_fields.fields(_s)) i];
    }
    /**
        * FieldsFunc splits the string s at each run of Unicode code points c satisfying f(c)
        * and returns an array of slices of s. If all code points in s satisfy f(c) or the
        * string is empty, an empty slice is returned.
        * 
        * FieldsFunc makes no guarantees about the order in which it calls f(c)
        * and assumes that f always returns the same value for a given c.
    **/
    static public inline function fieldsFunc(_s:String, _f:StdTypes.Int -> Bool):Array<String> {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return [for (i in stdgo._internal.strings.Strings_fieldsfunc.fieldsFunc(_s, _f)) i];
    }
    /**
        * Join concatenates the elements of its first argument to create a single string. The separator
        * string sep is placed between elements in the resulting string.
    **/
    static public inline function join(_elems:Array<String>, _sep:String):String {
        final _elems = ([for (i in _elems) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        final _sep = (_sep : stdgo.GoString);
        return stdgo._internal.strings.Strings_join.join(_elems, _sep);
    }
    /**
        * HasPrefix tests whether the string s begins with prefix.
    **/
    static public inline function hasPrefix(_s:String, _prefix:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.strings.Strings_hasprefix.hasPrefix(_s, _prefix);
    }
    /**
        * HasSuffix tests whether the string s ends with suffix.
    **/
    static public inline function hasSuffix(_s:String, _suffix:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return stdgo._internal.strings.Strings_hassuffix.hasSuffix(_s, _suffix);
    }
    /**
        * Map returns a copy of the string s with all its characters modified
        * according to the mapping function. If mapping returns a negative value, the character is
        * dropped from the string with no replacement.
    **/
    static public inline function map_(_mapping:StdTypes.Int -> StdTypes.Int, _s:String):String {
        final _mapping = _mapping;
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_map_.map_(_mapping, _s);
    }
    /**
        * Repeat returns a new string consisting of count copies of the string s.
        * 
        * It panics if count is negative or if the result of (len(s) * count)
        * overflows.
    **/
    static public inline function repeat(_s:String, _count:StdTypes.Int):String {
        final _s = (_s : stdgo.GoString);
        final _count = (_count : stdgo.GoInt);
        return stdgo._internal.strings.Strings_repeat.repeat(_s, _count);
    }
    /**
        * ToUpper returns s with all Unicode letters mapped to their upper case.
    **/
    static public inline function toUpper(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_toupper.toUpper(_s);
    }
    /**
        * ToLower returns s with all Unicode letters mapped to their lower case.
    **/
    static public inline function toLower(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_tolower.toLower(_s);
    }
    /**
        * ToTitle returns a copy of the string s with all Unicode letters mapped to
        * their Unicode title case.
    **/
    static public inline function toTitle(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_totitle.toTitle(_s);
    }
    /**
        * ToUpperSpecial returns a copy of the string s with all Unicode letters mapped to their
        * upper case using the case mapping specified by c.
    **/
    static public inline function toUpperSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_toupperspecial.toUpperSpecial(_c, _s);
    }
    /**
        * ToLowerSpecial returns a copy of the string s with all Unicode letters mapped to their
        * lower case using the case mapping specified by c.
    **/
    static public inline function toLowerSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_tolowerspecial.toLowerSpecial(_c, _s);
    }
    /**
        * ToTitleSpecial returns a copy of the string s with all Unicode letters mapped to their
        * Unicode title case, giving priority to the special casing rules.
    **/
    static public inline function toTitleSpecial(_c:stdgo._internal.unicode.Unicode_specialcase.SpecialCase, _s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_totitlespecial.toTitleSpecial(_c, _s);
    }
    /**
        * ToValidUTF8 returns a copy of the string s with each run of invalid UTF-8 byte sequences
        * replaced by the replacement string, which may be empty.
    **/
    static public inline function toValidUTF8(_s:String, _replacement:String):String {
        final _s = (_s : stdgo.GoString);
        final _replacement = (_replacement : stdgo.GoString);
        return stdgo._internal.strings.Strings_tovalidutf8.toValidUTF8(_s, _replacement);
    }
    /**
        * Title returns a copy of the string s with all Unicode letters that begin words
        * mapped to their Unicode title case.
        * 
        * Deprecated: The rule Title uses for word boundaries does not handle Unicode
        * punctuation properly. Use golang.org/x/text/cases instead.
    **/
    static public inline function title(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_title.title(_s);
    }
    /**
        * TrimLeftFunc returns a slice of the string s with all leading
        * Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimLeftFunc(_s:String, _f:StdTypes.Int -> Bool):String {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_trimleftfunc.trimLeftFunc(_s, _f);
    }
    /**
        * TrimRightFunc returns a slice of the string s with all trailing
        * Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimRightFunc(_s:String, _f:StdTypes.Int -> Bool):String {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_trimrightfunc.trimRightFunc(_s, _f);
    }
    /**
        * TrimFunc returns a slice of the string s with all leading
        * and trailing Unicode code points c satisfying f(c) removed.
    **/
    static public inline function trimFunc(_s:String, _f:StdTypes.Int -> Bool):String {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_trimfunc.trimFunc(_s, _f);
    }
    /**
        * IndexFunc returns the index into s of the first Unicode
        * code point satisfying f(c), or -1 if none do.
    **/
    static public inline function indexFunc(_s:String, _f:StdTypes.Int -> Bool):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_indexfunc.indexFunc(_s, _f);
    }
    /**
        * LastIndexFunc returns the index into s of the last
        * Unicode code point satisfying f(c), or -1 if none do.
    **/
    static public inline function lastIndexFunc(_s:String, _f:StdTypes.Int -> Bool):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _f = _f;
        return stdgo._internal.strings.Strings_lastindexfunc.lastIndexFunc(_s, _f);
    }
    /**
        * Trim returns a slice of the string s with all leading and
        * trailing Unicode code points contained in cutset removed.
    **/
    static public inline function trim(_s:String, _cutset:String):String {
        final _s = (_s : stdgo.GoString);
        final _cutset = (_cutset : stdgo.GoString);
        return stdgo._internal.strings.Strings_trim.trim(_s, _cutset);
    }
    /**
        * TrimLeft returns a slice of the string s with all leading
        * Unicode code points contained in cutset removed.
        * 
        * To remove a prefix, use TrimPrefix instead.
    **/
    static public inline function trimLeft(_s:String, _cutset:String):String {
        final _s = (_s : stdgo.GoString);
        final _cutset = (_cutset : stdgo.GoString);
        return stdgo._internal.strings.Strings_trimleft.trimLeft(_s, _cutset);
    }
    /**
        * TrimRight returns a slice of the string s, with all trailing
        * Unicode code points contained in cutset removed.
        * 
        * To remove a suffix, use TrimSuffix instead.
    **/
    static public inline function trimRight(_s:String, _cutset:String):String {
        final _s = (_s : stdgo.GoString);
        final _cutset = (_cutset : stdgo.GoString);
        return stdgo._internal.strings.Strings_trimright.trimRight(_s, _cutset);
    }
    /**
        * TrimSpace returns a slice of the string s, with all leading
        * and trailing white space removed, as defined by Unicode.
    **/
    static public inline function trimSpace(_s:String):String {
        final _s = (_s : stdgo.GoString);
        return stdgo._internal.strings.Strings_trimspace.trimSpace(_s);
    }
    /**
        * TrimPrefix returns s without the provided leading prefix string.
        * If s doesn't start with prefix, s is returned unchanged.
    **/
    static public inline function trimPrefix(_s:String, _prefix:String):String {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return stdgo._internal.strings.Strings_trimprefix.trimPrefix(_s, _prefix);
    }
    /**
        * TrimSuffix returns s without the provided trailing suffix string.
        * If s doesn't end with suffix, s is returned unchanged.
    **/
    static public inline function trimSuffix(_s:String, _suffix:String):String {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return stdgo._internal.strings.Strings_trimsuffix.trimSuffix(_s, _suffix);
    }
    /**
        * Replace returns a copy of the string s with the first n
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the string
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune string.
        * If n < 0, there is no limit on the number of replacements.
    **/
    static public inline function replace(_s:String, _old:String, _new_:String, _n:StdTypes.Int):String {
        final _s = (_s : stdgo.GoString);
        final _old = (_old : stdgo.GoString);
        final _new_ = (_new_ : stdgo.GoString);
        final _n = (_n : stdgo.GoInt);
        return stdgo._internal.strings.Strings_replace.replace(_s, _old, _new_, _n);
    }
    /**
        * ReplaceAll returns a copy of the string s with all
        * non-overlapping instances of old replaced by new.
        * If old is empty, it matches at the beginning of the string
        * and after each UTF-8 sequence, yielding up to k+1 replacements
        * for a k-rune string.
    **/
    static public inline function replaceAll(_s:String, _old:String, _new_:String):String {
        final _s = (_s : stdgo.GoString);
        final _old = (_old : stdgo.GoString);
        final _new_ = (_new_ : stdgo.GoString);
        return stdgo._internal.strings.Strings_replaceall.replaceAll(_s, _old, _new_);
    }
    /**
        * EqualFold reports whether s and t, interpreted as UTF-8 strings,
        * are equal under simple Unicode case-folding, which is a more general
        * form of case-insensitivity.
    **/
    static public inline function equalFold(_s:String, _t:String):Bool {
        final _s = (_s : stdgo.GoString);
        final _t = (_t : stdgo.GoString);
        return stdgo._internal.strings.Strings_equalfold.equalFold(_s, _t);
    }
    /**
        * Index returns the index of the first instance of substr in s, or -1 if substr is not present in s.
    **/
    static public inline function index(_s:String, _substr:String):StdTypes.Int {
        final _s = (_s : stdgo.GoString);
        final _substr = (_substr : stdgo.GoString);
        return stdgo._internal.strings.Strings_index.index(_s, _substr);
    }
    /**
        * Cut slices s around the first instance of sep,
        * returning the text before and after sep.
        * The found result reports whether sep appears in s.
        * If sep does not appear in s, cut returns s, "", false.
    **/
    static public inline function cut(_s:String, _sep:String):stdgo.Tuple.Tuple3<String, String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _sep = (_sep : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_cut.cut(_s, _sep);
            { _0 : obj._0, _1 : obj._1, _2 : obj._2 };
        };
    }
    /**
        * CutPrefix returns s without the provided leading prefix string
        * and reports whether it found the prefix.
        * If s doesn't start with prefix, CutPrefix returns s, false.
        * If prefix is the empty string, CutPrefix returns s, true.
    **/
    static public inline function cutPrefix(_s:String, _prefix:String):stdgo.Tuple<String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _prefix = (_prefix : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_cutprefix.cutPrefix(_s, _prefix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * CutSuffix returns s without the provided ending suffix string
        * and reports whether it found the suffix.
        * If s doesn't end with suffix, CutSuffix returns s, false.
        * If suffix is the empty string, CutSuffix returns s, true.
    **/
    static public inline function cutSuffix(_s:String, _suffix:String):stdgo.Tuple<String, Bool> {
        final _s = (_s : stdgo.GoString);
        final _suffix = (_suffix : stdgo.GoString);
        return {
            final obj = stdgo._internal.strings.Strings_cutsuffix.cutSuffix(_s, _suffix);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
