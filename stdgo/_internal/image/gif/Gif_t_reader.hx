package stdgo._internal.image.gif;
@:interface typedef T_reader = stdgo.StructType & {
    function read(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function readByte():{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; };
};
