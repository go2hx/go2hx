package stdgo._internal.net.http;
@:structInit @:using(stdgo._internal.net.http.Http_T_streamReader_static_extension.T_streamReader_static_extension) class T_streamReader {
    public var _pending : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _stream : stdgo._internal.syscall.js.Js_Value.Value = ({} : stdgo._internal.syscall.js.Js_Value.Value);
    public var _err : stdgo.Error = (null : stdgo.Error);
    public function new(?_pending:stdgo.Slice<stdgo.GoUInt8>, ?_stream:stdgo._internal.syscall.js.Js_Value.Value, ?_err:stdgo.Error) {
        if (_pending != null) this._pending = _pending;
        if (_stream != null) this._stream = _stream;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_streamReader(_pending, _stream, _err);
    }
}
