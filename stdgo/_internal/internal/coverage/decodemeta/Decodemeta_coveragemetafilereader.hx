package stdgo._internal.internal.coverage.decodemeta;
@:structInit @:using(stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension) class CoverageMetaFileReader {
    public var _f : stdgo.Ref<stdgo._internal.os.Os_file.File> = (null : stdgo.Ref<stdgo._internal.os.Os_file.File>);
    public var _hdr : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader = ({} : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader);
    public var _tmp : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _pkgOffsets : stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
    public var _pkgLengths : stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
    public var _strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader> = (null : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
    public var _fileRdr : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader> = (null : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
    public var _fileView : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _debug : Bool = false;
    public function new(?_f:stdgo.Ref<stdgo._internal.os.Os_file.File>, ?_hdr:stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader, ?_tmp:stdgo.Slice<stdgo.GoUInt8>, ?_pkgOffsets:stdgo.Slice<stdgo.GoUInt64>, ?_pkgLengths:stdgo.Slice<stdgo.GoUInt64>, ?_strtab:stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>, ?_fileRdr:stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>, ?_fileView:stdgo.Slice<stdgo.GoUInt8>, ?_debug:Bool) {
        if (_f != null) this._f = _f;
        if (_hdr != null) this._hdr = _hdr;
        if (_tmp != null) this._tmp = _tmp;
        if (_pkgOffsets != null) this._pkgOffsets = _pkgOffsets;
        if (_pkgLengths != null) this._pkgLengths = _pkgLengths;
        if (_strtab != null) this._strtab = _strtab;
        if (_fileRdr != null) this._fileRdr = _fileRdr;
        if (_fileView != null) this._fileView = _fileView;
        if (_debug != null) this._debug = _debug;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CoverageMetaFileReader(_f, _hdr, _tmp, _pkgOffsets, _pkgLengths, _strtab, _fileRdr, _fileView, _debug);
    }
}
