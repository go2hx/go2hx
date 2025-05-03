package stdgo._internal.math.big;
function testLsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1000"
        for (_i => _test in stdgo._internal.math.big.Big__lshtests._lshTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._out?.__copy__(), (10 : stdgo.GoInt)), _expected:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_in, _test._shift);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1005"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1006"
                _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_out : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1008"
            if (_out.cmp(_expected) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1009"
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
            };
        };
    }
