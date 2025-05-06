package stdgo._internal.go.types;
function _writeFieldList(_buf:stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>, _list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_field.Field>>, _sep:stdgo.GoString, _iface:Bool):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L197"
        for (_i => _f in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L198"
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L199"
                _buf.writeString(_sep?.__copy__());
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L203"
            stdgo._internal.go.types.Types__writeidentlist._writeIdentList(_buf, (@:checkr _f ?? throw "null pointer dereference").names);
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L206"
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface((@:checkr _f ?? throw "null pointer dereference").type) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : true };
                } catch(_) {
                    { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_functype.FuncType>), _1 : false };
                }, _sig = __tmp__._0, __0 = __tmp__._1;
                if ((({
                    final value = _sig;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && _iface : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L207"
                    stdgo._internal.go.types.Types__writesigexpr._writeSigExpr(_buf, _sig);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L208"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L212"
            if ((((@:checkr _f ?? throw "null pointer dereference").names.length) > (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L213"
                _buf.writeByte((32 : stdgo.GoUInt8));
            };
            //"file:///home/runner/.go/go1.21.3/src/go/types/exprstring.go#L216"
            stdgo._internal.go.types.Types_writeexpr.writeExpr(_buf, (@:checkr _f ?? throw "null pointer dereference").type);
        };
    }
