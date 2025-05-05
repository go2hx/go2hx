package stdgo._internal.text.template;
function testMissingMapKey(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("x" : stdgo.GoString), (99 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("t1" : stdgo.GoString)).parse(("{{.x}} {{.y}}" : stdgo.GoString)), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1287"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1288"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_data));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1293"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1294"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _want = (("99 <no value>" : stdgo.GoString) : stdgo.GoString);
        var _got = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1298"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1299"
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1302"
        _tmpl.option(("missingkey=default" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1303"
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_data));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1305"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1306"
            _t.fatal(stdgo.Go.toInterface(("default:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 <no value>" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1310"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1311"
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1314"
        _tmpl.option(("missingkey=zero" : stdgo.GoString));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1315"
        _b.reset();
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_data));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1317"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1318"
            _t.fatal(stdgo.Go.toInterface(("zero:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        _want = ("99 0" : stdgo.GoString);
        _got = (_b.string() : stdgo.GoString)?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1322"
        if (_got != (_want)) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1323"
            _t.errorf(("got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
        };
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1326"
        _tmpl.option(("missingkey=error" : stdgo.GoString));
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface(_data));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1328"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1329"
            _t.errorf(("expected error; got none" : stdgo.GoString));
        };
        _err = _tmpl.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), (null : stdgo.AnyInterface));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1333"
        _t.log(stdgo.Go.toInterface(_err));
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1334"
        if (_err == null) {
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1335"
            _t.errorf(("expected error for nil-interface; got none" : stdgo.GoString));
        };
    }
