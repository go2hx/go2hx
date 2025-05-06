package stdgo._internal.go.types;
function _spanOf(_at:stdgo._internal.go.types.Types_t_positioner.T_positioner):stdgo._internal.go.types.Types_t_posspan.T_posSpan {
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L367"
        {
            final __type__ = _at;
            if (__type__ == null) {
                var _x:stdgo.AnyInterface = __type__ == null ? (null : stdgo.AnyInterface) : cast __type__;
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L369"
                throw stdgo.Go.toInterface(("nil positioner" : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.types.Types_t_posspan.T_posSpan))) {
                var _x:stdgo._internal.go.types.Types_t_posspan.T_posSpan = __type__ == null ? ({} : stdgo._internal.go.types.Types_t_posspan.T_posSpan) : __type__.__underlying__() == null ? ({} : stdgo._internal.go.types.Types_t_posspan.T_posSpan) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? ({} : stdgo._internal.go.types.Types_t_posspan.T_posSpan) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L371"
                return _x?.__copy__();
            } else if (stdgo.Go.typeEquals((__type__ : stdgo._internal.go.ast.Ast_node.Node))) {
                var _x:stdgo._internal.go.ast.Ast_node.Node = __type__ == null ? (null : stdgo._internal.go.ast.Ast_node.Node) : cast __type__;
                var _pos = (_x.pos() : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L374"
                return (new stdgo._internal.go.types.Types_t_posspan.T_posSpan(_pos, _pos, _x.end()) : stdgo._internal.go.types.Types_t_posspan.T_posSpan);
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>))) {
                var _x:stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand> = __type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__() == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : stdgo.Go.fromAsInterfaceToValue(__type__ == null ? (null : stdgo.Ref<stdgo._internal.go.types.Types_t_operand.T_operand>) : __type__.__underlying__().value);
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L376"
                if ((@:checkr _x ?? throw "null pointer dereference")._expr != null) {
                    var _pos = (_x.pos() : stdgo._internal.go.token.Token_pos.Pos);
                    //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L378"
                    return (new stdgo._internal.go.types.Types_t_posspan.T_posSpan(_pos, _pos, (@:checkr _x ?? throw "null pointer dereference")._expr.end()) : stdgo._internal.go.types.Types_t_posspan.T_posSpan);
                };
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L380"
                return (new stdgo._internal.go.types.Types_t_posspan.T_posSpan(stdgo._internal.go.types.Types__nopos._nopos, stdgo._internal.go.types.Types__nopos._nopos, stdgo._internal.go.types.Types__nopos._nopos) : stdgo._internal.go.types.Types_t_posspan.T_posSpan);
            } else {
                var _x:stdgo._internal.go.types.Types_t_positioner.T_positioner = __type__ == null ? (null : stdgo._internal.go.types.Types_t_positioner.T_positioner) : cast __type__;
                var _pos = (_at.pos() : stdgo._internal.go.token.Token_pos.Pos);
                //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L383"
                return (new stdgo._internal.go.types.Types_t_posspan.T_posSpan(_pos, _pos, _pos) : stdgo._internal.go.types.Types_t_posspan.T_posSpan);
            };
        };
    }
