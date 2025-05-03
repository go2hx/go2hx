package stdgo._internal.text.template;
function testMaxExecDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1539"
        if (stdgo._internal.testing.Testing_short.short()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1540"
            _t.skip(stdgo.Go.toInterface(("skipping in -short mode" : stdgo.GoString)));
        };
        var _tmpl = ({
            @:tupleArg var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(("{{template \"tmpl\" .}}" : stdgo.GoString));
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(("{{template \"tmpl\" .}}" : stdgo.GoString));
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        });
        var _err = (_tmpl.execute(stdgo._internal.io.Io_discard.discard, (null : stdgo.AnyInterface)) : stdgo.Error);
        var _got = (("<nil>" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1545"
        if (_err != null) {
            _got = _err.error()?.__copy__();
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1549"
        if (!stdgo._internal.strings.Strings_contains.contains(_got?.__copy__(), ("exceeded maximum template depth" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1550"
            _t.errorf(("got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("exceeded maximum template depth" : stdgo.GoString)));
        };
    }
