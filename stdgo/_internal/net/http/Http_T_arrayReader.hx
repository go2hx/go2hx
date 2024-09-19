package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_arrayReader_static_extension.T_arrayReader_static_extension) class T_arrayReader {
    public var _arrayPromise : stdgo._internal.syscall.js.Js_Value.Value = ({} : stdgo._internal.syscall.js.Js_Value.Value);
    public var _pending : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _read : Bool = false;
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_arrayPromise:stdgo._internal.syscall.js.Js_Value.Value, ?_pending:stdgo.Slice<stdgo.GoUInt8>, ?_read:Bool, ?_err:stdgo.Error) {
        if (_arrayPromise != null) this._arrayPromise = _arrayPromise;
        if (_pending != null) this._pending = _pending;
        if (_read != null) this._read = _read;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_arrayReader(_arrayPromise, _pending, _read, _err);
    }
}
