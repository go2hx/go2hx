package stdgo._internal.compress.lzw;
@:interface typedef T_writer = stdgo.StructType & {
    @:interfacetypeffun
    function flush():stdgo.Error;
    function writeByte(_0:stdgo.GoUInt8):stdgo.Error;
};
