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
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (100 : stdgo.GoInt) : Bool)) {
                var __tmp__ = @:check2r stdgo._internal.text.template.Template_new_.new_(("title.xhtml" : stdgo.GoString)).parse(("{{template \"xhtml\" .}}" : stdgo.GoString)), _res:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
if (_err != null) {
                    @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                };
for (__16 => _name in _all) {
                    var __tmp__ = @:check2r @:check2r _res.new_(_name?.__copy__()).parse((_inlined[_name] ?? ("" : stdgo.GoString))?.__copy__()), __33:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        @:check2r _t.fatal(stdgo.Go.toInterface(_err));
                    };
                };
var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
@:check2r _res.execute(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>)), stdgo.Go.toInterface((0 : stdgo.GoInt)));
if ((@:check2 _buf.string() : stdgo.GoString) != (("stylesheet" : stdgo.GoString))) {
                    @:check2r _t.fatalf(("iteration %d: got %q; expected %q" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface((@:check2 _buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("stylesheet" : stdgo.GoString)));
                };
                _i++;
            };
        };
    }
