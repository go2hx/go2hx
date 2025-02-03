package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_encodeState_static_extension) abstract T_encodeState(stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState) from stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState to stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState {
    public var buffer(get, set) : stdgo._internal.bytes.Bytes_Buffer.Buffer;
    function get_buffer():stdgo._internal.bytes.Bytes_Buffer.Buffer return this.buffer;
    function set_buffer(v:stdgo._internal.bytes.Bytes_Buffer.Buffer):stdgo._internal.bytes.Bytes_Buffer.Buffer {
        this.buffer = v;
        return v;
    }
    public var _ptrLevel(get, set) : std.UInt;
    function get__ptrLevel():std.UInt return this._ptrLevel;
    function set__ptrLevel(v:std.UInt):std.UInt {
        this._ptrLevel = (v : stdgo.GoUInt);
        return v;
    }
    public var _ptrSeen(get, set) : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>;
    function get__ptrSeen():stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> return this._ptrSeen;
    function set__ptrSeen(v:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>):stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue> {
        this._ptrSeen = (v : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>);
        return v;
    }
    public function new(?buffer:stdgo._internal.bytes.Bytes_Buffer.Buffer, ?_ptrLevel:std.UInt, ?_ptrSeen:stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>) this = new stdgo._internal.encoding.json.Json_T_encodeState.T_encodeState(buffer, (_ptrLevel : stdgo.GoUInt), (_ptrSeen : stdgo.GoMap<stdgo.AnyInterface, stdgo._internal.encoding.json.Json_T_unquotedValue.T_unquotedValue>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
