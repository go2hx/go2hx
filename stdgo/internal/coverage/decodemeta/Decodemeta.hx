package stdgo.internal.coverage.decodemeta;
@:structInit @:using(stdgo.internal.coverage.decodemeta.Decodemeta.CoverageMetaDataDecoder_static_extension) abstract CoverageMetaDataDecoder(stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder) from stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder to stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder {
    public var _r(get, set) : stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader;
    function get__r():stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader return this._r;
    function set__r(v:stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader):stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader {
        this._r = (v : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>);
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader):stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader {
        this._hdr = v;
        return v;
    }
    public var _strtab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader;
    function get__strtab():stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader return this._strtab;
    function set__strtab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader {
        this._strtab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
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
    public function new(?_r:stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader, ?_hdr:stdgo._internal.internal.coverage.Coverage_metasymbolheader.MetaSymbolHeader, ?_strtab:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader, ?_tmp:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder((_r : stdgo.Ref<stdgo._internal.internal.coverage.slicereader.Slicereader_reader.Reader>), _hdr, (_strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>), ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
@:structInit @:using(stdgo.internal.coverage.decodemeta.Decodemeta.CoverageMetaFileReader_static_extension) abstract CoverageMetaFileReader(stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader) from stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader to stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader {
    public var _f(get, set) : stdgo._internal.os.Os_file.File;
    function get__f():stdgo._internal.os.Os_file.File return this._f;
    function set__f(v:stdgo._internal.os.Os_file.File):stdgo._internal.os.Os_file.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader):stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader {
        this._hdr = v;
        return v;
    }
    public var _tmp(get, set) : Array<std.UInt>;
    function get__tmp():Array<std.UInt> return [for (i in this._tmp) i];
    function set__tmp(v:Array<std.UInt>):Array<std.UInt> {
        this._tmp = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _pkgOffsets(get, set) : Array<haxe.UInt64>;
    function get__pkgOffsets():Array<haxe.UInt64> return [for (i in this._pkgOffsets) i];
    function set__pkgOffsets(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this._pkgOffsets = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var _pkgLengths(get, set) : Array<haxe.UInt64>;
    function get__pkgLengths():Array<haxe.UInt64> return [for (i in this._pkgLengths) i];
    function set__pkgLengths(v:Array<haxe.UInt64>):Array<haxe.UInt64> {
        this._pkgLengths = ([for (i in v) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>);
        return v;
    }
    public var _strtab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader;
    function get__strtab():stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader return this._strtab;
    function set__strtab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader {
        this._strtab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>);
        return v;
    }
    public var _fileRdr(get, set) : stdgo._internal.bufio.Bufio_reader.Reader;
    function get__fileRdr():stdgo._internal.bufio.Bufio_reader.Reader return this._fileRdr;
    function set__fileRdr(v:stdgo._internal.bufio.Bufio_reader.Reader):stdgo._internal.bufio.Bufio_reader.Reader {
        this._fileRdr = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>);
        return v;
    }
    public var _fileView(get, set) : Array<std.UInt>;
    function get__fileView():Array<std.UInt> return [for (i in this._fileView) i];
    function set__fileView(v:Array<std.UInt>):Array<std.UInt> {
        this._fileView = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var _debug(get, set) : Bool;
    function get__debug():Bool return this._debug;
    function set__debug(v:Bool):Bool {
        this._debug = v;
        return v;
    }
    public function new(?_f:stdgo._internal.os.Os_file.File, ?_hdr:stdgo._internal.internal.coverage.Coverage_metafileheader.MetaFileHeader, ?_tmp:Array<std.UInt>, ?_pkgOffsets:Array<haxe.UInt64>, ?_pkgLengths:Array<haxe.UInt64>, ?_strtab:stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader, ?_fileRdr:stdgo._internal.bufio.Bufio_reader.Reader, ?_fileView:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader((_f : stdgo.Ref<stdgo._internal.os.Os_file.File>), _hdr, ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _pkgOffsets) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in _pkgLengths) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), (_strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_reader.Reader>), (_fileRdr : stdgo.Ref<stdgo._internal.bufio.Bufio_reader.Reader>), ([for (i in _fileView) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
typedef CoverageMetaDataDecoderPointer = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoderpointer.CoverageMetaDataDecoderPointer;
class CoverageMetaDataDecoder_static_extension {
    static public function readFunc(_d:CoverageMetaDataDecoder, _fidx:std.UInt, _f:stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        final _fidx = (_fidx : stdgo.GoUInt32);
        final _f = (_f : stdgo.Ref<stdgo._internal.internal.coverage.Coverage_funcdesc.FuncDesc>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension.readFunc(_d, _fidx, _f);
    }
    static public function numFuncs(_d:CoverageMetaDataDecoder):std.UInt {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension.numFuncs(_d);
    }
    static public function modulePath(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension.modulePath(_d);
    }
    static public function packageName(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension.packageName(_d);
    }
    static public function packagePath(_d:CoverageMetaDataDecoder):String {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension.packagePath(_d);
    }
    static public function _readStringTable(_d:CoverageMetaDataDecoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension._readStringTable(_d);
    }
    static public function _readHeader(_d:CoverageMetaDataDecoder):stdgo.Error {
        final _d = (_d : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder.CoverageMetaDataDecoder>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetadatadecoder_static_extension.CoverageMetaDataDecoder_static_extension._readHeader(_d);
    }
}
typedef CoverageMetaFileReaderPointer = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereaderpointer.CoverageMetaFileReaderPointer;
class CoverageMetaFileReader_static_extension {
    static public function getPackagePayload(_r:CoverageMetaFileReader, _pkIdx:std.UInt, _payloadbuf:Array<std.UInt>):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        final _pkIdx = (_pkIdx : stdgo.GoUInt32);
        final _payloadbuf = ([for (i in _payloadbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.getPackagePayload(_r, _pkIdx, _payloadbuf);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function getPackageDecoder(_r:CoverageMetaFileReader, _pkIdx:std.UInt, _payloadbuf:Array<std.UInt>):stdgo.Tuple.Tuple3<CoverageMetaDataDecoder, Array<std.UInt>, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        final _pkIdx = (_pkIdx : stdgo.GoUInt32);
        final _payloadbuf = ([for (i in _payloadbuf) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.getPackageDecoder(_r, _pkIdx, _payloadbuf);
            { _0 : obj._0, _1 : [for (i in obj._1) i], _2 : obj._2 };
        };
    }
    static public function fileHash(_r:CoverageMetaFileReader):haxe.ds.Vector<std.UInt> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return haxe.ds.Vector.fromArrayCopy([for (i in stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.fileHash(_r)) i]);
    }
    static public function counterGranularity(_r:CoverageMetaFileReader):stdgo._internal.internal.coverage.Coverage_countergranularity.CounterGranularity {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.counterGranularity(_r);
    }
    static public function counterMode(_r:CoverageMetaFileReader):stdgo._internal.internal.coverage.Coverage_countermode.CounterMode {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.counterMode(_r);
    }
    static public function numPackages(_r:CoverageMetaFileReader):haxe.UInt64 {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension.numPackages(_r);
    }
    static public function _rdUint64(_r:CoverageMetaFileReader):stdgo.Tuple<haxe.UInt64, stdgo.Error> {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension._rdUint64(_r);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function _readFileHeader(_r:CoverageMetaFileReader):stdgo.Error {
        final _r = (_r : stdgo.Ref<stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader.CoverageMetaFileReader>);
        return stdgo._internal.internal.coverage.decodemeta.Decodemeta_coveragemetafilereader_static_extension.CoverageMetaFileReader_static_extension._readFileHeader(_r);
    }
}
class Decodemeta {
    static public inline function newCoverageMetaDataDecoder(_b:Array<std.UInt>, _readonly:Bool):stdgo.Tuple<CoverageMetaDataDecoder, stdgo.Error> {
        final _b = ([for (i in _b) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetadatadecoder.newCoverageMetaDataDecoder(_b, _readonly);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    /**
        * NewCoverageMetaFileReader returns a new helper object for reading
        * the coverage meta-data output file 'f'. The param 'fileView' is a
        * read-only slice containing the contents of 'f' obtained by mmap'ing
        * the file read-only; 'fileView' may be nil, in which case the helper
        * will read the contents of the file using regular file Read
        * operations.
    **/
    static public inline function newCoverageMetaFileReader(_f:stdgo._internal.os.Os_file.File, _fileView:Array<std.UInt>):stdgo.Tuple<CoverageMetaFileReader, stdgo.Error> {
        final _f = (_f : stdgo.Ref<stdgo._internal.os.Os_file.File>);
        final _fileView = ([for (i in _fileView) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return {
            final obj = stdgo._internal.internal.coverage.decodemeta.Decodemeta_newcoveragemetafilereader.newCoverageMetaFileReader(_f, _fileView);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
}
