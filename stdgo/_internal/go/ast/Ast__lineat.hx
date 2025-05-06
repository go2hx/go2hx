package stdgo._internal.go.ast;
function _lineAt(_fset:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _pos:stdgo._internal.go.token.Token_pos.Pos):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/import.go#L56"
        return _fset.positionFor(_pos, false).line;
    }
