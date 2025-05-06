package stdgo._internal.go.doc.comment;
@:structInit @:using(stdgo._internal.go.doc.comment.Comment_t__wrap___localname___score_6194_static_extension.T__wrap___localname___score_6194_static_extension) class T__wrap___localname___score_6194 {
    public var _hi : stdgo.GoInt64 = 0;
    public var _lo : stdgo.GoInt64 = 0;
    public function new(?_hi:stdgo.GoInt64, ?_lo:stdgo.GoInt64) {
        if (_hi != null) this._hi = _hi;
        if (_lo != null) this._lo = _lo;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T__wrap___localname___score_6194(_hi, _lo);
    }
}
