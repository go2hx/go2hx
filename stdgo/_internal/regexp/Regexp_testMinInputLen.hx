package stdgo._internal.regexp;
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        for (__0 => _tt in stdgo._internal.regexp.Regexp__minInputLenTests._minInputLenTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            var _m = (stdgo._internal.regexp.Regexp__minInputLen._minInputLen(_re) : stdgo.GoInt);
            if (_m != (_tt._min)) {
                @:check2r _t.errorf(("regexp %#q has minInputLen %d, should be %d" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_tt._min));
            };
        };
    }
