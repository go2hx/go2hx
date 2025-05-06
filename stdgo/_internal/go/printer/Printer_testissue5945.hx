package stdgo._internal.go.printer;
function testIssue5945(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, ("src.go" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p   // line 2\nfunc f() {} // line 3\n\nvar x, y, z int\n\n\nfunc g() { // line 8\n}\n" : stdgo.GoString)), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f1:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L464"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L465"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = (stdgo.Go.setRef(({ mode : (12u32 : stdgo._internal.go.printer.Printer_mode.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f1)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L471"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L472"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L477"
        if (_got != (("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L478"
            _t.errorf(("got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("//line src.go:2\npackage p\n\n//line src.go:3\nfunc f() {}\n\nvar x, y, z int\n\n//line src.go:8\nfunc g() {\n}\n" : stdgo.GoString)));
        };
    }
