package stdgo._internal.regexp;
@:structInit @:using(stdgo._internal.regexp.Regexp_findtest_static_extension.FindTest_static_extension) class FindTest {
    public var _pat : stdgo.GoString = "";
    public var _text : stdgo.GoString = "";
    public var _matches : stdgo.Slice<stdgo.Slice<stdgo.GoInt>> = (null : stdgo.Slice<stdgo.Slice<stdgo.GoInt>>);
    public function new(?_pat:stdgo.GoString, ?_text:stdgo.GoString, ?_matches:stdgo.Slice<stdgo.Slice<stdgo.GoInt>>) {
        if (_pat != null) this._pat = _pat;
        if (_text != null) this._text = _text;
        if (_matches != null) this._matches = _matches;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FindTest(_pat, _text, _matches);
    }
}
