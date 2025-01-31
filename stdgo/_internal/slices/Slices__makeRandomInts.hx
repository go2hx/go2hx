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
function _makeRandomInts(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        stdgo._internal.math.rand.Rand_seed.seed((42i64 : stdgo.GoInt64));
        var _ints = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _ints[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn(_n);
                _i++;
            };
        };
        return _ints;
    }
