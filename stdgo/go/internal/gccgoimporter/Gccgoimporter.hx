package stdgo.go.internal.gccgoimporter;
import stdgo.StdGoTypes;
import stdgo.Error;
import stdgo.Go;
import stdgo.GoString;
import stdgo.Pointer;
import stdgo.Slice;
import stdgo.GoArray;
import stdgo.GoMap;
import stdgo.Chan;
/**
    // Package gccgoimporter implements Import for gccgo-generated object files.
**/
private var __go2hxdoc__package : Bool;
/**
    // reserved is a singleton type used to fill type map slots that have
    // been reserved (i.e., for which a type number has been parsed) but
    // which don't have their actual type yet. When the type map is updated,
    // the actual type must replace a reserved entry (or we have an internal
    // error). Used for self-verification only - not required for correctness.
    
    
**/
private var _reserved = ({ type : (null : stdgo.go.types.Types.Type) } : T__struct_0);
/**
    // Magic strings for different archive file formats.
    
    
**/
private final _armag = ("!<arch>\n" : GoString);
/**
    // Magic strings for different archive file formats.
    
    
**/
private final _armagt = ("!<thin>\n" : GoString);
/**
    // Magic strings for different archive file formats.
    
    
**/
private final _armagb = ("<bigaf>\n" : GoString);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arNameOff = ("0" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arNameSize = ("16" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arDateOff = ("16" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arDateSize = ("12" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arUIDOff = ("28" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arUIDSize = ("6" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arGIDOff = ("34" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arGIDSize = ("6" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arModeOff = ("40" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arModeSize = ("8" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arSizeOff = ("48" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arSizeSize = ("10" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arFmagOff = ("58" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arFmagSize = ("2" : GoUInt64);
/**
    // Offsets and sizes for fields in a standard archive header.
    
    
**/
private final _arHdrSize = ("60" : GoUInt64);
/**
    // The contents of the fmag field of a standard archive header.
    
    
**/
private final _arfmag = ("`\n" : GoString);
/**
    
    
    
**/
private final _gccgov1Magic = ("v1;\n" : GoString);
/**
    
    
    
**/
private final _gccgov2Magic = ("v2;\n" : GoString);
/**
    
    
    
**/
private final _gccgov3Magic = ("v3;\n" : GoString);
/**
    
    
    
**/
private final _goimporterMagic = ("\n$$$$ " : GoString);
/**
    
    
    
**/
private final _archiveMagic = ("!<ar" : GoString);
/**
    
    
    
**/
private final _aixbigafMagic = ("<big" : GoString);
/**
    // From gofrontend/go/export.h
    // Note that these values are negative in the gofrontend and have been made positive
    // in the gccgoimporter.
    
    
**/
private final _gccgoBuiltinINT8 = ("1" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinINT16 = ("2" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinINT32 = ("3" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinINT64 = ("4" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINT8 = ("5" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINT16 = ("6" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINT32 = ("7" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINT64 = ("8" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinFLOAT32 = ("9" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinFLOAT64 = ("10" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinINT = ("11" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINT = ("12" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinUINTPTR = ("13" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinBOOL = ("15" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinSTRING = ("16" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinCOMPLEX64 = ("17" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinCOMPLEX128 = ("18" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinERROR = ("19" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinBYTE = ("20" : GoUInt64);
/**
    
    
    
**/
private final _gccgoBuiltinRUNE = ("21" : GoUInt64);
/**
    
    
    
**/
private typedef T__interface_0 = StructType & {
    /**
        
        
        
    **/
    public function name():GoString;
};
/**
    
    
    
**/
@:structInit @:private @:using(go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_static_extension) class T_seekerReadAt {
    public var _seeker : stdgo.io.Io.ReadSeeker = (null : stdgo.io.Io.ReadSeeker);
    public function new(?_seeker:stdgo.io.Io.ReadSeeker) {
        if (_seeker != null) this._seeker = _seeker;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_seekerReadAt(_seeker);
    }
}
/**
    // Information about a specific installation of gccgo.
    
    
**/
@:structInit @:using(go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_static_extension) class GccgoInstallation {
    /**
        // Version of gcc (e.g. 4.8.0).
    **/
    public var gccVersion : GoString = "";
    /**
        // Target triple (e.g. x86_64-unknown-linux-gnu).
    **/
    public var targetTriple : GoString = "";
    /**
        // Built-in library paths used by this installation.
    **/
    public var libPaths : Slice<GoString> = (null : Slice<GoString>);
    public function new(?gccVersion:GoString, ?targetTriple:GoString, ?libPaths:Slice<GoString>) {
        if (gccVersion != null) this.gccVersion = gccVersion;
        if (targetTriple != null) this.targetTriple = targetTriple;
        if (libPaths != null) this.libPaths = libPaths;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new GccgoInstallation(gccVersion, targetTriple, libPaths);
    }
}
/**
    // A PackageInit describes an imported package that needs initialization.
    
    
**/
@:structInit class PackageInit {
    public var name : GoString = "";
    public var initFunc : GoString = "";
    public var priority : GoInt = 0;
    public function new(?name:GoString, ?initFunc:GoString, ?priority:GoInt) {
        if (name != null) this.name = name;
        if (initFunc != null) this.initFunc = initFunc;
        if (priority != null) this.priority = priority;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new PackageInit(name, initFunc, priority);
    }
}
/**
    // The gccgo-specific init data for a package.
    
    
**/
@:structInit class InitData {
    /**
        // Initialization priority of this package relative to other packages.
        // This is based on the maximum depth of the package's dependency graph;
        // it is guaranteed to be greater than that of its dependencies.
    **/
    public var priority : GoInt = 0;
    /**
        // The list of packages which this package depends on to be initialized,
        // including itself if needed. This is the subset of the transitive closure of
        // the package's dependencies that need initialization.
    **/
    public var inits : Slice<PackageInit> = (null : Slice<PackageInit>);
    public function new(?priority:GoInt, ?inits:Slice<PackageInit>) {
        if (priority != null) this.priority = priority;
        if (inits != null) this.inits = inits;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new InitData(priority, inits);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(go.internal.gccgoimporter.Gccgoimporter.T_parser_static_extension) class T_parser {
    public var _scanner : Ref<stdgo.text.scanner.Scanner.Scanner> = (null : Ref<stdgo.text.scanner.Scanner.Scanner>);
    public var _version : GoString = "";
    public var _tok : GoInt32 = 0;
    public var _lit : GoString = "";
    public var _pkgpath : GoString = "";
    public var _pkgname : GoString = "";
    public var _pkg : Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>);
    public var _imports : GoMap<GoString, Ref<stdgo.go.types.Types.Package>> = (null : GoMap<GoString, Ref<stdgo.go.types.Types.Package>>);
    public var _typeList : Slice<stdgo.go.types.Types.Type> = (null : Slice<stdgo.go.types.Types.Type>);
    public var _typeData : Slice<GoString> = (null : Slice<GoString>);
    public var _fixups : Slice<T_fixupRecord> = (null : Slice<T_fixupRecord>);
    public var _initdata : InitData = ({} : InitData);
    public var _aliases : GoMap<GoInt, GoString> = (null : GoMap<GoInt, GoString>);
    public function new(?_scanner:Ref<stdgo.text.scanner.Scanner.Scanner>, ?_version:GoString, ?_tok:GoInt32, ?_lit:GoString, ?_pkgpath:GoString, ?_pkgname:GoString, ?_pkg:Ref<stdgo.go.types.Types.Package>, ?_imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, ?_typeList:Slice<stdgo.go.types.Types.Type>, ?_typeData:Slice<GoString>, ?_fixups:Slice<T_fixupRecord>, ?_initdata:InitData, ?_aliases:GoMap<GoInt, GoString>) {
        if (_scanner != null) this._scanner = _scanner;
        if (_version != null) this._version = _version;
        if (_tok != null) this._tok = _tok;
        if (_lit != null) this._lit = _lit;
        if (_pkgpath != null) this._pkgpath = _pkgpath;
        if (_pkgname != null) this._pkgname = _pkgname;
        if (_pkg != null) this._pkg = _pkg;
        if (_imports != null) this._imports = _imports;
        if (_typeList != null) this._typeList = _typeList;
        if (_typeData != null) this._typeData = _typeData;
        if (_fixups != null) this._fixups = _fixups;
        if (_initdata != null) this._initdata = _initdata;
        if (_aliases != null) this._aliases = _aliases;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_parser(
_scanner,
_version,
_tok,
_lit,
_pkgpath,
_pkgname,
_pkg,
_imports,
_typeList,
_typeData,
_fixups,
_initdata,
_aliases);
    }
}
/**
    
    
    
**/
@:structInit @:private class T_fixupRecord {
    public var _toUpdate : Ref<stdgo.go.types.Types.Named> = (null : Ref<stdgo.go.types.Types.Named>);
    public var _target : stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);
    public function new(?_toUpdate:Ref<stdgo.go.types.Types.Named>, ?_target:stdgo.go.types.Types.Type) {
        if (_toUpdate != null) this._toUpdate = _toUpdate;
        if (_target != null) this._target = _target;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_fixupRecord(_toUpdate, _target);
    }
}
/**
    
    
    
**/
@:structInit @:private @:using(go.internal.gccgoimporter.Gccgoimporter.T_importError_static_extension) class T_importError {
    public var _pos : stdgo.text.scanner.Scanner.Position = ({} : stdgo.text.scanner.Scanner.Position);
    public var _err : Error = (null : Error);
    public function new(?_pos:stdgo.text.scanner.Scanner.Position, ?_err:Error) {
        if (_pos != null) this._pos = _pos;
        if (_err != null) this._err = _err;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T_importError(_pos, _err);
    }
}
class T__struct_0_asInterface {
    @:embedded
    public function underlying():stdgo.go.types.Types.Type return __self__.value.underlying();
    @:embedded
    public function string():GoString return __self__.value.string();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T__struct_0>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.gccgoimporter.Gccgoimporter.T__struct_0_asInterface) class T__struct_0_static_extension {
    @:embedded
    public static function underlying( __self__:T__struct_0):stdgo.go.types.Types.Type return return __self__.type.underlying();
    @:embedded
    public static function string( __self__:T__struct_0):GoString return return __self__.type.string();
}
@:local @:using(go.internal.gccgoimporter.Gccgoimporter.T__struct_0_static_extension) private typedef T__struct_0 = {
    @:embedded
    public var type : stdgo.go.types.Types.Type;
};
/**
    // An Importer resolves import paths to Packages. The imports map records
    // packages already known, indexed by package path.
    // An importer must determine the canonical package path and check imports
    // to see if it is already present in the map. If so, the Importer can return
    // the map entry. Otherwise, the importer must load the package data for the
    // given path into a new *Package, record it in imports map, and return the
    // package.
**/
@:named typedef Importer = (GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, GoString, GoString, GoString -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; }) -> { var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; };
/**
    // arExportData takes an archive file and returns a ReadSeeker for the
    // export data in that file. This assumes that there is only one
    // object in the archive containing export data, which is not quite
    // what gccgo does; gccgo concatenates together all the export data
    // for all the objects in the file.  In practice that case does not arise.
**/
private function _arExportData(_archive:stdgo.io.Io.ReadSeeker):{ var _0 : stdgo.io.Io.ReadSeeker; var _1 : Error; } {
        {
            var __tmp__ = _archive.seek(("0" : GoInt64), (0 : GoInt)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
            };
        };
        var _buf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 8) (0 : GoUInt8)]);
        {
            var __tmp__ = _archive.read((_buf.__slice__(0) : Slice<GoUInt8>)), _1:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
            };
        };
        if (((_buf.__slice__(0) : Slice<GoUInt8>) : GoString) == (("!<arch>\n" : GoString))) {
            return _standardArExportData(_archive);
        } else if (((_buf.__slice__(0) : Slice<GoUInt8>) : GoString) == (("!<thin>\n" : GoString))) {
            return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : stdgo.errors.Errors.new_(("unsupported thin archive" : GoString)) };
        } else if (((_buf.__slice__(0) : Slice<GoUInt8>) : GoString) == (("<bigaf>\n" : GoString))) {
            return _aixBigArExportData(_archive);
        } else {
            return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : stdgo.fmt.Fmt.errorf(("unrecognized archive file format %q" : GoString), Go.toInterface((_buf.__slice__(0) : Slice<GoUInt8>))) };
        };
    }
/**
    // standardArExportData returns export data from a standard archive.
**/
private function _standardArExportData(_archive:stdgo.io.Io.ReadSeeker):{ var _0 : stdgo.io.Io.ReadSeeker; var _1 : Error; } {
        var _off:GoInt64 = (("!<arch>\n" : GoString).length : GoInt64);
        while (true) {
            var _hdrBuf:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 60) (0 : GoUInt8)]);
            {
                var __tmp__ = _archive.read((_hdrBuf.__slice__(0) : Slice<GoUInt8>)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
                };
            };
            _off = _off + (("60" : GoInt64));
            if (!stdgo.bytes.Bytes.equal((_hdrBuf.__slice__((58 : GoInt), (60 : GoInt)) : Slice<GoUInt8>), (("`\n" : GoString) : Slice<GoByte>))) {
                return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : stdgo.fmt.Fmt.errorf(("archive header format header (%q)" : GoString), Go.toInterface((_hdrBuf.__slice__(0) : Slice<GoUInt8>))) };
            };
            var __tmp__ = stdgo.strconv.Strconv.parseInt(stdgo.strings.Strings.trimSpace(((_hdrBuf.__slice__((48 : GoInt), (58 : GoInt)) : Slice<GoUInt8>) : GoString)), (10 : GoInt), (64 : GoInt)), _size:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : stdgo.fmt.Fmt.errorf(("error parsing size in archive header (%q): %v" : GoString), Go.toInterface((_hdrBuf.__slice__(0) : Slice<GoUInt8>)), Go.toInterface(_err)) };
            };
            var _fn = (_hdrBuf.__slice__((0 : GoInt), (16 : GoInt)) : Slice<GoUInt8>);
            if ((_fn[(0 : GoInt)] == (47 : GoUInt8)) && (((_fn[(1 : GoInt)] == (32 : GoUInt8)) || (_fn[(1 : GoInt)] == (47 : GoUInt8))) || (((_fn.__slice__(0, (8 : GoInt)) : Slice<GoUInt8>) : GoString) == ("/SYM64/ " : GoString)))) {} else {
                var _archiveAt:stdgo.io.Io.ReaderAt = _readerAtFromSeeker(_archive);
                var __tmp__ = _elfFromAr(stdgo.io.Io.newSectionReader(_archiveAt, _off, _size)), _ret:stdgo.io.Io.ReadSeeker = __tmp__._0, _err:Error = __tmp__._1;
                if ((_ret != null) || (_err != null)) {
                    return { _0 : _ret, _1 : _err };
                };
            };
            if (_size & ("1" : GoInt64) != (("0" : GoInt64))) {
                _size++;
            };
            _off = _off + (_size);
            {
                var __tmp__ = _archive.seek(_off, (0 : GoInt)), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
                };
            };
        };
    }
/**
    // elfFromAr tries to get export data from an archive member as an ELF file.
    // If there is no export data, this returns nil, nil.
**/
private function _elfFromAr(_member:Ref<stdgo.io.Io.SectionReader>):{ var _0 : stdgo.io.Io.ReadSeeker; var _1 : Error; } {
        var __tmp__ = stdgo.debug.elf.Elf.newFile(Go.asInterface(_member)), _ef:Ref<stdgo.debug.elf.Elf.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
        };
        var _sec = _ef.section((".go_export" : GoString));
        if (_sec == null) {
            return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : (null : Error) };
        };
        return { _0 : _sec.open(), _1 : (null : Error) };
    }
/**
    // aixBigArExportData returns export data from an AIX big archive.
**/
private function _aixBigArExportData(_archive:stdgo.io.Io.ReadSeeker):{ var _0 : stdgo.io.Io.ReadSeeker; var _1 : Error; } {
        var _archiveAt:stdgo.io.Io.ReaderAt = _readerAtFromSeeker(_archive);
        var __tmp__ = internal.xcoff.Xcoff.newArchive(_archiveAt), _arch:Ref<internal.xcoff.Xcoff.Archive> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
        };
        for (_0 => _mem in _arch.members) {
            var __tmp__ = _arch.getFile(_mem.memberHeader.name), _f:Ref<internal.xcoff.Xcoff.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : _err };
            };
            var _sdat = _f.csect((".go_export" : GoString));
            if (_sdat != null) {
                return { _0 : Go.asInterface(stdgo.bytes.Bytes.newReader(_sdat)), _1 : (null : Error) };
            };
        };
        return { _0 : (null : stdgo.io.Io.ReadSeeker), _1 : stdgo.fmt.Fmt.errorf((".go_export not found in this archive" : GoString)) };
    }
/**
    // readerAtFromSeeker turns an io.ReadSeeker into an io.ReaderAt.
    // This is only safe because there won't be any concurrent seeks
    // while this code is executing.
**/
private function _readerAtFromSeeker(_rs:stdgo.io.Io.ReadSeeker):stdgo.io.Io.ReaderAt {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_rs) : stdgo.io.Io.ReaderAt)) : stdgo.io.Io.ReaderAt), ok : true };
            } catch(_) {
                { value : (null : stdgo.io.Io.ReaderAt), ok : false };
            }, _ret = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                return _ret;
            };
        };
        return Go.asInterface((new T_seekerReadAt(_rs) : T_seekerReadAt));
    }
/**
    // Locate the file from which to read export data.
    // This is intended to replicate the logic in gofrontend.
**/
private function _findExportFile(_searchpaths:Slice<GoString>, _pkgpath:GoString):{ var _0 : GoString; var _1 : Error; } {
        for (_0 => _spath in _searchpaths) {
            var _pkgfullpath:GoString = stdgo.path.filepath.Filepath.join(_spath, _pkgpath);
            var __tmp__ = stdgo.path.filepath.Filepath.split(_pkgfullpath), _pkgdir:GoString = __tmp__._0, _name:GoString = __tmp__._1;
            for (_1 => stdgo.path.filepath.Filepath in (new GoArray<GoString>(_pkgfullpath, _pkgfullpath + (".gox" : GoString), ((_pkgdir + ("lib" : GoString)) + _name) + (".so" : GoString), ((_pkgdir + ("lib" : GoString)) + _name) + (".a" : GoString), _pkgfullpath + (".o" : GoString)) : GoArray<GoString>)) {
                var __tmp__ = stdgo.os.Os.stat(stdgo.path.filepath.Filepath), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
                if ((_err == null) && !_fi.isDir()) {
                    return { _0 : stdgo.path.filepath.Filepath, _1 : (null : Error) };
                };
            };
        };
        return { _0 : Go.str(), _1 : stdgo.fmt.Fmt.errorf(("%s: could not find export data (tried %s)" : GoString), Go.toInterface(_pkgpath), Go.toInterface(stdgo.strings.Strings.join(_searchpaths, (":" : GoString)))) };
    }
/**
    // Opens the export data file at the given path. If this is an ELF file,
    // searches for and opens the .go_export section. If this is an archive,
    // reads the export data from the first member, which is assumed to be an ELF file.
    // This is intended to replicate the logic in gofrontend.
**/
private function _openExportFile(_fpath:GoString):{ var _0 : stdgo.io.Io.ReadSeeker; var _1 : stdgo.io.Io.Closer; var _2 : Error; } {
        var __deferstack__:Array<Void -> Void> = [];
        var _reader:stdgo.io.Io.ReadSeeker = (null : stdgo.io.Io.ReadSeeker), _closer:stdgo.io.Io.Closer = (null : stdgo.io.Io.Closer), _err:Error = (null : Error);
        var __tmp__ = stdgo.os.Os.open(_fpath), _f:Ref<stdgo.os.Os.File> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _reader, _1 : _closer, _2 : _err };
        };
        _closer = Go.asInterface(_f);
        try {
            __deferstack__.unshift(() -> {
                var a = function():Void {
                    if ((_err != null) && (_closer != null)) {
                        _f.close();
                    };
                };
                a();
            });
            var _magic:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
            {
                var __tmp__ = _f.readAt((_magic.__slice__(0) : Slice<GoUInt8>), ("0" : GoInt64));
                _err = __tmp__._1;
            };
            if (_err != null) {
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            var _objreader:stdgo.io.Io.ReaderAt = (null : stdgo.io.Io.ReaderAt);
            if (((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("v1;\n" : GoString)) || ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("v2;\n" : GoString)) || ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("v3;\n" : GoString)) || ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("\n$$$$ " : GoString))) {
                _reader = Go.asInterface(_f);
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            } else if (((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("!<ar" : GoString)) || ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString) == (("<big" : GoString))) {
                {
                    var __tmp__ = _arExportData(Go.asInterface(_f));
                    _reader = __tmp__._0;
                    _err = __tmp__._1;
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            } else {
                _objreader = Go.asInterface(_f);
            };
            var __tmp__ = stdgo.debug.elf.Elf.newFile(_objreader), _ef:Ref<stdgo.debug.elf.Elf.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                var _sec = _ef.section((".go_export" : GoString));
                if (_sec == null) {
                    _err = stdgo.fmt.Fmt.errorf(("%s: .go_export section not found" : GoString), Go.toInterface(_fpath));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                };
                _reader = _sec.open();
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            var __tmp__ = internal.xcoff.Xcoff.newFile(_objreader), _xf:Ref<internal.xcoff.Xcoff.File> = __tmp__._0, _err:Error = __tmp__._1;
            if (_err == null) {
                var _sdat = _xf.csect((".go_export" : GoString));
                if (_sdat == null) {
                    _err = stdgo.fmt.Fmt.errorf(("%s: .go_export section not found" : GoString), Go.toInterface(_fpath));
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _reader, _1 : _closer, _2 : _err };
                    };
                };
                _reader = Go.asInterface(stdgo.bytes.Bytes.newReader(_sdat));
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _reader, _1 : _closer, _2 : _err };
                };
            };
            _err = stdgo.fmt.Fmt.errorf(("%s: unrecognized file format" : GoString), Go.toInterface(_fpath));
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return { _0 : _reader, _1 : _closer, _2 : _err };
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : _reader, _1 : _closer, _2 : _err };
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return { _0 : _reader, _1 : _closer, _2 : _err };
        };
    }
