package stdgo._internal.go.token;
function testPositions(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L94"
        for (__4 => _test in stdgo._internal.go.token.Token__tests._tests) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L96"
            if (((_test._source != null) && (_test._source.length != _test._size) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L97"
                _t.errorf(("%s: inconsistent test case: got file size %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_test._filename), stdgo.Go.toInterface((_test._source.length)), stdgo.Go.toInterface(_test._size));
            };
            var _f = _fset.addFile(_test._filename?.__copy__(), (_fset.base() + (7 : stdgo.GoInt) : stdgo.GoInt), _test._size);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L102"
            if (_f.name() != (_test._filename)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L103"
                _t.errorf(("got filename %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_test._filename));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L105"
            if (_f.size() != (_test._size)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L106"
                _t.errorf(("%s: got file size %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.size()), stdgo.Go.toInterface(_test._size));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L108"
            if (_fset.file(_f.pos((0 : stdgo.GoInt))) != (_f)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L109"
                _t.errorf(("%s: f.Pos(0) was not found in f" : stdgo.GoString), stdgo.Go.toInterface(_f.name()));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L113"
            for (_i => _offset in _test._lines) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L114"
                _f.addLine(_offset);
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L115"
                if (_f.lineCount() != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L116"
                    _t.errorf(("%s, AddLine: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L119"
                _f.addLine(_offset);
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L120"
                if (_f.lineCount() != ((_i + (1 : stdgo.GoInt) : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L121"
                    _t.errorf(("%s, AddLine: got unchanged line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_i + (1 : stdgo.GoInt) : stdgo.GoInt)));
                };
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L123"
                stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, (_test._lines.__slice__((0 : stdgo.GoInt), (_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L127"
            {
                var _ok = (_f.setLines(_test._lines) : Bool);
                if (!_ok) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L128"
                    _t.errorf(("%s: SetLines failed" : stdgo.GoString), stdgo.Go.toInterface(_f.name()));
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L130"
            if (_f.lineCount() != ((_test._lines.length))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L131"
                _t.errorf(("%s, SetLines: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L133"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_f.lines()), stdgo.Go.toInterface(_test._lines))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L134"
                _t.errorf(("%s, Lines after SetLines(v): got %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lines()), stdgo.Go.toInterface(_test._lines));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L136"
            stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, _test._lines);
            var _src = _test._source;
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L140"
            if (_src == null) {
                _src = stdgo._internal.go.token.Token__maketestsource._makeTestSource(_test._size, _test._lines);
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L144"
            _f.setLinesForContent(_src);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L145"
            if (_f.lineCount() != ((_test._lines.length))) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L146"
                _t.errorf(("%s, SetLinesForContent: got line count %d; want %d" : stdgo.GoString), stdgo.Go.toInterface(_f.name()), stdgo.Go.toInterface(_f.lineCount()), stdgo.Go.toInterface((_test._lines.length)));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position_test.go#L148"
            stdgo._internal.go.token.Token__verifypositions._verifyPositions(_t, _fset, _f, _test._lines);
        };
    }
