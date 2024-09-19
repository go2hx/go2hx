package stdgo._internal.math.big;
function _runModWTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>, _tests:stdgo.Slice<stdgo._internal.math.big.Big_T_modWTest.T_modWTest>):Void {
        for (_i => _test in _tests) {
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __14:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._dividend?.__copy__(), (10 : stdgo.GoInt)), _d:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __15:Bool = __tmp__._1;
            var __tmp__ = (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_Int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_>).setString(_test._out?.__copy__(), (10 : stdgo.GoInt)), _out:stdgo.Ref<stdgo._internal.math.big.Big_Int_.Int_> = __tmp__._0, __16:Bool = __tmp__._1;
            var _r = (_in._abs._modW(_d._abs[(0 : stdgo.GoInt)]) : stdgo._internal.math.big.Big_Word.Word);
            if (_r != (_out._abs[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                _t.errorf(("#%d failed: got %d want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)));
            };
        };
    }