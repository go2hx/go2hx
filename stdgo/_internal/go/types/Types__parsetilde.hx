package stdgo._internal.go.types;
function _parseTilde(_check:stdgo.Ref<stdgo._internal.go.types.Types_checker.Checker>, _tx:stdgo._internal.go.ast.Ast_expr.Expr):stdgo.Ref<stdgo._internal.go.types.Types_term.Term> {
        var _x = (_tx : stdgo._internal.go.ast.Ast_expr.Expr);
        var _tilde:Bool = false;
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L142"
        {
            var __tmp__ = try {
                { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_x) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>)) : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : true };
            } catch(_) {
                { _0 : (null : stdgo.Ref<stdgo._internal.go.ast.Ast_unaryexpr.UnaryExpr>), _1 : false };
            }, _op = __tmp__._0, __0 = __tmp__._1;
            if ((({
                final value = _op;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            }) && ((@:checkr _op ?? throw "null pointer dereference").op == (88 : stdgo._internal.go.token.Token_token.Token)) : Bool)) {
                _x = (@:checkr _op ?? throw "null pointer dereference").x;
                _tilde = true;
            };
        };
        var _typ = (_check._typ(_x) : stdgo._internal.go.types.Types_type_.Type_);
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L152"
        if (stdgo._internal.go.types.Types__istypeparam._isTypeParam(_typ)) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L153"
            if (_tilde) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L154"
                _check._errorf(_x, (144 : stdgo._internal.internal.types.errors.Errors_code.Code), ("type in term %s cannot be a type parameter" : stdgo.GoString), stdgo.Go.toInterface(_tx));
            } else {
                //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L156"
                _check._error(_x, (144 : stdgo._internal.internal.types.errors.Errors_code.Code), ("term cannot be a type parameter" : stdgo.GoString));
            };
            _typ = stdgo.Go.asInterface(stdgo._internal.go.types.Types_typ.typ[((0 : stdgo._internal.go.types.Types_basickind.BasicKind) : stdgo.GoInt)]);
        };
        var _term = stdgo._internal.go.types.Types_newterm.newTerm(_tilde, _typ);
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L161"
        if (_tilde) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L162"
            _check._recordTypeAndValue(_tx, (3 : stdgo._internal.go.types.Types_t_operandmode.T_operandMode), stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.go.types.Types_union.Union((new stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>(1, 1, ...[_term]) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.types.Types_term.Term>>)) : stdgo._internal.go.types.Types_union.Union)) : stdgo.Ref<stdgo._internal.go.types.Types_union.Union>)), (null : stdgo._internal.go.constant.Constant_value.Value));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/union.go#L164"
        return _term;
    }
