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
function _intPairCmp(_x:stdgo._internal.slices.Slices_T_intPair.T_intPair, _y:stdgo._internal.slices.Slices_T_intPair.T_intPair):stdgo.GoInt {
        return (_x._a - _y._a : stdgo.GoInt);
    }
