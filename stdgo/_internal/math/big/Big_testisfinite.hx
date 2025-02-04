package stdgo._internal.math.big;
function testIsFinite(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _finites = (new stdgo.Slice<stdgo.GoFloat64>(6, 6, ...[(0.3333333333333333 : stdgo.GoFloat64), (4.8915598712767145e+243 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64), (5e-324 : stdgo.GoFloat64), (-1.7976931348623157e+308 : stdgo.GoFloat64), (-5e-324 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__8 => _f in _finites) {
            if (!stdgo._internal.math.big.Big__isfinite._isFinite(_f)) {
                @:check2r _t.errorf(("!IsFinite(%g (%b))" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            };
        };
        var _nonfinites = (new stdgo.Slice<stdgo.GoFloat64>(3, 3, ...[stdgo._internal.math.Math_nan.naN(), stdgo._internal.math.Math_inf.inf((-1 : stdgo.GoInt)), stdgo._internal.math.Math_inf.inf((1 : stdgo.GoInt))]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>);
        for (__9 => _f in _nonfinites) {
            if (stdgo._internal.math.big.Big__isfinite._isFinite(_f)) {
                @:check2r _t.errorf(("IsFinite(%g, (%b))" : stdgo.GoString), stdgo.Go.toInterface(_f), stdgo.Go.toInterface(_f));
            };
        };
    }
