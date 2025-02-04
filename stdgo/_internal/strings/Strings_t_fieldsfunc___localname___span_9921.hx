package stdgo._internal.strings;
@:structInit @:using(stdgo._internal.strings.Strings_t_fieldsfunc___localname___span_9921_static_extension.T_fieldsFunc___localname___span_9921_static_extension) class T_fieldsFunc___localname___span_9921 {
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
