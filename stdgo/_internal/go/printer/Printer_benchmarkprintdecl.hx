package stdgo._internal.go.printer;
function benchmarkPrintDecl(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L83"
        if (stdgo._internal.go.printer.Printer__declnode._declNode == null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L84"
            stdgo._internal.go.printer.Printer__initialize._initialize();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L86"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L87"
        _b.setBytes(stdgo._internal.go.printer.Printer__declsize._declSize);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L88"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L89"
                stdgo._internal.go.printer.Printer__testprint._testprint(stdgo._internal.io.Io_discard.discard, stdgo._internal.go.printer.Printer__declnode._declNode);
                _i++;
            };
        };
    }
