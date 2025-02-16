package stdgo._internal.io;
@:interface typedef RuneScanner = stdgo.StructType & {
    > stdgo._internal.io.Io_runereader.RuneReader,
    @:interfacetypeffun
    function unreadRune():stdgo.Error;
};
