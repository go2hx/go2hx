package stdgo._internal.go.printer;
function _format(_src:stdgo.Slice<stdgo.GoUInt8>, _mode:stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L48"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L49"
            return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("parse: %s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_src)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L53"
        if ((_mode & (1u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L54"
            stdgo._internal.go.ast.Ast_fileexports.fileExports(_f);
            (@:checkr _f ?? throw "null pointer dereference").comments = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        };
        var _cfg = ({ tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer_config.Config);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L60"
        if ((_mode & (2u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode))) {
            _cfg.mode = (_cfg.mode | ((1u32 : stdgo._internal.go.printer.Printer_mode.Mode)) : stdgo._internal.go.printer.Printer_mode.Mode);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L63"
        if ((_mode & (4u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode) != ((0u32 : stdgo._internal.go.printer.Printer_t_checkmode.T_checkMode))) {
            _cfg.mode = (_cfg.mode | ((1073741824u32 : stdgo._internal.go.printer.Printer_mode.Mode)) : stdgo._internal.go.printer.Printer_mode.Mode);
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L69"
        {
            var _err = (_cfg.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L70"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("print: %s" : stdgo.GoString), stdgo.Go.toInterface(_err)) };
            };
        };
        var _res = _buf.bytes();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L75"
        {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_res), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), __0:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L76"
                return { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("re-parse: %s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_buf.bytes())) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L79"
        return { _0 : _res, _1 : (null : stdgo.Error) };
    }
