package stdgo._internal.sort;
function searchInts(_a:stdgo.Slice<stdgo.GoInt>, _x:stdgo.GoInt):stdgo.GoInt {
        //"file:///home/runner/.go/go1.21.3/src/sort/search.go#L124"
        return stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/sort/search.go#L124"
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
