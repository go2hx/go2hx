package stdgo._internal.text.template;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("test" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), _t1:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, __16:stdgo.Error = __tmp__._1;
        var _t2 = _t1.new_(("test" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L347"
        if ((@:checkr _t1 ?? throw "null pointer dereference")._common != ((@:checkr _t2 ?? throw "null pointer dereference")._common)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L348"
            _t.errorf(("t1 & t2 didn\'t share common struct; got %v != %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _t1 ?? throw "null pointer dereference")._common)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _t2 ?? throw "null pointer dereference")._common)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L350"
        if (({
            final value = (@:checkr _t1 ?? throw "null pointer dereference").tree;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L351"
            _t.error(stdgo.Go.toInterface(("defined template got nil Tree" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L353"
        if (({
            final value = (@:checkr _t2 ?? throw "null pointer dereference").tree;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L354"
            _t.error(stdgo.Go.toInterface(("undefined template got non-nil Tree" : stdgo.GoString)));
        };
        var _containsT1 = (false : Bool);
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L358"
        for (__65 => _tmpl in _t1.templates()) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L359"
            if (_tmpl == (_t2)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L360"
                _t.error(stdgo.Go.toInterface(("Templates included undefined template" : stdgo.GoString)));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L362"
            if (_tmpl == (_t1)) {
                _containsT1 = true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L366"
        if (!_containsT1) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L367"
            _t.error(stdgo.Go.toInterface(("Templates didn\'t include defined template" : stdgo.GoString)));
        };
    }
