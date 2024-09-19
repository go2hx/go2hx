package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Run_static_extension.Run_static_extension) class Run {
    public var _runes : stdgo.Slice<stdgo.GoInt32> = (null : stdgo.Slice<stdgo.GoInt32>);
    public var _direction : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction = ((0 : stdgo.GoInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
    public var _startpos : stdgo.GoInt = 0;
    public function new(?_runes:stdgo.Slice<stdgo.GoInt32>, ?_direction:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction, ?_startpos:stdgo.GoInt) {
        if (_runes != null) this._runes = _runes;
        if (_direction != null) this._direction = _direction;
        if (_startpos != null) this._startpos = _startpos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Run(_runes, _direction, _startpos);
    }
}
