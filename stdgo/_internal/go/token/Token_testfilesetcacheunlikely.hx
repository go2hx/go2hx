package stdgo._internal.go.token;
function testFileSetCacheUnlikely(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _offsets = (({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L209"
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            _offsets[_test._filename] = _fset.base();
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L211"
            _fset.addFile(_test._filename?.__copy__(), _fset.base(), _test._size);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L213"
        for (_file => _pos in _offsets) {
            var _f = _fset.file((_pos : stdgo._internal.go.token.Token_pos.Pos));
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L215"
            if (_f.name() != (_file)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L216"
                _t.errorf(("got %q at position %d, want %q" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_pos), stdgo.Go.toInterface(_file));
            };
        };
    }
