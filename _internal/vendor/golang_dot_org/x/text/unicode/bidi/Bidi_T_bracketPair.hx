package _internal.vendor.golang_dot_org.x.text.unicode.bidi;
@:structInit @:using(_internal.vendor.golang_dot_org.x.text.unicode.bidi.Bidi_T_bracketPair_static_extension.T_bracketPair_static_extension) class T_bracketPair {
    public var _opener : stdgo.GoInt = 0;
    public var _closer : stdgo.GoInt = 0;
    public function new(?_opener:stdgo.GoInt, ?_closer:stdgo.GoInt) {
        if (_opener != null) this._opener = _opener;
        if (_closer != null) this._closer = _closer;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bracketPair(_opener, _closer);
    }
}
