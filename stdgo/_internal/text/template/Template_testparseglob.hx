package stdgo._internal.text.template;
function testParseGlob(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_parseglob.parseGlob(("DOES NOT EXIST" : stdgo.GoString)), __8:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error for non-existent file; got none" : stdgo.GoString)));
        };
        {
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("error" : stdgo.GoString)).parseGlob(("[x" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err == null) {
            @:check2r _t.error(stdgo.Go.toInterface(("expected error for bad pattern; got none" : stdgo.GoString)));
        };
        var _template = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString));
        {
            var __tmp__ = @:check2r _template.parseGlob(("testdata/file*.tmpl" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            @:check2r _t.fatalf(("error parsing files: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.text.template.Template__testexecute._testExecute(stdgo._internal.text.template.Template__multiexectests._multiExecTests, _template, _t);
    }
