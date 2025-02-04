package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_protocolerror_static_extension.ProtocolError_static_extension) class ProtocolError {
    public var errorString : stdgo.GoString = "";
    public function new(?errorString:stdgo.GoString) {
        if (errorString != null) this.errorString = errorString;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new ProtocolError(errorString);
    }
}
