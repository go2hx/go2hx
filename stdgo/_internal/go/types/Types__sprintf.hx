package stdgo._internal.go.types;
function _sprintf(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _qf:stdgo._internal.go.types.Types_qualifier.Qualifier, _tpSubscripts:Bool, _format:stdgo.GoString, _args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L143"
        for (_i => _arg in _args) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L144"
            {
                final __type__ = _arg;
                if (__type__ == null) {
                    var _a:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : __type__.__underlying__();
                    _arg = stdgo.Go.toInterface(("<nil>" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_t_operand.T_operand))) {
                    var _a:stdgo._internal.go.types.Types_t_operand.T_operand = __type__ == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.types.Types_t_operand.T_operand) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L148"
                    throw stdgo.Go.toInterface(("got operand instead of *operand" : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>))) {
                    var _a:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__().value);
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types__operandstring._operandString(_a, _qf));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.token.Token_pos.Pos))) {
                    var _a:stdgo._internal.go.token.Token_pos.Pos = __type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__() == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos) : __type__.__underlying__().value);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L152"
                    if (({
                        final value = _fset;
                        (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                    })) {
                        _arg = stdgo.Go.toInterface((_fset.position(_a).string() : stdgo.GoString));
                    };
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_expr.Expr))) {
                    var _a:stdgo._internal.go.ast.Ast_expr.Expr = __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__() == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__ == null ? (null : stdgo._internal.go.ast.Ast_expr.Expr) : __type__.__underlying__().value;
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types_exprstring.exprString(_a));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>))) {
                    var _a:stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo._internal.go.ast.Ast_expr.Expr>) : __type__.__underlying__().value);
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L159"
                    _buf.writeByte((91 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L160"
                    stdgo._internal.go.types.Types__writeexprlist._writeExprList((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _a);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L161"
                    _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((_buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_object.Object))) {
                    var _a:stdgo._internal.go.types.Types_object.Object = __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__.__underlying__() == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__ == null ? (null : stdgo._internal.go.types.Types_object.Object) : __type__.__underlying__().value;
                    _arg = stdgo.Go.toInterface(stdgo._internal.go.types.Types_objectstring.objectString(_a, _qf));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_type_.Type_))) {
                    var _a:stdgo._internal.go.types.Types_type_.Type_ = __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__.__underlying__() == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__ == null ? (null : stdgo._internal.go.types.Types_type_.Type_) : __type__.__underlying__().value;
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L169"
                    _w._typ(_a);
                    _arg = stdgo.Go.toInterface((_buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>))) {
                    var _a:stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_> = __type__ == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo._internal.go.types.Types_type_.Type_>) : __type__.__underlying__().value);
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L175"
                    _buf.writeByte((91 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L176"
                    for (_i => _x in _a) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L177"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L178"
                            _buf.writeString((", " : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L180"
                        _w._typ(_x);
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L182"
                    _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((_buf.string() : stdgo.GoString));
                } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>))) {
                    var _a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>> = __type__ == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_typeparam.TypeParam>>) : __type__.__underlying__().value);
                    var _buf:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
                    var _w = stdgo._internal.go.types.Types__newtypewriter._newTypeWriter((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), _qf);
                    (@:checkr _w ?? throw "null pointer dereference")._tpSubscripts = _tpSubscripts;
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L188"
                    _buf.writeByte((91 : stdgo.GoUInt8));
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L189"
                    for (_i => _x in _a) {
                        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L190"
                        if ((_i > (0 : stdgo.GoInt) : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L191"
                            _buf.writeString((", " : stdgo.GoString));
                        };
                        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L193"
                        _w._typ(stdgo.Go.asInterface(_x));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L195"
                    _buf.writeByte((93 : stdgo.GoUInt8));
                    _arg = stdgo.Go.toInterface((_buf.string() : stdgo.GoString));
                };
            };
            _args[(_i : stdgo.GoInt)] = _arg;
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L200"
        return stdgo._internal.fmt.Fmt_sprintf.sprintf(_format?.__copy__(), ...(_args : Array<stdgo.AnyInterface>))?.__copy__();
    }
