package stdgo._internal.go.printer;
function testFuncType(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _src = (stdgo.Go.setRef(({ name : (stdgo.Go.setRef(({ name : ("p" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), decls : (new stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>(1, 1, ...[stdgo.Go.asInterface((stdgo.Go.setRef(({ name : (stdgo.Go.setRef(({ name : ("f" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>), type : (stdgo.Go.setRef((new stdgo._internal.go.ast.Ast_functype.FuncType() : stdgo._internal.go.ast.Ast_functype.FuncType)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>) } : stdgo._internal.go.ast.Ast_funcdecl.FuncDecl)) : stdgo.Ref<stdgo._internal.go.ast.Ast_funcdecl.FuncDecl>))]) : stdgo.Slice<stdgo._internal.go.ast.Ast_decl.Decl>) } : stdgo._internal.go.ast.Ast_file.File)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L592"
        {
            var _err = (stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_src))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L593"
                _t.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _got = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L602"
        if (_got != (("package p\n\nfunc f()\n" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L603"
            _t.fatalf(("got:\n%s\nwant:\n%s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(("package p\n\nfunc f()\n" : stdgo.GoString)));
        };
    }
