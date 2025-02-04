package stdgo._internal.text.template;
function testRedefinition(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl1" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString));
                _tmpl = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("parse 1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = @:check2r _tmpl.parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = @:check2r @:check2r _tmpl.new_(("tmpl2" : stdgo.GoString)).parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                @:check2r _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