function getImporter(_searchpaths:Slice<GoString>, _initmap:GoMap<Ref<stdgo.go.types.Types.Package>, InitData>):Importer {
        return function(_imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>, _pkgpath:GoString, _srcDir:GoString, _lookup:GoString -> { var _0 : stdgo.io.Io.ReadCloser; var _1 : Error; }):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : Error; } {
            var __deferstack__:Array<Void -> Void> = [];
            var _pkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>), _err:Error = (null : Error);
            if (_pkgpath == (("unsafe" : GoString))) {
                return { _0 : stdgo.go.types.Types.unsafe, _1 : (null : Error) };
            };
            var _reader:stdgo.io.Io.ReadSeeker = (null : stdgo.io.Io.ReadSeeker);
            try {
                var _fpath:GoString = ("" : GoString);
                var _rc:stdgo.io.Io.ReadCloser = (null : stdgo.io.Io.ReadCloser);
                if (_lookup != null) {
                    {
                        var _p = _imports[_pkgpath];
                        if ((_p != null) && _p.complete()) {
                            return { _0 : _p, _1 : (null : Error) };
                        };
                    };
                    {
                        var __tmp__ = _lookup(_pkgpath);
                        _rc = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        return { _0 : null, _1 : _err };
                    };
                };
                if (_rc != null) {
                    __deferstack__.unshift(() -> _rc.close());
                    var __tmp__ = try {
                        { value : (Go.typeAssert((Go.toInterface(_rc) : stdgo.io.Io.ReadSeeker)) : stdgo.io.Io.ReadSeeker), ok : true };
                    } catch(_) {
                        { value : (null : stdgo.io.Io.ReadSeeker), ok : false };
                    }, _rs = __tmp__.value, _ok = __tmp__.ok;
                    if (!_ok) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : null, _1 : stdgo.fmt.Fmt.errorf(("gccgo importer requires lookup to return an io.ReadSeeker, have %T" : GoString), Go.toInterface(_rc)) };
                        };
                    };
                    _reader = _rs;
                    _fpath = (("<lookup " : GoString) + _pkgpath) + (">" : GoString);
                    {
                        var __tmp__ = try {
                            { value : (Go.typeAssert((Go.toInterface(_rc) : T__interface_0)) : T__interface_0), ok : true };
                        } catch(_) {
                            { value : (null : T__interface_0), ok : false };
                        }, _n = __tmp__.value, _ok = __tmp__.ok;
                        if (_ok) {
                            _fpath = _n.name();
                        };
                    };
                } else {
                    {
                        var __tmp__ = _findExportFile(_searchpaths, _pkgpath);
                        _fpath = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : null, _1 : _err };
                        };
                    };
                    var __tmp__ = _openExportFile(_fpath), _r:stdgo.io.Io.ReadSeeker = __tmp__._0, _closer:stdgo.io.Io.Closer = __tmp__._1, _err:Error = __tmp__._2;
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : null, _1 : _err };
                        };
                    };
                    if (_closer != null) {
                        __deferstack__.unshift(() -> _closer.close());
                    };
                    _reader = _r;
                };
                var _magics:GoString = ("" : GoString);
                {
                    var __tmp__ = _readMagic(_reader);
                    _magics = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    {
                        for (defer in __deferstack__) {
                            defer();
                        };
                        return { _0 : _pkg, _1 : _err };
                    };
                };
                if ((_magics == ("!<ar" : GoString)) || (_magics == ("<big" : GoString))) {
                    {
                        var __tmp__ = _arExportData(_reader);
                        _reader = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                    {
                        var __tmp__ = _readMagic(_reader);
                        _magics = __tmp__._0;
                        _err = __tmp__._1;
                    };
                    if (_err != null) {
                        {
                            for (defer in __deferstack__) {
                                defer();
                            };
                            return { _0 : _pkg, _1 : _err };
                        };
                    };
                };
                if (_magics == (("v1;\n" : GoString)) || _magics == (("v2;\n" : GoString)) || _magics == (("v3;\n" : GoString))) {
                    var _p:T_parser = ({} : T_parser);
                    _p._init(_fpath, _reader, _imports);
                    _pkg = _p._parsePackage();
                    if (_initmap != null) {
                        _initmap[_pkg] = (_p._initdata == null ? null : _p._initdata.__copy__());
                    };
                } else {
                    _err = stdgo.fmt.Fmt.errorf(("unrecognized magic string: %q" : GoString), Go.toInterface(_magics));
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    return { _0 : _pkg, _1 : _err };
                };
                for (defer in __deferstack__) {
                    defer();
                };
                {
                    for (defer in __deferstack__) {
                        defer();
                    };
                    if (Go.recover_exception != null) throw Go.recover_exception;
                    return { _0 : _pkg, _1 : _err };
                };
            } catch(__exception__) {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                Go.recover_exception = exe;
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return { _0 : _pkg, _1 : _err };
            };
        };
    }
