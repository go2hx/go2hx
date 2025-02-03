package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.T_part_static_extension) abstract T_part(stdgo._internal.mime.multipart.Multipart_T_part.T_part) from stdgo._internal.mime.multipart.Multipart_T_part.T_part to stdgo._internal.mime.multipart.Multipart_T_part.T_part {
    public var _mw(get, set) : Writer;
    function get__mw():Writer return this._mw;
    function set__mw(v:Writer):Writer {
        this._mw = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>);
        return v;
    }
    public var _closed(get, set) : Bool;
    function get__closed():Bool return this._closed;
    function set__closed(v:Bool):Bool {
        this._closed = v;
        return v;
    }
    public var _we(get, set) : stdgo.Error;
    function get__we():stdgo.Error return this._we;
    function set__we(v:stdgo.Error):stdgo.Error {
        this._we = (v : stdgo.Error);
        return v;
    }
    public function new(?_mw:Writer, ?_closed:Bool, ?_we:stdgo.Error) this = new stdgo._internal.mime.multipart.Multipart_T_part.T_part((_mw : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_Writer.Writer>), _closed, (_we : stdgo.Error));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
