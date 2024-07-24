package stdgo._internal.sort;
private var __go2hxdoc__package : Bool;
final _unknownHint : stdgo._internal.sort.Sort.T_sortedHint = (2 : stdgo._internal.sort.Sort.T_sortedHint);
final _increasingHint = (2 : stdgo._internal.sort.Sort.T_sortedHint);
final _decreasingHint = (2 : stdgo._internal.sort.Sort.T_sortedHint);
@:keep class Interface_static_extension {
    static public function swap(t:Interface, _i:stdgo.GoInt, _j:stdgo.GoInt):Void t.swap(_i, _j);
    static public function less(t:Interface, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool return t.less(_i, _j);
    static public function len(t:Interface):stdgo.GoInt return t.len();
}
typedef Interface = stdgo.StructType & {
    /**
        Len is the number of elements in the collection.
        
        
    **/
    public dynamic function len():stdgo.GoInt;
    /**
        Less reports whether the element with index i
        must sort before the element with index j.
        
        If both Less(i, j) and Less(j, i) are false,
        then the elements at index i and j are considered equal.
        Sort may place equal elements in any order in the final result,
        while Stable preserves the original input order of equal elements.
        
        Less must describe a transitive ordering:
         - if both Less(i, j) and Less(j, k) are true, then Less(i, k) must be true as well.
         - if both Less(i, j) and Less(j, k) are false, then Less(i, k) must be false as well.
        
        Note that floating-point comparison (the < operator on float32 or float64 values)
        is not a transitive ordering when not-a-number (NaN) values are involved.
        See Float64Slice.Less for a correct implementation for floating-point values.
        
        
    **/
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool;
    /**
        Swap swaps the elements with indexes i and j.
        
        
    **/
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void;
};
@:structInit @:private class T_lessSwap {
    public var less : (stdgo.GoInt, stdgo.GoInt) -> Bool = null;
    public var swap : (stdgo.GoInt, stdgo.GoInt) -> Void = null;
    public function new(?less:(stdgo.GoInt, stdgo.GoInt) -> Bool, ?swap:(stdgo.GoInt, stdgo.GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}
@:structInit @:private @:using(stdgo._internal.sort.Sort.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : stdgo._internal.sort.Sort.Interface = (null : stdgo._internal.sort.Sort.Interface);
    public function new(?interface_:stdgo._internal.sort.Sort.Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function len():stdgo.GoInt return interface_.len();
    @:embedded
    public function swap(_i_:stdgo.GoInt, _j_:stdgo.GoInt) interface_.swap(_i_, _j_);
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
@:named typedef T_sortedHint = stdgo.GoInt;
@:named @:using(stdgo._internal.sort.Sort.T_xorshift_static_extension) typedef T_xorshift = stdgo.GoUInt64;
@:named @:using(stdgo._internal.sort.Sort.IntSlice_static_extension) typedef IntSlice = stdgo.Slice<stdgo.GoInt>;
@:named @:using(stdgo._internal.sort.Sort.Float64Slice_static_extension) typedef Float64Slice = stdgo.Slice<stdgo.GoFloat64>;
@:named @:using(stdgo._internal.sort.Sort.StringSlice_static_extension) typedef StringSlice = stdgo.Slice<stdgo.GoString>;
function heapsort(_data:Interface):Void {
        _heapSort(_data, (0 : stdgo.GoInt), _data.len());
    }
function reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        _reverseRange(_data, _a, _b);
    }
function search(_n:stdgo.GoInt, _f:stdgo.GoInt -> Bool):stdgo.GoInt {
        var __0 = (0 : stdgo.GoInt), __1 = _n;
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if (!_f(_h)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return _i;
    }
function find(_n:stdgo.GoInt, _cmp:stdgo.GoInt -> stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _i = (0 : stdgo.GoInt), _found = false;
        var __0 = (0 : stdgo.GoInt), __1 = _n;
var _j = __1, _i = __0;
        while ((_i < _j : Bool)) {
            var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if ((_cmp(_h) > (0 : stdgo.GoInt) : Bool)) {
                _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _j = _h;
            };
        };
        return { _0 : _i, _1 : ((_i < _n : Bool) && (_cmp(_i) == (0 : stdgo.GoInt)) : Bool) };
    }
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
function searchFloat64s(_a:stdgo.Slice<stdgo.GoFloat64>, _x:stdgo.GoFloat64):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt {
        return search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
function slice(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        var _rv = stdgo._internal.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _swap = stdgo._internal.internal.reflectlite.Reflectlite.swapper(_x);
        var _length = _rv.len();
        var _limit = stdgo._internal.math.bits.Bits.len((_length : stdgo.GoUInt));
        _pdqsort_func((new stdgo._internal.sort.Sort.T_lessSwap(_less, _swap) : stdgo._internal.sort.Sort.T_lessSwap), (0 : stdgo.GoInt), _length, _limit);
    }
function sliceStable(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Void {
        var _rv = stdgo._internal.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _swap = stdgo._internal.internal.reflectlite.Reflectlite.swapper(_x);
        _stable_func((new stdgo._internal.sort.Sort.T_lessSwap(_less, _swap) : stdgo._internal.sort.Sort.T_lessSwap), _rv.len());
    }
function sliceIsSorted(_x:stdgo.AnyInterface, _less:(_i:stdgo.GoInt, _j:stdgo.GoInt) -> Bool):Bool {
        var _rv = stdgo._internal.internal.reflectlite.Reflectlite.valueOf(_x)?.__copy__();
        var _n = _rv.len();
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if (_less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
function sort(_data:Interface):Void {
        var _n = _data.len();
        if ((_n <= (1 : stdgo.GoInt) : Bool)) {
            return;
        };
        var _limit = stdgo._internal.math.bits.Bits.len((_n : stdgo.GoUInt));
        _pdqsort(_data, (0 : stdgo.GoInt), _n, _limit);
    }
function _nextPowerOfTwo(_length:stdgo.GoInt):stdgo.GoUInt {
        var _shift = (stdgo._internal.math.bits.Bits.len((_length : stdgo.GoUInt)) : stdgo.GoUInt);
        return ((1u32 : stdgo.GoUInt) << _shift : stdgo.GoUInt);
    }
function reverse(_data:Interface):Interface {
        return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.sort.Sort.T_reverse(_data) : stdgo._internal.sort.Sort.T_reverse)) : stdgo.Ref<stdgo._internal.sort.Sort.T_reverse>));
    }
function isSorted(_data:Interface):Bool {
        var _n = _data.len();
        {
            var _i = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i > (0 : stdgo.GoInt) : Bool), _i--, {
                if (_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    return false;
                };
            });
        };
        return true;
    }
function _isNaN(_f:stdgo.GoFloat64):Bool {
        return _f != (_f);
    }
function ints(_x:stdgo.Slice<stdgo.GoInt>):Void {
        sort(stdgo.Go.asInterface((_x : IntSlice)));
    }
function float64s(_x:stdgo.Slice<stdgo.GoFloat64>):Void {
        sort(stdgo.Go.asInterface((_x : Float64Slice)));
    }
function strings(_x:stdgo.Slice<stdgo.GoString>):Void {
        sort(stdgo.Go.asInterface((_x : StringSlice)));
    }
function intsAreSorted(_x:stdgo.Slice<stdgo.GoInt>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : IntSlice)));
    }