/**
    // readMagic reads the four bytes at the start of a ReadSeeker and
    // returns them as a string.
**/
private function _readMagic(_reader:stdgo.io.Io.ReadSeeker):{ var _0 : GoString; var _1 : Error; } {
        var _magic:GoArray<GoByte> = new GoArray<GoUInt8>(...[for (i in 0 ... 4) (0 : GoUInt8)]);
        {
            var __tmp__ = _reader.read((_magic.__slice__(0) : Slice<GoUInt8>)), _0:GoInt = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : Go.str(), _1 : _err };
            };
        };
        {
            var __tmp__ = _reader.seek(("0" : GoInt64), (0 : GoInt)), _1:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : Go.str(), _1 : _err };
            };
        };
        return { _0 : ((_magic.__slice__(0) : Slice<GoUInt8>) : GoString), _1 : (null : Error) };
    }
private function _deref(_typ:stdgo.go.types.Types.Type):stdgo.go.types.Types.Type {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((Go.toInterface(_typ) : Ref<stdgo.go.types.Types.Pointer_>)) : Ref<stdgo.go.types.Types.Pointer_>), ok : true };
            } catch(_) {
                { value : (null : Ref<stdgo.go.types.Types.Pointer_>), ok : false };
            }, _p = __tmp__.value, _0 = __tmp__.ok;
            if (_p != null) {
                _typ = _p.elem();
            };
        };
        return _typ;
    }
