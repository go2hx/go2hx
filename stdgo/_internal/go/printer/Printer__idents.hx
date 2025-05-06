package stdgo._internal.go.printer;
function _idents(_f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>):stdgo.Chan<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>> {
        var _v = (new stdgo._internal.go.printer.Printer_t_visitor.T_visitor(0, () -> (null : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)) : stdgo._internal.go.printer.Printer_t_visitor.T_visitor);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L347"
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L348"
                stdgo._internal.go.ast.Ast_walk.walk(stdgo.Go.asInterface(_v), stdgo.Go.asInterface(_f));
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L349"
                if (_v != null) _v.__close__();
            };
            a();
        }));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L351"
        return _v;
    }
