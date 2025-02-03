package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_scanner_static_extension) abstract T_scanner(stdgo._internal.encoding.json.Json_T_scanner.T_scanner) from stdgo._internal.encoding.json.Json_T_scanner.T_scanner to stdgo._internal.encoding.json.Json_T_scanner.T_scanner {
    public var _step(get, set) : (stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt;
    function get__step():(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt return (_0, _1) -> this._step(_0, _1);
    function set__step(v:(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt):(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt {
        this._step = v;
        return v;
    }
    public var _endTop(get, set) : Bool;
    function get__endTop():Bool return this._endTop;
    function set__endTop(v:Bool):Bool {
        this._endTop = v;
        return v;
    }
    public var _parseState(get, set) : Array<StdTypes.Int>;
    function get__parseState():Array<StdTypes.Int> return [for (i in this._parseState) i];
    function set__parseState(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._parseState = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _bytes(get, set) : haxe.Int64;
    function get__bytes():haxe.Int64 return this._bytes;
    function set__bytes(v:haxe.Int64):haxe.Int64 {
        this._bytes = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?_step:(stdgo.Ref<stdgo._internal.encoding.json.Json_T_scanner.T_scanner>, stdgo.GoUInt8) -> stdgo.GoInt, ?_endTop:Bool, ?_parseState:Array<StdTypes.Int>, ?_err:stdgo.Error, ?_bytes:haxe.Int64) this = new stdgo._internal.encoding.json.Json_T_scanner.T_scanner(_step, _endTop, ([for (i in _parseState) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>), (_err : stdgo.Error), (_bytes : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
