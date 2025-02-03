package stdgo.mime.multipart;
@:structInit @:using(stdgo.mime.multipart.Multipart.Writer_static_extension) abstract Writer(stdgo._internal.mime.multipart.Multipart_Writer.Writer) from stdgo._internal.mime.multipart.Multipart_Writer.Writer to stdgo._internal.mime.multipart.Multipart_Writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _boundary(get, set) : String;
    function get__boundary():String return this._boundary;
    function set__boundary(v:String):String {
        this._boundary = (v : stdgo.GoString);
        return v;
    }
    public var _lastpart(get, set) : T_part;
    function get__lastpart():T_part return this._lastpart;
    function set__lastpart(v:T_part):T_part {
        this._lastpart = (v : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>);
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_boundary:String, ?_lastpart:T_part) this = new stdgo._internal.mime.multipart.Multipart_Writer.Writer(_w, (_boundary : stdgo.GoString), (_lastpart : stdgo.Ref<stdgo._internal.mime.multipart.Multipart_T_part.T_part>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
