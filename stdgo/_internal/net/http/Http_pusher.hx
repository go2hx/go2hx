package stdgo._internal.net.http;
@:interface typedef Pusher = stdgo.StructType & {
    @:interfacetypeffun
    function push(_target:stdgo.GoString, _opts:stdgo.Ref<stdgo._internal.net.http.Http_pushoptions.PushOptions>):stdgo.Error;
};
