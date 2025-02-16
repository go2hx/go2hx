package stdgo._internal.io;
@:interface typedef ByteWriter = stdgo.StructType & {
    @:interfacetypeffun
    function writeByte(_c:stdgo.GoUInt8):stdgo.Error;
};
