package stdgo._internal.mime.multipart;
import stdgo._internal.unsafe.Unsafe;
@:structInit @:using(stdgo._internal.mime.multipart.Multipart_T_part_static_extension.T_part_static_extension) class T_part {
    public var _mw : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
    public var _closed : Bool = false;
    public var _we : stdgo.Error = (null : stdgo.Error);
    public function new(?_mw:stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>, ?_closed:Bool, ?_we:stdgo.Error) {
        if (_mw != null) this._mw = _mw;
        if (_closed != null) this._closed = _closed;
        if (_we != null) this._we = _we;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_part(_mw, _closed, _we);
    }
}