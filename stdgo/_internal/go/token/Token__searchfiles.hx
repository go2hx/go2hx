package stdgo._internal.go.token;
function _searchFiles(_a:stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>, _x:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L486"
        return (stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L486"
            return ((@:checkr _a[(_i : stdgo.GoInt)] ?? throw "null pointer dereference")._base > _x : Bool);
        }) - (1 : stdgo.GoInt) : stdgo.GoInt);
    }
