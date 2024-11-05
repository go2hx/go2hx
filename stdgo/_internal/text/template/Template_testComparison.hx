package stdgo._internal.text.template;
function testComparison(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _cmpStruct = ({ uthree : (3u32 : stdgo.GoUInt), ufour : (4u32 : stdgo.GoUInt), negOne : (-1 : stdgo.GoInt), three : (3 : stdgo.GoInt), ptr : stdgo.Go.pointer((0 : stdgo.GoInt)), nonNilMap : ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), iface1 : stdgo.Go.asInterface(_b), nilPtr : (null : stdgo.Pointer<stdgo.GoInt>), map_ : (null : stdgo.GoMap<stdgo.GoInt, stdgo.GoInt>), v1 : ({} : stdgo._internal.text.template.Template_V.V), v2 : ({} : stdgo._internal.text.template.Template_V.V), nilIface : (null : stdgo._internal.fmt.Fmt_Stringer.Stringer) } : stdgo._internal.text.template.Template_T__struct_3.T__struct_3);
        for (__8 => _test in stdgo._internal.text.template.Template__cmpTests._cmpTests) {
            var _text = (stdgo._internal.fmt.Fmt_sprintf.sprintf(("{{if %s}}true{{else}}false{{end}}" : stdgo.GoString), stdgo.Go.toInterface(_test._expr))?.__copy__() : stdgo.GoString);
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("empty" : stdgo.GoString)).parse(_text?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                _t.fatalf(("%q: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
            };
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_cmpStruct) : stdgo.Ref<stdgo._internal.text.template.Template_T__struct_3.T__struct_3>))));
            if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s errored incorrectly: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_err));
                continue;
            };
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s did not error" : stdgo.GoString), stdgo.Go.toInterface(_test._expr));
                continue;
            };
            if ((_b.string() : stdgo.GoString) != (_test._truth)) {
                _t.errorf(("%s: want %s; got %s" : stdgo.GoString), stdgo.Go.toInterface(_test._expr), stdgo.Go.toInterface(_test._truth), stdgo.Go.toInterface((_b.string() : stdgo.GoString)));
            };
        };
    }
