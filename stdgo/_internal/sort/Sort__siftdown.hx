package stdgo._internal.sort;
function _siftDown(_data:stdgo._internal.sort.Sort_interface.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L22"
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L24"
            if ((_child >= _hi : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L25"
                break;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L27"
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && _data.less((_first + _child : stdgo.GoInt), ((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L28"
                _child++;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L30"
            if (!_data.less((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L31"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L33"
            _data.swap((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt));
            _root = _child;
        };
    }
