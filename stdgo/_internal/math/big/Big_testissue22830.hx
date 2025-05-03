package stdgo._internal.math.big;
function testIssue22830(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _one = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setInt64((1i64 : stdgo.GoInt64));
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("84555555300000000000" : stdgo.GoString), (10 : stdgo.GoInt)), _base:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("66666670001111111111" : stdgo.GoString), (10 : stdgo.GoInt)), _mod:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
        var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(("17888885298888888889" : stdgo.GoString), (10 : stdgo.GoInt)), _want:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __10:Bool = __tmp__._1;
        var _tests = (new stdgo.Slice<stdgo.GoInt64>(3, 3, ...[(0i64 : stdgo.GoInt64), (1i64 : stdgo.GoInt64), (-1i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1810"
        for (__11 => _n in _tests) {
            var _m = stdgo._internal.math.big.Big_newint.newInt(_n);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1812"
            {
                var _got = _m.exp(_base, _one, _mod);
                if (_got.cmp(_want) != ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1813"
                    _t.errorf(("(%v).Exp(%s, 1, %s) = %s, want %s" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(stdgo.Go.asInterface(_base)), stdgo.Go.toInterface(stdgo.Go.asInterface(_mod)), stdgo.Go.toInterface(stdgo.Go.asInterface(_got)), stdgo.Go.toInterface(stdgo.Go.asInterface(_want)));
                };
            };
        };
    }
