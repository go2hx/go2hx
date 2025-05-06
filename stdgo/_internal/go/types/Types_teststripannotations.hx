package stdgo._internal.go.types;
function testStripAnnotations(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L32"
        for (__0 => _test in (new stdgo.Slice<stdgo._internal.go.types.Types_t__struct_0.T__struct_0>(5, 5, ...[({ _in : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _want : (stdgo.Go.str() : stdgo.GoString)?.__copy__() } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0), ({ _in : ("   " : stdgo.GoString), _want : ("   " : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0), ({ _in : ("foo" : stdgo.GoString), _want : ("foo" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0), ({ _in : ("foo₀" : stdgo.GoString), _want : ("foo" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0), ({ _in : ("foo(T₀)" : stdgo.GoString), _want : ("foo(T)" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _in : ("" : stdgo.GoString), _want : ("" : stdgo.GoString) } : stdgo._internal.go.types.Types_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.go.types.Types_t__struct_0.T__struct_0>)) {
            var _got = (stdgo._internal.go.types.Types__stripannotations._stripAnnotations(_test._in?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L42"
            if (_got != (_test._want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L43"
                _t.errorf(("%q: got %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_test._in), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_test._want));
            };
        };
    }
