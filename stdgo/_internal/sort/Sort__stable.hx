package stdgo._internal.sort;
function _stable(_data:stdgo._internal.sort.Sort_interface.Interface, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = (_blockSize : stdgo.GoInt);
var _b = __1, _a = __0;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L338"
        while ((_b <= _n : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L339"
            stdgo._internal.sort.Sort__insertionsort._insertionSort(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L343"
        stdgo._internal.sort.Sort__insertionsort._insertionSort(_data, _a, _n);
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L345"
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = @:binopAssign __tmp__0;
                _b = @:binopAssign __tmp__1;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L347"
            while ((_b <= _n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L348"
                stdgo._internal.sort.Sort__symmerge._symMerge(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L352"
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L353"
                    stdgo._internal.sort.Sort__symmerge._symMerge(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
