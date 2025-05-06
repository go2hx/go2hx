package stdgo._internal.go.printer;
function _identCount(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo.GoInt {
        var _n = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L357"
        for (_ in stdgo._internal.go.printer.Printer__idents._idents(_f)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L358"
            _n++;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L360"
        return _n;
    }
