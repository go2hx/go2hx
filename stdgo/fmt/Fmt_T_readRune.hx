package stdgo.fmt;
@:structInit @:using(stdgo.fmt.Fmt.T_readRune_static_extension) abstract T_readRune(stdgo._internal.fmt.Fmt_T_readRune.T_readRune) from stdgo._internal.fmt.Fmt_T_readRune.T_readRune to stdgo._internal.fmt.Fmt_T_readRune.T_readRune {
    public var _reader(get, set) : stdgo._internal.io.Io_Reader.Reader;
    function get__reader():stdgo._internal.io.Io_Reader.Reader return this._reader;
    function set__reader(v:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
        this._reader = v;
        return v;
    }
    public var _buf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__buf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._buf) i]);
    function set__buf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._buf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _pending(get, set) : StdTypes.Int;
    function get__pending():StdTypes.Int return this._pending;
    function set__pending(v:StdTypes.Int):StdTypes.Int {
        this._pending = (v : stdgo.GoInt);
        return v;
    }
    public var _pendBuf(get, set) : haxe.ds.Vector<std.UInt>;
    function get__pendBuf():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._pendBuf) i]);
    function set__pendBuf(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._pendBuf = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _peekRune(get, set) : StdTypes.Int;
    function get__peekRune():StdTypes.Int return this._peekRune;
    function set__peekRune(v:StdTypes.Int):StdTypes.Int {
        this._peekRune = (v : stdgo.GoInt32);
        return v;
    }
    public function new(?_reader:stdgo._internal.io.Io_Reader.Reader, ?_buf:haxe.ds.Vector<std.UInt>, ?_pending:StdTypes.Int, ?_pendBuf:haxe.ds.Vector<std.UInt>, ?_peekRune:StdTypes.Int) this = new stdgo._internal.fmt.Fmt_T_readRune.T_readRune(_reader, ([for (i in _buf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_pending : stdgo.GoInt), ([for (i in _pendBuf) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), (_peekRune : stdgo.GoInt32));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
