package stdgo.bytes;
@:structInit @:using(stdgo.bytes.Bytes.T_fieldsFunc___localname___span_11914_static_extension) abstract T_fieldsFunc___localname___span_11914(stdgo._internal.bytes.Bytes_T_fieldsFunc___localname___span_11914.T_fieldsFunc___localname___span_11914) from stdgo._internal.bytes.Bytes_T_fieldsFunc___localname___span_11914.T_fieldsFunc___localname___span_11914 to stdgo._internal.bytes.Bytes_T_fieldsFunc___localname___span_11914.T_fieldsFunc___localname___span_11914 {
    public var _start(get, set) : StdTypes.Int;
    function get__start():StdTypes.Int return this._start;
    function set__start(v:StdTypes.Int):StdTypes.Int {
        this._start = (v : stdgo.GoInt);
        return v;
    }
    public var _end(get, set) : StdTypes.Int;
    function get__end():StdTypes.Int return this._end;
    function set__end(v:StdTypes.Int):StdTypes.Int {
        this._end = (v : stdgo.GoInt);
        return v;
    }
    public function new(?_start:StdTypes.Int, ?_end:StdTypes.Int) this = new stdgo._internal.bytes.Bytes_T_fieldsFunc___localname___span_11914.T_fieldsFunc___localname___span_11914((_start : stdgo.GoInt), (_end : stdgo.GoInt));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
