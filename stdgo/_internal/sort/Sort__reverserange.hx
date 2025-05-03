package stdgo._internal.sort;
function _reverseRange(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_a : stdgo.GoInt);
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L322"
        while ((_i < _j : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L323"
            _data.swap(_i, _j);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L324"
            _i++;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L325"
            _j--;
        };
    }
