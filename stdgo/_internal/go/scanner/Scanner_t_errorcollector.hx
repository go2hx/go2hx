package stdgo._internal.go.scanner;
@:structInit @:using(stdgo._internal.go.scanner.Scanner_t_errorcollector_static_extension.T_errorCollector_static_extension) class T_errorCollector {
    public var _cnt : stdgo.GoInt = 0;
    public var _msg : stdgo.GoString = "";
    public var _pos : stdgo._internal.go.token.Token_position.Position = ({} : stdgo._internal.go.token.Token_position.Position);
    public function new(?_cnt:stdgo.GoInt, ?_msg:stdgo.GoString, ?_pos:stdgo._internal.go.token.Token_position.Position) {
        if (_cnt != null) this._cnt = _cnt;
        if (_msg != null) this._msg = _msg;
        if (_pos != null) this._pos = _pos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_errorCollector(_cnt, _msg, _pos);
    }
}
