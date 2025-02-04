package stdgo._internal.text.template;
function testMultiExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(("\n\t{{define \"x\"}}TEXT{{end}}\n\t{{define \"dotV\"}}{{.V}}{{end}}\n" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("parse error for 1: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = @:check2r _template.parse(("\n\t{{define \"dot\"}}{{.}}{{end}}\n\t{{define \"nested\"}}{{template \"dot\" .}}{{end}}\n" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("parse error for 2: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__multiexectests._multiExecTests, _template, _t);
    }
