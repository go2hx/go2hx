package _internal.sort_test;
import stdgo._internal.sort.Sort;
import stdgo._internal.sort.Sort;
function testStableBM(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        _internal.sort_test.Sort_test__testBentleyMcIlroy._testBentleyMcIlroy(_t, stdgo._internal.sort.Sort_stable.stable, function(_n:stdgo.GoInt):stdgo.GoInt {
            return (((_n * _internal.sort_test.Sort_test__lg._lg(_n) : stdgo.GoInt) * _internal.sort_test.Sort_test__lg._lg(_n) : stdgo.GoInt) / (3 : stdgo.GoInt) : stdgo.GoInt);
        });
    }
