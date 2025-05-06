package stdgo._internal.go.printer;
function _testprint(_out:stdgo._internal.io.Io_writer.Writer, _node:stdgo._internal.go.ast.Ast_node.Node):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L30"
        {
            var _err = ((stdgo.Go.setRef((new stdgo._internal.go.printer.Printer_config.Config((1073741830u32 : stdgo._internal.go.printer.Printer_mode.Mode), (8 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(_out, stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(_node)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/performance_test.go#L31"
                stdgo._internal.log.Log_fatalf.fatalf(("print error: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
