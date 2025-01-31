package stdgo._internal.sort;
import stdgo._internal.internal.reflectlite.Reflectlite;
import stdgo._internal.math.bits.Bits;
function searchStrings(_a:stdgo.Slice<stdgo.GoString>, _x:stdgo.GoString):stdgo.GoInt {
        return stdgo._internal.sort.Sort_search.search((_a.length), function(_i:stdgo.GoInt):Bool {
            return (_a[(_i : stdgo.GoInt)] >= _x : Bool);
        });
    }
