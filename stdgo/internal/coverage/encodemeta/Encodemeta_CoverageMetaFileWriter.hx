package stdgo.internal.coverage.encodemeta;
@:structInit @:using(stdgo.internal.coverage.encodemeta.Encodemeta.CoverageMetaFileWriter_static_extension) abstract CoverageMetaFileWriter(stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter) from stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter to stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer {
        this._stab = v;
        return v;
    }
    public var _mfname(get, set) : String;
    function get__mfname():String return this._mfname;
    function set__mfname(v:String):String {
        this._mfname = (v : stdgo.GoString);
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer, ?_mfname:String, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_tmp:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.encodemeta.Encodemeta_CoverageMetaFileWriter.CoverageMetaFileWriter(_stab, (_mfname : stdgo.GoString), (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
