package stdgo.internal.coverage.decodemeta;
@:structInit @:using(stdgo.internal.coverage.decodemeta.Decodemeta.CoverageMetaFileReader_static_extension) abstract CoverageMetaFileReader(stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader) from stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader to stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader {
    public var _f(get, set) : stdgo._internal.os.Os_File.File;
    function get__f():stdgo._internal.os.Os_File.File return this._f;
    function set__f(v:stdgo._internal.os.Os_File.File):stdgo._internal.os.Os_File.File {
        this._f = (v : stdgo.Ref<stdgo._internal.os.Os_File.File>);
        return v;
    }
    public var _hdr(get, set) : stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader;
    function get__hdr():stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader return this._hdr;
    function set__hdr(v:stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader):stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader {
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
    public var _strtab(get, set) : stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader;
    function get__strtab():stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader return this._strtab;
    function set__strtab(v:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader):stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader {
        this._strtab = (v : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>);
        return v;
    }
    public var _fileRdr(get, set) : stdgo._internal.bufio.Bufio_Reader.Reader;
    function get__fileRdr():stdgo._internal.bufio.Bufio_Reader.Reader return this._fileRdr;
    function set__fileRdr(v:stdgo._internal.bufio.Bufio_Reader.Reader):stdgo._internal.bufio.Bufio_Reader.Reader {
        this._fileRdr = (v : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>);
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
    public function new(?_f:stdgo._internal.os.Os_File.File, ?_hdr:stdgo._internal.internal.coverage.Coverage_MetaFileHeader.MetaFileHeader, ?_tmp:Array<std.UInt>, ?_pkgOffsets:Array<haxe.UInt64>, ?_pkgLengths:Array<haxe.UInt64>, ?_strtab:stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader, ?_fileRdr:stdgo._internal.bufio.Bufio_Reader.Reader, ?_fileView:Array<std.UInt>, ?_debug:Bool) this = new stdgo._internal.internal.coverage.decodemeta.Decodemeta_CoverageMetaFileReader.CoverageMetaFileReader((_f : stdgo.Ref<stdgo._internal.os.Os_File.File>), _hdr, ([for (i in _tmp) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), ([for (i in _pkgOffsets) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), ([for (i in _pkgLengths) (i : stdgo.GoUInt64)] : stdgo.Slice<stdgo.GoUInt64>), (_strtab : stdgo.Ref<stdgo._internal.internal.coverage.stringtab.Stringtab_Reader.Reader>), (_fileRdr : stdgo.Ref<stdgo._internal.bufio.Bufio_Reader.Reader>), ([for (i in _fileView) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), _debug);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
