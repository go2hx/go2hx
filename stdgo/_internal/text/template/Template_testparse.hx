package stdgo._internal.text.template;
function testParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("test" : stdgo.GoString));
        {
            var __tmp__ = @:check2r _t1.parse(("{{define \"test\"}}{{end}}" : stdgo.GoString)), __16:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = @:check2r _t1.parse(("{{define \"test\"}}{{/* this is a comment */}}{{end}}" : stdgo.GoString)), __25:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            var __tmp__ = @:check2r _t1.parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), __34:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                @:check2r _t.fatalf(("parsing test: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