private function _lookupBuiltinType(_typ:GoInt):stdgo.go.types.Types.Type {
        return {
            var s:GoArray<stdgo.go.types.Types.Type> = new GoArray<stdgo.go.types.Types.Type>(...[for (i in 0 ... 22) (null : stdgo.go.types.Types.Type)]);
            s[1] = stdgo.go.types.Types.typ[((3 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[2] = stdgo.go.types.Types.typ[((4 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[3] = stdgo.go.types.Types.typ[((5 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[4] = stdgo.go.types.Types.typ[((6 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[5] = stdgo.go.types.Types.typ[((8 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[6] = stdgo.go.types.Types.typ[((9 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[7] = stdgo.go.types.Types.typ[((10 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[8] = stdgo.go.types.Types.typ[((11 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[9] = stdgo.go.types.Types.typ[((13 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[10] = stdgo.go.types.Types.typ[((14 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[11] = stdgo.go.types.Types.typ[((2 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[12] = stdgo.go.types.Types.typ[((7 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[13] = stdgo.go.types.Types.typ[((12 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[15] = stdgo.go.types.Types.typ[((1 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[16] = stdgo.go.types.Types.typ[((17 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[17] = stdgo.go.types.Types.typ[((15 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[18] = stdgo.go.types.Types.typ[((16 : stdgo.go.types.Types.BasicKind) : GoInt)];
            s[19] = stdgo.go.types.Types.universe.lookup(("error" : GoString)).type();
            s[20] = stdgo.go.types.Types.universe.lookup(("byte" : GoString)).type();
            s[21] = stdgo.go.types.Types.universe.lookup(("rune" : GoString)).type();
            s;
        }[(_typ : GoInt)];
    }
class T_seekerReadAt_asInterface {
    @:keep
    public function readAt(_p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } return __self__.value.readAt(_p, _off);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_seekerReadAt>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.gccgoimporter.Gccgoimporter.T_seekerReadAt_asInterface) class T_seekerReadAt_static_extension {
    @:keep
    static public function readAt( _sra:T_seekerReadAt, _p:Slice<GoByte>, _off:GoInt64):{ var _0 : GoInt; var _1 : Error; } {
        {
            var __tmp__ = _sra._seeker.seek(_off, (0 : GoInt)), _0:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (0 : GoInt), _1 : _err };
            };
        };
        return _sra._seeker.read(_p);
    }
}
class GccgoInstallation_asInterface {
    /**
        // Return an importer that searches incpaths followed by the gcc installation's
        // built-in search paths and the current directory.
    **/
    @:keep
    public function getImporter(_incpaths:Slice<GoString>, _initmap:GoMap<Ref<stdgo.go.types.Types.Package>, InitData>):Importer return __self__.value.getImporter(_incpaths, _initmap);
    /**
        // Return the list of export search paths for this GccgoInstallation.
    **/
    @:keep
    public function searchPaths():Slice<GoString> return __self__.value.searchPaths();
    /**
        // Ask the driver at the given path for information for this GccgoInstallation.
        // The given arguments are passed directly to the call of the driver.
    **/
    @:keep
    public function initFromDriver(_gccgoPath:GoString, _args:haxe.Rest<GoString>):Error return __self__.value.initFromDriver(_gccgoPath, ..._args);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<GccgoInstallation>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.gccgoimporter.Gccgoimporter.GccgoInstallation_asInterface) class GccgoInstallation_static_extension {
    /**
        // Return an importer that searches incpaths followed by the gcc installation's
        // built-in search paths and the current directory.
    **/
    @:keep
    static public function getImporter( _inst:Ref<GccgoInstallation>, _incpaths:Slice<GoString>, _initmap:GoMap<Ref<stdgo.go.types.Types.Package>, InitData>):Importer {
        return go.internal.gccgoimporter.Gccgoimporter.getImporter(((_incpaths.__append__(..._inst.searchPaths().__toArray__())).__append__(("." : GoString))), _initmap);
    }
    /**
        // Return the list of export search paths for this GccgoInstallation.
    **/
    @:keep
    static public function searchPaths( _inst:Ref<GccgoInstallation>):Slice<GoString> {
        var _paths:Slice<GoString> = (null : Slice<GoString>);
        for (_0 => _lpath in _inst.libPaths) {
            var _spath:GoString = stdgo.path.filepath.Filepath.join(_lpath, ("go" : GoString), _inst.gccVersion);
            var __tmp__ = stdgo.os.Os.stat(_spath), _fi:stdgo.io.fs.Fs.FileInfo = __tmp__._0, _err:Error = __tmp__._1;
            if ((_err != null) || !_fi.isDir()) {
                continue;
            };
            _paths = _paths.__appendref__(_spath);
            _spath = stdgo.path.filepath.Filepath.join(_spath, _inst.targetTriple);
            {
                var __tmp__ = stdgo.os.Os.stat(_spath);
                _fi = __tmp__._0;
                _err = __tmp__._1;
            };
            if ((_err != null) || !_fi.isDir()) {
                continue;
            };
            _paths = _paths.__appendref__(_spath);
        };
        _paths = _paths.__appendref__(..._inst.libPaths.__toArray__());
        return _paths;
    }
    /**
        // Ask the driver at the given path for information for this GccgoInstallation.
        // The given arguments are passed directly to the call of the driver.
    **/
    @:keep
    static public function initFromDriver( _inst:Ref<GccgoInstallation>, _gccgoPath:GoString, _args:haxe.Rest<GoString>):Error {
        var _args = new Slice<GoString>(0, 0, ..._args);
        var _err:Error = (null : Error);
        var _argv = ((new Slice<GoString>(0, 0, ("-###" : GoString), ("-S" : GoString), ("-x" : GoString), ("go" : GoString), ("-" : GoString)) : Slice<GoString>).__append__(..._args.__toArray__()));
        var _cmd = stdgo.os.exec.Exec.command(_gccgoPath, ..._argv.__toArray__());
        var __tmp__ = _cmd.stderrPipe(), _stderr:stdgo.io.Io.ReadCloser = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _err = _cmd.start();
        if (_err != null) {
            return _err;
        };
        var _scanner = stdgo.bufio.Bufio.newScanner(_stderr);
        while (_scanner.scan()) {
            var _line:GoString = _scanner.text();
            if (stdgo.strings.Strings.hasPrefix(_line, ("Target: " : GoString))) {
                _inst.targetTriple = (_line.__slice__((8 : GoInt)) : GoString);
            } else if (_line[(0 : GoInt)] == ((32 : GoUInt8))) {
                var _args = stdgo.strings.Strings.fields(_line);
                for (_0 => _arg in (_args.__slice__((1 : GoInt)) : Slice<GoString>)) {
                    if (stdgo.strings.Strings.hasPrefix(_arg, ("-L" : GoString))) {
                        _inst.libPaths = _inst.libPaths.__appendref__((_arg.__slice__((2 : GoInt)) : GoString));
                    };
                };
            };
        };
        _argv = ((new Slice<GoString>(0, 0, ("-dumpversion" : GoString)) : Slice<GoString>).__append__(..._args.__toArray__()));
        var __tmp__ = stdgo.os.exec.Exec.command(_gccgoPath, ..._argv.__toArray__()).output(), _stdout:Slice<GoUInt8> = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            return _err;
        };
        _inst.gccVersion = stdgo.strings.Strings.trimSpace((_stdout : GoString));
        return _err;
    }
}
class T_parser_asInterface {
    /**
        // Package = { Directive } .
    **/
    @:keep
    public function _parsePackage():Ref<stdgo.go.types.Types.Package> return __self__.value._parsePackage();
    /**
        // Directive = InitDataDirective |
        //
        //	"package" unquotedString [ unquotedString ] [ unquotedString ] ";" |
        //	"pkgpath" unquotedString ";" |
        //	"prefix" unquotedString ";" |
        //	"import" unquotedString unquotedString string ";" |
        //	"indirectimport" unquotedString unquotedstring ";" |
        //	"func" Func ";" |
        //	"type" Type ";" |
        //	"var" Var ";" |
        //	"const" Const ";" .
    **/
    @:keep
    public function _parseDirective():Void __self__.value._parseDirective();
    /**
        // InitDataDirective = ( "v1" | "v2" | "v3" ) ";" |
        //
        //	"priority" int ";" |
        //	"init" { PackageInit } ";" |
        //	"checksum" unquotedString ";" .
    **/
    @:keep
    public function _parseInitDataDirective():Void __self__.value._parseInitDataDirective();
    /**
        // Create the package if we have parsed both the package path and package name.
    **/
    @:keep
    public function _maybeCreatePackage():Void __self__.value._maybeCreatePackage();
    /**
        // PackageInit = unquotedString unquotedString int .
    **/
    @:keep
    public function _parsePackageInit():PackageInit return __self__.value._parsePackageInit();
    /**
        // parseSavedType parses one saved type definition.
    **/
    @:keep
    public function _parseSavedType(_pkg:Ref<stdgo.go.types.Types.Package>, _i:GoInt, _nlist:Slice<AnyInterface>):Void __self__.value._parseSavedType(_pkg, _i, _nlist);
    /**
        // Types = "types" maxp1 exportedp1 (offset length)* .
    **/
    @:keep
    public function _parseTypes(_pkg:Ref<stdgo.go.types.Types.Package>):Void __self__.value._parseTypes(_pkg);
    /**
        // InlineBody = "<inl:NN>" .{NN}
        // Reports whether a body was skipped.
    **/
    @:keep
    public function _skipInlineBody():Void __self__.value._skipInlineBody();
    /**
        // parseTypeExtended is identical to parseType, but if the type in
        // question is a saved type, returns the index as well as the type
        // pointer (index returned is zero if we parsed a builtin).
    **/
    @:keep
    public function _parseTypeExtended(_pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):{ var _0 : stdgo.go.types.Types.Type; var _1 : GoInt; } return __self__.value._parseTypeExtended(_pkg, ..._n);
    /**
        // (*parser).Type after reading the "<".
    **/
    @:keep
    public function _parseTypeAfterAngle(_pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):{ var _0 : stdgo.go.types.Types.Type; var _1 : GoInt; } return __self__.value._parseTypeAfterAngle(_pkg, ..._n);
    /**
        // Type = "<" "type" ( "-" int | int [ TypeSpec ] ) ">" .
        //
        // parseType updates the type map to t for all type numbers n.
    **/
    @:keep
    public function _parseType(_pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseType(_pkg, ..._n);
    /**
        // TypeSpec = NamedType | MapType | ChanType | StructType | InterfaceType | PointerType | ArrayOrSliceType | FunctionType .
    **/
    @:keep
    public function _parseTypeSpec(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseTypeSpec(_pkg, _nlist);
    /**
        // PointerType = "*" ("any" | Type) .
    **/
    @:keep
    public function _parsePointerType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parsePointerType(_pkg, _nlist);
    /**
        // InterfaceType = "interface" "{" { ("?" Type | Func) ";" } "}" .
    **/
    @:keep
    public function _parseInterfaceType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseInterfaceType(_pkg, _nlist);
    /**
        // Func = Name FunctionType [InlineBody] .
    **/
    @:keep
    public function _parseFunc(_pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Func> return __self__.value._parseFunc(_pkg);
    /**
        // FunctionType = ParamList ResultList .
    **/
    @:keep
    public function _parseFunctionType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):Ref<stdgo.go.types.Types.Signature> return __self__.value._parseFunctionType(_pkg, _nlist);
    /**
        // ResultList = Type | ParamList .
    **/
    @:keep
    public function _parseResultList(_pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Tuple> return __self__.value._parseResultList(_pkg);
    /**
        // ParamList = "(" [ { Parameter "," } Parameter ] ")" .
    **/
    @:keep
    public function _parseParamList(_pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Tuple>; var _1 : Bool; } return __self__.value._parseParamList(_pkg);
    /**
        // StructType = "struct" "{" { Field } "}" .
    **/
    @:keep
    public function _parseStructType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseStructType(_pkg, _nlist);
    /**
        // ChanType = "chan" ["<-" | "-<"] Type .
    **/
    @:keep
    public function _parseChanType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseChanType(_pkg, _nlist);
    /**
        // MapType = "map" "[" Type "]" Type .
    **/
    @:keep
    public function _parseMapType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseMapType(_pkg, _nlist);
    /**
        // ArrayOrSliceType = "[" [ int ] "]" Type .
    **/
    @:keep
    public function _parseArrayOrSliceType(_pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseArrayOrSliceType(_pkg, _nlist);
    @:keep
    public function _parseInt():GoInt return __self__.value._parseInt();
    @:keep
    public function _parseInt64():GoInt64 return __self__.value._parseInt64();
    /**
        // NamedType = TypeName [ "=" ] Type { Method } .
        // TypeName  = ExportedName .
        // Method    = "func" "(" Param ")" Name ParamList ResultList [InlineBody] ";" .
    **/
    @:keep
    public function _parseNamedType(_nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type return __self__.value._parseNamedType(_nlist);
    /**
        // update sets the type map entries for the entries in nlist to t.
        // An entry in nlist can be a type number in p.typeList,
        // used to resolve named types, or it can be a *types.Pointer,
        // used to resolve pointers to named types in case they are referenced
        // by embedded fields.
    **/
    @:keep
    public function _update(_t:stdgo.go.types.Types.Type, _nlist:Slice<AnyInterface>):Void __self__.value._update(_t, _nlist);
    /**
        // reserve reserves the type map entry n for future use.
    **/
    @:keep
    public function _reserve(_n:GoInt):Void __self__.value._reserve(_n);
    /**
        // Const = Name [Type] "=" ConstValue .
    **/
    @:keep
    public function _parseConst(_pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Const> return __self__.value._parseConst(_pkg);
    /**
        // ConstValue     = string | "false" | "true" | ["-"] (int ["'"] | FloatOrComplex) | Conversion .
        // FloatOrComplex = float ["i" | ("+"|"-") float "i"] .
    **/
    @:keep
    public function _parseConstValue(_pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : stdgo.go.constant.Constant.Value; var _1 : stdgo.go.types.Types.Type; } return __self__.value._parseConstValue(_pkg);
    /**
        // Conversion = "convert" "(" Type "," ConstValue ")" .
    **/
    @:keep
    public function _parseConversion(_pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : stdgo.go.constant.Constant.Value; var _1 : stdgo.go.types.Types.Type; } return __self__.value._parseConversion(_pkg);
    /**
        // Var = Name Type .
    **/
    @:keep
    public function _parseVar(_pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Var> return __self__.value._parseVar(_pkg);
    /**
        // Param = Name ["..."] Type .
    **/
    @:keep
    public function _parseParam(_pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Var>; var _1 : Bool; } return __self__.value._parseParam(_pkg);
    /**
        // Field = Name Type [string] .
    **/
    @:keep
    public function _parseField(_pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Var>; var _1 : GoString; } return __self__.value._parseField(_pkg);
    /**
        // Name = QualifiedName | "?" .
    **/
    @:keep
    public function _parseName():GoString return __self__.value._parseName();
    /**
        // parseExportedName is like parseQualifiedName, but
        // the package path is resolved to an imported *types.Package.
        //
        // ExportedName = string [string] .
    **/
    @:keep
    public function _parseExportedName():{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : GoString; } return __self__.value._parseExportedName();
    /**
        // getPkg returns the package for a given path. If the package is
        // not found but we have a package name, create the package and
        // add it to the p.imports map.
    **/
    @:keep
    public function _getPkg(_pkgpath:GoString, _name:GoString):Ref<stdgo.go.types.Types.Package> return __self__.value._getPkg(_pkgpath, _name);
    /**
        // qualifiedName = [ ["."] unquotedString "." ] unquotedString .
        //
        // The above production uses greedy matching.
    **/
    @:keep
    public function _parseQualifiedNameStr(_unquotedName:GoString):{ var _0 : GoString; var _1 : GoString; } return __self__.value._parseQualifiedNameStr(_unquotedName);
    @:keep
    public function _parseUnquotedQualifiedName():{ var _0 : GoString; var _1 : GoString; } return __self__.value._parseUnquotedQualifiedName();
    @:keep
    public function _parseQualifiedName():{ var _0 : GoString; var _1 : GoString; } return __self__.value._parseQualifiedName();
    @:keep
    public function _next():Void __self__.value._next();
    /**
        // unquotedString     = { unquotedStringChar } .
        // unquotedStringChar = <neither a whitespace nor a ';' char> .
    **/
    @:keep
    public function _parseUnquotedString():GoString return __self__.value._parseUnquotedString();
    @:keep
    public function _parseString():GoString return __self__.value._parseString();
    @:keep
    public function _expectKeyword(_keyword:GoString):Void __self__.value._expectKeyword(_keyword);
    @:keep
    public function _expectEOL():Void __self__.value._expectEOL();
    @:keep
    public function _expect(_tok:GoRune):GoString return __self__.value._expect(_tok);
    @:keep
    public function _errorf(_format:GoString, _args:haxe.Rest<AnyInterface>):Void __self__.value._errorf(_format, ..._args);
    @:keep
    public function _error(_err:AnyInterface):Void __self__.value._error(_err);
    @:keep
    public function _initScanner(_filename:GoString, _src:stdgo.io.Io.Reader):Void __self__.value._initScanner(_filename, _src);
    @:keep
    public function _init(_filename:GoString, _src:stdgo.io.Io.Reader, _imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>):Void __self__.value._init(_filename, _src, _imports);
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_parser>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.gccgoimporter.Gccgoimporter.T_parser_asInterface) class T_parser_static_extension {
    /**
        // Package = { Directive } .
    **/
    @:keep
    static public function _parsePackage( _p:Ref<T_parser>):Ref<stdgo.go.types.Types.Package> {
        while (_p._tok != ((-1 : GoInt32))) {
            _p._parseDirective();
        };
        for (_0 => _f in _p._fixups) {
            if (_f._target.underlying() == null) {
                _p._errorf(("internal error: fixup can\'t be applied, loop required" : GoString));
            };
            _f._toUpdate.setUnderlying(_f._target.underlying());
        };
        _p._fixups = (null : Slice<T_fixupRecord>);
        for (_25 => _typ in _p._typeList) {
            {
                var __tmp__ = try {
                    { value : (Go.typeAssert((Go.toInterface(_typ) : Ref<stdgo.go.types.Types.Interface>)) : Ref<stdgo.go.types.Types.Interface>), ok : true };
                } catch(_) {
                    { value : (null : Ref<stdgo.go.types.Types.Interface>), ok : false };
                }, _it = __tmp__.value, _ok = __tmp__.ok;
                if (_ok) {
                    _it.complete();
                };
            };
        };
        _p._pkg.markComplete();
        return _p._pkg;
    }
    /**
        // Directive = InitDataDirective |
        //
        //	"package" unquotedString [ unquotedString ] [ unquotedString ] ";" |
        //	"pkgpath" unquotedString ";" |
        //	"prefix" unquotedString ";" |
        //	"import" unquotedString unquotedString string ";" |
        //	"indirectimport" unquotedString unquotedstring ";" |
        //	"func" Func ";" |
        //	"type" Type ";" |
        //	"var" Var ";" |
        //	"const" Const ";" .
    **/
    @:keep
    static public function _parseDirective( _p:Ref<T_parser>):Void {
        if (_p._tok != ((-2 : GoInt32))) {
            _p._expect((-2 : GoInt32));
        };
        if (_p._lit == (("v1" : GoString)) || _p._lit == (("v2" : GoString)) || _p._lit == (("v3" : GoString)) || _p._lit == (("priority" : GoString)) || _p._lit == (("init" : GoString)) || _p._lit == (("init_graph" : GoString)) || _p._lit == (("checksum" : GoString))) {
            _p._parseInitDataDirective();
        } else if (_p._lit == (("package" : GoString))) {
            _p._next();
            _p._pkgname = _p._parseUnquotedString();
            _p._maybeCreatePackage();
            if (((_p._version != ("v1" : GoString)) && (_p._tok != (10 : GoInt32))) && (_p._tok != (59 : GoInt32))) {
                _p._parseUnquotedString();
                _p._parseUnquotedString();
            };
            _p._expectEOL();
        } else if (_p._lit == (("pkgpath" : GoString))) {
            _p._next();
            _p._pkgpath = _p._parseUnquotedString();
            _p._maybeCreatePackage();
            _p._expectEOL();
        } else if (_p._lit == (("prefix" : GoString))) {
            _p._next();
            _p._pkgpath = _p._parseUnquotedString();
            _p._expectEOL();
        } else if (_p._lit == (("import" : GoString))) {
            _p._next();
            var _pkgname:GoString = _p._parseUnquotedString();
            var _pkgpath:GoString = _p._parseUnquotedString();
            _p._getPkg(_pkgpath, _pkgname);
            _p._parseString();
            _p._expectEOL();
        } else if (_p._lit == (("indirectimport" : GoString))) {
            _p._next();
            var _pkgname:GoString = _p._parseUnquotedString();
            var _pkgpath:GoString = _p._parseUnquotedString();
            _p._getPkg(_pkgpath, _pkgname);
            _p._expectEOL();
        } else if (_p._lit == (("types" : GoString))) {
            _p._next();
            _p._parseTypes(_p._pkg);
            _p._expectEOL();
        } else if (_p._lit == (("func" : GoString))) {
            _p._next();
            var _fun = _p._parseFunc(_p._pkg);
            if (_fun != null) {
                _p._pkg.scope().insert(Go.asInterface(_fun));
            };
            _p._expectEOL();
        } else if (_p._lit == (("type" : GoString))) {
            _p._next();
            _p._parseType(_p._pkg);
            _p._expectEOL();
        } else if (_p._lit == (("var" : GoString))) {
            _p._next();
            var _v = _p._parseVar(_p._pkg);
            if (_v != null) {
                _p._pkg.scope().insert(Go.asInterface(_v));
            };
            _p._expectEOL();
        } else if (_p._lit == (("const" : GoString))) {
            _p._next();
            var _c = _p._parseConst(_p._pkg);
            _p._pkg.scope().insert(Go.asInterface(_c));
            _p._expectEOL();
        } else {
            _p._errorf(("unexpected identifier: %q" : GoString), Go.toInterface(_p._lit));
        };
    }
    /**
        // InitDataDirective = ( "v1" | "v2" | "v3" ) ";" |
        //
        //	"priority" int ";" |
        //	"init" { PackageInit } ";" |
        //	"checksum" unquotedString ";" .
    **/
    @:keep
    static public function _parseInitDataDirective( _p:Ref<T_parser>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        if (_p._tok != ((-2 : GoInt32))) {
            _p._expect((-2 : GoInt32));
        };
        try {
            if (_p._lit == (("v1" : GoString)) || _p._lit == (("v2" : GoString)) || _p._lit == (("v3" : GoString))) {
                _p._version = _p._lit;
                _p._next();
                _p._expect((59 : GoInt32));
                _p._expect((10 : GoInt32));
            } else if (_p._lit == (("priority" : GoString))) {
                _p._next();
                _p._initdata.priority = _p._parseInt();
                _p._expectEOL();
            } else if (_p._lit == (("init" : GoString))) {
                _p._next();
                while (((_p._tok != (10 : GoInt32)) && (_p._tok != (59 : GoInt32))) && (_p._tok != (-1 : GoInt32))) {
                    _p._initdata.inits = _p._initdata.inits.__appendref__((_p._parsePackageInit() == null ? null : _p._parsePackageInit().__copy__()));
                };
                _p._expectEOL();
            } else if (_p._lit == (("init_graph" : GoString))) {
                _p._next();
                while (((_p._tok != (10 : GoInt32)) && (_p._tok != (59 : GoInt32))) && (_p._tok != (-1 : GoInt32))) {
                    _p._parseInt64();
                    _p._parseInt64();
                };
                _p._expectEOL();
            } else if (_p._lit == (("checksum" : GoString))) {
                {
                    var _a0 = _p._scanner.mode;
                    __deferstack__.unshift(() -> {
                        var a = function(_mode:GoUInt):Void {
                            _p._scanner.mode = _mode;
                        };
                        a(_a0);
                    });
                };
                _p._scanner.mode = _p._scanner.mode & (("24" : GoUInt) ^ (-1 : GoInt));
                _p._next();
                _p._parseUnquotedString();
                _p._expectEOL();
            } else {
                _p._errorf(("unexpected identifier: %q" : GoString), Go.toInterface(_p._lit));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // Create the package if we have parsed both the package path and package name.
    **/
    @:keep
    static public function _maybeCreatePackage( _p:Ref<T_parser>):Void {
        if ((_p._pkgname != Go.str()) && (_p._pkgpath != Go.str())) {
            _p._pkg = _p._getPkg(_p._pkgpath, _p._pkgname);
        };
    }
    /**
        // PackageInit = unquotedString unquotedString int .
    **/
    @:keep
    static public function _parsePackageInit( _p:Ref<T_parser>):PackageInit {
        var _name:GoString = _p._parseUnquotedString();
        var _initfunc:GoString = _p._parseUnquotedString();
        var _priority:GoInt = (-1 : GoInt);
        if (_p._version == (("v1" : GoString))) {
            _priority = _p._parseInt();
        };
        return ({ name : _name, initFunc : _initfunc, priority : _priority } : PackageInit);
    }
    /**
        // parseSavedType parses one saved type definition.
    **/
    @:keep
    static public function _parseSavedType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _i:GoInt, _nlist:Slice<AnyInterface>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        {
            var _a0 = _p._scanner;
            var _a1 = _p._tok;
            var _a2 = _p._lit;
            __deferstack__.unshift(() -> {
                var a = function(_s:Ref<stdgo.text.scanner.Scanner.Scanner>, _tok:GoRune, _lit:GoString):Void {
                    _p._scanner = _s;
                    _p._tok = _tok;
                    _p._lit = _lit;
                };
                a(_a0, _a1, _a2);
            });
        };
        try {
            _p._scanner = ({} : stdgo.text.scanner.Scanner.Scanner);
            _p._initScanner(_p._scanner.position.filename, Go.asInterface(stdgo.strings.Strings.newReader(_p._typeData[(_i : GoInt)])));
            _p._expectKeyword(("type" : GoString));
            var _id:GoInt = _p._parseInt();
            if (_id != (_i)) {
                _p._errorf(("type ID mismatch: got %d, want %d" : GoString), Go.toInterface(_id), Go.toInterface(_i));
            };
            if (Go.toInterface(_p._typeList[(_i : GoInt)]) == (Go.toInterface(Go.asInterface(_reserved)))) {
                _p._errorf(("internal error: %d already reserved in parseSavedType" : GoString), Go.toInterface(_i));
            };
            if (_p._typeList[(_i : GoInt)] == null) {
                _p._reserve(_i);
                _p._parseTypeSpec(_pkg, (_nlist.__append__(Go.toInterface(_i))));
            };
            if ((_p._typeList[(_i : GoInt)] == null) || (Go.toInterface(_p._typeList[(_i : GoInt)]) == Go.toInterface(Go.asInterface(_reserved)))) {
                _p._errorf(("internal error: parseSavedType(%d,%v) reserved/nil" : GoString), Go.toInterface(_i), Go.toInterface(_nlist));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // Types = "types" maxp1 exportedp1 (offset length)* .
    **/
    @:keep
    static public function _parseTypes( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        var _maxp1:GoInt = _p._parseInt();
        try {
            var _exportedp1:GoInt = _p._parseInt();
            _p._typeList = new Slice<stdgo.go.types.Types.Type>((_maxp1 : GoInt).toBasic(), _maxp1, ...[for (i in 0 ... (_maxp1 : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)]);
            {};
            var _typeOffsets:Slice<T__parseTypes_0___localname___typeOffset> = (null : Slice<T__parseTypes_0___localname___typeOffset>);
            var _total:GoInt = (0 : GoInt);
            {
                var _i:GoInt = (1 : GoInt);
                Go.cfor(_i < _maxp1, _i++, {
                    var _len:GoInt = _p._parseInt();
                    _typeOffsets = _typeOffsets.__appendref__((new T__parseTypes_0___localname___typeOffset(_total, _len) : T__parseTypes_0___localname___typeOffset));
                    _total = _total + (_len);
                });
            };
            {
                var _a0 = _p._scanner.whitespace;
                __deferstack__.unshift(() -> {
                    var a = function(_w:GoUInt64):Void {
                        _p._scanner.whitespace = _w;
                    };
                    a(_a0);
                });
            };
            _p._scanner.whitespace = ("0" : GoUInt64);
            var _sb:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
            while (_sb.len() < _total) {
                var _r:GoInt32 = _p._scanner.next();
                if (_r == ((-1 : GoInt32))) {
                    _p._error(Go.toInterface(("unexpected EOF" : GoString)));
                };
                _sb.writeRune(_r);
            };
            var _allTypeData:GoString = (_sb.string() : GoString);
            _p._typeData = (new Slice<GoString>(0, 0, Go.str()) : Slice<GoString>);
            for (_0 => _to in _typeOffsets) {
                _p._typeData = _p._typeData.__appendref__((_allTypeData.__slice__(_to._offset, _to._offset + _to._length) : GoString));
            };
            {
                var _i:GoInt = (1 : GoInt);
                Go.cfor(_i < (_exportedp1 : GoInt), _i++, {
                    _p._parseSavedType(_pkg, _i, (null : Slice<AnyInterface>));
                });
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // InlineBody = "<inl:NN>" .{NN}
        // Reports whether a body was skipped.
    **/
    @:keep
    static public function _skipInlineBody( _p:Ref<T_parser>):Void {
        var __deferstack__:Array<Void -> Void> = [];
        if (_p._tok == ((60 : GoInt32))) {
            _p._next();
            _p._expectKeyword(("inl" : GoString));
        } else if ((_p._tok != (-2 : GoInt32)) || (_p._lit != ("inl" : GoString))) {
            return;
        } else {
            _p._next();
        };
        try {
            _p._expect((58 : GoInt32));
            var _want:GoInt = _p._parseInt();
            _p._expect((62 : GoInt32));
            {
                var _a0 = _p._scanner.whitespace;
                __deferstack__.unshift(() -> {
                    var a = function(_w:GoUInt64):Void {
                        _p._scanner.whitespace = _w;
                    };
                    a(_a0);
                });
            };
            _p._scanner.whitespace = ("0" : GoUInt64);
            var _got:GoInt = (0 : GoInt);
            while (_got < _want) {
                var _r:GoInt32 = _p._scanner.next();
                if (_r == ((-1 : GoInt32))) {
                    _p._error(Go.toInterface(("unexpected EOF" : GoString)));
                };
                _got = _got + (stdgo.unicode.utf8.Utf8.runeLen(_r));
            };
            for (defer in __deferstack__) {
                defer();
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (Go.recover_exception != null) throw Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (Go.recover_exception != null) throw Go.recover_exception;
            return;
        };
    }
    /**
        // parseTypeExtended is identical to parseType, but if the type in
        // question is a saved type, returns the index as well as the type
        // pointer (index returned is zero if we parsed a builtin).
    **/
    @:keep
    static public function _parseTypeExtended( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):{ var _0 : stdgo.go.types.Types.Type; var _1 : GoInt; } {
        var _n = new Slice<AnyInterface>(0, 0, ..._n);
        var _t:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type), _n1:GoInt = (0 : GoInt);
        _p._expect((60 : GoInt32));
        {
            var __tmp__ = _p._parseTypeAfterAngle(_pkg, ..._n.__toArray__());
            _t = __tmp__._0;
            _n1 = __tmp__._1;
        };
        return { _0 : _t, _1 : _n1 };
    }
    /**
        // (*parser).Type after reading the "<".
    **/
    @:keep
    static public function _parseTypeAfterAngle( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):{ var _0 : stdgo.go.types.Types.Type; var _1 : GoInt; } {
        var _n = new Slice<AnyInterface>(0, 0, ..._n);
        var _t:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type), _n1:GoInt = (0 : GoInt);
        _p._expectKeyword(("type" : GoString));
        _n1 = (0 : GoInt);
        if (_p._tok == ((-3 : GoInt32))) {
            _n1 = _p._parseInt();
            if (_p._tok == ((62 : GoInt32))) {
                if ((_p._typeData.length > (0 : GoInt)) && (_p._typeList[(_n1 : GoInt)] == null)) {
                    _p._parseSavedType(_pkg, _n1, _n);
                };
                _t = _p._typeList[(_n1 : GoInt)];
                if ((_p._typeData.length == (0 : GoInt)) && (Go.toInterface(_t) == Go.toInterface(Go.asInterface(_reserved)))) {
                    _p._errorf(("invalid type cycle, type %d not yet defined (nlist=%v)" : GoString), Go.toInterface(_n1), Go.toInterface(_n));
                };
                _p._update(_t, _n);
            } else {
                _p._reserve(_n1);
                _t = _p._parseTypeSpec(_pkg, (_n.__append__(Go.toInterface(_n1))));
            };
        } else if (_p._tok == ((45 : GoInt32))) {
            _p._next();
            var _n1:GoInt = _p._parseInt();
            _t = _lookupBuiltinType(_n1);
            _p._update(_t, _n);
        } else {
            _p._errorf(("expected type number, got %s (%q)" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)), Go.toInterface(_p._lit));
            return { _0 : (null : stdgo.go.types.Types.Type), _1 : (0 : GoInt) };
        };
        if ((_t == null) || (Go.toInterface(_t) == Go.toInterface(Go.asInterface(_reserved)))) {
            _p._errorf(("internal error: bad return from parseType(%v)" : GoString), Go.toInterface(_n));
        };
        _p._expect((62 : GoInt32));
        return { _0 : _t, _1 : _n1 };
    }
    /**
        // Type = "<" "type" ( "-" int | int [ TypeSpec ] ) ">" .
        //
        // parseType updates the type map to t for all type numbers n.
    **/
    @:keep
    static public function _parseType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _n:haxe.Rest<AnyInterface>):stdgo.go.types.Types.Type {
        var _n = new Slice<AnyInterface>(0, 0, ..._n);
        _p._expect((60 : GoInt32));
        var __tmp__ = _p._parseTypeAfterAngle(_pkg, ..._n.__toArray__()), _t:stdgo.go.types.Types.Type = __tmp__._0, _0:GoInt = __tmp__._1;
        return _t;
    }
    /**
        // TypeSpec = NamedType | MapType | ChanType | StructType | InterfaceType | PointerType | ArrayOrSliceType | FunctionType .
    **/
    @:keep
    static public function _parseTypeSpec( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        if (_p._tok == ((-6 : GoInt32))) {
            return _p._parseNamedType(_nlist);
        } else if (_p._tok == ((-2 : GoInt32))) {
            if (_p._lit == (("map" : GoString))) {
                return _p._parseMapType(_pkg, _nlist);
            } else if (_p._lit == (("chan" : GoString))) {
                return _p._parseChanType(_pkg, _nlist);
            } else if (_p._lit == (("struct" : GoString))) {
                return _p._parseStructType(_pkg, _nlist);
            } else if (_p._lit == (("interface" : GoString))) {
                return _p._parseInterfaceType(_pkg, _nlist);
            };
        } else if (_p._tok == ((42 : GoInt32))) {
            return _p._parsePointerType(_pkg, _nlist);
        } else if (_p._tok == ((91 : GoInt32))) {
            return _p._parseArrayOrSliceType(_pkg, _nlist);
        } else if (_p._tok == ((40 : GoInt32))) {
            return Go.asInterface(_p._parseFunctionType(_pkg, _nlist));
        };
        _p._errorf(("expected type name or literal, got %s" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)));
        return (null : stdgo.go.types.Types.Type);
    }
    /**
        // PointerType = "*" ("any" | Type) .
    **/
    @:keep
    static public function _parsePointerType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expect((42 : GoInt32));
        if (_p._tok == ((-2 : GoInt32))) {
            _p._expectKeyword(("any" : GoString));
            var _t = stdgo.go.types.Types.typ[((18 : stdgo.go.types.Types.BasicKind) : GoInt)];
            _p._update(Go.asInterface(_t), _nlist);
            return Go.asInterface(_t);
        };
        var _t = ({} : stdgo.go.types.Types.Pointer_);
        _p._update(Go.asInterface(_t), _nlist);
        {
            var __tmp__ = (stdgo.go.types.Types.newPointer(_p._parseType(_pkg, Go.toInterface(Go.asInterface(_t)))) == null ? null : stdgo.go.types.Types.newPointer(_p._parseType(_pkg, Go.toInterface(Go.asInterface(_t)))).__copy__());
            _t._base = __tmp__._base;
        };
        return Go.asInterface(_t);
    }
    /**
        // InterfaceType = "interface" "{" { ("?" Type | Func) ";" } "}" .
    **/
    @:keep
    static public function _parseInterfaceType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expectKeyword(("interface" : GoString));
        var _t = ({} : stdgo.go.types.Types.Interface);
        _p._update(Go.asInterface(_t), _nlist);
        var _methods:Slice<Ref<stdgo.go.types.Types.Func>> = (null : Slice<Ref<stdgo.go.types.Types.Func>>);
        var _embeddeds:Slice<stdgo.go.types.Types.Type> = (null : Slice<stdgo.go.types.Types.Type>);
        _p._expect((123 : GoInt32));
        while ((_p._tok != (125 : GoInt32)) && (_p._tok != (-1 : GoInt32))) {
            if (_p._tok == ((63 : GoInt32))) {
                _p._next();
                _embeddeds = _embeddeds.__appendref__(_p._parseType(_pkg));
            } else {
                var _method = _p._parseFunc(_pkg);
                if (_method != null) {
                    _methods = _methods.__appendref__(_method);
                };
            };
            _p._expect((59 : GoInt32));
        };
        _p._expect((125 : GoInt32));
        {
            var __tmp__ = (stdgo.go.types.Types.newInterfaceType(_methods, _embeddeds) == null ? null : stdgo.go.types.Types.newInterfaceType(_methods, _embeddeds).__copy__());
            _t._check = __tmp__._check;
            _t._methods = __tmp__._methods;
            _t._embeddeds = __tmp__._embeddeds;
            _t._embedPos = __tmp__._embedPos;
            _t._implicit = __tmp__._implicit;
            _t._complete = __tmp__._complete;
            _t._tset = __tmp__._tset;
        };
        return Go.asInterface(_t);
    }
    /**
        // Func = Name FunctionType [InlineBody] .
    **/
    @:keep
    static public function _parseFunc( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Func> {
        if (_p._tok == ((47 : GoInt32))) {
            _p._expect((47 : GoInt32));
            _p._expect((42 : GoInt32));
            if (_p._expect((-2 : GoInt32)) == (("asm" : GoString))) {
                _p._parseUnquotedString();
            };
            _p._expect((42 : GoInt32));
            _p._expect((47 : GoInt32));
        };
        var _name:GoString = _p._parseName();
        var _f = stdgo.go.types.Types.newFunc((0 : stdgo.go.token.Token.Pos), _pkg, _name, _p._parseFunctionType(_pkg, (null : Slice<AnyInterface>)));
        _p._skipInlineBody();
        if (((_name[(0 : GoInt)] == (46 : GoUInt8)) || (_name[(0 : GoInt)] == (60 : GoUInt8))) || stdgo.strings.Strings.containsRune(_name, (36 : GoInt32))) {
            return null;
        };
        return _f;
    }
    /**
        // FunctionType = ParamList ResultList .
    **/
    @:keep
    static public function _parseFunctionType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):Ref<stdgo.go.types.Types.Signature> {
        var _t = ({} : stdgo.go.types.Types.Signature);
        _p._update(Go.asInterface(_t), _nlist);
        var __tmp__ = _p._parseParamList(_pkg), _params:Ref<stdgo.go.types.Types.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
        var _results = _p._parseResultList(_pkg);
        {
            var __tmp__ = (stdgo.go.types.Types.newSignatureType(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _params, _results, _isVariadic) == null ? null : stdgo.go.types.Types.newSignatureType(null, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _params, _results, _isVariadic).__copy__());
            _t._rparams = __tmp__._rparams;
            _t._tparams = __tmp__._tparams;
            _t._scope = __tmp__._scope;
            _t._recv = __tmp__._recv;
            _t._params = __tmp__._params;
            _t._results = __tmp__._results;
            _t._variadic = __tmp__._variadic;
        };
        return _t;
    }
    /**
        // ResultList = Type | ParamList .
    **/
    @:keep
    static public function _parseResultList( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Tuple> {
        if (_p._tok == ((60 : GoInt32))) {
            _p._next();
            if ((_p._tok == (-2 : GoInt32)) && (_p._lit == ("inl" : GoString))) {
                return null;
            };
            var __tmp__ = _p._parseTypeAfterAngle(_pkg), _taa:stdgo.go.types.Types.Type = __tmp__._0, _0:GoInt = __tmp__._1;
            return stdgo.go.types.Types.newTuple(stdgo.go.types.Types.newParam((0 : stdgo.go.token.Token.Pos), _pkg, Go.str(), _taa));
        } else if (_p._tok == ((40 : GoInt32))) {
            var __tmp__ = _p._parseParamList(_pkg), _params:Ref<stdgo.go.types.Types.Tuple> = __tmp__._0, _1:Bool = __tmp__._1;
            return _params;
        } else {
            return null;
        };
    }
    /**
        // ParamList = "(" [ { Parameter "," } Parameter ] ")" .
    **/
    @:keep
    static public function _parseParamList( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Tuple>; var _1 : Bool; } {
        var _list:Slice<Ref<stdgo.go.types.Types.Var>> = (null : Slice<Ref<stdgo.go.types.Types.Var>>);
        var _isVariadic:Bool = false;
        _p._expect((40 : GoInt32));
        while ((_p._tok != (41 : GoInt32)) && (_p._tok != (-1 : GoInt32))) {
            if ((_list.length) > (0 : GoInt)) {
                _p._expect((44 : GoInt32));
            };
            var __tmp__ = _p._parseParam(_pkg), _par:Ref<stdgo.go.types.Types.Var> = __tmp__._0, _variadic:Bool = __tmp__._1;
            _list = _list.__appendref__(_par);
            if (_variadic) {
                if (_isVariadic) {
                    _p._error(Go.toInterface(("... not on final argument" : GoString)));
                };
                _isVariadic = true;
            };
        };
        _p._expect((41 : GoInt32));
        return { _0 : stdgo.go.types.Types.newTuple(..._list.__toArray__()), _1 : _isVariadic };
    }
    /**
        // StructType = "struct" "{" { Field } "}" .
    **/
    @:keep
    static public function _parseStructType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expectKeyword(("struct" : GoString));
        var _t = ({} : stdgo.go.types.Types.Struct);
        _p._update(Go.asInterface(_t), _nlist);
        var _fields:Slice<Ref<stdgo.go.types.Types.Var>> = (null : Slice<Ref<stdgo.go.types.Types.Var>>);
        var _tags:Slice<GoString> = (null : Slice<GoString>);
        _p._expect((123 : GoInt32));
        while ((_p._tok != (125 : GoInt32)) && (_p._tok != (-1 : GoInt32))) {
            var __tmp__ = _p._parseField(_pkg), _field:Ref<stdgo.go.types.Types.Var> = __tmp__._0, _tag:GoString = __tmp__._1;
            _p._expect((59 : GoInt32));
            _fields = _fields.__appendref__(_field);
            _tags = _tags.__appendref__(_tag);
        };
        _p._expect((125 : GoInt32));
        {
            var __tmp__ = (stdgo.go.types.Types.newStruct(_fields, _tags) == null ? null : stdgo.go.types.Types.newStruct(_fields, _tags).__copy__());
            _t._fields = __tmp__._fields;
            _t._tags = __tmp__._tags;
        };
        return Go.asInterface(_t);
    }
    /**
        // ChanType = "chan" ["<-" | "-<"] Type .
    **/
    @:keep
    static public function _parseChanType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expectKeyword(("chan" : GoString));
        var _t = ({} : stdgo.go.types.Types.Chan);
        _p._update(Go.asInterface(_t), _nlist);
        var _dir:stdgo.go.types.Types.ChanDir = (0 : stdgo.go.types.Types.ChanDir);
        if (_p._tok == ((45 : GoInt32))) {
            _p._next();
            _p._expect((60 : GoInt32));
            _dir = (1 : stdgo.go.types.Types.ChanDir);
        } else if (_p._tok == ((60 : GoInt32))) {
            if (_p._scanner.peek() == ((45 : GoInt32))) {
                _p._next();
                _p._expect((45 : GoInt32));
                _dir = (2 : stdgo.go.types.Types.ChanDir);
            };
        };
        {
            var __tmp__ = (stdgo.go.types.Types.newChan(_dir, _p._parseType(_pkg)) == null ? null : stdgo.go.types.Types.newChan(_dir, _p._parseType(_pkg)).__copy__());
            _t._dir = __tmp__._dir;
            _t._elem = __tmp__._elem;
        };
        return Go.asInterface(_t);
    }
    /**
        // MapType = "map" "[" Type "]" Type .
    **/
    @:keep
    static public function _parseMapType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expectKeyword(("map" : GoString));
        var _t = ({} : stdgo.go.types.Types.Map_);
        _p._update(Go.asInterface(_t), _nlist);
        _p._expect((91 : GoInt32));
        var _key:stdgo.go.types.Types.Type = _p._parseType(_pkg);
        _p._expect((93 : GoInt32));
        var _elem:stdgo.go.types.Types.Type = _p._parseType(_pkg);
        {
            var __tmp__ = (stdgo.go.types.Types.newMap(_key, _elem) == null ? null : stdgo.go.types.Types.newMap(_key, _elem).__copy__());
            _t._key = __tmp__._key;
            _t._elem = __tmp__._elem;
        };
        return Go.asInterface(_t);
    }
    /**
        // ArrayOrSliceType = "[" [ int ] "]" Type .
    **/
    @:keep
    static public function _parseArrayOrSliceType( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        _p._expect((91 : GoInt32));
        if (_p._tok == ((93 : GoInt32))) {
            _p._next();
            var _t = ({} : stdgo.go.types.Types.Slice_);
            _p._update(Go.asInterface(_t), _nlist);
            {
                var __tmp__ = (stdgo.go.types.Types.newSlice(_p._parseType(_pkg)) == null ? null : stdgo.go.types.Types.newSlice(_p._parseType(_pkg)).__copy__());
                _t._elem = __tmp__._elem;
            };
            return Go.asInterface(_t);
        };
        var _t = ({} : stdgo.go.types.Types.Array_);
        _p._update(Go.asInterface(_t), _nlist);
        var _len:GoInt64 = _p._parseInt64();
        _p._expect((93 : GoInt32));
        {
            var __tmp__ = (stdgo.go.types.Types.newArray(_p._parseType(_pkg), _len) == null ? null : stdgo.go.types.Types.newArray(_p._parseType(_pkg), _len).__copy__());
            _t._len = __tmp__._len;
            _t._elem = __tmp__._elem;
        };
        return Go.asInterface(_t);
    }
    @:keep
    static public function _parseInt( _p:Ref<T_parser>):GoInt {
        var _lit:GoString = _p._expect((-3 : GoInt32));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_lit, (10 : GoInt), (0 : GoInt)), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _p._error(Go.toInterface(_err));
        };
        return (_n : GoInt);
    }
    @:keep
    static public function _parseInt64( _p:Ref<T_parser>):GoInt64 {
        var _lit:GoString = _p._expect((-3 : GoInt32));
        var __tmp__ = stdgo.strconv.Strconv.parseInt(_lit, (10 : GoInt), (64 : GoInt)), _n:GoInt64 = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _p._error(Go.toInterface(_err));
        };
        return _n;
    }
    /**
        // NamedType = TypeName [ "=" ] Type { Method } .
        // TypeName  = ExportedName .
        // Method    = "func" "(" Param ")" Name ParamList ResultList [InlineBody] ";" .
    **/
    @:keep
    static public function _parseNamedType( _p:Ref<T_parser>, _nlist:Slice<AnyInterface>):stdgo.go.types.Types.Type {
        var __tmp__ = _p._parseExportedName(), _pkg:Ref<stdgo.go.types.Types.Package> = __tmp__._0, _name:GoString = __tmp__._1;
        var _scope = _pkg.scope();
        var _obj:stdgo.go.types.Types.Object = _scope.lookup(_name);
        if ((_obj != null) && (_obj.type() == null)) {
            _p._errorf(("%v has nil type" : GoString), Go.toInterface(_obj));
        };
        if ((_p._tok == (-2 : GoInt32)) && (_p._lit == ("notinheap" : GoString))) {
            _p._next();
        };
        if (_p._tok == ((61 : GoInt32))) {
            _p._next();
            _p._aliases[(Go.typeAssert((_nlist[((_nlist.length) - (1 : GoInt) : GoInt)] : GoInt)) : GoInt)] = _name;
            if (_obj != null) {
                var _t:stdgo.go.types.Types.Type = _obj.type();
                _p._update(_t, _nlist);
                _p._parseType(_pkg);
                return _t;
            };
            var _t:stdgo.go.types.Types.Type = _p._parseType(_pkg, ..._nlist.__toArray__());
            _obj = Go.asInterface(stdgo.go.types.Types.newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, _name, _t));
            _scope.insert(_obj);
            return _t;
        };
        if (_obj == null) {
            var _tname = stdgo.go.types.Types.newTypeName((0 : stdgo.go.token.Token.Pos), _pkg, _name, (null : stdgo.go.types.Types.Type));
            stdgo.go.types.Types.newNamed(_tname, (null : stdgo.go.types.Types.Type), (null : Slice<Ref<stdgo.go.types.Types.Func>>));
            _scope.insert(Go.asInterface(_tname));
            _obj = Go.asInterface(_tname);
        };
        var _t:stdgo.go.types.Types.Type = _obj.type();
        _p._update(_t, _nlist);
        var __tmp__ = try {
            { value : (Go.typeAssert((Go.toInterface(_t) : Ref<stdgo.go.types.Types.Named>)) : Ref<stdgo.go.types.Types.Named>), ok : true };
        } catch(_) {
            { value : (null : Ref<stdgo.go.types.Types.Named>), ok : false };
        }, _nt = __tmp__.value, _ok = __tmp__.ok;
        if (!_ok) {
            var _pt:stdgo.go.types.Types.Type = _p._parseType(_pkg);
            if (Go.toInterface(_pt) != (Go.toInterface(_t))) {
                _p._error(Go.toInterface(("unexpected underlying type for non-named TypeName" : GoString)));
            };
            return _t;
        };
        var _underlying:stdgo.go.types.Types.Type = _p._parseType(_pkg);
        if (_nt.underlying() == null) {
            if (_underlying.underlying() == null) {
                var _fix:T_fixupRecord = ({ _toUpdate : _nt, _target : _underlying } : T_fixupRecord);
                _p._fixups = _p._fixups.__appendref__((_fix == null ? null : _fix.__copy__()));
            } else {
                _nt.setUnderlying(_underlying.underlying());
            };
        };
        if (_p._tok == ((10 : GoInt32))) {
            _p._next();
            while (_p._tok == ((-2 : GoInt32))) {
                _p._expectKeyword(("func" : GoString));
                if (_p._tok == ((47 : GoInt32))) {
                    _p._expect((47 : GoInt32));
                    _p._expect((42 : GoInt32));
                    if (_p._expect((-2 : GoInt32)) == (("asm" : GoString))) {
                        _p._parseUnquotedString();
                    };
                    _p._expect((42 : GoInt32));
                    _p._expect((47 : GoInt32));
                };
                _p._expect((40 : GoInt32));
                var __tmp__ = _p._parseParam(_pkg), _receiver:Ref<stdgo.go.types.Types.Var> = __tmp__._0, _0:Bool = __tmp__._1;
                _p._expect((41 : GoInt32));
                var _name:GoString = _p._parseName();
                var __tmp__ = _p._parseParamList(_pkg), _params:Ref<stdgo.go.types.Types.Tuple> = __tmp__._0, _isVariadic:Bool = __tmp__._1;
                var _results = _p._parseResultList(_pkg);
                _p._skipInlineBody();
                _p._expectEOL();
                var _sig = stdgo.go.types.Types.newSignatureType(_receiver, (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), (null : Slice<Ref<stdgo.go.types.Types.TypeParam>>), _params, _results, _isVariadic);
                _nt.addMethod(stdgo.go.types.Types.newFunc((0 : stdgo.go.token.Token.Pos), _pkg, _name, _sig));
            };
        };
        return Go.asInterface(_nt);
    }
    /**
        // update sets the type map entries for the entries in nlist to t.
        // An entry in nlist can be a type number in p.typeList,
        // used to resolve named types, or it can be a *types.Pointer,
        // used to resolve pointers to named types in case they are referenced
        // by embedded fields.
    **/
    @:keep
    static public function _update( _p:Ref<T_parser>, _t:stdgo.go.types.Types.Type, _nlist:Slice<AnyInterface>):Void {
        if (Go.toInterface(_t) == (Go.toInterface(Go.asInterface(_reserved)))) {
            _p._errorf(("internal error: update(%v) invoked on reserved" : GoString), Go.toInterface(_nlist));
        };
        if (_t == null) {
            _p._errorf(("internal error: update(%v) invoked on nil" : GoString), Go.toInterface(_nlist));
        };
        for (_0 => _n in _nlist) {
            {
                final __type__ = _n;
                if (Go.typeEquals((__type__ : GoInt))) {
                    var _n:GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                    if (Go.toInterface(_p._typeList[(_n : GoInt)]) == (Go.toInterface(_t))) {
                        continue;
                    };
                    if (Go.toInterface(_p._typeList[(_n : GoInt)]) != (Go.toInterface(Go.asInterface(_reserved)))) {
                        _p._errorf(("internal error: update(%v): %d not reserved" : GoString), Go.toInterface(_nlist), Go.toInterface(_n));
                    };
                    _p._typeList[(_n : GoInt)] = _t;
                } else if (Go.typeEquals((__type__ : Ref<stdgo.go.types.Types.Pointer_>))) {
                    var _n:Ref<stdgo.go.types.Types.Pointer_> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Pointer_>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Pointer_>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Pointer_>) : __type__.__underlying__().value;
                    if (Go.toInterface(Go.asInterface(_n)) != Go.toInterface(Go.asInterface(((new stdgo.go.types.Types.Pointer_() : stdgo.go.types.Types.Pointer_))))) {
                        var _elem:stdgo.go.types.Types.Type = _n.elem();
                        if (Go.toInterface(_elem) == (Go.toInterface(_t))) {
                            continue;
                        };
                        _p._errorf(("internal error: update: pointer already set to %v, expected %v" : GoString), Go.toInterface(_elem), Go.toInterface(_t));
                    };
                    {
                        var __tmp__ = (stdgo.go.types.Types.newPointer(_t) == null ? null : stdgo.go.types.Types.newPointer(_t).__copy__());
                        _n._base = __tmp__._base;
                    };
                } else {
                    var _n:AnyInterface = __type__ == null ? null : __type__.__underlying__();
                    _p._errorf(("internal error: %T on nlist" : GoString), _n);
                };
            };
        };
    }
    /**
        // reserve reserves the type map entry n for future use.
    **/
    @:keep
    static public function _reserve( _p:Ref<T_parser>, _n:GoInt):Void {
        if ((_p._typeData.length) == ((0 : GoInt))) {
            if (_n != ((_p._typeList.length))) {
                _p._errorf(("invalid type number %d (out of sync)" : GoString), Go.toInterface(_n));
            };
            _p._typeList = _p._typeList.__appendref__(Go.asInterface(_reserved));
        } else {
            if (_p._typeList[(_n : GoInt)] != null) {
                _p._errorf(("previously visited type number %d" : GoString), Go.toInterface(_n));
            };
            _p._typeList[(_n : GoInt)] = Go.asInterface(_reserved);
        };
    }
    /**
        // Const = Name [Type] "=" ConstValue .
    **/
    @:keep
    static public function _parseConst( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Const> {
        var _name:GoString = _p._parseName();
        var _typ:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);
        if (_p._tok == ((60 : GoInt32))) {
            _typ = _p._parseType(_pkg);
        };
        _p._expect((61 : GoInt32));
        var __tmp__ = _p._parseConstValue(_pkg), _val:stdgo.go.constant.Constant.Value = __tmp__._0, _vtyp:stdgo.go.types.Types.Type = __tmp__._1;
        if (_typ == null) {
            _typ = _vtyp;
        };
        return stdgo.go.types.Types.newConst((0 : stdgo.go.token.Token.Pos), _pkg, _name, _typ, _val);
    }
    /**
        // ConstValue     = string | "false" | "true" | ["-"] (int ["'"] | FloatOrComplex) | Conversion .
        // FloatOrComplex = float ["i" | ("+"|"-") float "i"] .
    **/
    @:keep
    static public function _parseConstValue( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : stdgo.go.constant.Constant.Value; var _1 : stdgo.go.types.Types.Type; } {
        var _val:stdgo.go.constant.Constant.Value = (null : stdgo.go.constant.Constant.Value), _typ:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);
        if (_p._tok == ((36 : GoInt32))) {
            _p._next();
            if (_p._tok != ((-2 : GoInt32))) {
                _p._errorf(("expected identifier after \'$$\', got %s (%q)" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)), Go.toInterface(_p._lit));
            };
        };
        if (_p._tok == ((-6 : GoInt32))) {
            var _str:GoString = _p._parseString();
            _val = stdgo.go.constant.Constant.makeString(_str);
            _typ = Go.asInterface(stdgo.go.types.Types.typ[((24 : stdgo.go.types.Types.BasicKind) : GoInt)]);
            return { _0 : _val, _1 : _typ };
        } else if (_p._tok == ((-2 : GoInt32))) {
            var _b:Bool = false;
            if (_p._lit == (("false" : GoString))) {} else if (_p._lit == (("true" : GoString))) {
                _b = true;
            } else if (_p._lit == (("convert" : GoString))) {
                return _p._parseConversion(_pkg);
            } else {
                _p._errorf(("expected const value, got %s (%q)" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)), Go.toInterface(_p._lit));
            };
            _p._next();
            _val = stdgo.go.constant.Constant.makeBool(_b);
            _typ = Go.asInterface(stdgo.go.types.Types.typ[((19 : stdgo.go.types.Types.BasicKind) : GoInt)]);
            return { _0 : _val, _1 : _typ };
        };
        var _sign:GoString = Go.str();
        if (_p._tok == ((45 : GoInt32))) {
            _p._next();
            _sign = ("-" : GoString);
        };
        if (_p._tok == ((-3 : GoInt32))) {
            _val = stdgo.go.constant.Constant.makeFromLiteral(_sign + _p._lit, (5 : stdgo.go.token.Token.Token), ("0" : GoUInt));
            if (_val == null) {
                _p._error(Go.toInterface(("could not parse integer literal" : GoString)));
            };
            _p._next();
            if (_p._tok == ((39 : GoInt32))) {
                _p._next();
                _typ = Go.asInterface(stdgo.go.types.Types.typ[((21 : stdgo.go.types.Types.BasicKind) : GoInt)]);
            } else {
                _typ = Go.asInterface(stdgo.go.types.Types.typ[((20 : stdgo.go.types.Types.BasicKind) : GoInt)]);
            };
        } else if (_p._tok == ((-4 : GoInt32))) {
            var _re:GoString = _sign + _p._lit;
            _p._next();
            var _im:GoString = ("" : GoString);
            if (_p._tok == ((43 : GoInt32))) {
                _p._next();
                _im = _p._expect((-4 : GoInt32));
            } else if (_p._tok == ((45 : GoInt32))) {
                _p._next();
                _im = ("-" : GoString) + _p._expect((-4 : GoInt32));
            } else if (_p._tok == ((-2 : GoInt32))) {
                _im = _re;
                _re = ("0" : GoString);
            } else {
                _val = stdgo.go.constant.Constant.makeFromLiteral(_re, (6 : stdgo.go.token.Token.Token), ("0" : GoUInt));
                if (_val == null) {
                    _p._error(Go.toInterface(("could not parse float literal" : GoString)));
                };
                _typ = Go.asInterface(stdgo.go.types.Types.typ[((22 : stdgo.go.types.Types.BasicKind) : GoInt)]);
                return { _0 : _val, _1 : _typ };
            };
            _p._expectKeyword(("i" : GoString));
            var _reval:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeFromLiteral(_re, (6 : stdgo.go.token.Token.Token), ("0" : GoUInt));
            if (_reval == null) {
                _p._error(Go.toInterface(("could not parse real component of complex literal" : GoString)));
            };
            var _imval:stdgo.go.constant.Constant.Value = stdgo.go.constant.Constant.makeFromLiteral(_im + ("i" : GoString), (7 : stdgo.go.token.Token.Token), ("0" : GoUInt));
            if (_imval == null) {
                _p._error(Go.toInterface(("could not parse imag component of complex literal" : GoString)));
            };
            _val = stdgo.go.constant.Constant.binaryOp(_reval, (12 : stdgo.go.token.Token.Token), _imval);
            _typ = Go.asInterface(stdgo.go.types.Types.typ[((23 : stdgo.go.types.Types.BasicKind) : GoInt)]);
        } else {
            _p._errorf(("expected const value, got %s (%q)" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)), Go.toInterface(_p._lit));
        };
        return { _0 : _val, _1 : _typ };
    }
    /**
        // Conversion = "convert" "(" Type "," ConstValue ")" .
    **/
    @:keep
    static public function _parseConversion( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : stdgo.go.constant.Constant.Value; var _1 : stdgo.go.types.Types.Type; } {
        var _val:stdgo.go.constant.Constant.Value = (null : stdgo.go.constant.Constant.Value), _typ:stdgo.go.types.Types.Type = (null : stdgo.go.types.Types.Type);
        _p._expectKeyword(("convert" : GoString));
        _p._expect((40 : GoInt32));
        _typ = _p._parseType(_pkg);
        _p._expect((44 : GoInt32));
        {
            var __tmp__ = _p._parseConstValue(_pkg);
            _val = __tmp__._0;
        };
        _p._expect((41 : GoInt32));
        return { _0 : _val, _1 : _typ };
    }
    /**
        // Var = Name Type .
    **/
    @:keep
    static public function _parseVar( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):Ref<stdgo.go.types.Types.Var> {
        var _name:GoString = _p._parseName();
        var _v = stdgo.go.types.Types.newVar((0 : stdgo.go.token.Token.Pos), _pkg, _name, _p._parseType(_pkg));
        if ((_name[(0 : GoInt)] == (46 : GoUInt8)) || (_name[(0 : GoInt)] == (60 : GoUInt8))) {
            return null;
        };
        return _v;
    }
    /**
        // Param = Name ["..."] Type .
    **/
    @:keep
    static public function _parseParam( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Var>; var _1 : Bool; } {
        var _param:Ref<stdgo.go.types.Types.Var> = (null : Ref<stdgo.go.types.Types.Var>), _isVariadic:Bool = false;
        var _name:GoString = _p._parseName();
        if ((stdgo.strings.Strings.hasPrefix(_name, ("p." : GoString)) || stdgo.strings.Strings.hasPrefix(_name, ("r." : GoString))) || stdgo.strings.Strings.hasPrefix(_name, ("$$ret" : GoString))) {
            _name = Go.str();
        };
        if ((_p._tok == (60 : GoInt32)) && (_p._scanner.peek() == (101 : GoInt32))) {
            _p._next();
            _p._expectKeyword(("esc" : GoString));
            _p._expect((58 : GoInt32));
            _p._expect((-3 : GoInt32));
            _p._expect((62 : GoInt32));
        };
        if (_p._tok == ((46 : GoInt32))) {
            _p._next();
            _p._expect((46 : GoInt32));
            _p._expect((46 : GoInt32));
            _isVariadic = true;
        };
        var _typ:stdgo.go.types.Types.Type = _p._parseType(_pkg);
        if (_isVariadic) {
            _typ = Go.asInterface(stdgo.go.types.Types.newSlice(_typ));
        };
        _param = stdgo.go.types.Types.newParam((0 : stdgo.go.token.Token.Pos), _pkg, _name, _typ);
        return { _0 : _param, _1 : _isVariadic };
    }
    /**
        // Field = Name Type [string] .
    **/
    @:keep
    static public function _parseField( _p:Ref<T_parser>, _pkg:Ref<stdgo.go.types.Types.Package>):{ var _0 : Ref<stdgo.go.types.Types.Var>; var _1 : GoString; } {
        var _field:Ref<stdgo.go.types.Types.Var> = (null : Ref<stdgo.go.types.Types.Var>), _tag:GoString = ("" : GoString);
        var _name:GoString = _p._parseName();
        var __tmp__ = _p._parseTypeExtended(_pkg), _typ:stdgo.go.types.Types.Type = __tmp__._0, _n:GoInt = __tmp__._1;
        var _anon:Bool = false;
        if (_name == (Go.str())) {
            _anon = true;
            {
                var __tmp__ = (_p._aliases != null && _p._aliases.__exists__(_n) ? { value : _p._aliases[_n], ok : true } : { value : ("" : GoString), ok : false }), _aname:GoString = __tmp__.value, _ok:Bool = __tmp__.ok;
                if (_ok) {
                    _name = _aname;
                } else {
                    {
                        final __type__ = _deref(_typ);
                        if (Go.typeEquals((__type__ : Ref<stdgo.go.types.Types.Basic>))) {
                            var _typ:Ref<stdgo.go.types.Types.Basic> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Basic>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Basic>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Basic>) : __type__.__underlying__().value;
                            _name = _typ.name();
                        } else if (Go.typeEquals((__type__ : Ref<stdgo.go.types.Types.Named>))) {
                            var _typ:Ref<stdgo.go.types.Types.Named> = __type__ == null ? (null : Ref<stdgo.go.types.Types.Named>) : __type__.__underlying__() == null ? (null : Ref<stdgo.go.types.Types.Named>) : __type__ == null ? (null : Ref<stdgo.go.types.Types.Named>) : __type__.__underlying__().value;
                            _name = _typ.obj().name();
                        } else {
                            var _typ:stdgo.go.types.Types.Type = __type__ == null ? (null : stdgo.go.types.Types.Type) : cast __type__;
                            _p._error(Go.toInterface(("embedded field expected" : GoString)));
                        };
                    };
                };
            };
        };
        _field = stdgo.go.types.Types.newField((0 : stdgo.go.token.Token.Pos), _pkg, _name, _typ, _anon);
        if (_p._tok == ((-6 : GoInt32))) {
            _tag = _p._parseString();
        };
        return { _0 : _field, _1 : _tag };
    }
    /**
        // Name = QualifiedName | "?" .
    **/
    @:keep
    static public function _parseName( _p:Ref<T_parser>):GoString {
        if (_p._tok == ((63 : GoInt32))) {
            _p._next();
            return Go.str();
        };
        var __tmp__ = _p._parseUnquotedQualifiedName(), _0:GoString = __tmp__._0, _name:GoString = __tmp__._1;
        return _name;
    }
    /**
        // parseExportedName is like parseQualifiedName, but
        // the package path is resolved to an imported *types.Package.
        //
        // ExportedName = string [string] .
    **/
    @:keep
    static public function _parseExportedName( _p:Ref<T_parser>):{ var _0 : Ref<stdgo.go.types.Types.Package>; var _1 : GoString; } {
        var _pkg:Ref<stdgo.go.types.Types.Package> = (null : Ref<stdgo.go.types.Types.Package>), _name:GoString = ("" : GoString);
        var __tmp__ = _p._parseQualifiedName(), _path:GoString = __tmp__._0, _name:GoString = __tmp__._1;
        var _pkgname:GoString = ("" : GoString);
        if (_p._tok == ((-6 : GoInt32))) {
            _pkgname = _p._parseString();
        };
        _pkg = _p._getPkg(_path, _pkgname);
        if (_pkg == null) {
            _p._errorf(("package %s (path = %q) not found" : GoString), Go.toInterface(_name), Go.toInterface(_path));
        };
        return { _0 : _pkg, _1 : _name };
    }
    /**
        // getPkg returns the package for a given path. If the package is
        // not found but we have a package name, create the package and
        // add it to the p.imports map.
    **/
    @:keep
    static public function _getPkg( _p:Ref<T_parser>, _pkgpath:GoString, _name:GoString):Ref<stdgo.go.types.Types.Package> {
        if (_pkgpath == (("unsafe" : GoString))) {
            return stdgo.go.types.Types.unsafe;
        };
        var _pkg = _p._imports[_pkgpath];
        if ((_pkg == null) && (_name != Go.str())) {
            _pkg = stdgo.go.types.Types.newPackage(_pkgpath, _name);
            _p._imports[_pkgpath] = _pkg;
        };
        return _pkg;
    }
    /**
        // qualifiedName = [ ["."] unquotedString "." ] unquotedString .
        //
        // The above production uses greedy matching.
    **/
    @:keep
    static public function _parseQualifiedNameStr( _p:Ref<T_parser>, _unquotedName:GoString):{ var _0 : GoString; var _1 : GoString; } {
        var _pkgpath:GoString = ("" : GoString), _name:GoString = ("" : GoString);
        var _parts = stdgo.strings.Strings.split(_unquotedName, ("." : GoString));
        if (_parts[(0 : GoInt)] == (Go.str())) {
            _parts = (_parts.__slice__((1 : GoInt)) : Slice<GoString>);
        };
        if ((_parts.length) == ((0 : GoInt))) {
            _p._errorf(("malformed qualified name: %q" : GoString), Go.toInterface(_unquotedName));
        } else if ((_parts.length) == ((1 : GoInt))) {
            _pkgpath = _p._pkgpath;
            _name = _parts[(0 : GoInt)];
        } else {
            _pkgpath = stdgo.strings.Strings.join((_parts.__slice__((0 : GoInt), (_parts.length) - (1 : GoInt)) : Slice<GoString>), ("." : GoString));
            _name = _parts[((_parts.length) - (1 : GoInt) : GoInt)];
        };
        return { _0 : _pkgpath, _1 : _name };
    }
    @:keep
    static public function _parseUnquotedQualifiedName( _p:Ref<T_parser>):{ var _0 : GoString; var _1 : GoString; } {
        var _path:GoString = ("" : GoString), _name:GoString = ("" : GoString);
        return _p._parseQualifiedNameStr(_p._parseUnquotedString());
    }
    @:keep
    static public function _parseQualifiedName( _p:Ref<T_parser>):{ var _0 : GoString; var _1 : GoString; } {
        var _path:GoString = ("" : GoString), _name:GoString = ("" : GoString);
        return _p._parseQualifiedNameStr(_p._parseString());
    }
    @:keep
    static public function _next( _p:Ref<T_parser>):Void {
        _p._tok = _p._scanner.scan();
        if (_p._tok == ((-2 : GoInt32)) || _p._tok == ((-3 : GoInt32)) || _p._tok == ((-4 : GoInt32)) || _p._tok == ((-6 : GoInt32)) || _p._tok == ((183 : GoInt32))) {
            _p._lit = _p._scanner.tokenText();
        } else {
            _p._lit = Go.str();
        };
    }
    /**
        // unquotedString     = { unquotedStringChar } .
        // unquotedStringChar = <neither a whitespace nor a ';' char> .
    **/
    @:keep
    static public function _parseUnquotedString( _p:Ref<T_parser>):GoString {
        if (_p._tok == ((-1 : GoInt32))) {
            _p._error(Go.toInterface(("unexpected EOF" : GoString)));
        };
        var _b:stdgo.strings.Strings.Builder = ({} : stdgo.strings.Strings.Builder);
        _b.writeString(_p._scanner.tokenText());
        {
            var _ch:GoInt32 = _p._scanner.peek();
            Go.cfor((((_ch != (10 : GoInt32)) && (_ch != (59 : GoInt32))) && (_ch != (-1 : GoInt32))) && ((_p._scanner.whitespace & ((("1" : GoUInt64) : GoUInt64) << (_ch : GoUInt))) == ("0" : GoUInt64)), _ch = _p._scanner.peek(), {
                _b.writeRune(_ch);
                _p._scanner.next();
            });
        };
        _p._next();
        return (_b.string() : GoString);
    }
    @:keep
    static public function _parseString( _p:Ref<T_parser>):GoString {
        var __tmp__ = stdgo.strconv.Strconv.unquote(_p._expect((-6 : GoInt32))), _str:GoString = __tmp__._0, _err:Error = __tmp__._1;
        if (_err != null) {
            _p._error(Go.toInterface(_err));
        };
        return _str;
    }
    @:keep
    static public function _expectKeyword( _p:Ref<T_parser>, _keyword:GoString):Void {
        var _lit:GoString = _p._expect((-2 : GoInt32));
        if (_lit != (_keyword)) {
            _p._errorf(("expected keyword %s, got %q" : GoString), Go.toInterface(_keyword), Go.toInterface(_lit));
        };
    }
    @:keep
    static public function _expectEOL( _p:Ref<T_parser>):Void {
        if ((_p._version == ("v1" : GoString)) || (_p._version == ("v2" : GoString))) {
            _p._expect((59 : GoInt32));
        };
        _p._expect((10 : GoInt32));
    }
    @:keep
    static public function _expect( _p:Ref<T_parser>, _tok:GoRune):GoString {
        var _lit:GoString = _p._lit;
        if (_p._tok != (_tok)) {
            _p._errorf(("expected %s, got %s (%s)" : GoString), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_tok)), Go.toInterface(stdgo.text.scanner.Scanner.tokenString(_p._tok)), Go.toInterface(_lit));
        };
        _p._next();
        return _lit;
    }
    @:keep
    static public function _errorf( _p:Ref<T_parser>, _format:GoString, _args:haxe.Rest<AnyInterface>):Void {
        var _args = new Slice<AnyInterface>(0, 0, ..._args);
        _p._error(Go.toInterface(stdgo.fmt.Fmt.errorf(_format, ..._args.__toArray__())));
    }
    @:keep
    static public function _error( _p:Ref<T_parser>, _err:AnyInterface):Void {
        {
            var __tmp__ = try {
                { value : (Go.typeAssert((_err : GoString)) : GoString), ok : true };
            } catch(_) {
                { value : ("" : GoString), ok : false };
            }, _s = __tmp__.value, _ok = __tmp__.ok;
            if (_ok) {
                _err = Go.toInterface(stdgo.errors.Errors.new_(_s));
            };
        };
        throw Go.toInterface(Go.asInterface((new T_importError((_p._scanner.pos() == null ? null : _p._scanner.pos().__copy__()), (Go.typeAssert((_err : Error)) : Error)) : T_importError)));
    }
    @:keep
    static public function _initScanner( _p:Ref<T_parser>, _filename:GoString, _src:stdgo.io.Io.Reader):Void {
        _p._scanner.init(_src);
        _p._scanner.error = function(_0:Ref<stdgo.text.scanner.Scanner.Scanner>, _msg:GoString):Void {
            _p._error(Go.toInterface(_msg));
        };
        _p._scanner.mode = ("92" : GoUInt);
        _p._scanner.whitespace = ("4294967808" : GoUInt64);
        _p._scanner.position.filename = _filename;
        _p._next();
    }
    @:keep
    static public function _init( _p:Ref<T_parser>, _filename:GoString, _src:stdgo.io.Io.Reader, _imports:GoMap<GoString, Ref<stdgo.go.types.Types.Package>>):Void {
        _p._scanner = ({} : stdgo.text.scanner.Scanner.Scanner);
        _p._initScanner(_filename, _src);
        _p._imports = _imports;
        _p._aliases = (new GoObjectMap<GoInt, GoString>(new stdgo.internal.reflect.Reflect._Type(stdgo.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo.internal.reflect.Reflect.GoType.basic(int_kind) }, { get : () -> stdgo.internal.reflect.Reflect.GoType.basic(string_kind) }))) : GoMap<GoInt, GoString>);
        _p._typeList = new Slice<stdgo.go.types.Types.Type>((1 : GoInt).toBasic(), (16 : GoInt), ...[for (i in 0 ... (1 : GoInt).toBasic()) (null : stdgo.go.types.Types.Type)]);
    }
}
/**
    
    
    
**/
@:structInit class T__parseTypes_0___localname___typeOffset {
    public var _offset : GoInt = 0;
    public var _length : GoInt = 0;
    public function new(?_offset:GoInt, ?_length:GoInt) {
        if (_offset != null) this._offset = _offset;
        if (_length != null) this._length = _length;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new T__parseTypes_0___localname___typeOffset(_offset, _length);
    }
}
class T_importError_asInterface {
    @:keep
    public function error():GoString return __self__.value.error();
    public function new(__self__, __type__) {
        this.__self__ = __self__;
        this.__type__ = __type__;
    }
    public function __underlying__() return new AnyInterface((__type__.kind() == stdgo.internal.reflect.Reflect.KindType.pointer && !stdgo.internal.reflect.Reflect.isReflectTypeRef(__type__)) ? (__self__ : Dynamic) : (__self__.value : Dynamic), __type__);
    var __self__ : Pointer<T_importError>;
    var __type__ : stdgo.internal.reflect.Reflect._Type;
}
@:keep @:allow(go.internal.gccgoimporter.Gccgoimporter.T_importError_asInterface) class T_importError_static_extension {
    @:keep
    static public function error( _e:T_importError):GoString {
        return stdgo.fmt.Fmt.sprintf(("import error %s (byte offset = %d): %s" : GoString), Go.toInterface(Go.asInterface(_e._pos)), Go.toInterface(_e._pos.offset), Go.toInterface(_e._err));
    }
}
