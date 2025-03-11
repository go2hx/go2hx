package stdgo._internal.text.template;
function testTemplateLookUp(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _t1 = stdgo._internal.text.template.Template_new_.new_(("foo" : stdgo.GoString));
        if (({
            final value = @:check2r _t1.lookup(("foo" : stdgo.GoString));
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template foo" : stdgo.GoString)));
        };
        @:check2r _t1.new_(("bar" : stdgo.GoString));
        if (({
            final value = @:check2r _t1.lookup(("bar" : stdgo.GoString));
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned non-nil value for undefined template bar" : stdgo.GoString)));
        };
        @:check2r _t1.parse(("{{define \"foo\"}}test{{end}}" : stdgo.GoString));
        if (({
            final value = @:check2r _t1.lookup(("foo" : stdgo.GoString));
            (value == null || (value : Dynamic).__nil__);
        })) {
            @:check2r _t.error(stdgo.Go.toInterface(("Lookup returned nil value for defined template" : stdgo.GoString)));
        };
    }
