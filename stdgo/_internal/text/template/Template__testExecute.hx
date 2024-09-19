package stdgo._internal.text.template;
function _testExecute(_execTests:stdgo.Slice<stdgo._internal.text.template.Template_T_execTest.T_execTest>, _template:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>, _t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        var _funcs = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("add" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__add._add));
x.set(("count" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__count._count));
x.set(("dddArg" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__dddArg._dddArg));
x.set(("die" : stdgo.GoString), stdgo.Go.toInterface(function():Bool {
                throw stdgo.Go.toInterface(("die" : stdgo.GoString));
            }));
x.set(("echo" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__echo._echo));
x.set(("makemap" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__makemap._makemap));
x.set(("mapOfThree" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__mapOfThree._mapOfThree));
x.set(("oneArg" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__oneArg._oneArg));
x.set(("returnInt" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__returnInt._returnInt));
x.set(("stringer" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__stringer._stringer));
x.set(("twoArgs" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__twoArgs._twoArgs));
x.set(("typeOf" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__typeOf._typeOf));
x.set(("valueString" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__valueString._valueString));
x.set(("vfunc" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__vfunc._vfunc));
x.set(("zeroArgs" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.text.template.Template__zeroArgs._zeroArgs));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>) : stdgo._internal.text.template.Template_FuncMap.FuncMap);
        for (__8 => _test in _execTests) {
            var _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_Template.Template> = (null : stdgo.Ref<stdgo._internal.text.template.Template_Template.Template>);
            var _err:stdgo.Error = (null : stdgo.Error);
            if (_template == null || (_template : Dynamic).__nil__) {
                {
                    var __tmp__ = stdgo._internal.text.template.Template_new_.new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = __tmp__._0;
                    _err = __tmp__._1;
                };
            } else {
                {
                    var __tmp__ = _template.new_(_test._name?.__copy__()).funcs(_funcs).parse(_test._input?.__copy__());
                    _tmpl = __tmp__._0;
                    _err = __tmp__._1;
                };
            };
            if (_err != null) {
                _t.errorf(("%s: parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            };
            _b.reset();
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), _test._data);
            if ((!_test._ok && (_err == null) : Bool)) {
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_test._name));
                continue;
            } else if ((_test._ok && (_err != null) : Bool)) {
                _t.errorf(("%s: unexpected execute error: %s" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_err));
                continue;
            } else if ((!_test._ok && (_err != null) : Bool)) {
                if (stdgo._internal.text.template.Template__debug._debug.value) {
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: %s\n\t%s\n" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._input), stdgo.Go.toInterface(_err));
                };
            };
            var _result = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_result != (_test._output)) {
                _t.errorf(("%s: expected\n\t%q\ngot\n\t%q" : stdgo.GoString), stdgo.Go.toInterface(_test._name), stdgo.Go.toInterface(_test._output), stdgo.Go.toInterface(_result));
            };
        };
    }
