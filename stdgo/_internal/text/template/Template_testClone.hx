package stdgo._internal.text.template;
function testClone(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(("{{define \"a\"}}{{template \"b\"}}{{template \"c\"}}{{end}}" : stdgo.GoString)), _root:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _root.parse(("{{define \"b\"}}b{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _clone = ({
            var __tmp__ = _root.clone();
            stdgo._internal.text.template.Template_must.must((__tmp__._0 : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>), (__tmp__._1 : stdgo.Error));
        });
        {
            var __tmp__ = _root.parse(("{{define \"c\"}}root{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __tmp__ = _clone.parse(("{{define \"c\"}}clone{{end}}" : stdgo.GoString));
            _err = __tmp__._1;
        };
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        for (_k => _v in _clone._common._tmpl) {
            if (((_k == _clone._name) && ((_v._common._tmpl[_k] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>)) != _clone) : Bool)) {
                _t.error(stdgo.Go.toInterface(("clone does not contain root" : stdgo.GoString)));
            };
            if (_v != ((_v._common._tmpl[_v._name] ?? (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>)))) {
                _t.errorf(("clone does not contain self for %q" : stdgo.GoString), stdgo.Go.toInterface(_k));
            };
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        _err = _root.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("broot" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("broot" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
        _b.reset();
        _err = _clone.executeTemplate(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>)), ("a" : stdgo.GoString), stdgo.Go.toInterface((0 : stdgo.GoInt)));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        if ((_b.string() : stdgo.GoString) != (("bclone" : stdgo.GoString))) {
            _t.errorf(("expected %q got %q" : stdgo.GoString), stdgo.Go.toInterface(("bclone" : stdgo.GoString)), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
        };
    }
