package stdgo._internal.go.format;
function testPartial(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L169"
        for (__0 => _src in stdgo._internal.go.format.Format__tests._tests) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L170"
            if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_src?.__copy__(), ("ERROR" : stdgo.GoString))) {
                _src = (_src.__slice__((5 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                var __tmp__ = stdgo._internal.go.format.Format_string.string(_src?.__copy__()), _res:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L174"
                if (((_err == null) && (_res == _src) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L175"
                    _t.errorf(("formatting succeeded but was expected to fail:\n%q" : stdgo.GoString), stdgo.Go.toInterface(_src));
                };
            } else {
                var __tmp__ = stdgo._internal.go.format.Format_string.string(_src?.__copy__()), _res:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L180"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L181"
                    _t.errorf(("formatting failed (%s):\n%q" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_src));
                } else if (_res != (_src)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L183"
                    _t.errorf(("formatting incorrect:\nsource: %q\nresult: %q" : stdgo.GoString), stdgo.Go.toInterface(_src), stdgo.Go.toInterface(_res));
                };
            };
        };
    }
