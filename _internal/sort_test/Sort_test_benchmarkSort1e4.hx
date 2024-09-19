package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function benchmarkSort1e4(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _internal.sort_test.Sort_test__bench._bench(_b, (10000 : stdgo.GoInt), stdgo._internal.sort.Sort_sort.sort, ("Sort" : stdgo.GoString));
    }
