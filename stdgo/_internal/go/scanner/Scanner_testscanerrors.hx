package stdgo._internal.go.scanner;
function testScanErrors(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L819"
        for (__0 => _e in stdgo._internal.go.scanner.Scanner__errors._errors) {
            //"file:///home/runner/.go/go1.21.3/src/go/scanner/scanner_test.go#L820"
            stdgo._internal.go.scanner.Scanner__checkerror._checkError(_t, _e._src?.__copy__(), _e._tok, _e._pos, _e._lit?.__copy__(), _e._err?.__copy__());
        };
    }
