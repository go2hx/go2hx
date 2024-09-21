package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Ordering_static_extension.Ordering_static_extension) class Ordering {
    public var _runes : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>);
    public var _directions : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction>);
    public var _startpos : stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
    public function new(?_runes:stdgo.Slice<stdgo.Slice<stdgo.GoInt32>>, ?_directions:stdgo.Slice<_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction>, ?_startpos:stdgo.Slice<stdgo.GoInt>) {
        if (_runes != null) this._runes = _runes;
        if (_directions != null) this._directions = _directions;
        if (_startpos != null) this._startpos = _startpos;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Ordering(_runes, _directions, _startpos);
    }
}
