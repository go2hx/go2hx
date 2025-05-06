package stdgo._internal.go.scanner;
function _checkPos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>, _lit:stdgo.GoString, _p:stdgo._internal.go.token.Token_pos.Pos, _expected:stdgo._internal.go.token.Token_position.Position):Void {
        var _pos = (stdgo._internal.go.scanner.Scanner__fset._fset.position(_p)?.__copy__() : stdgo._internal.go.token.Token_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L211"
        if (((_pos.filename != _expected.filename) && (stdgo._internal.path.filepath.Filepath_clean.clean(_pos.filename?.__copy__()) != stdgo._internal.path.filepath.Filepath_clean.clean(_expected.filename?.__copy__())) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L212"
            _t.errorf(("bad filename for %q: got %s, expected %s" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.filename), stdgo.Go.toInterface(_expected.filename));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L214"
        if (_pos.offset != (_expected.offset)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L215"
            _t.errorf(("bad position for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.offset), stdgo.Go.toInterface(_expected.offset));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L217"
        if (_pos.line != (_expected.line)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L218"
            _t.errorf(("bad line for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_expected.line));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L220"
        if (_pos.column != (_expected.column)) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L221"
            _t.errorf(("bad column for %q: got %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_lit), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_expected.column));
        };
    }
