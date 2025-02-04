package stdgo._internal.text.template;
function testMaxExecDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        if (stdgo._internal.testing.Testing_short.short()) {
            @:check2r _t.skip(stdgo.Go.toInterface(("skipping in -short mode" : stdgo.GoString)));
        };
        var _tmpl = ({
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(("{{template \"tmpl\" .}}" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _err = (@:check2r _tmpl.execute(stdgo._internal.io.Io_discard.discard, (null : stdgo.AnyInterface)) : stdgo.Error);
        var _got = (("<nil>" : stdgo.GoString) : stdgo.GoString);
        if (_err != null) {
            _got = _err.error()?.__copy__();
        };
        {};
        if (!stdgo._internal.strings.Strings_contains.contains(_got?.__copy__(), ("exceeded maximum template depth" : stdgo.GoString))) {
            @:check2r _t.errorf(("got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("exceeded maximum template depth" : stdgo.GoString)));
        };
    }
