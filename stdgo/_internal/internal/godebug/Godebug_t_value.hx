package stdgo._internal.internal.godebug;
@:structInit @:using(stdgo._internal.internal.godebug.Godebug_t_value_static_extension.T_value_static_extension) class T_value {
    public var _text : stdgo.GoString = "";
    public var _bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher> = (null : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>);
    public function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_matcher.Matcher>) {
        if (_text != null) this._text = _text;
        if (_bisect != null) this._bisect = _bisect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_value(_text, _bisect);
    }
}
