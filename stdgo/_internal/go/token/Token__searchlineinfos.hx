package stdgo._internal.go.token;
function _searchLineInfos(_a:stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>, _x:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L291"
        return (stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L291"
            return (_a[(_i : stdgo.GoInt)].offset > _x : Bool);
        }) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
