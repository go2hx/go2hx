package stdgo._internal.go.token;
function testFileSetPastEnd(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L198"
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L199"
            _fset.addFile(_test._filename?.__copy__(), _fset.base(), _test._size);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L201"
        {
            var _f = _fset.file((_fset.base() : stdgo._internal.go.token.Token_pos.Pos));
            if (({
                final value = _f;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L202"
                _t.errorf(("got %v, want nil" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
            };
        };
    }
