package stdgo._internal.text.template;
function testParseFilesWithData(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parseFiles(("testdata/tmpl1.tmpl" : stdgo.GoString), ("testdata/tmpl2.tmpl" : stdgo.GoString)), _template:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L194"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L195"
            _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L197"
        stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__templatefileexectests._templateFileExecTests, _template, _t);
    }
