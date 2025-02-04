package stdgo._internal.sort;
function _siftDown(_data:stdgo._internal.sort.Sort_interface.Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = (_lo : stdgo.GoInt);
        while (true) {
            var _child = (((2 : stdgo.GoInt) * _root : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
            if ((_child >= _hi : Bool)) {
                break;
            };
            if ((((_child + (1 : stdgo.GoInt) : stdgo.GoInt) < _hi : Bool) && _data.less((_first + _child : stdgo.GoInt), ((_first + _child : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                _child++;
            };
            if (!_data.less((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt))) {
                return;
            };
            _data.swap((_first + _root : stdgo.GoInt), (_first + _child : stdgo.GoInt));
            _root = _child;
        };
    }
