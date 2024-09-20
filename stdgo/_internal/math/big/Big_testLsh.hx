package stdgo._internal.math.big;
function testLsh(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (_i => _test in stdgo._internal.math.big.Big__lshTests._lshTests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._out?.__copy__(), (10 : stdgo.GoInt)), _expected:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var _out = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).lsh(_in, _test._shift);
            if (!stdgo._internal.math.big.Big__isNormalized._isNormalized(_out)) {
                _t.errorf(("#%d: %v is not normalized" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface((_out : stdgo._internal.math.big.Big_Int_.Int_))));
            };
            if (_out.cmp(_expected) != ((0 : stdgo.GoInt))) {
                _t.errorf(("#%d: got %s want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)), stdgo.Go.toInterface(stdgo.Go.asInterface(_expected)));
            };
        };
    }
