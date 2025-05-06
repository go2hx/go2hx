package stdgo._internal.go.token;
function testFiles(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L173"
        for (_i => _test in stdgo._internal.go.token.Token__tests._tests) {
            var _base = (_fset.base() : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L175"
            if ((_i % (2 : stdgo.GoInt) : stdgo.GoInt) == ((1 : stdgo.GoInt))) {
                _base = (-1 : stdgo.GoInt);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L180"
            _fset.addFile(_test._filename?.__copy__(), _base, _test._size);
            var _j = (0 : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L182"
            _fset.iterate(function(_f:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Bool {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L183"
                if (_f.name() != (stdgo._internal.go.token.Token__tests._tests[(_j : stdgo.GoInt)]._filename)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L184"
                    _t.errorf(("got filename = %s; want %s" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(stdgo._internal.go.token.Token__tests._tests[(_j : stdgo.GoInt)]._filename));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L186"
                _j++;
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L187"
                return true;
            });
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L189"
            if (_j != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L190"
                _t.errorf(("got %d files; want %d" : stdgo.GoString), stdgo.Go.toInterface(_j), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
            };
        };
    }
