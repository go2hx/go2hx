package stdgo._internal.text.template;
function testNew(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("test" : stdgo.GoString)).parse(("{{define \"test\"}}foo{{end}}" : stdgo.GoString)), _t1:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, __16:stdgo.Error = __tmp__._1;
        var _t2 = @:check2r _t1.new_(("test" : stdgo.GoString));
        if ((@:checkr _t1 ?? throw "null pointer dereference")._common != ((@:checkr _t2 ?? throw "null pointer dereference")._common)) {
            @:check2r _t.errorf(("t1 & t2 didn\'t share common struct; got %v != %v" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _t1 ?? throw "null pointer dereference")._common)), stdgo.Go.toInterface(stdgo.Go.asInterface((@:checkr _t2 ?? throw "null pointer dereference")._common)));
        };
        if (((@:checkr _t1 ?? throw "null pointer dereference").tree == null || ((@:checkr _t1 ?? throw "null pointer dereference").tree : Dynamic).__nil__)) {
            @:check2r _t.error(stdgo.Go.toInterface(("defined template got nil Tree" : stdgo.GoString)));
        };
        if (((@:checkr _t2 ?? throw "null pointer dereference").tree != null && (((@:checkr _t2 ?? throw "null pointer dereference").tree : Dynamic).__nil__ == null || !((@:checkr _t2 ?? throw "null pointer dereference").tree : Dynamic).__nil__))) {
            @:check2r _t.error(stdgo.Go.toInterface(("undefined template got non-nil Tree" : stdgo.GoString)));
        };
        var _containsT1 = (false : Bool);
        for (__65 => _tmpl in @:check2r _t1.templates()) {
            if (_tmpl == (_t2)) {
                @:check2r _t.error(stdgo.Go.toInterface(("Templates included undefined template" : stdgo.GoString)));
            };
            if (_tmpl == (_t1)) {
                _containsT1 = true;
            };
        };
        if (!_containsT1) {
            @:check2r _t.error(stdgo.Go.toInterface(("Templates didn\'t include defined template" : stdgo.GoString)));
        };
    }
