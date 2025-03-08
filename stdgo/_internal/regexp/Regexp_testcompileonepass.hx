package stdgo._internal.regexp;
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog>), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp>), _err:stdgo.Error = (null : stdgo.Error);
        for (__0 => _test in stdgo._internal.regexp.Regexp__onepasstests._onePassTests) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_test._re?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags));
                    _re = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _t.errorf(("Parse(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            _re = @:check2r _re.simplify();
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
                    _p = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if (_err != null) {
                    @:check2r _t.errorf(("Compile(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var _isOnePass = ({
                final value = stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p);
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            } : Bool);
            if (_isOnePass != (_test._isOnePass)) {
                @:check2r _t.errorf(("CompileOnePass(%q) got isOnePass=%v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_isOnePass), stdgo.Go.toInterface(_test._isOnePass));
            };
        };
    }
