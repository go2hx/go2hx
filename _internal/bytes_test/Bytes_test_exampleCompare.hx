package _internal.bytes_test;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.bytes.Bytes;
function exampleCompare():Void {
        var __0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _b = __1, _a = __0;
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) < (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) <= (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) > (0 : stdgo.GoInt) : Bool)) {};
        if ((stdgo._internal.bytes.Bytes_compare.compare(_a, _b) >= (0 : stdgo.GoInt) : Bool)) {};
        if (stdgo._internal.bytes.Bytes_equal.equal(_a, _b)) {};
        if (!stdgo._internal.bytes.Bytes_equal.equal(_a, _b)) {};
    }