function float64sAreSorted(_x:stdgo.Slice<stdgo.GoFloat64>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : Float64Slice)));
    }
function stringsAreSorted(_x:stdgo.Slice<stdgo.GoString>):Bool {
        return isSorted(stdgo.Go.asInterface((_x : StringSlice)));
    }
function stable(_data:Interface):Void {
        _stable(_data, _data.len());
    }
function _insertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b : Bool), _i++, {
                {
                    var _j = _i;
                    stdgo.Go.cfor(((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool), _j--, {
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                    });
                };
            });
        };
    }
function _siftDown_func(_data:T_lessSwap, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = _lo;
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
function _heapSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = _a;
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _siftDown_func(_data?.__copy__(), _i, _hi, _first);
            });
        };
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _data.swap(_first, (_first + _i : stdgo.GoInt));
                _siftDown_func(_data?.__copy__(), _lo, _i, _first);
            });
        };
    }
function _pdqsort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var __0:Bool = true, __1:Bool = true;
var _wasPartitioned = __1, _wasBalanced = __0;
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                _insertionSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (_limit == ((0 : stdgo.GoInt))) {
                _heapSort_func(_data?.__copy__(), _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns_func(_data?.__copy__(), _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot_func(_data?.__copy__(), _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.sort.Sort.T_sortedHint = __tmp__._1;
            if (_hint == ((2 : stdgo._internal.sort.Sort.T_sortedHint))) {
                _reverseRange_func(_data?.__copy__(), _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.sort.Sort.T_sortedHint);
            };
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.sort.Sort.T_sortedHint)) : Bool)) {
                if (_partialInsertionSort_func(_data?.__copy__(), _a, _b)) {
                    return;
                };
            };
            if (((_a > (0 : stdgo.GoInt) : Bool) && !_data.less((_a - (1 : stdgo.GoInt) : stdgo.GoInt), _pivot) : Bool)) {
                var _mid = _partitionEqual_func(_data?.__copy__(), _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition_func(_data?.__copy__(), _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                _pdqsort_func(_data?.__copy__(), _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                _pdqsort_func(_data?.__copy__(), (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
function _partition_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
            _i++;
        };
        while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
            _j--;
        };
        if ((_i > _j : Bool)) {
            _data.swap(_j, _a);
            return { _0 : _j, _1 : true };
        };
        _data.swap(_i, _j);
        _i++;
        _j--;
        while (true) {
            while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        _data.swap(_j, _a);
        return { _0 : _j, _1 : false };
    }
function _partitionEqual_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (true) {
            while (((_i <= _j : Bool) && !_data.less(_a, _i) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && _data.less(_a, _j) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        return _i;
    }
function _partialInsertionSort_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                while (((_i < _b : Bool) && !_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    _i++;
                };
                if (_i == (_b)) {
                    return true;
                };
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    return false;
                };
                _data.swap(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt));
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j >= (1 : stdgo.GoInt) : Bool), _j--, {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        });
                    };
                };
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _b : Bool), _j++, {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        });
                    };
                };
            });
        };
        return false;
    }
