package stdgo._internal.slices;
import stdgo._internal.math.Math;
import stdgo._internal.cmp.Cmp;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.strings.Strings;
import stdgo._internal.internal.testenv.Testenv;
import stdgo._internal.testing.Testing;
import stdgo._internal.math.bits.Bits;
import stdgo._internal.math.rand.Rand;
import stdgo._internal.sort.Sort;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function benchmarkCompactFunc_Large(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        {};
        var _ss = (new stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780>((1024 : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((1024 : stdgo.GoInt).toBasic() > 0 ? (1024 : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) new stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780(4096, 4096, ...[for (i in 0 ... 4096) (0 : stdgo.GoUInt8)])]) : stdgo.Slice<stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                var __blank__ = stdgo._internal.slices.Slices_compactFunc.compactFunc(_ss, function(_a:stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780, _b:stdgo._internal.slices.Slices_T_benchmarkCompactFunc_Large___localname___Large_15780.T_benchmarkCompactFunc_Large___localname___Large_15780):Bool {
                    return stdgo.Go.toInterface(_a) == stdgo.Go.toInterface(_b);
                });
                _i++;
            };
        };
    }
