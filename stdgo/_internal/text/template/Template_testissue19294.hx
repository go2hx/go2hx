package stdgo._internal.text.template;
function testIssue19294(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _inlined = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(("stylesheet" : stdgo.GoString), ("{{define \"stylesheet\"}}stylesheet{{end}}" : stdgo.GoString));
x.set(("xhtml" : stdgo.GoString), ("{{block \"stylesheet\" .}}{{end}}" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        var _all = (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("stylesheet" : stdgo.GoString), ("xhtml" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L437"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("title.xhtml" : stdgo.GoString)).parse(("{{template \"xhtml\" .}}" : stdgo.GoString)), _res:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
//"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L439"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L440"
                    _t.fatal(stdgo.Go.toInterface(_err));
                };
//"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L442"
                for (__16 => _name in _all) {
                    var __tmp__ = _res.new_(_name?.__copy__()).parse((_inlined[_name] ?? ("" : stdgo.GoString))?.__copy__()), __33:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L444"
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L445"
                        _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
//"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L449"
                _res.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
//"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L450"
                if ((_buf.string() : stdgo.GoString) != (("stylesheet" : stdgo.GoString))) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L451"
                    _t.fatalf(("iteration %d: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("stylesheet" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
