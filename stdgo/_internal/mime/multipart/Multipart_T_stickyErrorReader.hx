package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_T_stickyErrorReader_static_extension.T_stickyErrorReader_static_extension) class T_stickyErrorReader {
    public var _r : stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_err:stdgo.Error) {
        if (_r != null) this._r = _r;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stickyErrorReader(_r, _err);
    }
}