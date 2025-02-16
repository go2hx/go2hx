package stdgo._internal.hash;
@:interface typedef Hash = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    @:interfacetypeffun
    function sum(_b:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8>;
    @:interfacetypeffun
    function reset():Void;
    @:interfacetypeffun
    function size():stdgo.GoInt;
    @:interfacetypeffun
    function blockSize():stdgo.GoInt;
};
