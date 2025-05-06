package stdgo._internal.go.printer;
@:keep var __init_go2hx__ = {
        try {
            var __tmp__0 = stdgo._internal.go.printer.Printer__anewline._aNewline, __tmp__1 = stdgo._internal.go.printer.Printer__printerpool._printerPool, __tmp__2 = stdgo._internal.go.printer.Printer__update._update, __tmp__3 = stdgo._internal.go.printer.Printer__fset._fset, __tmp__4 = stdgo._internal.go.printer.Printer__data._data, __tmp__5 = stdgo._internal.go.printer.Printer__decls._decls, __tmp__6 = stdgo._internal.go.printer.Printer__stmts._stmts;
            {};
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L250"
            {
                var _err = (stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), stdgo._internal.go.printer.Printer__fset._fset, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ name : ("foobar" : stdgo.GoString) } : stdgo._internal.go.ast.Ast_ident.Ident)) : stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>)))) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L251"
                    throw stdgo.Go.toInterface(_err);
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L255"
            {
                var _s = ((_buf.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
                if ((true && (_s != ("foobar" : stdgo.GoString)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L256"
                    throw stdgo.Go.toInterface((((("got " : stdgo.GoString) + _s?.__copy__() : stdgo.GoString) + (", want " : stdgo.GoString)?.__copy__() : stdgo.GoString) + ("foobar" : stdgo.GoString)?.__copy__() : stdgo.GoString));
                };
            };
        } catch(__exception__) if (__exception__.message != "__return__") throw __exception__;
        true;
    };
