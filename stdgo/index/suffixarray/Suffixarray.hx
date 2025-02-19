package stdgo.index.suffixarray;
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.Index_static_extension) abstract Index(stdgo._internal.index.suffixarray.Suffixarray_index.Index) from stdgo._internal.index.suffixarray.Suffixarray_index.Index to stdgo._internal.index.suffixarray.Suffixarray_index.Index {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _sa(get, set) : T_ints;
    function get__sa():T_ints return this._sa;
    function set__sa(v:T_ints):T_ints {
        this._sa = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_sa:T_ints) this = new stdgo._internal.index.suffixarray.Suffixarray_index.Index(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _sa);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.T_ints_static_extension) @:dox(hide) abstract T_ints(stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints) from stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints to stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints {
    public var _int32(get, set) : Array<StdTypes.Int>;
    function get__int32():Array<StdTypes.Int> return [for (i in this._int32) i];
    function set__int32(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._int32 = ([for (i in v) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _int64(get, set) : Array<haxe.Int64>;
    function get__int64():Array<haxe.Int64> return [for (i in this._int64) i];
    function set__int64(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this._int64 = ([for (i in v) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public function new(?_int32:Array<StdTypes.Int>, ?_int64:Array<haxe.Int64>) this = new stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints(([for (i in _int32) (i : stdgo.GoInt32)] : stdgo.Slice<stdgo.GoInt32>), ([for (i in _int64) (i : stdgo.GoInt64)] : stdgo.Slice<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.T_testCase_static_extension) @:dox(hide) abstract T_testCase(stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase) from stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase to stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase {
    public var _name(get, set) : String;
    function get__name():String return this._name;
    function set__name(v:String):String {
        this._name = (v : stdgo.GoString);
        return v;
    }
    public var _source(get, set) : String;
    function get__source():String return this._source;
    function set__source(v:String):String {
        this._source = (v : stdgo.GoString);
        return v;
    }
    public var _patterns(get, set) : Array<String>;
    function get__patterns():Array<String> return [for (i in this._patterns) i];
    function set__patterns(v:Array<String>):Array<String> {
        this._patterns = ([for (i in v) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>);
        return v;
    }
    public function new(?_name:String, ?_source:String, ?_patterns:Array<String>) this = new stdgo._internal.index.suffixarray.Suffixarray_t_testcase.T_testCase((_name : stdgo.GoString), (_source : stdgo.GoString), ([for (i in _patterns) (i : stdgo.GoString)] : stdgo.Slice<stdgo.GoString>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:dox(hide) typedef T_index = stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index;
typedef IndexPointer = stdgo._internal.index.suffixarray.Suffixarray_indexpointer.IndexPointer;
class Index_static_extension {
    static public function findAllIndex(_x:Index, _r:stdgo._internal.regexp.Regexp_regexp.Regexp, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        final _r = (_r : stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension.findAllIndex(_x, _r, _n)) [for (i in i) i]];
    }
    static public function lookup(_x:Index, _s:Array<std.UInt>, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        final _n = (_n : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension.lookup(_x, _s, _n)) i];
    }
    static public function _lookupAll(_x:Index, _s:Array<std.UInt>):T_ints {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        final _s = ([for (i in _s) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension._lookupAll(_x, _s);
    }
    static public function _at(_x:Index, _i:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension._at(_x, _i)) i];
    }
    static public function bytes(_x:Index):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension.bytes(_x)) i];
    }
    static public function write(_x:Index, _w:stdgo._internal.io.Io_writer.Writer):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        return stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension.write(_x, _w);
    }
    static public function read(_x:Index, _r:stdgo._internal.io.Io_reader.Reader):stdgo.Error {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index>);
        return stdgo._internal.index.suffixarray.Suffixarray_index_static_extension.Index_static_extension.read(_x, _r);
    }
}
@:dox(hide) typedef T_intsPointer = stdgo._internal.index.suffixarray.Suffixarray_t_intspointer.T_intsPointer;
@:dox(hide) class T_ints_static_extension {
    static public function _slice(_a:T_ints, _i:StdTypes.Int, _j:StdTypes.Int):T_ints {
        final _a = (_a : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.index.suffixarray.Suffixarray_t_ints_static_extension.T_ints_static_extension._slice(_a, _i, _j);
    }
    static public function _set(_a:T_ints, _i:StdTypes.Int, _v:haxe.Int64):Void {
        final _a = (_a : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>);
        final _i = (_i : stdgo.GoInt);
        final _v = (_v : stdgo.GoInt64);
        stdgo._internal.index.suffixarray.Suffixarray_t_ints_static_extension.T_ints_static_extension._set(_a, _i, _v);
    }
    static public function _get(_a:T_ints, _i:StdTypes.Int):haxe.Int64 {
        final _a = (_a : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>);
        final _i = (_i : stdgo.GoInt);
        return stdgo._internal.index.suffixarray.Suffixarray_t_ints_static_extension.T_ints_static_extension._get(_a, _i);
    }
    static public function _len(_a:T_ints):StdTypes.Int {
        final _a = (_a : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_ints.T_ints>);
        return stdgo._internal.index.suffixarray.Suffixarray_t_ints_static_extension.T_ints_static_extension._len(_a);
    }
}
@:dox(hide) typedef T_testCasePointer = stdgo._internal.index.suffixarray.Suffixarray_t_testcasepointer.T_testCasePointer;
@:dox(hide) class T_testCase_static_extension {

}
@:dox(hide) typedef T_indexPointer = stdgo._internal.index.suffixarray.Suffixarray_t_indexpointer.T_indexPointer;
@:dox(hide) class T_index_static_extension {
    static public function _at(_x:T_index, _i:StdTypes.Int):Array<std.UInt> {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>);
        final _i = (_i : stdgo.GoInt);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_t_index_static_extension.T_index_static_extension._at(_x, _i)) i];
    }
    static public function swap(_x:T_index, _i:StdTypes.Int, _j:StdTypes.Int):Void {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        stdgo._internal.index.suffixarray.Suffixarray_t_index_static_extension.T_index_static_extension.swap(_x, _i, _j);
    }
    static public function less(_x:T_index, _i:StdTypes.Int, _j:StdTypes.Int):Bool {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>);
        final _i = (_i : stdgo.GoInt);
        final _j = (_j : stdgo.GoInt);
        return stdgo._internal.index.suffixarray.Suffixarray_t_index_static_extension.T_index_static_extension.less(_x, _i, _j);
    }
    static public function len(_x:T_index):StdTypes.Int {
        final _x = (_x : stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_t_index.T_index>);
        return stdgo._internal.index.suffixarray.Suffixarray_t_index_static_extension.T_index_static_extension.len(_x);
    }
}
/**
    * Package suffixarray implements substring search in logarithmic time using
    * an in-memory suffix array.
    * 
    * Example use:
    * 
    * 	// create index for some data
    * 	index := suffixarray.New(data)
    * 
    * 	// lookup byte slice s
    * 	offsets1 := index.Lookup(s, -1) // the list of all indices where s occurs in data
    * 	offsets2 := index.Lookup(s, 3)  // the list of at most 3 indices where s occurs in data
**/
class Suffixarray {
    /**
        * New creates a new Index for data.
        * Index creation time is O(N) for N = len(data).
    **/
    static public inline function new_(_data:Array<std.UInt>):Index {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
    }
    static public inline function testIndex32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.index.suffixarray.Suffixarray_testindex32.testIndex32(_t);
    }
    static public inline function testIndex64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.index.suffixarray.Suffixarray_testindex64.testIndex64(_t);
    }
    static public inline function testNew32(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.index.suffixarray.Suffixarray_testnew32.testNew32(_t);
    }
    static public inline function testNew64(_t:stdgo._internal.testing.Testing_t_.T_):Void {
        final _t = (_t : stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>);
        stdgo._internal.index.suffixarray.Suffixarray_testnew64.testNew64(_t);
    }
    static public inline function benchmarkNew(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.index.suffixarray.Suffixarray_benchmarknew.benchmarkNew(_b);
    }
    static public inline function benchmarkSaveRestore(_b:stdgo._internal.testing.Testing_b.B):Void {
        final _b = (_b : stdgo.Ref<stdgo._internal.testing.Testing_b.B>);
        stdgo._internal.index.suffixarray.Suffixarray_benchmarksaverestore.benchmarkSaveRestore(_b);
    }
}
