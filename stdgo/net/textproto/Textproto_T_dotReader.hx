package stdgo.net.textproto;
@:structInit @:using(stdgo.net.textproto.Textproto.T_dotReader_static_extension) abstract T_dotReader(stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader) from stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader to stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader {
    public var _r(get, set) : Reader;
    function get__r():Reader return this._r;
    function set__r(v:Reader):Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>);
        return v;
    }
    public var _state(get, set) : StdTypes.Int;
    function get__state():StdTypes.Int return this._state;
    function set__state(v:StdTypes.Int):StdTypes.Int {
        this._state = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_r:Reader, ?_state:StdTypes.Int) this = new stdgo._internal.net.textproto.Textproto_T_dotReader.T_dotReader((_r : stdgo.Ref<stdgo._internal.net.textproto.Textproto_Reader.Reader>), (_state : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
