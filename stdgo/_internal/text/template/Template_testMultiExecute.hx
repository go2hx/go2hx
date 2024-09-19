package stdgo._internal.text.template;
function testMultiExecute(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(("\n\t{{define \"x\"}}TEXT{{end}}\n\t{{define \"dotV\"}}{{.V}}{{end}}\n" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatalf(("parse error for 1: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _template.parse(("\n\t{{define \"dot\"}}{{.}}{{end}}\n\t{{define \"nested\"}}{{template \"dot\" .}}{{end}}\n" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatalf(("parse error for 2: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testExecute._testExecute(stdgo._internal.text.template.Template__multiExecTests._multiExecTests, _template, _t);
    }
