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
function _cmpS(_s1:stdgo._internal.slices.Slices_S.S, _s2:stdgo._internal.slices.Slices_S.S):stdgo.GoInt {
        return stdgo._internal.cmp.Cmp_compare.compare(_s1._a, _s2._a);
    }
