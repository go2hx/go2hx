package stdgo._internal.text.template;
function testJSEscaping(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testCases = (new stdgo.Slice<stdgo._internal.text.template.Template_t__struct_2.T__struct_2>(8, 8, ...[({ _in : ("a" : stdgo.GoString), _exp : ("a" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("\'foo" : stdgo.GoString), _exp : ("\\\'foo" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("Go \"jump\" \\" : stdgo.GoString), _exp : ("Go \\\"jump\\\" \\\\" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("Yukihiro says \"今日は世界\"" : stdgo.GoString), _exp : ("Yukihiro says \\\"今日は世界\\\"" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("unprintable \ufffe" : stdgo.GoString), _exp : ("unprintable \\uFFFE" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("<html>" : stdgo.GoString), _exp : ("\\u003Chtml\\u003E" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("no = in attributes" : stdgo.GoString), _exp : ("no \\u003D in attributes" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2), ({ _in : ("&#x27; does not become HTML entity" : stdgo.GoString), _exp : ("\\u0026#x27; does not become HTML entity" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2)].concat([for (i in 8 ... (8 > 8 ? 8 : 8 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _exp : ("" : stdgo.GoString) } : stdgo._internal.text.template.Template_t__struct_2.T__struct_2)])) : stdgo.Slice<stdgo._internal.text.template.Template_t__struct_2.T__struct_2>);
        //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L958"
        for (__8 => _tc in _testCases) {
            var _s = (stdgo._internal.text.template.Template_jsescapestring.jSEscapeString(_tc._in?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L960"
            if (_s != (_tc._exp)) {
                //"file:///home/runner/.go/go1.21.3/src/text/template/exec_test.go#L961"
                _t.errorf(("JS escaping [%s] got [%s] want [%s]" : stdgo.GoString), stdgo.Go.toInterface(_tc._in), stdgo.Go.toInterface(_s), stdgo.Go.toInterface(_tc._exp));
            };
        };
    }
