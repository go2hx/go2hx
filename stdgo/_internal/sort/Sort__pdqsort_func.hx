package stdgo._internal.sort;
function _pdqsort_func(_data:stdgo._internal.sort.Sort_t_lessswap.T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var __0 = true, __1 = true;
var _wasPartitioned = __1, _wasBalanced = __0;
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                stdgo._internal.sort.Sort__insertionsort_func._insertionSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (_limit == ((0 : stdgo.GoInt))) {
                stdgo._internal.sort.Sort__heapsort_func._heapSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (!_wasBalanced) {
                stdgo._internal.sort.Sort__breakpatterns_func._breakPatterns_func(_data?.__copy__(), _a, _b);
                _limit--;
            };
            var __tmp__ = stdgo._internal.sort.Sort__choosepivot_func._choosePivot_func(_data?.__copy__(), _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint = __tmp__._1;
            if (_hint == ((2 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint))) {
                stdgo._internal.sort.Sort__reverserange_func._reverseRange_func(_data?.__copy__(), _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint);
            };
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.sort.Sort_t_sortedhint.T_sortedHint)) : Bool)) {
                if (stdgo._internal.sort.Sort__partialinsertionsort_func._partialInsertionSort_func(_data?.__copy__(), _a, _b)) {
                    return;
                };
            };
            if (((_a > (0 : stdgo.GoInt) : Bool) && !_data.less((_a - (1 : stdgo.GoInt) : stdgo.GoInt), _pivot) : Bool)) {
                var _mid = (stdgo._internal.sort.Sort__partitionequal_func._partitionEqual_func(_data?.__copy__(), _a, _b, _pivot) : stdgo.GoInt);
                _a = _mid;
                continue;
            };
            var __tmp__ = stdgo._internal.sort.Sort__partition_func._partition_func(_data?.__copy__(), _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                stdgo._internal.sort.Sort__pdqsort_func._pdqsort_func(_data?.__copy__(), _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                stdgo._internal.sort.Sort__pdqsort_func._pdqsort_func(_data?.__copy__(), (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
