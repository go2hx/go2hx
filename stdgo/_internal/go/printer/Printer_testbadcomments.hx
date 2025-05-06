package stdgo._internal.go.printer;
function testBadComments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L300"
        _t.parallel();
        {};
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(stdgo._internal.go.printer.Printer__fset._fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L319"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L320"
            _t.error(stdgo.Go.toInterface(_err));
        };
        var _comment = (@:checkr (@:checkr _f ?? throw "null pointer dereference").comments[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)];
        var _pos = (_comment.pos() : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L325"
        if (stdgo._internal.go.printer.Printer__fset._fset.positionFor(_pos, false).offset != ((1 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L326"
            _t.error(stdgo.Go.toInterface(("expected offset 1" : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L329"
        stdgo._internal.go.printer.Printer__testcomment._testComment(_t, _f, ((("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString) : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("//-style comment" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L330"
        stdgo._internal.go.printer.Printer__testcomment._testComment(_t, _f, ((("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString) : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style comment */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L331"
        stdgo._internal.go.printer.Printer__testcomment._testComment(_t, _f, ((("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString) : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style \n comment */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>));
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L332"
        stdgo._internal.go.printer.Printer__testcomment._testComment(_t, _f, ((("\n// first comment - text and position changed by test\npackage p\nimport \"fmt\"\nconst pi = 3.14 // rough circle\nvar (\n\tx, y, z int = 1, 2, 3\n\tu, v float64\n)\nfunc fibo(n int) {\n\tif n < 2 {\n\t\treturn n /* seed values */\n\t}\n\treturn fibo(n-1) + fibo(n-2)\n}\n" : stdgo.GoString) : stdgo.GoString).length), (stdgo.Go.setRef(({ slash : _pos, text : ("/*-style comment \n\n\n */" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_comment.Comment)) : stdgo.Ref<stdgo._internal.go.ast.Ast_comment.Comment>));
    }
