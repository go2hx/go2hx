package stdgo.encodecounter;
class CounterVisitor_static_extension {
    static public function visitFuncs(t:stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor, _f:CounterVisitorFn):stdgo.Error {
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor_static_extension.CounterVisitor_static_extension.visitFuncs(t, _f);
    }
}
@:forward abstract CounterVisitor(stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor) from stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor to stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitor.CounterVisitor {
    @:from
    static function fromHaxeInterface(x:{ function visitFuncs(_f:CounterVisitorFn):stdgo.Error; }):CounterVisitor {
        var __f__:Void -> stdgo.AnyInterface = null;
        final y:CounterVisitor = { visitFuncs : _0 -> x.visitFuncs(_0), __underlying__ : () -> __f__() };
        __f__ = () -> stdgo.Go.toInterface(y);
        return y;
    }
}
@:structInit @:using(stdgo.internal.coverage.encodecounter.Encodecounter.CoverageDataWriter_static_extension) abstract CoverageDataWriter(stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter) from stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter to stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter {
    public var _stab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer;
    function get__stab():stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer return this._stab;
    function set__stab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer):stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer {
        this._stab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>);
        return v;
    }
    public var _w(get, set) : stdgo._internal.bufio.Bufio_writer.Writer;
    function get__w():stdgo._internal.bufio.Bufio_writer.Writer return this._w;
    function set__w(v:stdgo._internal.bufio.Bufio_writer.Writer):stdgo._internal.bufio.Bufio_writer.Writer {
        this._w = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
        return v;
    }
    public var _csh(get, set) : stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader;
    function get__csh():stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader return this._csh;
    function set__csh(v:stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader):stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader {
        this._csh = v;
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _cflavor(get, set) : stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor;
    function get__cflavor():stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor return this._cflavor;
    function set__cflavor(v:stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor):stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor {
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
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer, ?_w:stdgo._internal.bufio.Bufio_writer.Writer, ?_csh:stdgo._internal.internal.coverage.Coverage_countersegmentheader.CounterSegmentHeader, ?_tmp:Array<std.UInt>, ?_cflavor:stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor, ?_segs:std.UInt, ?_debug:Bool) this = new stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter((_stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer>), (_w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>), _csh, ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _cflavor, (_segs : stdgo.GoUInt32), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CounterVisitorFn = stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitorfn.CounterVisitorFn;
typedef CoverageDataWriterPointer = stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriterpointer.CoverageDataWriterPointer;
class CoverageDataWriter_static_extension {
    static public function _writeFooter(_cfw:CoverageDataWriter):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._writeFooter(_cfw);
    }
    static public function _writeCounters(_cfw:CoverageDataWriter, _visitor:CounterVisitor, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._writeCounters(_cfw, _visitor, _ws);
    }
    static public function _writeBytes(_cfw:CoverageDataWriter, _b:Array<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._writeBytes(_cfw, _b);
    }
    static public function _writeHeader(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._writeHeader(_cfw, _metaFileHash);
    }
    static public function appendSegment(_cfw:CoverageDataWriter, _args:Map<String, String>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _args = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _args) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension.appendSegment(_cfw, _args, _visitor);
    }
    static public function _writeSegmentPreamble(_cfw:CoverageDataWriter, _args:Map<String, String>, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _args = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _args) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._writeSegmentPreamble(_cfw, _args, _ws);
    }
    static public function _patchSegmentHeader(_cfw:CoverageDataWriter, _ws:stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _ws = (_ws : stdgo.Ref<stdgo._internal.internal.coverage.slicewriter.Slicewriter_writeseeker.WriteSeeker>);
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension._patchSegmentHeader(_cfw, _ws);
    }
    static public function write(_cfw:CoverageDataWriter, _metaFileHash:haxe.ds.Vector<std.UInt>, _args:Map<String, String>, _visitor:CounterVisitor):stdgo.Error {
        final _cfw = (_cfw : stdgo.Ref<stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter.CoverageDataWriter>);
        final _metaFileHash = ([for (i in _metaFileHash) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        final _args = {
            final __obj__ = new stdgo.GoMap<stdgo.GoString, stdgo.GoString>();
            for (key => value in _args) {
                __obj__[(key : stdgo.GoString)] = (value : stdgo.GoString);
            };
            __obj__;
        };
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_coveragedatawriter_static_extension.CoverageDataWriter_static_extension.write(_cfw, _metaFileHash, _args, _visitor);
    }
}
typedef CounterVisitorFnPointer = stdgo._internal.internal.coverage.encodecounter.Encodecounter_countervisitorfnpointer.CounterVisitorFnPointer;
class CounterVisitorFn_static_extension {

}
class Encodecounter {
    static public inline function newCoverageDataWriter(_w:stdgo._internal.io.Io_writer.Writer, _flav:stdgo._internal.internal.coverage.Coverage_counterflavor.CounterFlavor):CoverageDataWriter {
        return stdgo._internal.internal.coverage.encodecounter.Encodecounter_newcoveragedatawriter.newCoverageDataWriter(_w, _flav);
    }
}
