package stdgo._internal.text.template;
function testMultiParse(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L50"
        for (__8 => _test in stdgo._internal.text.template.Template__multiparsetests._multiParseTests) {
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("root" : stdgo.GoString)).parse(_test._input?.__copy__()), _template:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L52"
            if (((_err == null) && !_test._ok : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L54"
                _t.errorf(("%q: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L55"
                continue;
            } else if (((_err != null) && _test._ok : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L57"
                _t.errorf(("%q: unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L58"
                continue;
            } else if (((_err != null) && !_test._ok : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L61"
                if (stdgo._internal.text.template.Template__debug._debug.value) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L62"
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L64"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L66"
            if (({
                final value = _template;
                (value == null || (value : Dynamic).__nil__);
            })) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L67"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L69"
            if (((@:checkr _template ?? throw "null pointer dereference")._common._tmpl.length) != (((_test._names.length) + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L70"
                _t.errorf(("%s: wrong number of templates; wanted %d got %d" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface((_test._names.length)), stdgo.Go.toInterface(((@:checkr _template ?? throw "null pointer dereference")._common._tmpl.length)));
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L71"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L73"
            for (_i => _name in _test._names) {
                var __tmp__ = ((@:checkr _template ?? throw "null pointer dereference")._common._tmpl != null && (@:checkr _template ?? throw "null pointer dereference")._common._tmpl.__exists__(_name?.__copy__()) ? { _0 : (@:checkr _template ?? throw "null pointer dereference")._common._tmpl[_name?.__copy__()], _1 : true } : { _0 : (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>), _1 : false }), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _ok:Bool = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L75"
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L76"
                    _t.errorf(("%s: can\'t find template %q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_name));
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L77"
                    continue;
                };
                var _result = (((@:checkr _tmpl ?? throw "null pointer dereference").tree.root.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L80"
                if (_result != (_test._results[(_i : stdgo.GoInt)])) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/multi_test.go#L81"
                    _t.errorf(("%s=(%q): got\n\t%v\nexpected\n\t%v" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_result), stdgo.Go.toInterface(_test._results[(_i : stdgo.GoInt)]));
                };
            };
        };
    }
