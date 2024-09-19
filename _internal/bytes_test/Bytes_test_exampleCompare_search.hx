package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleCompare_search():Void {
        var _needle:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _haystack:stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoUInt8>>);
        var _i = (stdgo._internal.sort.Sort_search.search((_haystack.length), function(_i:stdgo.GoInt):Bool {
            return (stdgo._internal.bytes.Bytes_compare.compare(_haystack[(_i : stdgo.GoInt)], _needle) >= (0 : stdgo.GoInt) : Bool);
        }) : stdgo.GoInt);
        if (((_i < (_haystack.length) : Bool) && stdgo._internal.bytes.Bytes_equal.equal(_haystack[(_i : stdgo.GoInt)], _needle) : Bool)) {};
    }
