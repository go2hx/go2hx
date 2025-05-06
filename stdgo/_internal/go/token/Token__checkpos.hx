package stdgo._internal.go.token;
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _msg:stdgo.GoString, _got:stdgo._internal.go.token.Token_position.Position, _want:stdgo._internal.go.token.Token_position.Position):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L16"
        if (_got.filename != (_want.filename)) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L17"
            _t.errorf(("%s: got filename = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.filename), stdgo.Go.toInterface(_want.filename));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L19"
        if (_got.offset != (_want.offset)) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L20"
            _t.errorf(("%s: got offset = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.offset), stdgo.Go.toInterface(_want.offset));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L22"
        if (_got.line != (_want.line)) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L23"
            _t.errorf(("%s: got line = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.line), stdgo.Go.toInterface(_want.line));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L25"
        if (_got.column != (_want.column)) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L26"
            _t.errorf(("%s: got column = %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_got.column), stdgo.Go.toInterface(_want.column));
        };
    }
