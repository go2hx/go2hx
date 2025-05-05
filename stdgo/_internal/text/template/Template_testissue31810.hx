package stdgo._internal.text.template;
function testIssue31810(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        {};
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{ (.)  }}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1718"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1719"
            _t.error(stdgo.Go.toInterface(_err));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1722"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1723"
            _t.error(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1725"
        if ((_b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1726"
            _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (.)  }}" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
        var _f = (function():stdgo.GoString {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1730"
            return ("result" : stdgo.GoString);
        } : () -> stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1731"
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_f));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1733"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1734"
            _t.error(stdgo.Go.toInterface(("expected error with no call, got none" : stdgo.GoString)));
        };
        {};
        {
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_((stdgo.Go.str() : stdgo.GoString)?.__copy__()).parse(("{{ (call .)  }}" : stdgo.GoString));
            _tmpl = @:tmpset0 __tmp__._0;
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1740"
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_f));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1742"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1743"
            _t.error(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1745"
        if ((_b.string() : stdgo.GoString) != (("result" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1746"
            _t.errorf(("%s got %q, expected %q" : stdgo.GoString), stdgo.Go.toInterface(("{{ (call .)  }}" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)), stdgo.Go.toInterface(("result" : stdgo.GoString)));
        };
    }
