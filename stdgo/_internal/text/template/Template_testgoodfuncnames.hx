package stdgo._internal.text.template;
function testGoodFuncNames(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _names = (new stdgo.Slice<stdgo.GoString>(5, 5, ...[("_" : stdgo.GoString), ("a" : stdgo.GoString), ("a1" : stdgo.GoString), ("a1" : stdgo.GoString), ("Ӵ" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (__8 => _name in _names) {
            var _tmpl = @:check2r stdgo._internal.text.template.Template_new_.new_(("X" : stdgo.GoString)).funcs((({
                final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
                x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
                x.set(_name, stdgo.Go.toInterface(stdgo._internal.text.template.Template__funcnametestfunc._funcNameTestFunc));
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_funcmap.FuncMap));
            if ((_tmpl == null || (_tmpl : Dynamic).__nil__)) {
                @:check2r _t.fatalf(("nil result for %q" : stdgo.GoString), stdgo.Go.toInterface(_name));
            };
        };
    }
