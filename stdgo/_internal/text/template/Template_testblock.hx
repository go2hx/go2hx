package stdgo._internal.text.template;
function testBlock(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("outer" : stdgo.GoString)).parse(("a({{block \"inner\" .}}bar({{.}})baz{{end}})b" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1452"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1453"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = ({
            @:tupleArg var __tmp__ = _tmpl.clone();
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = _tmpl.clone();
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        }).parse(("{{define \"inner\"}}foo({{.}})bar{{end}}" : stdgo.GoString)), _tmpl2:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1456"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1457"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1461"
        {
            var _err = (_tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("hello" : stdgo.GoString))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1462"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1464"
        {
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("a(bar(hello)baz)b" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1465"
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(bar(hello)baz)b" : stdgo.GoString)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1468"
        _buf.reset();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1469"
        {
            var _err = (_tmpl2.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("goodbye" : stdgo.GoString))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1470"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1472"
        {
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (("a(foo(goodbye)bar)b" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1473"
                _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("a(foo(goodbye)bar)b" : stdgo.GoString)));
            };
        };
    }
