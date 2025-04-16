package stdgo.index.suffixarray;
typedef Index = stdgo._internal.index.suffixarray.Suffixarray_index.Index;
typedef IndexPointer = stdgo._internal.index.suffixarray.Suffixarray_indexpointer.IndexPointer;
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
    static public inline function new_(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Ref<stdgo._internal.index.suffixarray.Suffixarray_index.Index> return stdgo._internal.index.suffixarray.Suffixarray_new_.new_(_data);
    static public inline function testIndex32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.index.suffixarray.Suffixarray_testindex32.testIndex32(_t);
    static public inline function testIndex64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.index.suffixarray.Suffixarray_testindex64.testIndex64(_t);
    static public inline function testNew32(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.index.suffixarray.Suffixarray_testnew32.testNew32(_t);
    static public inline function testNew64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void stdgo._internal.index.suffixarray.Suffixarray_testnew64.testNew64(_t);
    static public inline function benchmarkNew(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.index.suffixarray.Suffixarray_benchmarknew.benchmarkNew(_b);
    static public inline function benchmarkSaveRestore(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void stdgo._internal.index.suffixarray.Suffixarray_benchmarksaverestore.benchmarkSaveRestore(_b);
}
