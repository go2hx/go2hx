package stdgo._internal.text.template;
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString));
        if (_t1.lookup(("foo" : stdgo.GoString)) != null && ((_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__ == null || !(_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template foo" : stdgo.GoString)));
        };
        _t1.new_(("bar" : stdgo.GoString));
        if (_t1.lookup(("bar" : stdgo.GoString)) != null && ((_t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__ == null || !(_t1.lookup(("bar" : stdgo.GoString)) : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template bar" : stdgo.GoString)));
        };
        _t1.parse(("{{define \"foo\"}}test{{end}}" : stdgo.GoString));
        if (_t1.lookup(("foo" : stdgo.GoString)) == null || (_t1.lookup(("foo" : stdgo.GoString)) : Dynamic).__nil__) {
            _t.error(stdgo.Go.toInterface(("Lookup returned nil value for defined template" : stdgo.GoString)));
        };
    }
