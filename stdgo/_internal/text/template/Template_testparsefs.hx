package stdgo._internal.text.template;
function testParseFS(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fs = (stdgo._internal.os.Os_dirfs.dirFS(("testdata" : stdgo.GoString)) : stdgo._internal.io.fs.Fs_fs.FS);
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L160"
        {
            var __tmp__ = stdgo._internal.text.template.Template_parsefs.parseFS(_fs, ("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L162"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L163"
                _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L167"
        {
            var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file1.tmpl" : stdgo.GoString), ("file2.tmpl" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L170"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L171"
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L173"
            stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__multiexectests._multiExecTests, _template, _t);
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L176"
        {
            var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file*.tmpl" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L179"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L180"
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L182"
            stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__multiexectests._multiExecTests, _template, _t);
        };
    }
