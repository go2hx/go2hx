package stdgo._internal.go.types;
function testError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _err:stdgo._internal.go.types.Types_t_error_.T_error_ = ({} : stdgo._internal.go.types.Types_t_error_.T_error_);
        var _want = (("no error" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L14"
        {
            var _got = ((_err.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L15"
                _t.errorf(("empty error: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _want = ("0: foo 42" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L19"
        _err._errorf(stdgo._internal.go.types.Types__nopos._nopos, ("foo %d" : stdgo.GoString), stdgo.Go.toInterface((42 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L20"
        {
            var _got = ((_err.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L21"
                _t.errorf(("simple error: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
        _want = ("0: foo 42\n\tbar 43" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L25"
        _err._errorf(stdgo._internal.go.types.Types__nopos._nopos, ("bar %d" : stdgo.GoString), stdgo.Go.toInterface((43 : stdgo.GoInt)));
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L26"
        {
            var _got = ((_err.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors_test.go#L27"
                _t.errorf(("simple error: got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
