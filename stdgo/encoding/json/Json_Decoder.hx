package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.Decoder_static_extension) abstract Decoder(stdgo._internal.encoding.json.Json_Decoder.Decoder) from stdgo._internal.encoding.json.Json_Decoder.Decoder to stdgo._internal.encoding.json.Json_Decoder.Decoder {
    public var _r(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__r():stdgo._internal.io.Io_Reader.Reader return this._r;
    function set__r(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._r = v;
        return v;
    }
    public var _buf(get, set) : Array<std.UInt>;
    function get__buf():Array<std.UInt> return [for (i in this._buf) i];
    function set__buf(v:Array<std.UInt>):Array<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _d(get, set) : T_decodeState;
    function get__d():T_decodeState return this._d;
    function set__d(v:T_decodeState):T_decodeState {
        this._d = v;
        return v;
    }
    public var _scanp(get, set) : StdTypes.Int;
    function get__scanp():StdTypes.Int return this._scanp;
    function set__scanp(v:StdTypes.Int):StdTypes.Int {
        this._scanp = (v : stdgo.GoInt);
        return v;
    }
    public var _scanned(get, set) : haxe.Int64;
    function get__scanned():haxe.Int64 return this._scanned;
    function set__scanned(v:haxe.Int64):haxe.Int64 {
        this._scanned = (v : stdgo.GoInt64);
        return v;
    }
    public var _scan(get, set) : T_scanner;
    function get__scan():T_scanner return this._scan;
    function set__scan(v:T_scanner):T_scanner {
        this._scan = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _tokenState(get, set) : StdTypes.Int;
    function get__tokenState():StdTypes.Int return this._tokenState;
    function set__tokenState(v:StdTypes.Int):StdTypes.Int {
        this._tokenState = (v : stdgo.GoInt);
        return v;
    }
    public var _tokenStack(get, set) : Array<StdTypes.Int>;
    function get__tokenStack():Array<StdTypes.Int> return [for (i in this._tokenStack) i];
    function set__tokenStack(v:Array<StdTypes.Int>):Array<StdTypes.Int> {
        this._tokenStack = ([for (i in v) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>);
        return v;
    }
    public function new(?_r:stdgo._internal.io.Io_Reader.Reader, ?_buf:Array<std.UInt>, ?_d:T_decodeState, ?_scanp:StdTypes.Int, ?_scanned:haxe.Int64, ?_scan:T_scanner, ?_err:stdgo.Error, ?_tokenState:StdTypes.Int, ?_tokenStack:Array<StdTypes.Int>) this = new stdgo._internal.encoding.json.Json_Decoder.Decoder(_r, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _d, (_scanp : stdgo.GoInt), (_scanned : stdgo.GoInt64), _scan, (_err : stdgo.Error), (_tokenState : stdgo.GoInt), ([for (i in _tokenStack) (i : stdgo.GoInt)] : stdgo.Slice<stdgo.GoInt>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
