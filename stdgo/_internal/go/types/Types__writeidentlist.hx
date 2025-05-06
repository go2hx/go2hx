package stdgo._internal.go.types;
function _writeIdentList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_ident.Ident>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L223"
        for (_i => _x in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L224"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L225"
                _buf.writeString((", " : stdgo.GoString));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L227"
            _buf.writeString((@:checkr _x ?? throw "null pointer dereference").name?.__copy__());
        };
    }
