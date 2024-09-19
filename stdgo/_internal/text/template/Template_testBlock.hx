package stdgo._internal.text.template;
function testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("outer" : stdgo.GoString)).parse(("a({{block \"inner\" .}}bar({{.}})baz{{end}})b" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = ({
            var __tmp__ = _tmpl.clone();
            stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        }).parse(("{{define \"inner\"}}foo({{.}})bar{{end}}" : stdgo.GoString)), _tmpl2:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        {
            var _err = (_tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("a(bar(hello)baz)b" : stdgo.GoString))) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(bar(hello)baz)b" : stdgo.GoString)));
            };
        };
        _buf.reset();
        {
            var _err = (_tmpl2.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), stdgo.Go.toInterface(("goodbye" : stdgo.GoString))) : stdgo.Error);
            if (_err != null) {
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        {
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("a(foo(goodbye)bar)b" : stdgo.GoString))) {
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(foo(goodbye)bar)b" : stdgo.GoString)));
            };
        };
    }