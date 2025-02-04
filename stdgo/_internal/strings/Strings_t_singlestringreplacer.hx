package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_t_singlestringreplacer_static_extension.T_singleStringReplacer_static_extension) class T_singleStringReplacer {
    public var _finder : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>);
    public var _value : stdgo.GoString = "";
    public function new(?_finder:stdgo.Ref<stdgo._internal.strings.Strings_t_stringfinder.T_stringFinder>, ?_value:stdgo.GoString) {
        if (_finder != null) this._finder = _finder;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_singleStringReplacer(_finder, _value);
    }
}
