package stdgo._internal.container.heap;
function _down(_h:stdgo._internal.container.heap.Heap_interface.Interface, _i0:stdgo.GoInt, _n:stdgo.GoInt):Bool {
        var _i = (_i0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L102"
        while (true) {
            var _j1 = (((2 : stdgo.GoInt) * _i : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L104"
            if (((_j1 >= _n : Bool) || (_j1 < (0 : stdgo.GoInt) : Bool) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L105"
                break;
            };
            var _j = (_j1 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L108"
            {
                var _j2 = (_j1 + (1 : stdgo.GoInt) : stdgo.GoInt);
                if (((_j2 < _n : Bool) && _h.less(_j2, _j1) : Bool)) {
                    _j = _j2;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L111"
            if (!_h.less(_j, _i)) {
                //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L112"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L114"
            _h.swap(_i, _j);
            _i = _j;
        };
        //"file:///home/runner/.go/go1.21.3/src/container/heap/heap.go#L117"
        return (_i > _i0 : Bool);
    }
