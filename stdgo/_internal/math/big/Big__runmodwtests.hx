package stdgo._internal.math.big;
function _runModWTests(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _tests:stdgo.Slice<stdgo._internal.math.big.Big_t_modwtest.T_modWTest>):Void {
        for (_i => _test in _tests) {
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._in?.__copy__(), (10 : stdgo.GoInt)), _in:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __8:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._dividend?.__copy__(), (10 : stdgo.GoInt)), _d:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __9:Bool = __tmp__._1;
            var __tmp__ = @:check2r (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>).setString(_test._out?.__copy__(), (10 : stdgo.GoInt)), _out:stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_> = __tmp__._0, __10:Bool = __tmp__._1;
            var _r = ((@:checkr _in ?? throw "null pointer dereference")._abs._modW((@:checkr _d ?? throw "null pointer dereference")._abs[(0 : stdgo.GoInt)]) : stdgo._internal.math.big.Big_word.Word);
            if (_r != ((@:checkr _out ?? throw "null pointer dereference")._abs[((0 : stdgo.GoInt) : stdgo.GoInt)])) {
                @:check2r _t.errorf(("#%d failed: got %d want %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_r), stdgo.Go.toInterface(stdgo.Go.asInterface(_out)));
            };
        };
    }
