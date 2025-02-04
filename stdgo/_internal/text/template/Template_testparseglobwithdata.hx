package stdgo._internal.text.template;
function testParseGlobWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parseGlob(("testdata/tmpl*.tmpl" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__templatefileexectests._templateFileExecTests, _template, _t);
    }
