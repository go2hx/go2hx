package stdgo._internal.go.doc;
function _lastComment(_b:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _c:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>; } {
        var _i = (0 : stdgo.GoInt), _last = (null : stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L594"
        if (({
            final value = _b;
            (value == null || (value : Dynamic).__nil__);
        })) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L595"
            return { _0 : _i, _1 : _last };
        };
        var __0 = (_b.pos() : stdgo._internal.go.token.Token_pos.Pos), __1 = (_b.end() : stdgo._internal.go.token.Token_pos.Pos);
var _end = __1, _pos = __0;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L598"
        for (_j => _cg in _c) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L599"
            if ((_cg.pos() < _pos : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L600"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L602"
            if ((_cg.end() > _end : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L603"
                break;
            };
            {
                final __tmp__0 = _j;
                final __tmp__1 = _cg;
                _i = @:binopAssign __tmp__0;
                _last = @:binopAssign __tmp__1;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L607"
        return { _0 : _i, _1 : _last };
    }
