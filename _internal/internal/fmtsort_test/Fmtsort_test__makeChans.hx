package _internal.internal.fmtsort_test;
function _makeChans():stdgo.Slice<stdgo.Chan<stdgo.GoInt>> {
        var _cs = (new stdgo.Slice<stdgo.Chan<stdgo.GoInt>>(3, 3, ...[(new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>), (new stdgo.Chan<stdgo.GoInt>(0, () -> (0 : stdgo.GoInt)) : stdgo.Chan<stdgo.GoInt>)]) : stdgo.Slice<stdgo.Chan<stdgo.GoInt>>);
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_cs), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            return ((stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_cs[(_i : stdgo.GoInt)])).unsafePointer().__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) < (stdgo._internal.reflect.Reflect_valueOf.valueOf(stdgo.Go.toInterface(_cs[(_j : stdgo.GoInt)])).unsafePointer().__convert__(stdgo._internal.internal.reflect.Reflect.GoType.basic(uintptr_kind)) : stdgo.GoUIntptr) : Bool);
        });
        return _cs;
    }
