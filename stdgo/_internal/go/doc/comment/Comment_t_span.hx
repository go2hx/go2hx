package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t_span_static_extension.T_span_static_extension) class T_span {
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public var _kind : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind = ((0 : stdgo.GoInt) : stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind);
    public function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt, ?_kind:stdgo._internal.go.doc.comment.Comment_t_spankind.T_spanKind) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
        if (_kind != null) this._kind = _kind;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_span(_start, _end, _kind);
    }
}
