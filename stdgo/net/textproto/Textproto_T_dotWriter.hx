package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.T_dotWriter_static_extension) abstract T_dotWriter(stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter) from stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter to stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter {
    public var _w(get, set) : Writer;
    function get__w():Writer return this._w;
    function set__w(v:Writer):Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>);
        return v;
    }
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_w:Writer, ?_state:StdTypes.Int) this = new stdgo._internal.net.textproto.Textproto_T_dotWriter.T_dotWriter((_w : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Writer.Writer>), (_state : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
