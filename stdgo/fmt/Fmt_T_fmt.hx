package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_fmt_static_extension) abstract T_fmt(stdgo._internal.fmt.Fmt_T_fmt.T_fmt) from stdgo._internal.fmt.Fmt_T_fmt.T_fmt to stdgo._internal.fmt.Fmt_T_fmt.T_fmt {
    public var _buf(get, set) : T_buffer;
    function get__buf():T_buffer return this._buf;
    function set__buf(v:T_buffer):T_buffer {
        this._buf = (v : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>);
        return v;
    }
    public var _fmtFlags(get, set) : T_fmtFlags;
    function get__fmtFlags():T_fmtFlags return this._fmtFlags;
    function set__fmtFlags(v:T_fmtFlags):T_fmtFlags {
        this._fmtFlags = v;
        return v;
    }
    public var _wid(get, set) : StdTypes.Int;
    function get__wid():StdTypes.Int return this._wid;
    function set__wid(v:StdTypes.Int):StdTypes.Int {
        this._wid = (v : stdgo.GoInt);
        return v;
    }
    public var _prec(get, set) : StdTypes.Int;
    function get__prec():StdTypes.Int return this._prec;
    function set__prec(v:StdTypes.Int):StdTypes.Int {
        this._prec = (v : stdgo.GoInt);
        return v;
    }
    public var _intbuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__intbuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._intbuf) i]);
    function set__intbuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._intbuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?_buf:T_buffer, ?_fmtFlags:T_fmtFlags, ?_wid:StdTypes.Int, ?_prec:StdTypes.Int, ?_intbuf:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.fmt.Fmt_T_fmt.T_fmt((_buf : stdgo.Ref<stdgo._internal.fmt.Fmt_T_buffer.T_buffer>), _fmtFlags, (_wid : stdgo.GoInt), (_prec : stdgo.GoInt), ([for (i in _intbuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
