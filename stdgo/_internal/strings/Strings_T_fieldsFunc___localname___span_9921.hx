package stdgo._internal.strings;
import stdgo._internal.unsafe.Unsafe;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.internal.bytealg.Bytealg;
import stdgo._internal.unicode.Unicode;
import stdgo._internal.io.Io;
import stdgo._internal.errors.Errors;
@:structInit @:using(stdgo._internal.strings.Strings_T_fieldsFunc___localname___span_9921_static_extension.T_fieldsFunc___localname___span_9921_static_extension) class T_fieldsFunc___localname___span_9921 {
    public var _start : stdgo.GoInt = 0;
    public var _end : stdgo.GoInt = 0;
    public function new(?_start:stdgo.GoInt, ?_end:stdgo.GoInt) {
        if (_start != null) this._start = _start;
        if (_end != null) this._end = _end;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_fieldsFunc___localname___span_9921(_start, _end);
    }
}
