package stdgo._internal.net.http;
@:keep class FileSystem_static_extension {
    @:interfacetypeffun
    static public function open(t:stdgo._internal.net.http.Http_filesystem.FileSystem, _name:stdgo.GoString):{ var _0 : stdgo._internal.net.http.Http_file.File; var _1 : stdgo.Error; } return t.open(_name);
}
