package stdgo._internal.regexp;
function testCompileOnePass(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __0:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog>), __1:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = (null : stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp>), __2:stdgo.Error = (null : stdgo.Error);
var _err = __2, _re = __1, _p = __0;
        for (__0 => _test in stdgo._internal.regexp.Regexp__onePassTests._onePassTests) {
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(_test._re?.__copy__(), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags));
                    _re = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.errorf(("Parse(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            _re = _re.simplify();
            {
                {
                    var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re);
                    _p = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    _t.errorf(("Compile(%q) got err:%s, want success" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_err));
                    continue;
                };
            };
            var _isOnePass = (stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) != null && ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__ == null || !(stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__) : Bool);
            if (_isOnePass != (_test._isOnePass)) {
                _t.errorf(("CompileOnePass(%q) got isOnePass=%v, expected %v" : stdgo.GoString), stdgo.Go.toInterface(_test._re), stdgo.Go.toInterface(_isOnePass), stdgo.Go.toInterface(_test._isOnePass));
            };
        };
    }