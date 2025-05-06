package stdgo._internal.go.constant;
function testMakeFloat64(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _zero:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L626"
        for (__1 => _arg in (new stdgo.Slice<stdgo.GoFloat64>(10, 10, ...[(-3.4028234663852886e+38 : stdgo.GoFloat64), (-10 : stdgo.GoFloat64), (-0.5 : stdgo.GoFloat64), -_zero, _zero, (1 : stdgo.GoFloat64), (10 : stdgo.GoFloat64), (1.2345678987654321e-15 : stdgo.GoFloat64), (1e+10 : stdgo.GoFloat64), (1.7976931348623157e+308 : stdgo.GoFloat64)]).__setNumber32__() : stdgo.Slice<stdgo.GoFloat64>)) {
            var _val = (stdgo._internal.go.constant.Constant_makefloat64.makeFloat64(_arg) : stdgo._internal.go.constant.Constant_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L639"
            if (_val.kind() != ((4 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L640"
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((4 : stdgo._internal.go.constant.Constant_kind.Kind))));
            };
            var __tmp__ = stdgo._internal.go.constant.Constant_float64val.float64Val(_val), _got:stdgo.GoFloat64 = __tmp__._0, _exact:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L645"
            if ((!_exact || (stdgo._internal.math.Math_float64bits.float64bits(_got) != stdgo._internal.math.Math_float64bits.float64bits((_arg + (0 : stdgo.GoFloat64) : stdgo.GoFloat64))) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L646"
                _t.errorf(("%v: got %v (exact = %v)" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_exact));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L651"
        for (_sign => _ in (new stdgo.Slice<stdgo.GoInt>(2, 2, ...[(-1 : stdgo.GoInt), (1 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var _arg = (stdgo._internal.math.Math_inf.inf(_sign) : stdgo.GoFloat64);
            var _val = (stdgo._internal.go.constant.Constant_makefloat64.makeFloat64(_arg) : stdgo._internal.go.constant.Constant_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L654"
            if (_val.kind() != ((0 : stdgo._internal.go.constant.Constant_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/go/constant/value_test.go#L655"
                _t.errorf(("%v: got kind = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_arg), stdgo.Go.toInterface(stdgo.Go.asInterface(_val.kind())), stdgo.Go.toInterface(stdgo.Go.asInterface((0 : stdgo._internal.go.constant.Constant_kind.Kind))));
            };
        };
    }
