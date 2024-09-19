package stdgo._internal.sort;
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt {
        return stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
