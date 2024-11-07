package stdgo._internal.text.template;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("test" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), _t1:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, __16:stdgo.Error = __tmp__._1;
        var _t2 = _t1.new_(("test" : stdgo.GoString));
        if (_t1._common != (_t2._common)) {
            _t.errorf(("t1 & t2 didn\'t share common struct; got %v != %v" : stdgo.GoString), stdgo.Go.toInterface(_t1._common), stdgo.Go.toInterface(_t2._common));
        };
        if ((_t1.tree == null || (_t1.tree : Dynamic).__nil__)) {
            _t.error(stdgo.Go.toInterface(("defined template got nil Tree" : stdgo.GoString)));
        };
        if ((_t2.tree != null && ((_t2.tree : Dynamic).__nil__ == null || !(_t2.tree : Dynamic).__nil__))) {
            _t.error(stdgo.Go.toInterface(("undefined template got non-nil Tree" : stdgo.GoString)));
        };
        var _containsT1 = (false : Bool);
        for (__65 => _tmpl in _t1.templates()) {
            if (_tmpl == (_t2)) {
                _t.error(stdgo.Go.toInterface(("Templates included undefined template" : stdgo.GoString)));
            };
            if (_tmpl == (_t1)) {
                _containsT1 = true;
            };
        };
        if (!_containsT1) {
            _t.error(stdgo.Go.toInterface(("Templates didn\'t include defined template" : stdgo.GoString)));
        };
    }
