package stdgo._internal.regexp;
function testMinInputLen(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L942"
        for (__0 => _tt in stdgo._internal.regexp.Regexp__mininputlentests._minInputLenTests) {
            var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_tt.regexp?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, __1:stdgo.Error = __tmp__._1;
            var _m = (stdgo._internal.regexp.Regexp__mininputlen._minInputLen(_re) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L945"
            if (_m != (_tt._min)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/all_test.go#L946"
                _t.errorf(("regexp %#q has minInputLen %d, should be %d" : stdgo.GoString), stdgo.Go.toInterface(_tt.regexp), stdgo.Go.toInterface(_m), stdgo.Go.toInterface(_tt._min));
            };
        };
    }
