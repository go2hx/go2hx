package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_ss_static_extension) abstract T_ss(stdgo._internal.fmt.Fmt_T_ss.T_ss) from stdgo._internal.fmt.Fmt_T_ss.T_ss to stdgo._internal.fmt.Fmt_T_ss.T_ss {
    public var _rs(get, set) : stdgo._internal.io.Io_RuneScanner.RuneScanner;
    function get__rs():stdgo._internal.io.Io_RuneScanner.RuneScanner return this._rs;
    function set__rs(v:stdgo._internal.io.Io_RuneScanner.RuneScanner):stdgo._internal.io.Io_RuneScanner.RuneScanner {
        this._rs = v;
        return v;
    }
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = v;
        return v;
    }
    public var _count(get, set) : StdTypes.Int;
    function get__count():StdTypes.Int return this._count;
    function set__count(v:StdTypes.Int):StdTypes.Int {
        this._count = (v : stdgo.GoInt);
        return v;
    }
    public var _atEOF(get, set) : Bool;
    function get__atEOF():Bool return this._atEOF;
    function set__atEOF(v:Bool):Bool {
        this._atEOF = v;
        return v;
    }
    public var _ssave(get, set) : T_ssave;
    function get__ssave():T_ssave return this._ssave;
    function set__ssave(v:T_ssave):T_ssave {
        this._ssave = v;
        return v;
    }
    public function new(?_rs:stdgo._internal.io.Io_RuneScanner.RuneScanner, ?_buf:T_buffer, ?_count:StdTypes.Int, ?_atEOF:Bool, ?_ssave:T_ssave) this = new stdgo._internal.fmt.Fmt_T_ss.T_ss(_rs, _buf, (_count : stdgo.GoInt), _atEOF, _ssave);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
