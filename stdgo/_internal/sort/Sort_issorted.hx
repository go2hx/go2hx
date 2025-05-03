package stdgo._internal.sort;
function isSorted(_data:stdgo._internal.sort.Sort_interface.Interface):Bool {
        var _n = (_data.len() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L107"
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            while ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L108"
                if (_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L109"
                    return false;
                };
                _i--;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/sort.go#L112"
        return true;
    }
