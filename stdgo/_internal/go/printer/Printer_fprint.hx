package stdgo._internal.go.printer;
function fprint(_output:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer.go#L1435"
        return (stdgo.Go.setRef(({ tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(_output, _fset, _node);
    }
