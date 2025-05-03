package stdgo._internal.text.template;
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString)), _root:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L218"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L219"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _root.parse(("{{define \"b\"}}b{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L222"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L223"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _clone = ({
            @:tupleArg var __tmp__ = _root.clone();
            var __f__ = stdgo._internal.text.template.Template_must.must;
            var __tmp__ = _root.clone();
            __f__((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            var __tmp__ = _root.parse(("{{define \"c\"}}root{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L228"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L229"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _clone.parse(("{{define \"c\"}}clone{{end}}" : stdgo.GoString));
            _err = @:tmpset0 __tmp__._1;
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L232"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L233"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L236"
        for (_k => _v in (@:checkr _clone ?? throw "null pointer dereference")._common._tmpl) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L237"
            if (((_k == (@:checkr _clone ?? throw "null pointer dereference")._name) && (((@:checkr _v ?? throw "null pointer dereference")._common._tmpl[_k] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>)) != _clone) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L238"
                _t.error(stdgo.Go.toInterface(("clone does not contain root" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L240"
            if (_v != (((@:checkr _v ?? throw "null pointer dereference")._common._tmpl[(@:checkr _v ?? throw "null pointer dereference")._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>)))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L241"
                _t.errorf(("clone does not contain self for %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        _err = _root.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L247"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L248"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L250"
        if ((_b.string() : stdgo.GoString) != (("broot" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L251"
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("broot" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L254"
        _b.reset();
        _err = _clone.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L256"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L257"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L259"
        if ((_b.string() : stdgo.GoString) != (("bclone" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L260"
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("bclone" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
