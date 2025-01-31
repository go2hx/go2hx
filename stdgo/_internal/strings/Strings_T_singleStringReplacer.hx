package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_T_singleStringReplacer_static_extension.T_singleStringReplacer_static_extension) class T_singleStringReplacer {
    public var _finder : stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder> = (null : stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>);
    public var _value : stdgo.GoString = "";
    public function new(?_finder:stdgo.Ref<stdgo._internal.strings.Strings_T_stringFinder.T_stringFinder>, ?_value:stdgo.GoString) {
        if (_finder != null) this._finder = _finder;
        if (_value != null) this._value = _value;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_singleStringReplacer(_finder, _value);
    }
}
