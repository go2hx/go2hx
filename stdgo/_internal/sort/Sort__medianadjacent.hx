package stdgo._internal.sort;
function _medianAdjacent(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return stdgo._internal.sort.Sort__median._median(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
    }
