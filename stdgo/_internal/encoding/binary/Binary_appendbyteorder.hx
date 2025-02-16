package stdgo._internal.encoding.binary;
@:interface typedef AppendByteOrder = stdgo.StructType & {
    @:interfacetypeffun
    function appendUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function appendUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function appendUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function string():stdgo.GoString;
};