function _breakPatterns_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : T_xorshift);
            var _modulus = _nextPowerOfTwo(_length);
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _idx++, {
                    var _other = (((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
                    _data.swap(_idx, (_a + _other : stdgo.GoInt));
                });
            };
        };
    }
function _choosePivot_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.sort.Sort.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = _medianAdjacent_func(_data?.__copy__(), _i, stdgo.Go.pointer(_swaps));
                _j = _medianAdjacent_func(_data?.__copy__(), _j, stdgo.Go.pointer(_swaps));
                _k = _medianAdjacent_func(_data?.__copy__(), _k, stdgo.Go.pointer(_swaps));
            };
            _j = _median_func(_data?.__copy__(), _i, _j, _k, stdgo.Go.pointer(_swaps));
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (1 : stdgo._internal.sort.Sort.T_sortedHint) };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (2 : stdgo._internal.sort.Sort.T_sortedHint) };
            } else {
                return { _0 : _j, _1 : (0 : stdgo._internal.sort.Sort.T_sortedHint) };
            };
        };
    }
function _order2_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
function _median_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _b, _c, _swaps);
            _b = __tmp__._0;
            _c = __tmp__._1;
        };
        {
            var __tmp__ = _order2_func(_data?.__copy__(), _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        return _b;
    }
function _medianAdjacent_func(_data:T_lessSwap, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return _median_func(_data?.__copy__(), (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
    }
function _reverseRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = _a;
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < _j : Bool)) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange_func(_data:T_lessSwap, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
            });
        };
    }
