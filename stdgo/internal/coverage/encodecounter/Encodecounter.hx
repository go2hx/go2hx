package stdgo.internal.coverage.encodecounter;
class CounterVisitor_static_extension {
    static public function visitFuncs(t:stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitor.CounterVisitor, _f:CounterVisitorFn):stdgo.Error {
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitor_static_extension.CounterVisitor_static_extension.visitFuncs(t, _f);
    }
}
typedef CounterVisitor = stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitor.CounterVisitor;
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
typedef CounterVisitorFn = stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFn.CounterVisitorFn;
typedef CoverageDataWriterPointer = stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriterPointer.CoverageDataWriterPointer;
class CoverageDataWriter_static_extension {
    static public function _writeFooter(_cfw:CoverageDataWriter):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeFooter(_cfw);
    }
    static public function _writeCounters(_cfw:CoverageDataWriter, _visitor:CounterVisitor, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeCounters(_cfw, _visitor, _ws);
    }
    static public function _writeBytes(_cfw:CoverageDataWriter, _b:Array<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeBytes(_cfw, _b);
    }
    static public function _writeHeader(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeHeader(_cfw, _metaFileHash);
    }
    static public function appendSegment(_cfw:CoverageDataWriter, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension.appendSegment(_cfw, _args, _visitor);
    }
    static public function _writeSegmentPreamble(_cfw:CoverageDataWriter, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._writeSegmentPreamble(_cfw, _args, _ws);
    }
    static public function _patchSegmentHeader(_cfw:CoverageDataWriter, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_WriteSeeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension._patchSegmentHeader(_cfw, _ws);
    }
    static public function write(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>, _args:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _args = (_args : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension.write(_cfw, _metaFileHash, _args, _visitor);
    }
}
typedef CounterVisitorFnPointer = stdgo._internal.internal.coverage.encodecounter.Encodecounter_CounterVisitorFnPointer.CounterVisitorFnPointer;
class CounterVisitorFn_static_extension {

}
class Encodecounter {
    static public inline function newCoverageDataWriter(_w:stdgo._internal.io.Io_Writer.Writer, _flav:stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor):CoverageDataWriter {
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_newCoverageDataWriter.newCoverageDataWriter(_w, _flav);
    }
}
