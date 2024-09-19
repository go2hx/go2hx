package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testParseComplexIncorrectBitSize(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        {};
        for (__0 => _bitSize in (new stdgo.Slice<stdgo.GoInt>(4, 4, ...[(0 : stdgo.GoInt), (10 : stdgo.GoInt), (100 : stdgo.GoInt), (256 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>)) {
            var __tmp__ = stdgo._internal.strconv.Strconv_parseComplex.parseComplex(("1.5e308+1.0e307i" : stdgo.GoString), _bitSize), _c:stdgo.GoComplex128 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("ParseComplex(%q, %d) gave error %s" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308+1.0e307i" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_err));
            };
            if (_c != (((1.5e+308f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1e+307f64)))) {
                _t.fatalf(("ParseComplex(%q, %d) = %g (expected %g)" : stdgo.GoString), stdgo.Go.toInterface(("1.5e308+1.0e307i" : stdgo.GoString)), stdgo.Go.toInterface(_bitSize), stdgo.Go.toInterface(_c), stdgo.Go.toInterface(((1.5e+308f64 : stdgo.GoFloat64) + new stdgo.GoComplex128(0f64, 1e+307f64))));
            };
        };
    }
