package stdgo._internal.image.jpeg;
@:interface typedef Reader = stdgo.StructType & {
    function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
    function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
