package stdgo._internal.math.big;
function testNot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _expected = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1548"
        for (_i => _test in stdgo._internal.math.big.Big__nottests._notTests) {
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1549"
            _in.setString(_test._in?.__copy__(), (10 : stdgo.GoInt));
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1550"
            _expected.setString(_test._out?.__copy__(), (10 : stdgo.GoInt));
            _out = _out.not(_in);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1552"
            if (_out.cmp(_expected) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1553"
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
            };
            _out = _out.not(_out);
            //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1556"
            if (_out.cmp(_in) != ((0 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/math/big/int_test.go#L1557"
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_in)));
            };
        };
    }
