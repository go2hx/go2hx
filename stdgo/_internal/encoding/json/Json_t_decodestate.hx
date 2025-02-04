package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_t_decodestate_static_extension.T_decodeState_static_extension) class T_decodeState {
    public var _data : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _off : stdgo.GoInt = 0;
    public var _opcode : stdgo.GoInt = 0;
    public var _scan : stdgo._internal.encoding.json.Json_t_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_t_scanner.T_scanner);
    public var _errorContext : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext> = (null : stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>);
    public var _savedError : stdgo.Error = (null : stdgo.Error);
    public var _useNumber : Bool = false;
    public var _disallowUnknownFields : Bool = false;
    public function new(?_data:stdgo.Slice<stdgo.GoUInt8>, ?_off:stdgo.GoInt, ?_opcode:stdgo.GoInt, ?_scan:stdgo._internal.encoding.json.Json_t_scanner.T_scanner, ?_errorContext:stdgo.Ref<stdgo._internal.encoding.json.Json_t_errorcontext.T_errorContext>, ?_savedError:stdgo.Error, ?_useNumber:Bool, ?_disallowUnknownFields:Bool) {
        if (_data != null) this._data = _data;
        if (_off != null) this._off = _off;
        if (_opcode != null) this._opcode = _opcode;
        if (_scan != null) this._scan = _scan;
        if (_errorContext != null) this._errorContext = _errorContext;
        if (_savedError != null) this._savedError = _savedError;
        if (_useNumber != null) this._useNumber = _useNumber;
        if (_disallowUnknownFields != null) this._disallowUnknownFields = _disallowUnknownFields;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_decodeState(_data, _off, _opcode, _scan, _errorContext, _savedError, _useNumber, _disallowUnknownFields);
    }
}
