package stdgo.sort;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
var _reflectValueOf : AnyInterface -> stdgo.internal.reflectlite.Reflectlite.Value = stdgo.internal.reflectlite.Reflectlite.valueOf;
var _reflectSwapper : AnyInterface -> ((GoInt, GoInt) -> Void) = stdgo.internal.reflectlite.Reflectlite.swapper;
typedef Interface = StructType & {
    public function len():GoInt;
    public function less(_i:GoInt, _j:GoInt):Bool;
    public function swap(_i:GoInt, _j:GoInt):Void;
};
@:structInit class T_lessSwap {
    public var less : (GoInt, GoInt) -> Bool = null;
    public var swap : (GoInt, GoInt) -> Void = null;
    public function new(?less:(GoInt, GoInt) -> Bool, ?swap:(GoInt, GoInt) -> Void) {
        if (less != null) this.less = less;
        if (swap != null) this.swap = swap;
    }
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_lessSwap(less, swap);
    }
}
@:structInit @:using(stdgo.sort.Sort.T_reverse_static_extension) class T_reverse {
    @:embedded
    public var interface_ : Interface = ((null : Interface));
    public function new(?interface_:Interface) {
        if (interface_ != null) this.interface_ = interface_;
    }
    public function len():GoInt return interface_.len();
    public function swap(_i:GoInt, _j:GoInt) interface_.swap(_i, _j);
    public function __underlying__():AnyInterface return Go.toInterface(this);
    public function __copy__() {
        return new T_reverse(interface_);
    }
}
@:named @:using(stdgo.sort.Sort.IntSlice_static_extension) typedef IntSlice = Slice<GoInt>;
@:named @:using(stdgo.sort.Sort.Float64Slice_static_extension) typedef Float64Slice = Slice<GoFloat64>;
@:named @:using(stdgo.sort.Sort.StringSlice_static_extension) typedef StringSlice = Slice<GoString>;
function search(_n:GoInt, _f:GoInt -> Bool):GoInt {
        var _i:GoInt = ((0 : GoInt)), _j:GoInt = _n;
        while (_i < _j) {
            var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
            if (!_f(_h)) {
                _i = _h + ((1 : GoInt));
            } else {
                _j = _h;
            };
        };
        return _i;
    }
function searchInts(_a:Slice<GoInt>, _x:GoInt):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoInt))) >= _x;
        });
    }
function searchFloat64s(_a:Slice<GoFloat64>, _x:GoFloat64):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : ((0 : GoFloat64))) >= _x;
        });
    }
function searchStrings(_a:Slice<GoString>, _x:GoString):GoInt {
        return search((_a != null ? _a.length : ((0 : GoInt))), function(_i:GoInt):Bool {
            return (_a != null ? _a[_i] : (("" : GoString))) >= _x;
        });
    }
function slice(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _swap:(GoInt, GoInt) -> Void = _reflectSwapper(Go.toInterface(_x));
        var _length:GoInt = _rv.len();
        _quickSort_func(((new T_lessSwap(_less, _swap) : T_lessSwap)), ((0 : GoInt)), _length, _maxDepth(_length));
    }
function sliceStable(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Void {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _swap:(GoInt, GoInt) -> Void = _reflectSwapper(Go.toInterface(_x));
        _stable_func(((new T_lessSwap(_less, _swap) : T_lessSwap)), _rv.len());
    }
function sliceIsSorted(_x:AnyInterface, _less:(_i:GoInt, _j:GoInt) -> Bool):Bool {
        var _rv:stdgo.internal.reflectlite.Reflectlite.Value = (_reflectValueOf(Go.toInterface(_x)) == null ? null : _reflectValueOf(Go.toInterface(_x)).__copy__());
        var _n:GoInt = _rv.len();
        {
            var _i:GoInt = _n - ((1 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                if (_less(_i, _i - ((1 : GoInt)))) {
                    return false;
                };
            });
        };
        return true;
    }
function _insertionSort(_data:Interface, _a:GoInt, _b:GoInt):Void {
        {
            var _i:GoInt = _a + ((1 : GoInt));
            Go.cfor(_i < _b, _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor((_j > _a) && _data.less(_j, _j - ((1 : GoInt))), _j--, {
                        _data.swap(_j, _j - ((1 : GoInt)));
                    });
                };
            });
        };
    }
