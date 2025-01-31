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
function _makeSortedStrings(_n:stdgo.GoInt):stdgo.Slice<stdgo.GoString> {
        var _x = (new stdgo.Slice<stdgo.GoString>((_n : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < _n : Bool)) {
                _x[(_i : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_itoa.itoa(_i).__copy__();
                _i++;
            };
        };
        stdgo._internal.slices.Slices_sort.sort(_x);
        return _x;
    }
