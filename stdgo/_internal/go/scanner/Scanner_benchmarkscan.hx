package stdgo._internal.go.scanner;
function benchmarkScan(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L877"
        _b.stopTimer();
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var _file = _fset.addFile((stdgo.Go.str() : stdgo.GoString)?.__copy__(), _fset.base(), (stdgo._internal.go.scanner.Scanner__source._source.length));
        var _s:stdgo._internal.go.scanner.Scanner_scanner.Scanner = ({} : stdgo._internal.go.scanner.Scanner_scanner.Scanner);
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L881"
        _b.startTimer();
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L882"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L883"
                _s.init(_file, stdgo._internal.go.scanner.Scanner__source._source, null, (1u32 : stdgo._internal.go.scanner.Scanner_mode.Mode));
//"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L884"
                while (true) {
                    var __tmp__ = _s.scan(), __40:stdgo._internal.go.token.Token_pos.Pos = __tmp__._0, _tok:stdgo._internal.go.token.Token_token.Token = __tmp__._1, __41:stdgo.GoString = __tmp__._2;
                    //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L886"
                    if (_tok == ((1 : stdgo._internal.go.token.Token_token.Token))) {
                        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L887"
                        break;
                    };
                };
                _i++;
            };
        };
    }
