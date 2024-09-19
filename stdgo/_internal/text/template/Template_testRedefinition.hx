package stdgo._internal.text.template;
function testRedefinition(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("tmpl1" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString));
                _tmpl = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("parse 1: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _tmpl.parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {
            {
                var __tmp__ = _tmpl.new_(("tmpl2" : stdgo.GoString)).parse(("{{define \"test\"}}bar{{end}}" : stdgo.GoString));
                _err = __tmp__._1;
            };
            if (_err != null) {
                _t.fatalf(("got error %v, expected nil" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
