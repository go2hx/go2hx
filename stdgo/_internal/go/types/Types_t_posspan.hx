package stdgo._internal.go.types;
@:structInit @:using(stdgo._internal.go.types.Types_t_posspan_static_extension.T_posSpan_static_extension) class T_posSpan {
    public var _start : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _pos : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public var _end : stdgo._internal.go.token.Token_pos.Pos = ((0 : stdgo.GoInt) : stdgo._internal.go.token.Token_pos.Pos);
    public function new(?_start:stdgo._internal.go.token.Token_pos.Pos, ?_pos:stdgo._internal.go.token.Token_pos.Pos, ?_end:stdgo._internal.go.token.Token_pos.Pos) {
        if (_start != null) this._start = _start;
        if (_pos != null) this._pos = _pos;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_posSpan(_start, _pos, _end);
    }
}
