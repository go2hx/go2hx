package stdgo._internal.net.http;
@:interface typedef CloseNotifier = stdgo.StructType & {
    @:interfacetypeffun
    function closeNotify():stdgo.Chan<Bool>;
};
