package stdgo._internal.image.jpeg;
@:interface typedef T_writer = stdgo.StructType & {
    @:interfacetypeffun
    function flush():stdgo.Error;
    function write(_0:stdgo.Slice<stdgo.GoUInt8>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
    function writeByte(_0:stdgo.GoUInt8):stdgo.Error;
};
