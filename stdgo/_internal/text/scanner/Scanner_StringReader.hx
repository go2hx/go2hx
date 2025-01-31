package stdgo._internal.text.scanner;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.os.Os;
import stdgo._internal.unicode.Unicode;
@:structInit @:using(stdgo._internal.text.scanner.Scanner_StringReader_static_extension.StringReader_static_extension) class StringReader {
    public var _data : stdgo.Slice<stdgo.GoString> = (null : stdgo.Slice<stdgo.GoString>);
    public var _step : stdgo.GoInt = 0;
    public function new(?_data:stdgo.Slice<stdgo.GoString>, ?_step:stdgo.GoInt) {
        if (_data != null) this._data = _data;
        if (_step != null) this._step = _step;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new StringReader(_data, _step);
    }
}
