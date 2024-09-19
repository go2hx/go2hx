package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit class T_options {
    public var _defaultDirection : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction = ((0 : stdgo.GoInt) : _internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction);
    public function new(?_defaultDirection:_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Direction.Direction) {
        if (_defaultDirection != null) this._defaultDirection = _defaultDirection;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_options(_defaultDirection);
    }
}
