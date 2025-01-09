package stdgo.index.suffixarray;
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.Index_static_extension) abstract Index(stdgo._internal.index.suffixarray.Suffixarray_Index.Index) from stdgo._internal.index.suffixarray.Suffixarray_Index.Index to stdgo._internal.index.suffixarray.Suffixarray_Index.Index {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) i] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _sa(get, set) : T_ints;
    function get__sa():T_ints return this._sa;
    function set__sa(v:T_ints):T_ints {
        this._sa = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_sa:T_ints) this = new stdgo._internal.index.suffixarray.Suffixarray_Index.Index(([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>), _sa);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.index.suffixarray.Suffixarray.T_ints_static_extension) abstract T_ints(stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints) from stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints to stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints {
    public var _int32(get, set) : Array<StdTypes.Int>;
    function get__int32():Array<StdTypes.Int> return [for (i in this._int32) i];
    function set__int32(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._int32 = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt32>);
        return v;
    }
    public var _int64(get, set) : Array<haxe.Int64>;
    function get__int64():Array<haxe.Int64> return [for (i in this._int64) i];
    function set__int64(v:Array<haxe.Int64>):Array<haxe.Int64> {
        this._int64 = ([for (i in v) i] : stdgo.Slice<stdgo.GoInt64>);
        return v;
    }
    public function new(?_int32:Array<StdTypes.Int>, ?_int64:Array<haxe.Int64>) this = new stdgo._internal.index.suffixarray.Suffixarray_T_ints.T_ints(([for (i in _int32) i] : stdgo.Slice<stdgo.GoInt32>), ([for (i in _int64) i] : stdgo.Slice<stdgo.GoInt64>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef IndexPointer = stdgo._internal.index.suffixarray.Suffixarray_IndexPointer.IndexPointer;
class Index_static_extension {
    static public function findAllIndex(_x:Index, _r:stdgo._internal.regexp.Regexp_Regexp.Regexp, _n:StdTypes.Int):Array<Array<StdTypes.Int>> {
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.findAllIndex(_x, _r, _n)) [for (i in i) i]];
    }
    static public function lookup(_x:Index, _s:Array<std.UInt>, _n:StdTypes.Int):Array<StdTypes.Int> {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>);
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.lookup(_x, _s, _n)) i];
    }
    static public function _lookupAll(_x:Index, _s:Array<std.UInt>):T_ints {
        final _s = ([for (i in _s) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension._lookupAll(_x, _s);
    }
    static public function _at(_x:Index, _i:StdTypes.Int):Array<std.UInt> {
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension._at(_x, _i)) i];
    }
    static public function bytes(_x:Index):Array<std.UInt> {
        return [for (i in stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.bytes(_x)) i];
    }
    static public function write(_x:Index, _w:stdgo._internal.io.Io_Writer.Writer):stdgo.Error {
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.write(_x, _w);
    }
    static public function read(_x:Index, _r:stdgo._internal.io.Io_Reader.Reader):stdgo.Error {
        return stdgo._internal.index.suffixarray.Suffixarray_Index_static_extension.Index_static_extension.read(_x, _r);
    }
}
typedef T_intsPointer = stdgo._internal.index.suffixarray.Suffixarray_T_intsPointer.T_intsPointer;
class T_ints_static_extension {
    static public function _slice(_a:T_ints, _i:StdTypes.Int, _j:StdTypes.Int):T_ints {
        return stdgo._internal.index.suffixarray.Suffixarray_T_ints_static_extension.T_ints_static_extension._slice(_a, _i, _j);
    }
    static public function _set(_a:T_ints, _i:StdTypes.Int, _v:haxe.Int64):Void {
        stdgo._internal.index.suffixarray.Suffixarray_T_ints_static_extension.T_ints_static_extension._set(_a, _i, _v);
    }
    static public function _get(_a:T_ints, _i:StdTypes.Int):haxe.Int64 {
        return stdgo._internal.index.suffixarray.Suffixarray_T_ints_static_extension.T_ints_static_extension._get(_a, _i);
    }
    static public function _len(_a:T_ints):StdTypes.Int {
        return stdgo._internal.index.suffixarray.Suffixarray_T_ints_static_extension.T_ints_static_extension._len(_a);
    }
}
/**
    /|*{
    	id_3352896 = 0
    	lastLen_3352905 = int64(-1)
    	lastPos_3352941 = int64(0)
    	if 0 < len(sa[len(sa)-numLMS:]) {
    		gotoNext = 3353525
    		_ = gotoNext == 3353525
    		i_3352974_0, j_3352969 = 0, sa[len(sa)-numLMS:][0]
    		gotoNext = 3353526
    		_ = gotoNext == 3353526
    		if i_3352974_0 < len(sa[len(sa)-numLMS:]) {
    			gotoNext = 3353000
    			_ = gotoNext == 3353000
    			j_3352969 = sa[len(sa)-numLMS:][i_3352974_0]
    			n_3353088 = sa[j_3352969/2]
    			if n_3353088 != lastLen_3352905 {
    				gotoNext = 3353119
    				_ = gotoNext == 3353119
    				gotoNext = 3353456
    				gotoNext = 3353139
    			} else {
    				gotoNext = 3353139
    			}
    			_ = gotoNext == 3353139
    			if uint64(n_3353088) >= uint64(len(text)) {
    				gotoNext = 3353173
    				_ = gotoNext == 3353173
    				gotoNext = 3353497
    				gotoNext = 3353258
    			} else {
    				gotoNext = 3353258
    			}
    			_ = gotoNext == 3353258
    			{
    				gotoNext = 3353258
    				_ = gotoNext == 3353258
    				n_3353291 = int(n_3353088)
    				this_3353306 = text[j_3352969:][:n_3353291]
    				last_3353330 = text[lastPos_3352941:][:n_3353291]
    				i_3353364 = 0
    				gotoNext = 3353360
    				_ = gotoNext == 3353360
    				if i_3353364 < n_3353291 {
    					gotoNext = 3353383
    					_ = gotoNext == 3353383
    					if this_3353306[i_3353364] != last_3353330[i_3353364] {
    						gotoNext = 3353411
    						_ = gotoNext == 3353411
    						gotoNext = 3353456
    						gotoNext = 3353379
    					} else {
    						gotoNext = 3353379
    					}
    					_ = gotoNext == 3353379
    					i_3353364++
    					gotoNext = 3353360
    				} else {
    					gotoNext = 3353441
    				}
    				_ = gotoNext == 3353441
    				gotoNext = 3353497
    				gotoNext = 3353456
    			}
    			_ = gotoNext == 3353456
    			gotoNext = 3353456
    			_ = gotoNext == 3353456
    			id_3352896++
    			lastPos_3352941 = j_3352969
    			lastLen_3352905 = n_3353088
    			gotoNext = 3353497
    			_ = gotoNext == 3353497
    			sa[j_3352969/2] = int64(id_3352896)
    			i_3352974_0++
    			gotoNext = 3353526
    		} else {
    			gotoNext = 3353529
    		}
    		gotoNext = 3353529
    	} else {
    		gotoNext = 3353529
    	}
    	_ = gotoNext == 3353529
    	return id_3352896
    	gotoNext = -1
    }*|/
**/
class Suffixarray {
    /**
        New creates a new Index for data.
        Index creation time is O(N) for N = len(data).
    **/
    static public function new_(_data:Array<std.UInt>):Index {
        final _data = ([for (i in _data) i] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
    }
}
