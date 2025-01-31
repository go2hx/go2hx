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
function benchmarkSortStrings_Sorted(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        var _ss = stdgo._internal.slices.Slices__makeSortedStrings._makeSortedStrings((100000 : stdgo.GoInt));
        @:check2r _b.resetTimer();
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                stdgo._internal.sort.Sort_strings.strings(_ss);
                _i++;
            };
        };
    }
