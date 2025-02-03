package stdgo.internal.coverage.encodecounter;
@:structInit @:using(stdgo.internal.coverage.encodecounter.Encodecounter.CoverageDataWriter_static_extension) abstract CoverageDataWriter(stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter) from stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter to stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer {
        this._stab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_Writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_Writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_Writer.Writer):stdgo._internal.bufio.Bufio_Writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
        return v;
    }
    public var _csh(get, set) : stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader;
    function get__csh():stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader return this._csh;
    function set__csh(v:stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader):stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader {
        this._csh = v;
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cflavor(get, set) : stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor;
    function get__cflavor():stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor return this._cflavor;
    function set__cflavor(v:stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor):stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor {
        this._cflavor = v;
        return v;
    }
    public var _segs(get, set) : std.UInt;
    function get__segs():std.UInt return this._segs;
    function set__segs(v:std.UInt):std.UInt {
        this._segs = (v : stdgo.GoUInt32);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer, ?_w:stdgo._internal.bufio.Bufio_Writer.Writer, ?_csh:stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader, ?_tmp:Array<std.UInt>, ?_cflavor:stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor, ?_segs:std.UInt, ?_debug:Bool) this = new stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter((_stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer>), (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>), _csh, ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _cflavor, (_segs : stdgo.GoUInt32), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
