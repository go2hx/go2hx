package stdgo._internal.sort;
function _order2(_data:stdgo._internal.sort.Sort_Interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
