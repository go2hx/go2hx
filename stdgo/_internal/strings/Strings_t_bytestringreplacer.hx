package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_t_bytestringreplacer_static_extension.T_byteStringReplacer_static_extension) class T_byteStringReplacer {
    public var _replacements : stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>> = new stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>(256, 256);
    public var _toReplace : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public function new(?_replacements:stdgo.GoArray<stdgo.Slice<stdgo.GoUInt8>>, ?_toReplace:stdgo.Slice<stdgo.GoString>) {
        if (_replacements != null) this._replacements = _replacements;
        if (_toReplace != null) this._toReplace = _toReplace;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_byteStringReplacer(_replacements, _toReplace);
    }
}
