package stdgo._internal.text.template;
function _testExecute(_execTests:stdgo.Slice<stdgo._internal.text.template.Template_t_exectest.T_execTest>, _template:stdgo.Ref<stdgo._internal.text.template.Template_template.Template>, _t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        var _funcs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("add" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__add._add));
x.set(("count" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__count._count));
x.set(("dddArg" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__dddarg._dddArg));
x.set(("die" : stdgo.GoString), stdgo.Go.toInterface(function():Bool {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L783"
                throw stdgo.Go.toInterface(("die" : stdgo.GoString));
            }));
x.set(("echo" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__echo._echo));
x.set(("makemap" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__makemap._makemap));
x.set(("mapOfThree" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__mapofthree._mapOfThree));
x.set(("oneArg" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__onearg._oneArg));
x.set(("returnInt" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__returnint._returnInt));
x.set(("stringer" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__stringer._stringer));
x.set(("twoArgs" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__twoargs._twoArgs));
x.set(("typeOf" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__typeof._typeOf));
x.set(("valueString" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__valuestring._valueString));
x.set(("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__vfunc._vfunc));
x.set(("zeroArgs" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__zeroargs._zeroArgs));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_funcmap.FuncMap);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L796"
        for (__8 => _test in _execTests) {
            var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_template.Template>);
            var _err:stdgo.Error = (null : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L799"
            if (({
                final value = _template;
                (value == null || (value : Dynamic).__nil__);
            })) {
                {
                    var __tmp__ = stdgo._internal.text.template.Template_new_.new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _template.new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L804"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L805"
                _t.errorf(("%s: parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L806"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L808"
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), _test._data);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L810"
            if ((!_test._ok && (_err == null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L812"
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L813"
                continue;
            } else if ((_test._ok && (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L815"
                _t.errorf(("%s: unexpected execute error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L816"
                continue;
            } else if ((!_test._ok && (_err != null) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L819"
                if (stdgo._internal.text.template.Template__debug._debug.value) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L820"
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
            };
            var _result = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L824"
            if (_result != (_test._output)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L825"
                _t.errorf(("%s: expected\n\t%q\ngot\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._output), stdgo.Go.toInterface(_result));
            };
        };
    }
