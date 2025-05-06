package stdgo._internal.go.printer;
function testDeclLists(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L489"
        for (__0 => _src in stdgo._internal.go.printer.Printer__decls._decls) {
            var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface((("package p;" : stdgo.GoString) + _src?.__copy__() : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L491"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L492"
                throw stdgo.Go.toInterface(_err);
            };
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface((@:checkr _file ?? throw "null pointer dereference").decls));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L497"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L498"
                throw stdgo.Go.toInterface(_err);
            };
            var _out = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L502"
            if (_out != (_src)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L503"
                _t.errorf(("\ngot : %q\nwant: %q\n" : stdgo.GoString), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_src));
            };
        };
    }
