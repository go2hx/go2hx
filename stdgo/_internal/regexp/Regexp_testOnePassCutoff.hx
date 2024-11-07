package stdgo._internal.regexp;
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(("^x{1,1000}y{1,1000}$" : stdgo.GoString), (212 : stdgo._internal.regexp.syntax.Syntax_Flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(_re.simplify()), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_Prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) != null && ((stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__ == null || !(stdgo._internal.regexp.Regexp__compileOnePass._compileOnePass(_p) : Dynamic).__nil__))) {
            _t.fatalf(("makeOnePass succeeded; wanted nil" : stdgo.GoString));
        };
    }
