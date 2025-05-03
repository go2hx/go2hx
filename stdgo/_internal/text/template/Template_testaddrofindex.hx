package stdgo._internal.text.template;
function testAddrOfIndex(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _texts = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("{{range .}}{{.String}}{{end}}" : stdgo.GoString), ("{{with index . 0}}{{.String}}{{end}}" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1564"
        for (__8 => _text in _texts) {
            var _tmpl = ({
                @:tupleArg var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(_text?.__copy__());
                var __f__ = stdgo._internal.text.template.Template_must.must;
                var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("tmpl" : stdgo.GoString)).parse(_text?.__copy__());
                __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
            });
            var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
            var _err = (_tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.reflect.Reflect_valueof.valueOf(stdgo.Go.toInterface((new stdgo.Slice<stdgo._internal.text.template.Template_v.V>(1, 1, ...[(new stdgo._internal.text.template.Template_v.V((1 : stdgo.GoInt)) : stdgo._internal.text.template.Template_v.V)].concat([for (i in 1 ... (1 > 1 ? 1 : 1 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.text.template.Template_v.V)])) : stdgo.Slice<stdgo._internal.text.template.Template_v.V>)))))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1568"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1569"
                _t.fatalf(("%s: Execute: %v" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1571"
            if ((_buf.string() : stdgo.GoString) != (("<1>" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1572"
                _t.fatalf(("%s: template output = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>))), stdgo.Go.toInterface(("<1>" : stdgo.GoString)));
            };
        };
    }
