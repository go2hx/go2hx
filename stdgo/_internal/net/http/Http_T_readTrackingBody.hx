package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_readTrackingBody_static_extension.T_readTrackingBody_static_extension) class T_readTrackingBody {
    @:embedded
    public var readCloser : stdgo._internal.io.Io_ReadCloser.ReadCloser = (null : stdgo._internal.io.Io_ReadCloser.ReadCloser);
    public function new(?readCloser:stdgo._internal.io.Io_ReadCloser.ReadCloser) {
        if (readCloser != null) this.readCloser = readCloser;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_readTrackingBody(readCloser);
    }
}