function _siftDown(_data:Interface, _lo:GoInt, _hi:GoInt, _first:GoInt):Void {
        var _root:GoInt = _lo;
        while (true) {
            var _child:GoInt = (((2 : GoInt)) * _root) + ((1 : GoInt));
            if (_child >= _hi) {
                break;
            };
            if (((_child + ((1 : GoInt))) < _hi) && _data.less(_first + _child, (_first + _child) + ((1 : GoInt)))) {
                _child++;
            };
            if (!_data.less(_first + _root, _first + _child)) {
                return;
            };
            _data.swap(_first + _root, _first + _child);
            _root = _child;
        };
    }
function _heapSort(_data:Interface, _a:GoInt, _b:GoInt):Void {
        var _first:GoInt = _a;
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _b - _a;
        {
            var _i:GoInt = (_hi - ((1 : GoInt))) / ((2 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _siftDown(_data, _i, _hi, _first);
            });
        };
        {
            var _i:GoInt = _hi - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown(_data, _lo, _i, _first);
            });
        };
    }
function _medianOfThree(_data:Interface, _m1:GoInt, _m0:GoInt, _m2:GoInt):Void {
        if (_data.less(_m1, _m0)) {
            _data.swap(_m1, _m0);
        };
        if (_data.less(_m2, _m1)) {
            _data.swap(_m2, _m1);
            if (_data.less(_m1, _m0)) {
                _data.swap(_m1, _m0);
            };
        };
    }
