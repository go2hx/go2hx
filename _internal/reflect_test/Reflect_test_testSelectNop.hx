package _internal.reflect_test;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
import stdgo._internal.reflect.Reflect;
function testSelectNop(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.reflect.Reflect_select.select((new stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>(1, 1, ...[({ dir : (3 : stdgo._internal.reflect.Reflect_SelectDir.SelectDir) } : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.reflect.Reflect_SelectCase.SelectCase)])) : stdgo.Slice<stdgo._internal.reflect.Reflect_SelectCase.SelectCase>)), _chosen:stdgo.GoInt = __tmp__._0, __6:stdgo._internal.reflect.Reflect_Value.Value = __tmp__._1, __7:Bool = __tmp__._2;
        if (_chosen != ((0 : stdgo.GoInt))) {
            _t.fatalf(("expected Select to return 0, but got %#v" : stdgo.GoString), stdgo.Go.toInterface(_chosen));
        };
    }
