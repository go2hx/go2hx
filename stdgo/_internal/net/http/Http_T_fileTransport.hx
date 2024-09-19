package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_fileTransport_static_extension.T_fileTransport_static_extension) class T_fileTransport {
    public var _fh : stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler = ({} : stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler);
    public function new(?_fh:stdgo._internal.net.http.Http_T_fileHandler.T_fileHandler) {
        if (_fh != null) this._fh = _fh;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fileTransport(_fh);
    }
}
