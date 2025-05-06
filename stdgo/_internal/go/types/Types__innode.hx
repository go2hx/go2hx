package stdgo._internal.go.types;
function _inNode(_node:stdgo._internal.go.ast.Ast_node.Node, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.types.Types_t_posspan.T_posSpan {
        var __0 = (_node.pos() : stdgo._internal.go.token.Token_pos.Pos), __1 = (_node.end() : stdgo._internal.go.token.Token_pos.Pos);
var _end = __1, _start = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L350"
        if (false) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L351"
            stdgo._internal.go.types.Types__assert._assert(((_start <= _pos : Bool) && (_pos < _end : Bool) : Bool));
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/errors.go#L353"
        return (new stdgo._internal.go.types.Types_t_posspan.T_posSpan(_start, _pos, _end) : stdgo._internal.go.types.Types_t_posspan.T_posSpan);
    }
