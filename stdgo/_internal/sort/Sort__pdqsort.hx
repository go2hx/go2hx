package stdgo._internal.sort;
function _pdqsort(_data:stdgo._internal.sort.Sort_interface.Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var _wasBalanced = true, _wasPartitioned = true;
        //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L69"
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L72"
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L73"
                stdgo._internal.sort.Sort__insertionsort._insertionSort(_data, _a, _b);
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L74"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L78"
            if (_limit == ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L79"
                stdgo._internal.sort.Sort__heapsort._heapSort(_data, _a, _b);
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L80"
                return;
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L84"
            if (!_wasBalanced) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L85"
                stdgo._internal.sort.Sort__breakpatterns._breakPatterns(_data, _a, _b);
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L86"
                _limit--;
            };
            var __tmp__ = stdgo._internal.sort.Sort__choosepivot._choosePivot(_data, _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L90"
            if (_hint == ((2 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint))) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L91"
                stdgo._internal.sort.Sort__reverserange._reverseRange(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint);
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L100"
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L101"
                if (stdgo._internal.sort.Sort__partialinsertionsort._partialInsertionSort(_data, _a, _b)) {
                    //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L102"
                    return;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L108"
            if (((_a > (0 : stdgo.GoInt) : Bool) && !_data.less((_a - (1 : stdgo.GoInt) : stdgo.GoInt), _pivot) : Bool)) {
                var _mid = (stdgo._internal.sort.Sort__partitionequal._partitionEqual(_data, _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L111"
                continue;
            };
            var __tmp__ = stdgo._internal.sort.Sort__partition._partition(_data, _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L119"
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L121"
                stdgo._internal.sort.Sort__pdqsort._pdqsort(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                //"file:///home/runner/.go/go1.21.3/src/sort/zsortinterface.go#L125"
                stdgo._internal.sort.Sort__pdqsort._pdqsort(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
