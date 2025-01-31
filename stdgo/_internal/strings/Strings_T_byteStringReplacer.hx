package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_T_byteStringReplacer_static_extension.T_byteStringReplacer_static_extension) class T_byteStringReplacer {
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
