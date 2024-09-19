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
function testFtoaRandom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        trace("testFtoaRandom" + " skip function");
        return;
        var n = ((10000 : stdgo.GoInt) : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            n = (100 : stdgo.GoInt);
        };
        _t.logf(("testing %d random numbers with fast and slow FormatFloat" : stdgo.GoString), stdgo.Go.toInterface(n));
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < n : Bool), _i++, {
                var _bits = (((stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) << (32i64 : stdgo.GoUInt64) : stdgo.GoUInt64) | (stdgo._internal.math.rand.Rand_uint32.uint32() : stdgo.GoUInt64) : stdgo.GoUInt64);
                var _x = (stdgo._internal.math.Math_float64frombits.float64frombits(_bits) : stdgo.GoFloat64);
                var _shortFast = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                stdgo._internal.strconv.Strconv_setOptimize.setOptimize(false);
                var _shortSlow = (stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (103 : stdgo.GoUInt8), (-1 : stdgo.GoInt), (64 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
                stdgo._internal.strconv.Strconv_setOptimize.setOptimize(true);
                if (_shortSlow != (_shortFast)) {
                    _t.errorf(("%b printed as %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_shortFast), stdgo.Go.toInterface(_shortSlow));
                };
                var _prec = (stdgo._internal.math.rand.Rand_intn.intn((12 : stdgo.GoInt)) + (5 : stdgo.GoInt) : stdgo.GoInt);
                _shortFast = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (101 : stdgo.GoUInt8), _prec, (64 : stdgo.GoInt))?.__copy__();
                stdgo._internal.strconv.Strconv_setOptimize.setOptimize(false);
                _shortSlow = stdgo._internal.strconv.Strconv_formatFloat.formatFloat(_x, (101 : stdgo.GoUInt8), _prec, (64 : stdgo.GoInt))?.__copy__();
                stdgo._internal.strconv.Strconv_setOptimize.setOptimize(true);
                if (_shortSlow != (_shortFast)) {
                    _t.errorf(("%b printed as %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_x), stdgo.Go.toInterface(_shortFast), stdgo.Go.toInterface(_shortSlow));
                };
            });
        };
    }
