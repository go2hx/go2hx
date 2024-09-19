package stdgo._internal.encoding.json;
@:keep var __init_go2hx__ = {
        try {
            var _ptr = (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle() : stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle)) : stdgo.Ref<stdgo._internal.encoding.json.Json_SamePointerNoCycle.SamePointerNoCycle>);
            stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle.ptr1 = _ptr;
            stdgo._internal.encoding.json.Json__samePointerNoCycle._samePointerNoCycle.ptr2 = _ptr;
            stdgo._internal.encoding.json.Json__pointerCycle._pointerCycle.ptr = stdgo._internal.encoding.json.Json__pointerCycle._pointerCycle;
            stdgo._internal.encoding.json.Json__pointerCycleIndirect._pointerCycleIndirect.ptrs = (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__pointerCycleIndirect._pointerCycleIndirect)]) : stdgo.Slice<stdgo.AnyInterface>);
            stdgo._internal.encoding.json.Json__mapCycle._mapCycle[("x" : stdgo.GoString)] = stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__mapCycle._mapCycle);
            stdgo._internal.encoding.json.Json__sliceCycle._sliceCycle[(0 : stdgo.GoInt)] = stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__sliceCycle._sliceCycle);
            stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle[(1 : stdgo.GoInt)] = stdgo.Go.toInterface((stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.AnyInterface>));
            {
                var _i = (1000 : stdgo.GoInt);
                stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                    stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle = (new stdgo.Slice<stdgo.AnyInterface>(1, 1, ...[stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__sliceNoCycle._sliceNoCycle)]) : stdgo.Slice<stdgo.AnyInterface>);
                });
            };
            stdgo._internal.encoding.json.Json__recursiveSliceCycle._recursiveSliceCycle[(0 : stdgo.GoInt)] = stdgo._internal.encoding.json.Json__recursiveSliceCycle._recursiveSliceCycle;
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
