package stdgo._internal.regexp;
function testOnePassCutoff(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_parse.parse(("^x{1,1000}y{1,1000}$" : stdgo.GoString), (212 : stdgo._internal.regexp.syntax.Syntax_flags.Flags)), _re:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_regexp.Regexp> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("parse: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.regexp.syntax.Syntax_compile.compile(@:check2r _re.simplify()), _p:stdgo.Ref<stdgo._internal.regexp.syntax.Syntax_prog.Prog> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("compile: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p) != null && ((stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p) : Dynamic).__nil__ == null || !(stdgo._internal.regexp.Regexp__compileonepass._compileOnePass(_p) : Dynamic).__nil__))) {
            @:check2r _t.fatalf(("makeOnePass succeeded; wanted nil" : stdgo.GoString));
        };
    }
