package stdgo.strings;
@:structInit @:using(stdgo.strings.Strings.T_singleStringReplacer_static_extension) abstract T_singleStringReplacer(stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer) from stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer to stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer {
    public var _finder(get, set) : T_stringFinder;
    function get__finder():T_stringFinder return this._finder;
    function set__finder(v:T_stringFinder):T_stringFinder {
        this._finder = (v : stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>);
        return v;
    }
    public var _value(get, set) : String;
    function get__value():String return this._value;
    function set__value(v:String):String {
        this._value = (v : stdgo.GoString);
        return v;
    }
    public function new(?_finder:T_stringFinder, ?_value:String) this = new stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer((_finder : stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>), (_value : stdgo.GoString));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
