package stdgo._internal.go.types;
function _writeSigExpr(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _sig:stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L172"
        _buf.writeByte((40 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L173"
        stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr (@:checkr _sig ?? throw "null pointer dereference").params ?? throw "null pointer dereference").list, (", " : stdgo.GoString), false);
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L174"
        _buf.writeByte((41 : stdgo.GoUInt8));
        var _res = (@:checkr _sig ?? throw "null pointer dereference").results;
        var _n = (_res.numFields() : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L178"
        if (_n == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L180"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L183"
        _buf.writeByte((32 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L184"
        if (((_n == (1 : stdgo.GoInt)) && ((@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").names.length == (0 : stdgo.GoInt)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L186"
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr (@:checkr _res ?? throw "null pointer dereference").list[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").type);
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L187"
            return;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L191"
        _buf.writeByte((40 : stdgo.GoUInt8));
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L192"
        stdgo._internal.go.types.Types__writefieldlist._writeFieldList(_buf, (@:checkr _res ?? throw "null pointer dereference").list, (", " : stdgo.GoString), false);
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L193"
        _buf.writeByte((41 : stdgo.GoUInt8));
    }
