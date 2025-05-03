package stdgo._internal.math.big;
function testLshRsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1030"
        for (_i => _test in stdgo._internal.math.big.Big__rshtests._rshTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_in, _test._shift);
            _out = _out.rsh(_out, _test._shift);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1035"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1036"
                _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_out : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1038"
            if (_in.cmp(_out) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1039"
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_in)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1042"
        for (_i => _test in stdgo._internal.math.big.Big__lshtests._lshTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).lsh(_in, _test._shift);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1045"
            _out.rsh(_out, _test._shift);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1047"
            if (!stdgo._internal.math.big.Big__isnormalized._isNormalized(_out)) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1048"
                _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_out : stdgo._internal.math.big.Big_int_.Int_))));
            };
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1050"
            if (_in.cmp(_out) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1051"
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_in)));
            };
        };
    }
