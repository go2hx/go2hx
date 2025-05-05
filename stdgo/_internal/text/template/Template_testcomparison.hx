package stdgo._internal.text.template;
function testComparison(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        var _cmpStruct = ({ uthree : (3u32 : stdgo.GoUInt), ufour : (4u32 : stdgo.GoUInt), negOne : (-1 : stdgo.GoInt), three : (3 : stdgo.GoInt), ptr : stdgo.Go.pointer((0 : stdgo.GoInt)), nonNilMap : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), iface1 : stdgo.Go.asInterface(_b), nilPtr : (null : stdgo.Pointer<stdgo.GoInt>), map_ : (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), v1 : ({} : stdgo._internal.text.template.Template_v.V), v2 : ({} : stdgo._internal.text.template.Template_v.V), nilIface : (null : stdgo._internal.fmt.Fmt_stringer.Stringer) } : stdgo._internal.text.template.Template_t__struct_3.T__struct_3);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1260"
        for (__8 => _test in stdgo._internal.text.template.Template__cmptests._cmpTests) {
            var _text = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("{{if %s}}true{{else}}false{{end}}" : stdgo.GoString), stdgo.Go.toInterface(_test._expr))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("empty" : stdgo.GoString)).parse(_text?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1263"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1264"
                _t.fatalf(("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1266"
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_cmpStruct) : stdgo.Ref<stdgo._internal.text.template.Template_t__struct_3.T__struct_3>))));
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1268"
            if ((_test._ok && (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1269"
                _t.errorf(("%s errored incorrectly: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1270"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1272"
            if ((!_test._ok && (_err == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1273"
                _t.errorf(("%s did not error" : stdgo.GoString), stdgo.Go.toInterface(_test._expr));
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1274"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1276"
            if ((_b.string() : stdgo.GoString) != (_test._truth)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1277"
                _t.errorf(("%s: want %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_test._truth), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
