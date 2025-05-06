package stdgo._internal.go.types;
function _hasBreakList(_list:stdgo.Slice<stdgo._internal.go.ast.Ast_stmt.Stmt>, _label:stdgo.GoString, _implicit:Bool):Bool {
        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L178"
        for (__0 => _s in _list) {
            //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L179"
            if (stdgo._internal.go.types.Types__hasbreak._hasBreak(_s, _label?.__copy__(), _implicit)) {
                //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L180"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/types/return.go#L183"
        return false;
    }
