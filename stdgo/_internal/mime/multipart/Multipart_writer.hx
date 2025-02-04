package stdgo._internal.mime.multipart;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_writer_static_extension.Writer_static_extension) class Writer {
    public var _w : stdgo._internal.io.Io_writer.Writer = (null : stdgo._internal.io.Io_writer.Writer);
    public var _boundary : stdgo.GoString = "";
    public var _lastpart : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>);
    public function new(?_w:stdgo._internal.io.Io_writer.Writer, ?_boundary:stdgo.GoString, ?_lastpart:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_t_part.T_part>) {
        if (_w != null) this._w = _w;
        if (_boundary != null) this._boundary = _boundary;
        if (_lastpart != null) this._lastpart = _lastpart;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Writer(_w, _boundary, _lastpart);
    }
}