function _swapRange(_data:Interface, _a:GoInt, _b:GoInt, _n:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _doPivot(_data:Interface, _lo:GoInt, _hi:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _midlo:GoInt = ((0 : GoInt)), _midhi:GoInt = ((0 : GoInt));
        var _m:GoInt = ((((((_lo + _hi) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
        if ((_hi - _lo) > ((40 : GoInt))) {
            var _s:GoInt = (_hi - _lo) / ((8 : GoInt));
            _medianOfThree(_data, _lo, _lo + _s, _lo + (((2 : GoInt)) * _s));
            _medianOfThree(_data, _m, _m - _s, _m + _s);
            _medianOfThree(_data, _hi - ((1 : GoInt)), (_hi - ((1 : GoInt))) - _s, (_hi - ((1 : GoInt))) - (((2 : GoInt)) * _s));
        };
        _medianOfThree(_data, _lo, _m, _hi - ((1 : GoInt)));
        var _pivot:GoInt = _lo;
        var _a:GoInt = _lo + ((1 : GoInt)), _c:GoInt = _hi - ((1 : GoInt));
        Go.cfor((_a < _c) && _data.less(_a, _pivot), _a++, {});
        var _b:GoInt = _a;
        while (true) {
            Go.cfor((_b < _c) && !_data.less(_pivot, _b), _b++, {});
            Go.cfor((_b < _c) && _data.less(_pivot, _c - ((1 : GoInt))), _c--, {});
            if (_b >= _c) {
                break;
            };
            _data.swap(_b, _c - ((1 : GoInt)));
            _b++;
            _c--;
        };
        var _protect:Bool = (_hi - _c) < ((5 : GoInt));
        if (!_protect && ((_hi - _c) < ((_hi - _lo) / ((4 : GoInt))))) {
            var _dups:GoInt = ((0 : GoInt));
            if (!_data.less(_pivot, _hi - ((1 : GoInt)))) {
                _data.swap(_c, _hi - ((1 : GoInt)));
                _c++;
                _dups++;
            };
            if (!_data.less(_b - ((1 : GoInt)), _pivot)) {
                _b--;
                _dups++;
            };
            if (!_data.less(_m, _pivot)) {
                _data.swap(_m, _b - ((1 : GoInt)));
                _b--;
                _dups++;
            };
            _protect = _dups > ((1 : GoInt));
        };
        if (_protect) {
            while (true) {
                Go.cfor((_a < _b) && !_data.less(_b - ((1 : GoInt)), _pivot), _b--, {});
                Go.cfor((_a < _b) && _data.less(_a, _pivot), _a++, {});
                if (_a >= _b) {
                    break;
                };
                _data.swap(_a, _b - ((1 : GoInt)));
                _a++;
                _b--;
            };
        };
        _data.swap(_pivot, _b - ((1 : GoInt)));
        return { _0 : _b - ((1 : GoInt)), _1 : _c };
    }
function _quickSort(_data:Interface, _a:GoInt, _b:GoInt, _maxDepth:GoInt):Void {
        while ((_b - _a) > ((12 : GoInt))) {
            if (_maxDepth == ((0 : GoInt))) {
                _heapSort(_data, _a, _b);
                return;
            };
            _maxDepth--;
            var __tmp__ = _doPivot(_data, _a, _b), _mlo:GoInt = __tmp__._0, _mhi:GoInt = __tmp__._1;
            if ((_mlo - _a) < (_b - _mhi)) {
                _quickSort(_data, _a, _mlo, _maxDepth);
                _a = _mhi;
            } else {
                _quickSort(_data, _mhi, _b, _maxDepth);
                _b = _mlo;
            };
        };
        if ((_b - _a) > ((1 : GoInt))) {
            {
                var _i:GoInt = _a + ((6 : GoInt));
                Go.cfor(_i < _b, _i++, {
                    if (_data.less(_i, _i - ((6 : GoInt)))) {
                        _data.swap(_i, _i - ((6 : GoInt)));
                    };
                });
            };
            _insertionSort(_data, _a, _b);
        };
    }
function sort(_data:Interface):Void {
        var _n:GoInt = _data.len();
        _quickSort(_data, ((0 : GoInt)), _n, _maxDepth(_n));
    }
function _maxDepth(_n:GoInt):GoInt {
        var _depth:GoInt = ((0 : GoInt));
        {
            var _i:GoInt = _n;
            Go.cfor(_i > ((0 : GoInt)), _i = _i >> (((1 : GoUnTypedInt))), {
                _depth++;
            });
        };
        return _depth * ((2 : GoInt));
    }
function reverse(_data:Interface):Interface {
        return ((new T_reverse(_data) : T_reverse));
    }
function isSorted(_data:Interface):Bool {
        var _n:GoInt = _data.len();
        {
            var _i:GoInt = _n - ((1 : GoInt));
            Go.cfor(_i > ((0 : GoInt)), _i--, {
                if (_data.less(_i, _i - ((1 : GoInt)))) {
                    return false;
                };
            });
        };
        return true;
    }
function _isNaN(_f:GoFloat64):Bool {
        return _f != _f;
    }
function ints(_x:Slice<GoInt>):Void {
        sort(Go.wrapper(((_x : IntSlice))));
    }
function float64s(_x:Slice<GoFloat64>):Void {
        sort(Go.wrapper(((_x : Float64Slice))));
    }
function strings(_x:Slice<GoString>):Void {
        sort(Go.wrapper(((_x : StringSlice))));
    }
function intsAreSorted(_x:Slice<GoInt>):Bool {
        return isSorted(Go.wrapper(((_x : IntSlice))));
    }
function float64sAreSorted(_x:Slice<GoFloat64>):Bool {
        return isSorted(Go.wrapper(((_x : Float64Slice))));
    }
function stringsAreSorted(_x:Slice<GoString>):Bool {
        return isSorted(Go.wrapper(((_x : StringSlice))));
    }
function stable(_data:Interface):Void {
        _stable(_data, _data.len());
    }
function _stable(_data:Interface, _n:GoInt):Void {
        var _blockSize:GoInt = ((20 : GoInt));
        var _a:GoInt = ((0 : GoInt)), _b:GoInt = _blockSize;
        while (_b <= _n) {
            _insertionSort(_data, _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort(_data, _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((2 : GoInt)) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge(_data, _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + (((2 : GoInt)) * _blockSize);
            };
            {
                var _m:GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge(_data, _a, _m, _n);
                };
            };
            _blockSize = _blockSize * (((2 : GoInt)));
        };
    }
function _symMerge(_data:Interface, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        if ((_m - _a) == ((1 : GoInt))) {
            var _i:GoInt = _m;
            var _j:GoInt = _b;
            while (_i < _j) {
                var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
                if (_data.less(_h, _a)) {
                    _i = _h + ((1 : GoInt));
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _a;
                Go.cfor(_k < (_i - ((1 : GoInt))), _k++, {
                    _data.swap(_k, _k + ((1 : GoInt)));
                });
            };
            return;
        };
        if ((_b - _m) == ((1 : GoInt))) {
            var _i:GoInt = _a;
            var _j:GoInt = _m;
            while (_i < _j) {
                var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
                if (!_data.less(_m, _h)) {
                    _i = _h + ((1 : GoInt));
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _m;
                Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - ((1 : GoInt)));
                });
            };
            return;
        };
        var _mid:GoInt = ((((((_a + _b) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
        var _n:GoInt = _mid + _m;
        var _start:GoInt = ((0 : GoInt)), _r:GoInt = ((0 : GoInt));
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:GoInt = _n - ((1 : GoInt));
        while (_start < _r) {
            var _c:GoInt = ((((((_start + _r) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
            if (!_data.less(_p - _c, _c)) {
                _start = _c + ((1 : GoInt));
            } else {
                _r = _c;
            };
        };
        var _end:GoInt = _n - _start;
        if ((_start < _m) && (_m < _end)) {
            _rotate(_data, _start, _m, _end);
        };
        if ((_a < _start) && (_start < _mid)) {
            _symMerge(_data, _a, _start, _mid);
        };
        if ((_mid < _end) && (_end < _b)) {
            _symMerge(_data, _mid, _end, _b);
        };
    }
function _rotate(_data:Interface, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        var _i:GoInt = _m - _a;
        var _j:GoInt = _b - _m;
        while (_i != _j) {
            if (_i > _j) {
                _swapRange(_data, _m - _i, _m, _j);
                _i = _i - (_j);
            } else {
                _swapRange(_data, _m - _i, (_m + _j) - _i, _i);
                _j = _j - (_i);
            };
        };
        _swapRange(_data, _m - _i, _m, _i);
    }
function _insertionSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        {
            var _i:GoInt = _a + ((1 : GoInt));
            Go.cfor(_i < _b, _i++, {
                {
                    var _j:GoInt = _i;
                    Go.cfor((_j > _a) && _data.less(_j, _j - ((1 : GoInt))), _j--, {
                        _data.swap(_j, _j - ((1 : GoInt)));
                    });
                };
            });
        };
    }
function _siftDown_func(_data:T_lessSwap, _lo:GoInt, _hi:GoInt, _first:GoInt):Void {
        var _root:GoInt = _lo;
        while (true) {
            var _child:GoInt = (((2 : GoInt)) * _root) + ((1 : GoInt));
            if (_child >= _hi) {
                break;
            };
            if (((_child + ((1 : GoInt))) < _hi) && _data.less(_first + _child, (_first + _child) + ((1 : GoInt)))) {
                _child++;
            };
            if (!_data.less(_first + _root, _first + _child)) {
                return;
            };
            _data.swap(_first + _root, _first + _child);
            _root = _child;
        };
    }
function _heapSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt):Void {
        var _first:GoInt = _a;
        var _lo:GoInt = ((0 : GoInt));
        var _hi:GoInt = _b - _a;
        {
            var _i:GoInt = (_hi - ((1 : GoInt))) / ((2 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _siftDown_func((_data == null ? null : _data.__copy__()), _i, _hi, _first);
            });
        };
        {
            var _i:GoInt = _hi - ((1 : GoInt));
            Go.cfor(_i >= ((0 : GoInt)), _i--, {
                _data.swap(_first, _first + _i);
                _siftDown_func((_data == null ? null : _data.__copy__()), _lo, _i, _first);
            });
        };
    }
function _medianOfThree_func(_data:T_lessSwap, _m1:GoInt, _m0:GoInt, _m2:GoInt):Void {
        if (_data.less(_m1, _m0)) {
            _data.swap(_m1, _m0);
        };
        if (_data.less(_m2, _m1)) {
            _data.swap(_m2, _m1);
            if (_data.less(_m1, _m0)) {
                _data.swap(_m1, _m0);
            };
        };
    }
function _swapRange_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _n:GoInt):Void {
        {
            var _i:GoInt = ((0 : GoInt));
            Go.cfor(_i < _n, _i++, {
                _data.swap(_a + _i, _b + _i);
            });
        };
    }
function _doPivot_func(_data:T_lessSwap, _lo:GoInt, _hi:GoInt):{ var _0 : GoInt; var _1 : GoInt; } {
        var _midlo:GoInt = ((0 : GoInt)), _midhi:GoInt = ((0 : GoInt));
        var _m:GoInt = ((((((_lo + _hi) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
        if ((_hi - _lo) > ((40 : GoInt))) {
            var _s:GoInt = (_hi - _lo) / ((8 : GoInt));
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _lo, _lo + _s, _lo + (((2 : GoInt)) * _s));
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _m, _m - _s, _m + _s);
            _medianOfThree_func((_data == null ? null : _data.__copy__()), _hi - ((1 : GoInt)), (_hi - ((1 : GoInt))) - _s, (_hi - ((1 : GoInt))) - (((2 : GoInt)) * _s));
        };
        _medianOfThree_func((_data == null ? null : _data.__copy__()), _lo, _m, _hi - ((1 : GoInt)));
        var _pivot:GoInt = _lo;
        var _a:GoInt = _lo + ((1 : GoInt)), _c:GoInt = _hi - ((1 : GoInt));
        Go.cfor((_a < _c) && _data.less(_a, _pivot), _a++, {});
        var _b:GoInt = _a;
        while (true) {
            Go.cfor((_b < _c) && !_data.less(_pivot, _b), _b++, {});
            Go.cfor((_b < _c) && _data.less(_pivot, _c - ((1 : GoInt))), _c--, {});
            if (_b >= _c) {
                break;
            };
            _data.swap(_b, _c - ((1 : GoInt)));
            _b++;
            _c--;
        };
        var _protect:Bool = (_hi - _c) < ((5 : GoInt));
        if (!_protect && ((_hi - _c) < ((_hi - _lo) / ((4 : GoInt))))) {
            var _dups:GoInt = ((0 : GoInt));
            if (!_data.less(_pivot, _hi - ((1 : GoInt)))) {
                _data.swap(_c, _hi - ((1 : GoInt)));
                _c++;
                _dups++;
            };
            if (!_data.less(_b - ((1 : GoInt)), _pivot)) {
                _b--;
                _dups++;
            };
            if (!_data.less(_m, _pivot)) {
                _data.swap(_m, _b - ((1 : GoInt)));
                _b--;
                _dups++;
            };
            _protect = _dups > ((1 : GoInt));
        };
        if (_protect) {
            while (true) {
                Go.cfor((_a < _b) && !_data.less(_b - ((1 : GoInt)), _pivot), _b--, {});
                Go.cfor((_a < _b) && _data.less(_a, _pivot), _a++, {});
                if (_a >= _b) {
                    break;
                };
                _data.swap(_a, _b - ((1 : GoInt)));
                _a++;
                _b--;
            };
        };
        _data.swap(_pivot, _b - ((1 : GoInt)));
        return { _0 : _b - ((1 : GoInt)), _1 : _c };
    }
function _quickSort_func(_data:T_lessSwap, _a:GoInt, _b:GoInt, _maxDepth:GoInt):Void {
        while ((_b - _a) > ((12 : GoInt))) {
            if (_maxDepth == ((0 : GoInt))) {
                _heapSort_func((_data == null ? null : _data.__copy__()), _a, _b);
                return;
            };
            _maxDepth--;
            var __tmp__ = _doPivot_func((_data == null ? null : _data.__copy__()), _a, _b), _mlo:GoInt = __tmp__._0, _mhi:GoInt = __tmp__._1;
            if ((_mlo - _a) < (_b - _mhi)) {
                _quickSort_func((_data == null ? null : _data.__copy__()), _a, _mlo, _maxDepth);
                _a = _mhi;
            } else {
                _quickSort_func((_data == null ? null : _data.__copy__()), _mhi, _b, _maxDepth);
                _b = _mlo;
            };
        };
        if ((_b - _a) > ((1 : GoInt))) {
            {
                var _i:GoInt = _a + ((6 : GoInt));
                Go.cfor(_i < _b, _i++, {
                    if (_data.less(_i, _i - ((6 : GoInt)))) {
                        _data.swap(_i, _i - ((6 : GoInt)));
                    };
                });
            };
            _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
        };
    }
function _stable_func(_data:T_lessSwap, _n:GoInt):Void {
        var _blockSize:GoInt = ((20 : GoInt));
        var _a:GoInt = ((0 : GoInt)), _b:GoInt = _blockSize;
        while (_b <= _n) {
            _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _b);
            _a = _b;
            _b = _b + (_blockSize);
        };
        _insertionSort_func((_data == null ? null : _data.__copy__()), _a, _n);
        while (_blockSize < _n) {
            {
                final __tmp__0 = ((0 : GoInt));
                final __tmp__1 = ((2 : GoInt)) * _blockSize;
                _a = __tmp__0;
                _b = __tmp__1;
            };
            while (_b <= _n) {
                _symMerge_func((_data == null ? null : _data.__copy__()), _a, _a + _blockSize, _b);
                _a = _b;
                _b = _b + (((2 : GoInt)) * _blockSize);
            };
            {
                var _m:GoInt = _a + _blockSize;
                if (_m < _n) {
                    _symMerge_func((_data == null ? null : _data.__copy__()), _a, _m, _n);
                };
            };
            _blockSize = _blockSize * (((2 : GoInt)));
        };
    }
function _symMerge_func(_data:T_lessSwap, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        if ((_m - _a) == ((1 : GoInt))) {
            var _i:GoInt = _m;
            var _j:GoInt = _b;
            while (_i < _j) {
                var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
                if (_data.less(_h, _a)) {
                    _i = _h + ((1 : GoInt));
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _a;
                Go.cfor(_k < (_i - ((1 : GoInt))), _k++, {
                    _data.swap(_k, _k + ((1 : GoInt)));
                });
            };
            return;
        };
        if ((_b - _m) == ((1 : GoInt))) {
            var _i:GoInt = _a;
            var _j:GoInt = _m;
            while (_i < _j) {
                var _h:GoInt = ((((((_i + _j) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
                if (!_data.less(_m, _h)) {
                    _i = _h + ((1 : GoInt));
                } else {
                    _j = _h;
                };
            };
            {
                var _k:GoInt = _m;
                Go.cfor(_k > _i, _k--, {
                    _data.swap(_k, _k - ((1 : GoInt)));
                });
            };
            return;
        };
        var _mid:GoInt = ((((((_a + _b) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
        var _n:GoInt = _mid + _m;
        var _start:GoInt = ((0 : GoInt)), _r:GoInt = ((0 : GoInt));
        if (_m > _mid) {
            _start = _n - _b;
            _r = _mid;
        } else {
            _start = _a;
            _r = _m;
        };
        var _p:GoInt = _n - ((1 : GoInt));
        while (_start < _r) {
            var _c:GoInt = ((((((_start + _r) : GoUInt)) >> ((1 : GoUnTypedInt))) : GoInt));
            if (!_data.less(_p - _c, _c)) {
                _start = _c + ((1 : GoInt));
            } else {
                _r = _c;
            };
        };
        var _end:GoInt = _n - _start;
        if ((_start < _m) && (_m < _end)) {
            _rotate_func((_data == null ? null : _data.__copy__()), _start, _m, _end);
        };
        if ((_a < _start) && (_start < _mid)) {
            _symMerge_func((_data == null ? null : _data.__copy__()), _a, _start, _mid);
        };
        if ((_mid < _end) && (_end < _b)) {
            _symMerge_func((_data == null ? null : _data.__copy__()), _mid, _end, _b);
        };
    }
function _rotate_func(_data:T_lessSwap, _a:GoInt, _m:GoInt, _b:GoInt):Void {
        var _i:GoInt = _m - _a;
        var _j:GoInt = _b - _m;
        while (_i != _j) {
            if (_i > _j) {
                _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, _m, _j);
                _i = _i - (_j);
            } else {
                _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, (_m + _j) - _i, _i);
                _j = _j - (_i);
            };
        };
        _swapRange_func((_data == null ? null : _data.__copy__()), _m - _i, _m, _i);
    }
@:keep class T_reverse_static_extension {
    @:keep
    public static function less( _r:T_reverse, _i:GoInt, _j:GoInt):Bool {
        return _r.interface_.less(_j, _i);
    }
}
@:keep class IntSlice_static_extension {
    @:keep
    public static function sort( _x:IntSlice):Void {
        stdgo.sort.Sort.sort(Go.wrapper(_x));
    }
    @:keep
    public static function swap( _x:IntSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : ((0 : GoInt)));
            final __tmp__1 = (_x != null ? _x[_i] : ((0 : GoInt)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _x:IntSlice, _i:GoInt, _j:GoInt):Bool {
        return (_x != null ? _x[_i] : ((0 : GoInt))) < (_x != null ? _x[_j] : ((0 : GoInt)));
    }
    @:keep
    public static function len( _x:IntSlice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    @:keep
    public static function search( _p:IntSlice, _x:GoInt):GoInt {
        return searchInts(_p, _x);
    }
}
@:keep class Float64Slice_static_extension {
    @:keep
    public static function sort( _x:Float64Slice):Void {
        stdgo.sort.Sort.sort(Go.wrapper(_x));
    }
    @:keep
    public static function swap( _x:Float64Slice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : ((0 : GoFloat64)));
            final __tmp__1 = (_x != null ? _x[_i] : ((0 : GoFloat64)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _x:Float64Slice, _i:GoInt, _j:GoInt):Bool {
        return ((_x != null ? _x[_i] : ((0 : GoFloat64))) < (_x != null ? _x[_j] : ((0 : GoFloat64)))) || (_isNaN((_x != null ? _x[_i] : ((0 : GoFloat64)))) && !_isNaN((_x != null ? _x[_j] : ((0 : GoFloat64)))));
    }
    @:keep
    public static function len( _x:Float64Slice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    @:keep
    public static function search( _p:Float64Slice, _x:GoFloat64):GoInt {
        return searchFloat64s(_p, _x);
    }
}
@:keep class StringSlice_static_extension {
    @:keep
    public static function sort( _x:StringSlice):Void {
        stdgo.sort.Sort.sort(Go.wrapper(_x));
    }
    @:keep
    public static function swap( _x:StringSlice, _i:GoInt, _j:GoInt):Void {
        {
            final __tmp__0 = (_x != null ? _x[_j] : (("" : GoString)));
            final __tmp__1 = (_x != null ? _x[_i] : (("" : GoString)));
            if (_x != null) _x[_i] = __tmp__0;
            if (_x != null) _x[_j] = __tmp__1;
        };
    }
    @:keep
    public static function less( _x:StringSlice, _i:GoInt, _j:GoInt):Bool {
        return (_x != null ? _x[_i] : (("" : GoString))) < (_x != null ? _x[_j] : (("" : GoString)));
    }
    @:keep
    public static function len( _x:StringSlice):GoInt {
        return (_x != null ? _x.length : ((0 : GoInt)));
    }
    @:keep
    public static function search( _p:StringSlice, _x:GoString):GoInt {
        return searchStrings(_p, _x);
    }
}
