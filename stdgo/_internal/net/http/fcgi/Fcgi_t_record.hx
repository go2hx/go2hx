package stdgo._internal.net.http.fcgi;
@:structInit @:using(stdgo._internal.net.http.fcgi.Fcgi_t_record_static_extension.T_record_static_extension) class T_record {
    public var _h : stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header = ({} : stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header);
    public var _buf : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(65790, 65790).__setNumber32__();
    public function new(?_h:stdgo._internal.net.http.fcgi.Fcgi_t_header.T_header, ?_buf:stdgo.GoArray<stdgo.GoUInt8>) {
        if (_h != null) this._h = _h;
        if (_buf != null) this._buf = _buf;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_record(_h, _buf);
    }
}
