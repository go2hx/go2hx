package stdgo._internal.go.printer;
function benchmarkPrintFile(_b:stdgo.Ref<stdgo._internal.testing.Testing_b.B>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L72"
        if (({
            final value = stdgo._internal.go.printer.Printer__filenode._fileNode;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L73"
            stdgo._internal.go.printer.Printer__initialize._initialize();
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L75"
        _b.reportAllocs();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L76"
        _b.setBytes(stdgo._internal.go.printer.Printer__filesize._fileSize);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L77"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (@:checkr _b ?? throw "null pointer dereference").n : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L78"
                stdgo._internal.go.printer.Printer__testprint._testprint(stdgo._internal.io.Io_discard.discard, stdgo.Go.asInterface(stdgo._internal.go.printer.Printer__filenode._fileNode));
                _i++;
            };
        };
    }
