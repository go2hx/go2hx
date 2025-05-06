package stdgo._internal.go.format;
function node(_dst:stdgo._internal.io.Io_writer.Writer, _fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _node:stdgo.AnyInterface):stdgo.Error {
        var _file:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>);
        var _cnode:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>);
        //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L57"
        {
            final __type__ = _node;
            if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>))) {
                var _n:stdgo.Ref<stdgo._internal.go.ast.Ast_file.File> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>) : __type__.__underlying__().value);
                _file = _n;
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>))) {
                var _n:stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L61"
                {
                    var __tmp__ = try {
                        { _0 : (stdgo.Go.typeAssert(((@:checkr _n ?? throw "null pointer dereference").node : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : true };
                    } catch(_) {
                        { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_file.File>), _1 : false };
                    }, _f = __tmp__._0, _ok = __tmp__._1;
                    if (_ok) {
                        _file = _f;
                        _cnode = _n;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L68"
        if ((({
            final value = _file;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        }) && stdgo._internal.go.format.Format__hasunsortedimports._hasUnsortedImports(_file) : Bool)) {
            var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
            var _err = (stdgo._internal.go.format.Format__config._config.fprint(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)), _fset, stdgo.Go.toInterface(stdgo.Go.asInterface(_file))) : stdgo.Error);
            //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L73"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L74"
                return _err;
            };
            {
                var __tmp__ = stdgo._internal.go.parser.Parser_parsefile.parseFile(_fset, (stdgo.Go.str() : stdgo.GoString)?.__copy__(), stdgo.Go.toInterface(_buf.bytes()), (68u32 : stdgo._internal.go.parser.Parser_mode.Mode));
                _file = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L77"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L79"
                return stdgo._internal.fmt.Fmt_errorf.errorf(("format.Node internal error (%s)" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L81"
            stdgo._internal.go.ast.Ast_sortimports.sortImports(_fset, _file);
            _node = stdgo.Go.toInterface(stdgo.Go.asInterface(_file));
            //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L85"
            if (({
                final value = _cnode;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _node = stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({ node : stdgo.Go.toInterface(stdgo.Go.asInterface(_file)), comments : (@:checkr _cnode ?? throw "null pointer dereference").comments } : stdgo._internal.go.printer.Printer_commentednode.CommentedNode)) : stdgo.Ref<stdgo._internal.go.printer.Printer_commentednode.CommentedNode>)));
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/format/format.go#L90"
        return stdgo._internal.go.format.Format__config._config.fprint(_dst, _fset, _node);
    }
