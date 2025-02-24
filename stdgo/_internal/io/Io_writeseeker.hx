package stdgo._internal.io;
@:interface typedef WriteSeeker = stdgo.StructType & {
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function seek(_0:stdgo.GoInt64, _1:stdgo.GoInt):{ var _0 : stdgo.GoInt64; var _1 : stdgo.Error; };
};
