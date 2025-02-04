package stdgo._internal.internal.coverage.decodemeta;
@:structInit @:using(stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension) class CoverageMetaDataDecoder {
    public var _r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
    public var _hdr : stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader = ({} : stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader);
    public var _strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _debug : Bool = false;
    public function new(?_r:stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>, ?_hdr:stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader, ?_strtab:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_debug:Bool) {
        if (_r != null) this._r = _r;
        if (_hdr != null) this._hdr = _hdr;
        if (_strtab != null) this._strtab = _strtab;
        if (_tmp != null) this._tmp = _tmp;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageMetaDataDecoder(_r, _hdr, _strtab, _tmp, _debug);
    }
}
