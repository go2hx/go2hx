package stdgo._internal.go.ast;
function _sortComments(_list:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_commentgroup.CommentGroup>>):Void {
        //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L26"
        {
            var _orderedList = (_list : stdgo._internal.go.ast.Ast_t_bypos.T_byPos);
            if (!stdgo._internal.sort.Sort_issorted.isSorted(stdgo.Go.asInterface(_orderedList))) {
                //"file:///home/runner/.go/go1.21.3/src/go/ast/commentmap.go#L27"
                stdgo._internal.sort.Sort_sort.sort(stdgo.Go.asInterface(_orderedList));
            };
        };
    }
