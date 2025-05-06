package stdgo._internal.go.printer;
function testIssue32854(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src = (("package foo\n\nfunc f() {\n        return Composite{\n                call(),\n        }\n}" : stdgo.GoString) : stdgo.GoString);
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_src), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L782"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L783"
            throw stdgo.Go.toInterface(_err);
        };
        var _fd = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _file ?? throw "null pointer dereference").decls[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>);
        var _ret = (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr (@:checkr _fd ?? throw "null pointer dereference").body ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_returnstmt.ReturnStmt>);
        (@:checkr _ret ?? throw "null pointer dereference").results[(0 : stdgo.GoInt)] = (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _ret ?? throw "null pointer dereference").results[(0 : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_compositelit.CompositeLit>) ?? throw "null pointer dereference").elts[(0 : stdgo.GoInt)];
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L792"
        {
            var _err = (stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_ret))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L793"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _want = (("return call()" : stdgo.GoString) : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L796"
        {
            var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_want)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L797"
                _t.fatalf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
            };
        };
    }
