package stdgo._internal.go.doc;
function _stripOutputComment(_body:stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>, _comments:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):{ var _0 : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>; } {
        var __tmp__ = stdgo._internal.go.doc.Doc__lastcomment._lastComment(_body, _comments), _i:stdgo.GoInt = __tmp__._0, _last:stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup> = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L576"
        if ((({
            final value = _last;
            (value == null || (value : Dynamic).__nil__);
        }) || !stdgo._internal.go.doc.Doc__outputprefix._outputPrefix.matchString(_last.text()?.__copy__()) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L577"
            return { _0 : _body, _1 : _comments };
        };
        var _newBody = (stdgo.Go.setRef(({ lbrace : (@:checkr _body ?? throw "null pointer dereference").lbrace, list : (@:checkr _body ?? throw "null pointer dereference").list, rbrace : _last.pos() } : stdgo._internal.go.ast.Ast_blockstmt.BlockStmt)) : stdgo.Ref<stdgo._internal.go.ast.Ast_blockstmt.BlockStmt>);
        var _newComments = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>(((_comments.length) - (1 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L587"
        _newComments.__copyTo__((_comments.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L588"
        (_newComments.__slice__(_i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>).__copyTo__((_comments.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>));
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L589"
        return { _0 : _newBody, _1 : _newComments };
    }
