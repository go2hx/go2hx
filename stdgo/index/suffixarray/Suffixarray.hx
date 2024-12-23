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
    	id_3329384 = 0
    	lastLen_3329393 = int64(-1)
    	lastPos_3329429 = int64(0)
    	if 0 < len(sa[len(sa)-numLMS:]) {
    		gotoNext = 3330013
    		_ = gotoNext == 3330013
    		i_3329462_0, j_3329457 = 0, sa[len(sa)-numLMS:][0]
    		gotoNext = 3330014
    		_ = gotoNext == 3330014
    		if i_3329462_0 < len(sa[len(sa)-numLMS:]) {
    			gotoNext = 3329488
    			_ = gotoNext == 3329488
    			j_3329457 = sa[len(sa)-numLMS:][i_3329462_0]
    			n_3329576 = sa[j_3329457/2]
    			if n_3329576 != lastLen_3329393 {
    				gotoNext = 3329607
    				_ = gotoNext == 3329607
    				gotoNext = 3329944
    				gotoNext = 3329627
    			} else {
    				gotoNext = 3329627
    			}
    			_ = gotoNext == 3329627
    			if uint64(n_3329576) >= uint64(len(text)) {
    				gotoNext = 3329661
    				_ = gotoNext == 3329661
    				gotoNext = 3329985
    				gotoNext = 3329746
    			} else {
    				gotoNext = 3329746
    			}
    			_ = gotoNext == 3329746
    			{
    				gotoNext = 3329746
    				_ = gotoNext == 3329746
    				n_3329779 = int(n_3329576)
    				this_3329794 = text[j_3329457:][:n_3329779]
    				last_3329818 = text[lastPos_3329429:][:n_3329779]
    				i_3329852 = 0
    				gotoNext = 3329848
    				_ = gotoNext == 3329848
    				if i_3329852 < n_3329779 {
    					gotoNext = 3329871
    					_ = gotoNext == 3329871
    					if this_3329794[i_3329852] != last_3329818[i_3329852] {
    						gotoNext = 3329899
    						_ = gotoNext == 3329899
    						gotoNext = 3329944
    						gotoNext = 3329867
    					} else {
    						gotoNext = 3329867
    					}
    					_ = gotoNext == 3329867
    					i_3329852++
    					gotoNext = 3329848
    				} else {
    					gotoNext = 3329929
    				}
    				_ = gotoNext == 3329929
    				gotoNext = 3329985
    				gotoNext = 3329944
    			}
    			_ = gotoNext == 3329944
    			gotoNext = 3329944
    			_ = gotoNext == 3329944
    			id_3329384++
    			lastPos_3329429 = j_3329457
    			lastLen_3329393 = n_3329576
    			gotoNext = 3329985
    			_ = gotoNext == 3329985
    			sa[j_3329457/2] = int64(id_3329384)
    			i_3329462_0++
    			gotoNext = 3330014
    		} else {
    			gotoNext = 3330017
    		}
    		gotoNext = 3330017
    	} else {
    		gotoNext = 3330017
    	}
    	_ = gotoNext == 3330017
    	return id_3329384
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
