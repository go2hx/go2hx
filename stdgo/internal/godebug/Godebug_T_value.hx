package stdgo.internal.godebug;
@:structInit @:using(stdgo.internal.godebug.Godebug.T_value_static_extension) abstract T_value(stdgo._internal.internal.godebug.Godebug_T_value.T_value) from stdgo._internal.internal.godebug.Godebug_T_value.T_value to stdgo._internal.internal.godebug.Godebug_T_value.T_value {
    public var _text(get, set) : String;
    function get__text():String return this._text;
    function set__text(v:String):String {
        this._text = (v : stdgo.GoString);
        return v;
    }
    public var _bisect(get, set) : stdgo._internal.internal.bisect.Bisect_Matcher.Matcher;
    function get__bisect():stdgo._internal.internal.bisect.Bisect_Matcher.Matcher return this._bisect;
    function set__bisect(v:stdgo._internal.internal.bisect.Bisect_Matcher.Matcher):stdgo._internal.internal.bisect.Bisect_Matcher.Matcher {
        this._bisect = (v : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher>);
        return v;
    }
    public function new(?_text:String, ?_bisect:stdgo._internal.internal.bisect.Bisect_Matcher.Matcher) this = new stdgo._internal.internal.godebug.Godebug_T_value.T_value((_text : stdgo.GoString), (_bisect : stdgo.Ref<stdgo._internal.internal.bisect.Bisect_Matcher.Matcher>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
