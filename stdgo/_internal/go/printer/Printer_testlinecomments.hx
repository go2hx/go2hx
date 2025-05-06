package stdgo._internal.go.printer;
function testLineComments(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        {};
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(("// comment 1\n\t// comment 2\n\t// comment 3\n\tpackage main\n\t" : stdgo.GoString)), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _f:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L224"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L225"
            throw stdgo.Go.toInterface(_err);
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L230"
        stdgo._internal.go.printer.Printer_fprint.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_f)));
        var _nlines = (0 : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L233"
        for (__0 => _ch in _buf.bytes()) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L234"
            if (_ch == ((10 : stdgo.GoUInt8))) {
                //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L235"
                _nlines++;
            };
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L240"
        if ((_nlines < (3 : stdgo.GoInt) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L241"
            _t.errorf(("got %d, expected %d\n" : stdgo.GoString), stdgo.Go.toInterface(_nlines), stdgo.Go.toInterface((3 : stdgo.GoInt)));
            //"file:///home/runner/.go/go1.21.3/src/go/printer/printer_test.go#L242"
            _t.errorf(("result:\n%s" : stdgo.GoString), stdgo.Go.toInterface(_buf.bytes()));
        };
    }
