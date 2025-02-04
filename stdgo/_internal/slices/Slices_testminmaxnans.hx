package stdgo._internal.slices;
function testMinMaxNaNs(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fs = (new stdgo.Slice<stdgo.GoFloat64>(5, 5, ...[(1 : stdgo.GoFloat64), (999.9 : stdgo.GoFloat64), (3.14 : stdgo.GoFloat64), (-400.4 : stdgo.GoFloat64), (-5.14 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        if (stdgo._internal.slices.Slices_min.min(_fs) != (-400.4 : stdgo.GoFloat64)) {
            @:check2r _t.errorf(("got min %v, want -400.4" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices_min.min(_fs)));
        };
        if (stdgo._internal.slices.Slices_max.max(_fs) != (999.9 : stdgo.GoFloat64)) {
            @:check2r _t.errorf(("got max %v, want 999.9" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.slices.Slices_max.max(_fs)));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_fs.length) : Bool)) {
                var _testfs = stdgo._internal.slices.Slices_clone.clone(_fs);
_testfs[(_i : stdgo.GoInt)] = stdgo._internal.math.Math_nan.naN();
var _fmin = (stdgo._internal.slices.Slices_min.min(_testfs) : stdgo.GoFloat64);
if (!stdgo._internal.math.Math_isnan.isNaN(_fmin)) {
                    @:check2r _t.errorf(("got min %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmin));
                };
var _fmax = (stdgo._internal.slices.Slices_max.max(_testfs) : stdgo.GoFloat64);
if (!stdgo._internal.math.Math_isnan.isNaN(_fmax)) {
                    @:check2r _t.errorf(("got max %v, want NaN" : stdgo.GoString), stdgo.Go.toInterface(_fmax));
                };
                _i++;
            };
        };
    }
