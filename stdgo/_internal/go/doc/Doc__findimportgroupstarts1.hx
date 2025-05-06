package stdgo._internal.go.doc;
function _findImportGroupStarts1(_origImps:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>):stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> {
        var _imps = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>((_origImps.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L521"
        _imps.__copyTo__(_origImps);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L523"
        stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_imps), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L523"
            return (_imps[(_i : stdgo.GoInt)].pos() < _imps[(_j : stdgo.GoInt)].pos() : Bool);
        });
        var _groupStarts:stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>> = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
        var _prevEnd = ((-2 : stdgo._internal.go.token.Token_pos.Pos) : stdgo._internal.go.token.Token_pos.Pos);
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L528"
        for (__0 => _imp in _imps) {
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L529"
            if (((_imp.pos() - _prevEnd : stdgo._internal.go.token.Token_pos.Pos) > (2 : stdgo._internal.go.token.Token_pos.Pos) : Bool)) {
                _groupStarts = (_groupStarts.__append__(_imp) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.ast.Ast_importspec.ImportSpec>>);
            };
            _prevEnd = _imp.end();
            //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L534"
            if (({
                final value = (@:checkr _imp ?? throw "null pointer dereference").comment;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _prevEnd = (@:checkr _imp ?? throw "null pointer dereference").comment.end();
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/doc/example.go#L538"
        return _groupStarts;
    }
