package stdgo._internal.text.template;
function testExecutePanicDuringCall(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _funcs = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            x.set(("doPanic" : stdgo.GoString), stdgo.Go.toInterface(function():stdgo.GoString {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1654"
                throw stdgo.Go.toInterface(("custom panic string" : stdgo.GoString));
            }));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var _tests = (new stdgo.Slice<stdgo._internal.text.template.Template_t__struct_6.T__struct_6>(6, 6, ...[({ _name : ("direct func call panics" : stdgo.GoString), _input : ("{{doPanic}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>))), _wantErr : ("template: t:1:2: executing \"t\" at <doPanic>: error calling doPanic: custom panic string" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6), ({ _name : ("indirect func call panics" : stdgo.GoString), _input : ("{{call doPanic}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>))), _wantErr : ("template: t:1:7: executing \"t\" at <doPanic>: error calling doPanic: custom panic string" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6), ({ _name : ("direct method call panics" : stdgo.GoString), _input : ("{{.GetU}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>))), _wantErr : ("template: t:1:2: executing \"t\" at <.GetU>: error calling GetU: runtime error: invalid memory address or nil pointer dereference" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6), ({ _name : ("indirect method call panics" : stdgo.GoString), _input : ("{{call .GetU}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface((null : stdgo.Ref<stdgo._internal.text.template.Template_t_.T_>))), _wantErr : ("template: t:1:7: executing \"t\" at <.GetU>: error calling GetU: runtime error: invalid memory address or nil pointer dereference" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6), ({ _name : ("func field call panics" : stdgo.GoString), _input : ("{{call .PanicFunc}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tval._tVal)), _wantErr : ("template: t:1:2: executing \"t\" at <call .PanicFunc>: error calling call: test panic" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6), ({ _name : ("method call on nil interface" : stdgo.GoString), _input : ("{{.NonEmptyInterfaceNil.Method0}}" : stdgo.GoString), _data : stdgo.Go.toInterface(stdgo.Go.asInterface(stdgo._internal.text.template.Template__tval._tVal)), _wantErr : ("template: t:1:23: executing \"t\" at <.NonEmptyInterfaceNil.Method0>: nil pointer evaluating template.I.Method0" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _input : ("" : stdgo.GoString), _data : (null : stdgo.AnyInterface), _wantErr : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_6.T__struct_6)])) : stdgo.Slice<stdgo._internal.text.template.Template_t__struct_6.T__struct_6>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1694"
        for (__8 => _tc in _tests) {
            var _b = (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>);
            var __tmp__ = stdgo._internal.text.template.Template_new_.new_(("t" : stdgo.GoString)).funcs(_funcs).parse(_tc._input?.__copy__()), _tmpl:stdgo.Ref<stdgo._internal.text.template.Template_template.Template> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1697"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1698"
                _t.fatalf(("parse error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            _err = _tmpl.execute(stdgo.Go.asInterface(_b), _tc._data);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1701"
            if (_err == null) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1702"
                _t.errorf(("%s: expected error; got none" : stdgo.GoString), stdgo.Go.toInterface(_tc._name));
            } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), _tc._wantErr?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1704"
                if (stdgo._internal.text.template.Template__debug._debug.value) {
                    //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1705"
                    stdgo._internal.fmt.Fmt_printf.printf(("%s: test execute error: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_err));
                };
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L1707"
                _t.errorf(("%s: expected error:\n%s\ngot:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_tc._name), stdgo.Go.toInterface(_tc._wantErr), stdgo.Go.toInterface(_err));
            };
        };
    }
