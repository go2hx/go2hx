package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_Properties_static_extension.Properties_static_extension) class Properties {
    public var _entry : stdgo.GoUInt8 = 0;
    public var _last : stdgo.GoUInt8 = 0;
    public function new(?_entry:stdgo.GoUInt8, ?_last:stdgo.GoUInt8) {
        if (_entry != null) this._entry = _entry;
        if (_last != null) this._last = _last;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Properties(_entry, _last);
    }
}
