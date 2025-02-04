package stdgo._internal.encoding.json;
@:structInit @:using(stdgo._internal.encoding.json.Json_syntaxerror_static_extension.SyntaxError_static_extension) class SyntaxError {
    public var _msg : stdgo.GoString = "";
    public var offset : stdgo.GoInt64 = 0;
    public function new(?_msg:stdgo.GoString, ?offset:stdgo.GoInt64) {
        if (_msg != null) this._msg = _msg;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SyntaxError(_msg, offset);
    }
}
