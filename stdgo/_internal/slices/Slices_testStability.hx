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
function testStability(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0 = (100000 : stdgo.GoInt), __1 = (1000 : stdgo.GoInt);
var _m = __1, _n = __0;
        if (stdgo._internal.testing.Testing_short.short()) {
            {
                final __tmp__0 = (1000 : stdgo.GoInt);
                final __tmp__1 = (100 : stdgo.GoInt);
                _n = __tmp__0;
                _m = __tmp__1;
            };
        };
        var _data = (new stdgo.Slice<stdgo._internal.slices.Slices_T_intPair.T_intPair>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.slices.Slices_T_intPair.T_intPair)]) : stdgo._internal.slices.Slices_T_intPairs.T_intPairs);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)]._a = stdgo._internal.math.rand.Rand_intn.intn(_m);
                _i++;
            };
        };
        if (stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp)) {
            @:check2r _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        _data._initB();
        stdgo._internal.slices.Slices_sortStableFunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp);
        if (!stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp)) {
            @:check2r _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            @:check2r _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        _data._initB();
        stdgo._internal.slices.Slices_sortStableFunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp);
        if (!stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp)) {
            @:check2r _t.errorf(("Stable shuffled sorted %d ints (order)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            @:check2r _t.errorf(("Stable shuffled sorted %d ints (stability)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)]._a = ((_data.length) - _i : stdgo.GoInt);
                _i++;
            };
        };
        _data._initB();
        stdgo._internal.slices.Slices_sortStableFunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp);
        if (!stdgo._internal.slices.Slices_isSortedFunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intPairCmp._intPairCmp)) {
            @:check2r _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (!_data._inOrder()) {
            @:check2r _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
