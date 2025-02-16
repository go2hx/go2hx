package stdgo._internal.syscall;
@:interface typedef RawConn = stdgo.StructType & {
    @:interfacetypeffun
    function control(_f:stdgo.GoUIntptr -> Void):stdgo.Error;
    @:interfacetypeffun
    function read(_f:stdgo.GoUIntptr -> Bool):stdgo.Error;
    @:interfacetypeffun
    function write(_f:stdgo.GoUIntptr -> Bool):stdgo.Error;
};
