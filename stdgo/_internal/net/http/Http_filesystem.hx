package stdgo._internal.net.http;
@:interface typedef FileSystem = stdgo.StructType & {
    @:interfacetypeffun
    function open(_name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_file.File; var _1 : stdgo.Error; };
};
