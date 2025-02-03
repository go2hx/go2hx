package stdgo.index.suffixarray;
/**
    Package suffixarray implements substring search in logarithmic time using
    an in-memory suffix array.
    
    Example use:
    
    	// create index for some data
    	index := suffixarray.New(data)
    
    	// lookup byte slice s
    	offsets1 := index.Lookup(s, -1) // the list of all indices where s occurs in data
    	offsets2 := index.Lookup(s, 3)  // the list of at most 3 indices where s occurs in data
**/
class Suffixarray {
    /**
        New creates a new Index for data.
        Index creation time is O(N) for N = len(data).
    **/
    static public inline function new_(_data:Array<std.UInt>):Index {
        final _data = ([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
    }
}
