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
function testSortLarge_Random(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _n = (1000000 : stdgo.GoInt);
        if (stdgo._internal.testing.Testing_short.short()) {
            _n = (_n / ((100 : stdgo.GoInt)) : stdgo.GoInt);
        };
        var _data = (new stdgo.Slice<stdgo.GoInt>((_n : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt>);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)] = stdgo._internal.math.rand.Rand_intn.intn((100 : stdgo.GoInt));
                _i++;
            };
        };
        if (stdgo._internal.slices.Slices_isSorted.isSorted(_data)) {
            @:check2r _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        stdgo._internal.slices.Slices_sort.sort(_data);
        if (!stdgo._internal.slices.Slices_isSorted.isSorted(_data)) {
            @:check2r _t.errorf(("sort didn\'t sort - 1M ints" : stdgo.GoString));
        };
    }
