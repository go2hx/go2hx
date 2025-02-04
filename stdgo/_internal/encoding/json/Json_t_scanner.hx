package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_scanner_static_extension.T_scanner_static_extension) class T_scanner {
    public var _step : (stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt = null;
    public var _endTop : Bool = false;
    public var _parseState : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public var _bytes : stdgo.GoInt64 = 0;
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:stdgo.Slice<stdgo.GoInt>, ?_err:stdgo.Error, ?_bytes:stdgo.GoInt64) {
        if (_step != null) this._step = _step;
        if (_endTop != null) this._endTop = _endTop;
        if (_parseState != null) this._parseState = _parseState;
        if (_err != null) this._err = _err;
        if (_bytes != null) this._bytes = _bytes;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_scanner(_step, _endTop, _parseState, _err, _bytes);
    }
}
