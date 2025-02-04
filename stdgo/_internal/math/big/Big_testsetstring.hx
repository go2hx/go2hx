package stdgo._internal.math.big;
function testSetString(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmp = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>);
        for (_i => _test in stdgo._internal.math.big.Big__stringtests._stringTests) {
            @:check2r _tmp.setInt64((1234567890i64 : stdgo.GoInt64));
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), _test._base), _n1:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok1:Bool = __tmp__._1;
            var __tmp__ = @:check2r _tmp.setString(_test._in?.__copy__(), _test._base), _n2:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, _ok2:Bool = __tmp__._1;
            var _expected = stdgo._internal.math.big.Big_newint.newInt(_test._val);
            if (((_ok1 != _test._ok) || (_ok2 != _test._ok) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\') ok incorrect (should be %t)" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_test._ok));
                continue;
            };
            if (!_ok1) {
                if ((_n1 != null && ((_n1 : Dynamic).__nil__ == null || !(_n1 : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d (input \'%s\') n1 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                continue;
            };
            if (!_ok2) {
                if ((_n2 != null && ((_n2 : Dynamic).__nil__ == null || !(_n2 : Dynamic).__nil__))) {
                    @:check2r _t.errorf(("#%d (input \'%s\') n2 != nil" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in));
                };
                continue;
            };
            if ((_ok1 && !stdgo._internal.math.big.Big__isnormalized._isNormalized(_n1) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n1 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if ((_ok2 && !stdgo._internal.math.big.Big__isnormalized._isNormalized(_n2) : Bool)) {
                @:check2r _t.errorf(("#%d (input \'%s\'): %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface((_n2 : stdgo._internal.math.big.Big_int_.Int_))));
            };
            if (@:check2r _n1.cmp(_expected) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n1)), stdgo.Go.toInterface(_test._val));
            };
            if (@:check2r _n2.cmp(_expected) != ((0 : stdgo.GoInt))) {
                @:check2r _t.errorf(("#%d (input \'%s\') got: %s want: %d" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(stdgo.Go.asInterface(_n2)), stdgo.Go.toInterface(_test._val));
            };
        };
    }
