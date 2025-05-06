package stdgo._internal.go.format;
function testNode(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var __tmp__ = stdgo._internal.os.Os_readfile.readFile(("format_test.go" : stdgo.GoString)), _src:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L42"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L43"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _fset = stdgo._internal.go.token.Token_newfileset.newFileSet();
        var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, ("format_test.go" : stdgo.GoString), stdgo.Go.toInterface(_src), (4u32 : stdgo._internal.go.parser.Parser_mode.Mode)), _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L48"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L49"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L54"
        {
            _err = stdgo._internal.go.format.Format_node.node(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file)));
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L55"
                _t.fatal(stdgo.Go.toInterface(("Node failed:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/format_test.go#L58"
        stdgo._internal.go.format.Format__diff._diff(_t, _buf.bytes(), _src);
    }
