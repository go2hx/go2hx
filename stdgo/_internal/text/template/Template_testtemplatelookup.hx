package stdgo._internal.text.template;
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L329"
        if (({
            final value = _t1.lookup(("foo" : stdgo.GoString));
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L330"
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template foo" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L332"
        _t1.new_(("bar" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L333"
        if (({
            final value = _t1.lookup(("bar" : stdgo.GoString));
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L334"
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template bar" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L336"
        _t1.parse(("{{define \"foo\"}}test{{end}}" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L337"
        if (({
            final value = _t1.lookup(("foo" : stdgo.GoString));
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L338"
            _t.error(stdgo.Go.toInterface(("Lookup returned nil value for defined template" : stdgo.GoString)));
        };
    }
