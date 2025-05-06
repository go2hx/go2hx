package stdgo._internal.go.printer;
function testCommentedNode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, ("input.go" : stdgo.GoString), stdgo.Go.toInterface(("package main\n\nfunc foo() {\n\t// comment inside func\n}\n\n// leading comment\ntype bar int // comment2\n\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L685"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L686"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").decls[(0 : stdgo.GoInt)]), comments : (@:checkr _f ?? throw "null pointer dereference").comments } : stdgo._internal.go.printer.Printer_commentednode.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>))));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L692"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L693"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L696"
        if ((_buf.string() : stdgo.GoString) != (("func foo() {\n\t// comment inside func\n}" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L697"
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("func foo() {\n\t// comment inside func\n}" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L700"
        _buf.reset();
        _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").decls[(1 : stdgo.GoInt)]), comments : (@:checkr _f ?? throw "null pointer dereference").comments } : stdgo._internal.go.printer.Printer_commentednode.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>))));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L703"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L704"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L707"
        if ((_buf.string() : stdgo.GoString) != (("// leading comment\ntype bar int\t// comment2\n" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L708"
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_buf.string() : stdgo.GoString)), stdgo.Go.toInterface(("// leading comment\ntype bar int\t// comment2\n" : stdgo.GoString)));
        };
    }
