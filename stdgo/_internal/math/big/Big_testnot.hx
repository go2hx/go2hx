package stdgo._internal.math.big;
function testNot(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _in = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        var _expected = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        for (_i => _test in stdgo._internal.math.big.Big__nottests._notTests) {
            @:check2r _in.setString(_test._in?.__copy__(), (10 : stdgo.GoInt));
            @:check2r _expected.setString(_test._out?.__copy__(), (10 : stdgo.GoInt));
            _out = @:check2r _out.not(_in);
            if (@:check2r _out.cmp(_expected) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
            };
            _out = @:check2r _out.not(_out);
            if (@:check2r _out.cmp(_in) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_in)));
            };
        };
    }
