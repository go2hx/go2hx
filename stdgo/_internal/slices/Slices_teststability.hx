package stdgo._internal.slices;
function testStability(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __0 = (100000 : stdgo.GoInt), __1 = (1000 : stdgo.GoInt);
var _m = __1, _n = __0;
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L131"
        if (stdgo._internal.testing.Testing_short.short()) {
            {
                final __tmp__0 = (1000 : stdgo.GoInt);
                final __tmp__1 = (100 : stdgo.GoInt);
                _n = @:binopAssign __tmp__0;
                _m = @:binopAssign __tmp__1;
            };
        };
        var _data = (new stdgo.Slice<stdgo._internal.slices.Slices_t_intpair.T_intPair>((_n : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_n : stdgo.GoInt).toBasic() > 0 ? (_n : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.slices.Slices_t_intpair.T_intPair)]) : stdgo._internal.slices.Slices_t_intpairs.T_intPairs);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L137"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)]._a = stdgo._internal.math.rand.Rand_intn.intn(_m);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L140"
        if (stdgo._internal.slices.Slices_issortedfunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L141"
            _t.fatalf(("terrible rand.rand" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L143"
        _data._initB();
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L144"
        stdgo._internal.slices.Slices_sortstablefunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L145"
        if (!stdgo._internal.slices.Slices_issortedfunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L146"
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L148"
        if (!_data._inOrder()) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L149"
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L153"
        _data._initB();
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L154"
        stdgo._internal.slices.Slices_sortstablefunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L155"
        if (!stdgo._internal.slices.Slices_issortedfunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L156"
            _t.errorf(("Stable shuffled sorted %d ints (order)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L158"
        if (!_data._inOrder()) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L159"
            _t.errorf(("Stable shuffled sorted %d ints (stability)" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L163"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_data.length) : Bool)) {
                _data[(_i : stdgo.GoInt)]._a = ((_data.length) - _i : stdgo.GoInt);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L166"
        _data._initB();
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L167"
        stdgo._internal.slices.Slices_sortstablefunc.sortStableFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp);
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L168"
        if (!stdgo._internal.slices.Slices_issortedfunc.isSortedFunc(_data, stdgo._internal.slices.Slices__intpaircmp._intPairCmp)) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L169"
            _t.errorf(("Stable didn\'t sort %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L171"
        if (!_data._inOrder()) {
            //"file:///home/runner/.go/go1.21.3/src/slices/sort_test.go#L172"
            _t.errorf(("Stable wasn\'t stable on %d ints" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
    }
