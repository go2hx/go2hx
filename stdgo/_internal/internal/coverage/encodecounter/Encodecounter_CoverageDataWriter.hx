package stdgo._internal.internal.coverage.encodecounter;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.sort.Sort;
import stdgo._internal.internal.coverage.uleb128.Uleb128;
import stdgo._internal.internal.coverage.Coverage;
@:structInit @:using(stdgo._internal.internal.coverage.encodecounter.Encodecounter_CoverageDataWriter_static_extension.CoverageDataWriter_static_extension) class CoverageDataWriter {
    public var _stab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer>);
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>);
    public var _csh : stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader = ({} : stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _cflavor : stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor = ((0 : stdgo.GoUInt8) : stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor);
    public var _segs : stdgo.GoUInt32 = 0;
    public var _debug : Bool = false;
    public function new(?_stab:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Writer.Writer>, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_Writer.Writer>, ?_csh:stdgo._internal.internal.coverage.Coverage_CounterSegmentHeader.CounterSegmentHeader, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_cflavor:stdgo._internal.internal.coverage.Coverage_CounterFlavor.CounterFlavor, ?_segs:stdgo.GoUInt32, ?_debug:Bool) {
        if (_stab != null) this._stab = _stab;
        if (_w != null) this._w = _w;
        if (_csh != null) this._csh = _csh;
        if (_tmp != null) this._tmp = _tmp;
        if (_cflavor != null) this._cflavor = _cflavor;
        if (_segs != null) this._segs = _segs;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageDataWriter(_stab, _w, _csh, _tmp, _cflavor, _segs, _debug);
    }
}
