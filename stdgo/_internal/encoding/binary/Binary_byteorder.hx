package stdgo._internal.encoding.binary;
@:interface typedef ByteOrder = stdgo.StructType & {
    @:interfacetypeffun
    function uint16(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt16;
    @:interfacetypeffun
    function uint32(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt32;
    @:interfacetypeffun
    function uint64(_0:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64;
    @:interfacetypeffun
    function putUint16(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt16):Void;
    @:interfacetypeffun
    function putUint32(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt32):Void;
    @:interfacetypeffun
    function putUint64(_0:stdgo.Slice<stdgo.GoUInt8>, _1:stdgo.GoUInt64):Void;
    @:interfacetypeffun
    function string():stdgo.GoString;
};
