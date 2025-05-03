package stdgo._internal.slices;
function testMinMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intCmp = (function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L275"
            return (_a - _b : stdgo.GoInt);
        } : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
        var _emptySlice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L278"
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L278"
            stdgo._internal.slices.Slices_min.min(_emptySlice);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L279"
            _t.errorf(("Min([]): got no panic, want panic" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L282"
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L282"
            stdgo._internal.slices.Slices_max.max(_emptySlice);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L283"
            _t.errorf(("Max([]): got no panic, want panic" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L286"
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L286"
            stdgo._internal.slices.Slices_minfunc.minFunc(_emptySlice, _intCmp);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L287"
            _t.errorf(("MinFunc([]): got no panic, want panic" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L290"
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L290"
            stdgo._internal.slices.Slices_maxfunc.maxFunc(_emptySlice, _intCmp);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L291"
            _t.errorf(("MaxFunc([]): got no panic, want panic" : stdgo.GoString));
        };
    }
