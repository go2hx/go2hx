package stdgo.compress.zlib;
@:structInit @:using(stdgo.compress.zlib.Zlib.Writer_static_extension) abstract Writer(stdgo._internal.compress.zlib.Zlib_Writer.Writer) from stdgo._internal.compress.zlib.Zlib_Writer.Writer to stdgo._internal.compress.zlib.Zlib_Writer.Writer {
    public var _w(get, set) : stdgo._internal.io.Io_Writer.Writer;
    function get__w():stdgo._internal.io.Io_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
        this._w = v;
        return v;
    }
    public var _level(get, set) : StdTypes.Int;
    function get__level():StdTypes.Int return this._level;
    function set__level(v:StdTypes.Int):StdTypes.Int {
        this._level = (v : stdgo.GoInt);
        return v;
    }
    public var _dict(get, set) : Array<std.UInt>;
    function get__dict():Array<std.UInt> return [for (i in this._dict) i];
    function set__dict(v:Array<std.UInt>):Array<std.UInt> {
        this._dict = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _compressor(get, set) : stdgo._internal.compress.flate.Flate_Writer.Writer;
    function get__compressor():stdgo._internal.compress.flate.Flate_Writer.Writer return this._compressor;
    function set__compressor(v:stdgo._internal.compress.flate.Flate_Writer.Writer):stdgo._internal.compress.flate.Flate_Writer.Writer {
        this._compressor = (v : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>);
        return v;
    }
    public var _digest(get, set) : stdgo._internal.hash.Hash_Hash32.Hash32;
    function get__digest():stdgo._internal.hash.Hash_Hash32.Hash32 return this._digest;
    function set__digest(v:stdgo._internal.hash.Hash_Hash32.Hash32):stdgo._internal.hash.Hash_Hash32.Hash32 {
        this._digest = v;
        return v;
    }
    public var _err(get, set) : stdgo.Error;
    function get__err():stdgo.Error return this._err;
    function set__err(v:stdgo.Error):stdgo.Error {
        this._err = (v : stdgo.Error);
        return v;
    }
    public var _scratch(get, set) : haxe.ds.Vector<std.UInt>;
    function get__scratch():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this._scratch) i]);
    function set__scratch(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this._scratch = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public var _wroteHeader(get, set) : Bool;
    function get__wroteHeader():Bool return this._wroteHeader;
    function set__wroteHeader(v:Bool):Bool {
        this._wroteHeader = v;
        return v;
    }
    public function new(?_w:stdgo._internal.io.Io_Writer.Writer, ?_level:StdTypes.Int, ?_dict:Array<std.UInt>, ?_compressor:stdgo._internal.compress.flate.Flate_Writer.Writer, ?_digest:stdgo._internal.hash.Hash_Hash32.Hash32, ?_err:stdgo.Error, ?_scratch:haxe.ds.Vector<std.UInt>, ?_wroteHeader:Bool) this = new stdgo._internal.compress.zlib.Zlib_Writer.Writer(_w, (_level : stdgo.GoInt), ([for (i in _dict) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), (_compressor : stdgo.Ref<stdgo._internal.compress.flate.Flate_Writer.Writer>), _digest, (_err : stdgo.Error), ([for (i in _scratch) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>), _wroteHeader);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
