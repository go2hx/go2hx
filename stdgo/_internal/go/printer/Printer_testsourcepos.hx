package stdgo._internal.go.printer;
function testSourcePos(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, ("src" : stdgo.GoString), stdgo.Go.toInterface(("\npackage p\nimport ( \"go/printer\"; \"math\" )\nconst pi = 3.14; var x = 0\ntype t struct{ x, y, z int; u, v, w float32 }\nfunc (t *t) foo(a, b, c int) int {\n\treturn a*t.x + b*t.y +\n\t\t// two extra lines here\n\t\t// ...\n\t\tc*t.z\n}\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f1:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L382"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L383"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _err = (stdgo.Go.setRef(({ mode : (12u32 : stdgo._internal.go.printer.Printer_mode.Mode), tabwidth : (8 : stdgo.GoInt) } : stdgo._internal.go.printer.Printer_config.Config)) : stdgo.Ref<stdgo._internal.go.printer.Printer_config.Config>).fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f1)));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L389"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L390"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), (0u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f2:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L396"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L397"
            _t.fatalf(("%s\n%s" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_buf.bytes()));
        };
        var _n1 = (stdgo._internal.go.printer.Printer__identcount._identCount(_f1) : stdgo.GoInt);
        var _n2 = (stdgo._internal.go.printer.Printer__identcount._identCount(_f2) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L406"
        if (_n1 == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L407"
            _t.fatal(stdgo.Go.toInterface(("got no idents" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L409"
        if (_n2 != (_n1)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L410"
            _t.errorf(("got %d idents; want %d" : stdgo.GoString), stdgo.Go.toInterface(_n2), stdgo.Go.toInterface(_n1));
        };
        var _i2range = stdgo._internal.go.printer.Printer__idents._idents(_f2);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L415"
        for (_i1 in stdgo._internal.go.printer.Printer__idents._idents(_f1)) {
            var _i2 = _i2range.__get__();
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L418"
            if ((@:checkr _i2 ?? throw "null pointer dereference").name != ((@:checkr _i1 ?? throw "null pointer dereference").name)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L419"
                _t.errorf(("got ident %s; want %s" : stdgo.GoString), stdgo.Go.toInterface((@:checkr _i2 ?? throw "null pointer dereference").name), stdgo.Go.toInterface((@:checkr _i1 ?? throw "null pointer dereference").name));
            };
            var _l1 = (stdgo._internal.go.printer.Printer__fset._fset.position(_i1.pos()).line : stdgo.GoInt);
            var _l2 = (stdgo._internal.go.printer.Printer__fset._fset.position(_i2.pos()).line : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L425"
            if (_l2 != (_l1)) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L426"
                _t.errorf(("got line %d; want %d for %s" : stdgo.GoString), stdgo.Go.toInterface(_l2), stdgo.Go.toInterface(_l1), stdgo.Go.toInterface((@:checkr _i1 ?? throw "null pointer dereference").name));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L430"
        if (_t.failed()) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L431"
            _t.logf(("\n%s" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
        };
    }
