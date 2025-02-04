package stdgo._internal.container.heap;
function _down(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i0:stdgo.GoInt, _n:stdgo.GoInt):Bool {
        var _i = (_i0 : stdgo.GoInt);
        while (true) {
            var _j1 = (((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if (((_j1 >= _n : Bool) || (_j1 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                break;
            };
            var _j = (_j1 : stdgo.GoInt);
            {
                var _j2 = (_j1 + (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((_j2 < _n : Bool) && _h.less(_j2, _j1) : Bool)) {
                    _j = _j2;
                };
            };
            if (!_h.less(_j, _i)) {
                break;
            };
            _h.swap(_i, _j);
            _i = _j;
        };
        return (_i > _i0 : Bool);
    }
