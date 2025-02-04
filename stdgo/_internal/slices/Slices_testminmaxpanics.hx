package stdgo._internal.slices;
function testMinMaxPanics(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _intCmp = (function(_a:stdgo.GoInt, _b:stdgo.GoInt):stdgo.GoInt {
            return (_a - _b : stdgo.GoInt);
        } : (stdgo.GoInt, stdgo.GoInt) -> stdgo.GoInt);
        var _emptySlice = (new stdgo.Slice<stdgo.GoInt>(0, 0, ...[]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            stdgo._internal.slices.Slices_min.min(_emptySlice);
        })) {
            @:check2r _t.errorf(("Min([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            stdgo._internal.slices.Slices_max.max(_emptySlice);
        })) {
            @:check2r _t.errorf(("Max([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            stdgo._internal.slices.Slices_minfunc.minFunc(_emptySlice, _intCmp);
        })) {
            @:check2r _t.errorf(("MinFunc([]): got no panic, want panic" : stdgo.GoString));
        };
        if (!stdgo._internal.slices.Slices__panics._panics(function():Void {
            stdgo._internal.slices.Slices_maxfunc.maxFunc(_emptySlice, _intCmp);
        })) {
            @:check2r _t.errorf(("MaxFunc([]): got no panic, want panic" : stdgo.GoString));
        };
    }
