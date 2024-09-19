package stdgo._internal.internal.godebug;
import stdgo._internal.unsafe.Unsafe;
@:structInit class T_value {
    public var _text : stdgo.GoString = "";
    public var _bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher> = (null : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher>);
    public function new(?_text:stdgo.GoString, ?_bisect:stdgo.Ref<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher>) {
        if (_text != null) this._text = _text;
        if (_bisect != null) this._bisect = _bisect;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_value(_text, _bisect);
    }
}
