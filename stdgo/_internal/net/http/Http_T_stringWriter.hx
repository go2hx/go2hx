package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_stringWriter_static_extension.T_stringWriter_static_extension) class T_stringWriter {
    public var _w : stdgo._internal.io.Io_Writer.Writer = (null : stdgo._internal.io.Io_Writer.Writer);
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer) {
        if (_w != null) this._w = _w;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_stringWriter(_w);
    }
}
