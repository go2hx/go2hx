package stdgo.encoding.json;
@:structInit @:using(stdgo.encoding.json.Json.T_decodeState_static_extension) abstract T_decodeState(stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState) from stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState to stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState {
    public var _data(get, set) : Array<std.UInt>;
    function get__data():Array<std.UInt> return [for (i in this._data) i];
    function set__data(v:Array<std.UInt>):Array<std.UInt> {
        this._data = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _off(get, set) : StdTypes.Int;
    function get__off():StdTypes.Int return this._off;
    function set__off(v:StdTypes.Int):StdTypes.Int {
        this._off = (v : stdgo.GoInt);
        return v;
    }
    public var _opcode(get, set) : StdTypes.Int;
    function get__opcode():StdTypes.Int return this._opcode;
    function set__opcode(v:StdTypes.Int):StdTypes.Int {
        this._opcode = (v : stdgo.GoInt);
        return v;
    }
    public var _scan(get, set) : T_scanner;
    function get__scan():T_scanner return this._scan;
    function set__scan(v:T_scanner):T_scanner {
        this._scan = v;
        return v;
    }
    public var _errorContext(get, set) : T_errorContext;
    function get__errorContext():T_errorContext return this._errorContext;
    function set__errorContext(v:T_errorContext):T_errorContext {
        this._errorContext = (v : stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext>);
        return v;
    }
    public var _savedError(get, set) : stdgo.Error;
    function get__savedError():stdgo.Error return this._savedError;
    function set__savedError(v:stdgo.Error):stdgo.Error {
        this._savedError = (v : stdgo.Error);
        return v;
    }
    public var _useNumber(get, set) : Bool;
    function get__useNumber():Bool return this._useNumber;
    function set__useNumber(v:Bool):Bool {
        this._useNumber = v;
        return v;
    }
    public var _disallowUnknownFields(get, set) : Bool;
    function get__disallowUnknownFields():Bool return this._disallowUnknownFields;
    function set__disallowUnknownFields(v:Bool):Bool {
        this._disallowUnknownFields = v;
        return v;
    }
    public function new(?_data:Array<std.UInt>, ?_off:StdTypes.Int, ?_opcode:StdTypes.Int, ?_scan:T_scanner, ?_errorContext:T_errorContext, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) this = new stdgo._internal.encoding.json.Json_T_decodeState.T_decodeState(([for (i in _data) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_off : stdgo.GoInt), (_opcode : stdgo.GoInt), _scan, (_errorContext : stdgo.Ref<stdgo._internal.encoding.json.Json_T_errorContext.T_errorContext>), (_savedError : stdgo.Error), _useNumber, _disallowUnknownFields);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
