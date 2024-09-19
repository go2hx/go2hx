package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_fileHandler_static_extension.T_fileHandler_static_extension) class T_fileHandler {
    public var _root : stdgo._internal.net.http.Http_FileSystem.FileSystem = (null : stdgo._internal.net.http.Http_FileSystem.FileSystem);
    public function new(?_root:stdgo._internal.net.http.Http_FileSystem.FileSystem) {
        if (_root != null) this._root = _root;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileHandler(_root);
    }
}
