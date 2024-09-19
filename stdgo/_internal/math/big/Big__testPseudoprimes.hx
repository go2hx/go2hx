package stdgo._internal.math.big;
function _testPseudoprimes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _name:stdgo.GoString, _cond:stdgo._internal.math.big.Big_T_nat.T_nat -> Bool, _want:stdgo.Slice<stdgo.GoInt>):Void {
        var _n = (new stdgo.Slice<stdgo._internal.math.big.Big_Word.Word>(1, 1, ...[(1u32 : stdgo._internal.math.big.Big_Word.Word)]).__setNumber32__() : stdgo._internal.math.big.Big_T_nat.T_nat);
        {
            var _i = (3 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (100000 : stdgo.GoInt) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                if (stdgo._internal.testing.Testing_short.short()) {
                    if ((_want.length) == ((0 : stdgo.GoInt))) {
                        break;
                    };
                    if ((_i < (_want[(0 : stdgo.GoInt)] - (2 : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                        _i = (_want[(0 : stdgo.GoInt)] - (2 : stdgo.GoInt) : stdgo.GoInt);
                    };
                };
                _n[(0 : stdgo.GoInt)] = (_i : stdgo._internal.math.big.Big_Word.Word);
                var _pseudo = (_cond(_n) : Bool);
                if ((_pseudo && (((_want.length == (0 : stdgo.GoInt)) || (_i != _want[(0 : stdgo.GoInt)]) : Bool)) : Bool)) {
                    _t.errorf(("%s(%v, base=2) = true, want false" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i));
                } else if (((!_pseudo && ((_want.length) >= (1 : stdgo.GoInt) : Bool) : Bool) && (_i == _want[(0 : stdgo.GoInt)]) : Bool)) {
                    _t.errorf(("%s(%v, base=2) = false, want true" : stdgo.GoString), stdgo.Go.toInterface(_name), stdgo.Go.toInterface(_i));
                };
                if ((((_want.length) > (0 : stdgo.GoInt) : Bool) && (_i == _want[(0 : stdgo.GoInt)]) : Bool)) {
                    _want = (_want.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                };
            });
        };
        if (((_want.length) > (0 : stdgo.GoInt) : Bool)) {
            _t.fatalf(("forgot to test %v" : stdgo.GoString), stdgo.Go.toInterface(_want));
        };
    }
