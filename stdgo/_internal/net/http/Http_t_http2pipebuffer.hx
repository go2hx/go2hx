package stdgo._internal.net.http;
@:interface typedef T_http2pipeBuffer = stdgo.StructType & {
    > stdgo._internal.io.Io_writer.Writer,
    > stdgo._internal.io.Io_reader.Reader,
    @:interfacetypeffun
    function len():stdgo.GoInt;
};
