package stdgo._internal.go.printer;
function testParenthesizedDecl(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("package p; var ( a float64; b int )" : stdgo.GoString)), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L742"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L743"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L749"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L750"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _original = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L755"
        {
            var _i = (0 : stdgo.GoInt);
            while (_i != (((@:checkr _f ?? throw "null pointer dereference").decls.length))) {
                (@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").decls[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_gendecl.GenDecl>) ?? throw "null pointer dereference").lparen = (0 : stdgo._internal.go.token.Token_pos.Pos);
                _i++;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L758"
        _buf.reset();
        _err = stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L760"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L761"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _noparen = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L765"
        if (_noparen != (_original)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L766"
            _t.errorf(("got %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_noparen), stdgo.Go.toInterface(_original));
        };
    }
