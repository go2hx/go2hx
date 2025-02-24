package stdgo._internal.io;
@:interface typedef ReaderAt = stdgo.StructType & {
    @:interfacetypeffun
    function readAt(_p:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt64):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; };
};
