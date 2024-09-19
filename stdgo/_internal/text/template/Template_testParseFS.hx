package stdgo._internal.text.template;
function testParseFS(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _fs = (stdgo._internal.os.Os_dirFS.dirFS(("testdata" : stdgo.GoString)) : stdgo._internal.io.fs.Fs_FS.FS);
        {
            var __tmp__ = stdgo._internal.text.template.Template_parseFS.parseFS(_fs, ("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err == null) {
                _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
            };
        };
        {
            var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file1.tmpl" : stdgo.GoString), ("file2.tmpl" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.text.template.Template__testExecute._testExecute(stdgo._internal.text.template.Template__multiExecTests._multiExecTests, _template, _t);
        };
        {
            var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
            var __tmp__ = _template.parseFS(_fs, ("file*.tmpl" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            stdgo._internal.text.template.Template__testExecute._testExecute(stdgo._internal.text.template.Template__multiExecTests._multiExecTests, _template, _t);
        };
    }