function _stable_func(_data:T_lessSwap, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = _blockSize;
var _b = __1, _a = __0;
        while ((_b <= _n : Bool)) {
            _insertionSort_func(_data?.__copy__(), _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        _insertionSort_func(_data?.__copy__(), _a, _n);
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while ((_b <= _n : Bool)) {
                _symMerge_func(_data?.__copy__(), _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    _symMerge_func(_data?.__copy__(), _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
function _symMerge_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = _m;
            var _j = _b;
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (_data.less(_h, _a)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = _a;
                stdgo.Go.cfor((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                    _data.swap(_k, (_k + (1 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            return;
        };
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = _a;
            var _j = _m;
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (!_data.less(_m, _h)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = _m;
                stdgo.Go.cfor((_k > _i : Bool), _k--, {
                    _data.swap(_k, (_k - (1 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _r = __1, _start = __0;
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if (!_data.less((_p - _c : stdgo.GoInt), _c)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            _rotate_func(_data?.__copy__(), _start, _m, _end);
        };
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            _symMerge_func(_data?.__copy__(), _a, _start, _mid);
        };
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            _symMerge_func(_data?.__copy__(), _mid, _end, _b);
        };
    }
function _rotate_func(_data:T_lessSwap, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        while (_i != (_j)) {
            if ((_i > _j : Bool)) {
                _swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                _swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        _swapRange_func(_data?.__copy__(), (_m - _i : stdgo.GoInt), _m, _i);
    }
function _insertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        {
            var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i < _b : Bool), _i++, {
                {
                    var _j = _i;
                    stdgo.Go.cfor(((_j > _a : Bool) && _data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool), _j--, {
                        _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                    });
                };
            });
        };
    }
function _siftDown(_data:Interface, _lo:stdgo.GoInt, _hi:stdgo.GoInt, _first:stdgo.GoInt):Void {
        var _root = _lo;
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
function _heapSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _first = _a;
        var _lo = (0 : stdgo.GoInt);
        var _hi = (_b - _a : stdgo.GoInt);
        {
            var _i = (((_hi - (1 : stdgo.GoInt) : stdgo.GoInt)) / (2 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _siftDown(_data, _i, _hi, _first);
            });
        };
        {
            var _i = (_hi - (1 : stdgo.GoInt) : stdgo.GoInt);
            stdgo.Go.cfor((_i >= (0 : stdgo.GoInt) : Bool), _i--, {
                _data.swap(_first, (_first + _i : stdgo.GoInt));
                _siftDown(_data, _lo, _i, _first);
            });
        };
    }
function _pdqsort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _limit:stdgo.GoInt):Void {
        {};
        var __0:Bool = true, __1:Bool = true;
var _wasPartitioned = __1, _wasBalanced = __0;
        while (true) {
            var _length = (_b - _a : stdgo.GoInt);
            if ((_length <= (12 : stdgo.GoInt) : Bool)) {
                _insertionSort(_data, _a, _b);
                return;
            };
            if (_limit == ((0 : stdgo.GoInt))) {
                _heapSort(_data, _a, _b);
                return;
            };
            if (!_wasBalanced) {
                _breakPatterns(_data, _a, _b);
                _limit--;
            };
            var __tmp__ = _choosePivot(_data, _a, _b), _pivot:stdgo.GoInt = __tmp__._0, _hint:stdgo._internal.sort.Sort.T_sortedHint = __tmp__._1;
            if (_hint == ((2 : stdgo._internal.sort.Sort.T_sortedHint))) {
                _reverseRange(_data, _a, _b);
                _pivot = (((_b - (1 : stdgo.GoInt) : stdgo.GoInt)) - ((_pivot - _a : stdgo.GoInt)) : stdgo.GoInt);
                _hint = (1 : stdgo._internal.sort.Sort.T_sortedHint);
            };
            if (((_wasBalanced && _wasPartitioned : Bool) && (_hint == (1 : stdgo._internal.sort.Sort.T_sortedHint)) : Bool)) {
                if (_partialInsertionSort(_data, _a, _b)) {
                    return;
                };
            };
            if (((_a > (0 : stdgo.GoInt) : Bool) && !_data.less((_a - (1 : stdgo.GoInt) : stdgo.GoInt), _pivot) : Bool)) {
                var _mid = _partitionEqual(_data, _a, _b, _pivot);
                _a = _mid;
                continue;
            };
            var __tmp__ = _partition(_data, _a, _b, _pivot), _mid:stdgo.GoInt = __tmp__._0, _alreadyPartitioned:Bool = __tmp__._1;
            _wasPartitioned = _alreadyPartitioned;
            var __0 = (_mid - _a : stdgo.GoInt), __1 = (_b - _mid : stdgo.GoInt);
var _rightLen = __1, _leftLen = __0;
            var _balanceThreshold = (_length / (8 : stdgo.GoInt) : stdgo.GoInt);
            if ((_leftLen < _rightLen : Bool)) {
                _wasBalanced = (_leftLen >= _balanceThreshold : Bool);
                _pdqsort(_data, _a, _mid, _limit);
                _a = (_mid + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _wasBalanced = (_rightLen >= _balanceThreshold : Bool);
                _pdqsort(_data, (_mid + (1 : stdgo.GoInt) : stdgo.GoInt), _b, _limit);
                _b = _mid;
            };
        };
    }
function _partition(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _newpivot = (0 : stdgo.GoInt), _alreadyPartitioned = false;
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
            _i++;
        };
        while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
            _j--;
        };
        if ((_i > _j : Bool)) {
            _data.swap(_j, _a);
            return { _0 : _j, _1 : true };
        };
        _data.swap(_i, _j);
        _i++;
        _j--;
        while (true) {
            while (((_i <= _j : Bool) && _data.less(_i, _a) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && !_data.less(_j, _a) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        _data.swap(_j, _a);
        return { _0 : _j, _1 : false };
    }
function _partitionEqual(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _pivot:stdgo.GoInt):stdgo.GoInt {
        var _newpivot = (0 : stdgo.GoInt);
        _data.swap(_a, _pivot);
        var __0 = (_a + (1 : stdgo.GoInt) : stdgo.GoInt), __1 = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
var _j = __1, _i = __0;
        while (true) {
            while (((_i <= _j : Bool) && !_data.less(_a, _i) : Bool)) {
                _i++;
            };
            while (((_i <= _j : Bool) && _data.less(_a, _j) : Bool)) {
                _j--;
            };
            if ((_i > _j : Bool)) {
                break;
            };
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
        return _i;
    }
function _partialInsertionSort(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Bool {
        {};
        var _i = (_a + (1 : stdgo.GoInt) : stdgo.GoInt);
        {
            var _j = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_j < (5 : stdgo.GoInt) : Bool), _j++, {
                while (((_i < _b : Bool) && !_data.less(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool)) {
                    _i++;
                };
                if (_i == (_b)) {
                    return true;
                };
                if (((_b - _a : stdgo.GoInt) < (50 : stdgo.GoInt) : Bool)) {
                    return false;
                };
                _data.swap(_i, (_i - (1 : stdgo.GoInt) : stdgo.GoInt));
                if (((_i - _a : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j >= (1 : stdgo.GoInt) : Bool), _j--, {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        });
                    };
                };
                if (((_b - _i : stdgo.GoInt) >= (2 : stdgo.GoInt) : Bool)) {
                    {
                        var _j = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                        stdgo.Go.cfor((_j < _b : Bool), _j++, {
                            if (!_data.less(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt))) {
                                break;
                            };
                            _data.swap(_j, (_j - (1 : stdgo.GoInt) : stdgo.GoInt));
                        });
                    };
                };
            });
        };
        return false;
    }
function _breakPatterns(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _length = (_b - _a : stdgo.GoInt);
        if ((_length >= (8 : stdgo.GoInt) : Bool)) {
            var _random = (_length : T_xorshift);
            var _modulus = _nextPowerOfTwo(_length);
            {
                var _idx = ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                stdgo.Go.cfor((_idx <= ((_a + (((_length / (4 : stdgo.GoInt) : stdgo.GoInt)) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _idx++, {
                    var _other = (((_random.next(stdgo.Go.pointer(_random)) : stdgo.GoUInt) & ((_modulus - (1u32 : stdgo.GoUInt) : stdgo.GoUInt)) : stdgo.GoUInt) : stdgo.GoInt);
                    if ((_other >= _length : Bool)) {
                        _other = (_other - (_length) : stdgo.GoInt);
                    };
                    _data.swap(_idx, (_a + _other : stdgo.GoInt));
                });
            };
        };
    }
function _choosePivot(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : T_sortedHint; } {
        var _pivot = (0 : stdgo.GoInt), _hint = ((0 : stdgo.GoInt) : stdgo._internal.sort.Sort.T_sortedHint);
        {};
        var _l = (_b - _a : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __2:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt), __3:stdgo.GoInt = (_a + ((_l / (4 : stdgo.GoInt) : stdgo.GoInt) * (3 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt);
var _k = __3, _j = __2, _i = __1, _swaps = __0;
        if ((_l >= (8 : stdgo.GoInt) : Bool)) {
            if ((_l >= (50 : stdgo.GoInt) : Bool)) {
                _i = _medianAdjacent(_data, _i, stdgo.Go.pointer(_swaps));
                _j = _medianAdjacent(_data, _j, stdgo.Go.pointer(_swaps));
                _k = _medianAdjacent(_data, _k, stdgo.Go.pointer(_swaps));
            };
            _j = _median(_data, _i, _j, _k, stdgo.Go.pointer(_swaps));
        };
        {
            final __value__ = _swaps;
            if (__value__ == ((0 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (1 : stdgo._internal.sort.Sort.T_sortedHint) };
            } else if (__value__ == ((12 : stdgo.GoInt))) {
                return { _0 : _j, _1 : (2 : stdgo._internal.sort.Sort.T_sortedHint) };
            } else {
                return { _0 : _j, _1 : (0 : stdgo._internal.sort.Sort.T_sortedHint) };
            };
        };
    }
function _order2(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):{ var _0 : stdgo.GoInt; var _1 : stdgo.GoInt; } {
        if (_data.less(_b, _a)) {
            _swaps.value++;
            return { _0 : _b, _1 : _a };
        };
        return { _0 : _a, _1 : _b };
    }
function _median(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _c:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        {
            var __tmp__ = _order2(_data, _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        {
            var __tmp__ = _order2(_data, _b, _c, _swaps);
            _b = __tmp__._0;
            _c = __tmp__._1;
        };
        {
            var __tmp__ = _order2(_data, _a, _b, _swaps);
            _a = __tmp__._0;
            _b = __tmp__._1;
        };
        return _b;
    }
function _medianAdjacent(_data:Interface, _a:stdgo.GoInt, _swaps:stdgo.Pointer<stdgo.GoInt>):stdgo.GoInt {
        return _median(_data, (_a - (1 : stdgo.GoInt) : stdgo.GoInt), _a, (_a + (1 : stdgo.GoInt) : stdgo.GoInt), _swaps);
    }
function _reverseRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = _a;
        var _j = (_b - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_i < _j : Bool)) {
            _data.swap(_i, _j);
            _i++;
            _j--;
        };
    }
function _swapRange(_data:Interface, _a:stdgo.GoInt, _b:stdgo.GoInt, _n:stdgo.GoInt):Void {
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < _n : Bool), _i++, {
                _data.swap((_a + _i : stdgo.GoInt), (_b + _i : stdgo.GoInt));
            });
        };
    }
function _stable(_data:Interface, _n:stdgo.GoInt):Void {
        var _blockSize = (20 : stdgo.GoInt);
        var __0 = (0 : stdgo.GoInt), __1 = _blockSize;
var _b = __1, _a = __0;
        while ((_b <= _n : Bool)) {
            _insertionSort(_data, _a, _b);
            _a = _b;
            _b = (_b + (_blockSize) : stdgo.GoInt);
        };
        _insertionSort(_data, _a, _n);
        while ((_blockSize < _n : Bool)) {
            {
                final __tmp__0 = (0 : stdgo.GoInt);
                final __tmp__1 = ((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt);
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while ((_b <= _n : Bool)) {
                _symMerge(_data, _a, (_a + _blockSize : stdgo.GoInt), _b);
                _a = _b;
                _b = (_b + (((2 : stdgo.GoInt) * _blockSize : stdgo.GoInt)) : stdgo.GoInt);
            };
            {
                var _m = (_a + _blockSize : stdgo.GoInt);
                if ((_m < _n : Bool)) {
                    _symMerge(_data, _a, _m, _n);
                };
            };
            _blockSize = (_blockSize * ((2 : stdgo.GoInt)) : stdgo.GoInt);
        };
    }
function _symMerge(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        if ((_m - _a : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = _m;
            var _j = _b;
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (_data.less(_h, _a)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = _a;
                stdgo.Go.cfor((_k < (_i - (1 : stdgo.GoInt) : stdgo.GoInt) : Bool), _k++, {
                    _data.swap(_k, (_k + (1 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            return;
        };
        if ((_b - _m : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
            var _i = _a;
            var _j = _m;
            while ((_i < _j : Bool)) {
                var _h = ((((_i + _j : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
                if (!_data.less(_m, _h)) {
                    _i = (_h + (1 : stdgo.GoInt) : stdgo.GoInt);
                } else {
                    _j = _h;
                };
            };
            {
                var _k = _m;
                stdgo.Go.cfor((_k > _i : Bool), _k--, {
                    _data.swap(_k, (_k - (1 : stdgo.GoInt) : stdgo.GoInt));
                });
            };
            return;
        };
        var _mid = ((((_a + _b : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
        var _n = (_mid + _m : stdgo.GoInt);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _r = __1, _start = __0;
        if ((_m > _mid : Bool)) {
            _start = (_n - _b : stdgo.GoInt);
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p = (_n - (1 : stdgo.GoInt) : stdgo.GoInt);
        while ((_start < _r : Bool)) {
            var _c = ((((_start + _r : stdgo.GoInt) : stdgo.GoUInt) >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt) : stdgo.GoInt);
            if (!_data.less((_p - _c : stdgo.GoInt), _c)) {
                _start = (_c + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                _r = _c;
            };
        };
        var _end = (_n - _start : stdgo.GoInt);
        if (((_start < _m : Bool) && (_m < _end : Bool) : Bool)) {
            _rotate(_data, _start, _m, _end);
        };
        if (((_a < _start : Bool) && (_start < _mid : Bool) : Bool)) {
            _symMerge(_data, _a, _start, _mid);
        };
        if (((_mid < _end : Bool) && (_end < _b : Bool) : Bool)) {
            _symMerge(_data, _mid, _end, _b);
        };
    }
function _rotate(_data:Interface, _a:stdgo.GoInt, _m:stdgo.GoInt, _b:stdgo.GoInt):Void {
        var _i = (_m - _a : stdgo.GoInt);
        var _j = (_b - _m : stdgo.GoInt);
        while (_i != (_j)) {
            if ((_i > _j : Bool)) {
                _swapRange(_data, (_m - _i : stdgo.GoInt), _m, _j);
                _i = (_i - (_j) : stdgo.GoInt);
            } else {
                _swapRange(_data, (_m - _i : stdgo.GoInt), ((_m + _j : stdgo.GoInt) - _i : stdgo.GoInt), _i);
                _j = (_j - (_i) : stdgo.GoInt);
            };
        };
        _swapRange(_data, (_m - _i : stdgo.GoInt), _m, _i);
    }
class T_reverse_asInterface {
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:embedded
    public dynamic function swap(_i_:stdgo.GoInt, _j_:stdgo.GoInt):Void __self__.value.swap(_i_, _j_);
    @:embedded
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_reverse>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort.Sort.T_reverse_asInterface) class T_reverse_static_extension {
    @:keep
    static public function less( _r:T_reverse, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _r:T_reverse = _r?.__copy__();
        return _r.interface_.less(_j, _i);
    }
    @:embedded
    public static function swap( __self__:T_reverse, _i_:stdgo.GoInt, _j_:stdgo.GoInt) __self__.swap(_i_, _j_);
    @:embedded
    public static function len( __self__:T_reverse):stdgo.GoInt return __self__.len();
}
class T_xorshift_asInterface {
    @:keep
    @:pointer
    public dynamic function next():stdgo.GoUInt64 return __self__.value.next(__self__);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<T_xorshift>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort.Sort.T_xorshift_asInterface) class T_xorshift_static_extension {
    @:keep
    @:pointer
    static public function next(____:T_xorshift,  _r:stdgo.Pointer<T_xorshift>):stdgo.GoUInt64 {
        _r.value = (_r.value ^ ((_r.value << (13i64 : stdgo.GoUInt64) : stdgo._internal.sort.Sort.T_xorshift)) : stdgo._internal.sort.Sort.T_xorshift);
        _r.value = (_r.value ^ ((_r.value >> (17i64 : stdgo.GoUInt64) : stdgo._internal.sort.Sort.T_xorshift)) : stdgo._internal.sort.Sort.T_xorshift);
        _r.value = (_r.value ^ ((_r.value << (5i64 : stdgo.GoUInt64) : stdgo._internal.sort.Sort.T_xorshift)) : stdgo._internal.sort.Sort.T_xorshift);
        return (_r.value : stdgo.GoUInt64);
    }
}
class IntSlice_asInterface {
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function search(_x:stdgo.GoInt):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<IntSlice>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort.Sort.IntSlice_asInterface) class IntSlice_static_extension {
    @:keep
    static public function sort( _x:IntSlice):Void {
        @:recv var _x:IntSlice = _x;
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:IntSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:IntSlice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:IntSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:IntSlice = _x;
        return (_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _x:IntSlice):stdgo.GoInt {
        @:recv var _x:IntSlice = _x;
        return (_x.length);
    }
    @:keep
    static public function search( _p:IntSlice, _x:stdgo.GoInt):stdgo.GoInt {
        @:recv var _p:IntSlice = _p;
        return searchInts(_p, _x);
    }
}
class Float64Slice_asInterface {
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function search(_x:stdgo.GoFloat64):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<Float64Slice>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort.Sort.Float64Slice_asInterface) class Float64Slice_static_extension {
    @:keep
    static public function sort( _x:Float64Slice):Void {
        @:recv var _x:Float64Slice = _x;
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:Float64Slice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)];
            final __tmp__1 = _x[(_i : stdgo.GoInt)];
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:Float64Slice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:Float64Slice = _x;
        return ((_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)] : Bool) || ((_isNaN(_x[(_i : stdgo.GoInt)]) && !_isNaN(_x[(_j : stdgo.GoInt)]) : Bool)) : Bool);
    }
    @:keep
    static public function len( _x:Float64Slice):stdgo.GoInt {
        @:recv var _x:Float64Slice = _x;
        return (_x.length);
    }
    @:keep
    static public function search( _p:Float64Slice, _x:stdgo.GoFloat64):stdgo.GoInt {
        @:recv var _p:Float64Slice = _p;
        return searchFloat64s(_p, _x);
    }
}
class StringSlice_asInterface {
    @:keep
    public dynamic function sort():Void __self__.value.sort();
    @:keep
    public dynamic function swap(_i:stdgo.GoInt, _j:stdgo.GoInt):Void __self__.value.swap(_i, _j);
    @:keep
    public dynamic function less(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool return __self__.value.less(_i, _j);
    @:keep
    public dynamic function len():stdgo.GoInt return __self__.value.len();
    @:keep
    public dynamic function search(_x:stdgo.GoString):stdgo.GoInt return __self__.value.search(_x);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new stdgo.AnyInterface((__type__.kind() == stdgo._internal.internal.reflect.Reflect.KindType.pointer && !stdgo._internal.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : stdgo.Pointer<StringSlice>;
    var __type__ : stdgo._internal.internal.reflect.Reflect._Type;
}
@:keep @:allow(stdgo._internal.sort.Sort.StringSlice_asInterface) class StringSlice_static_extension {
    @:keep
    static public function sort( _x:StringSlice):Void {
        @:recv var _x:StringSlice = _x;
        stdgo._internal.sort.Sort.sort(stdgo.Go.asInterface(_x));
    }
    @:keep
    static public function swap( _x:StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Void {
        @:recv var _x:StringSlice = _x;
        {
            final __tmp__0 = _x[(_j : stdgo.GoInt)]?.__copy__();
            final __tmp__1 = _x[(_i : stdgo.GoInt)]?.__copy__();
            final __tmp__2 = _x;
            final __tmp__3 = (_i : stdgo.GoInt);
            final __tmp__4 = _x;
            final __tmp__5 = (_j : stdgo.GoInt);
            __tmp__2[__tmp__3] = __tmp__0;
            __tmp__4[__tmp__5] = __tmp__1;
        };
    }
    @:keep
    static public function less( _x:StringSlice, _i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
        @:recv var _x:StringSlice = _x;
        return (_x[(_i : stdgo.GoInt)] < _x[(_j : stdgo.GoInt)] : Bool);
    }
    @:keep
    static public function len( _x:StringSlice):stdgo.GoInt {
        @:recv var _x:StringSlice = _x;
        return (_x.length);
    }
    @:keep
    static public function search( _p:StringSlice, _x:stdgo.GoString):stdgo.GoInt {
        @:recv var _p:StringSlice = _p;
        return searchStrings(_p, _x?.__copy__());
    }
}
