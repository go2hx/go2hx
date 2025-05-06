package stdgo._internal.go.scanner;
function testInvalidLineDirectives(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L609"
        for (__0 => _e in stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments) {
            _src = (_src + (_e._srcline)?.__copy__() : stdgo.GoString);
        };
        var s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        var _s:stdgo._internal.go.scanner.Scanner_t_segment.T_segment = ({} : stdgo._internal.go.scanner.Scanner_t_segment.T_segment);
        var _file = stdgo._internal.go.scanner.Scanner__fset._fset.addFile(stdgo._internal.path.filepath.Filepath_join.join(("dir" : stdgo.GoString), ("TestInvalidLineDirectives" : stdgo.GoString))?.__copy__(), stdgo._internal.go.scanner.Scanner__fset._fset.base(), (_src.length));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L617"
        s.init(_file, (_src : stdgo.Slice<stdgo.GoUInt8>), function(_pos:stdgo._internal.go.token.Token_position.Position, _msg:stdgo.GoString):Void {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L618"
            if (_msg != (_s._filename)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L619"
                _t.errorf(("got error %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_msg), stdgo.Go.toInterface(_s._filename));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L621"
            if (((_pos.line != _s._line) || (_pos.column != _s._column) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L622"
                _t.errorf(("got position %d:%d; want %d:%d" : stdgo.GoString), stdgo.Go.toInterface(_pos.line), stdgo.Go.toInterface(_pos.column), stdgo.Go.toInterface(_s._line), stdgo.Go.toInterface(_s._column));
            };
        }, (2u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L625"
        for (__key__ => __value__ in stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments) {
            _s = __value__;
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L626"
            s.scan();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L629"
        if (s.errorCount != ((stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments.length))) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L630"
            _t.errorf(("got %d errors; want %d" : stdgo.GoString), stdgo.Go.toInterface(s.errorCount), stdgo.Go.toInterface((stdgo._internal.go.scanner.Scanner__invalidsegments._invalidSegments.length)));
        };
    }
