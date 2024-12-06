package stdgo._internal.text.template;
function testMissingMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("x" : stdgo.GoString), (99 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("t1" : stdgo.GoString)).parse(("{{.x}} {{.y}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _b__pointer__ = (stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        _err = _tmpl.execute(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want = ("99 <no value>" : stdgo.GoString);
        var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=default" : stdgo.GoString));
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("default:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 <no value>" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=zero" : stdgo.GoString));
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.toInterface(_data));
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(("zero:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 0" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        if (_got != (_want)) {
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        _tmpl.option(("missingkey=error" : stdgo.GoString));
        _err = _tmpl.execute(stdgo.Go.asInterface(_b__pointer__), stdgo.Go.toInterface(_data));
        if (_err == null) {
            _t.errorf(("expected error; got none" : stdgo.GoString));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface(_b__pointer__), (null : stdgo.AnyInterface));
        _t.log(stdgo.Go.toInterface(_err));
        if (_err == null) {
            _t.errorf(("expected error for nil-interface; got none" : stdgo.GoString));
        };
    }
