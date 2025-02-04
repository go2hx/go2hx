package stdgo._internal.internal.coverage.encodemeta;
@:structInit @:using(stdgo._internal.internal.coverage.encodemeta.Encodemeta_coveragemetafilewriter_static_extension.CoverageMetaFileWriter_static_extension) class CoverageMetaFileWriter {
    public var _stab : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer = ({} : stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer);
    public var _mfname : stdgo.GoString = "";
    public var _w : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _debug : Bool = false;
    public function new(?_stab:stdgo._internal.internal.coverage.stringtab.Stringtab_writer.Writer, ?_mfname:stdgo.GoString, ?_w:stdgo.Ref<stdgo._internal.bufio.Bufio_writer.Writer>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_debug:Bool) {
        if (_stab != null) this._stab = _stab;
        if (_mfname != null) this._mfname = _mfname;
        if (_w != null) this._w = _w;
        if (_tmp != null) this._tmp = _tmp;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageMetaFileWriter(_stab, _mfname, _w, _tmp, _debug);
    }
}
