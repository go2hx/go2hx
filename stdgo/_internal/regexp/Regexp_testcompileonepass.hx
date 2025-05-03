package stdgo._internal.regexp;
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L184"
        for (__0 => _test in stdgo._internal.regexp.Regexp__onepasstests._onePassTests) {
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L185"
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_test._re?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                    _re = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L186"
                    _t.errorf(("Parse(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L187"
                    continue;
                };
            };
            _re = _re.simplify();
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L191"
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
                    _p = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L192"
                    _t.errorf(("Compile(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L193"
                    continue;
                };
            };
            var _isOnePass = ({
                final value = stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p);
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            } : Bool);
            //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L196"
            if (_isOnePass != (_test._isOnePass)) {
                //"file:///home/runner/.go/go1.21.3/src/regexp/onepass_test.go#L197"
                _t.errorf(("CompileOnePass(%q) got isOnePass=%v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_isOnePass), stdgo.Go.toInterface(_test._isOnePass));
            };
        };
    }
