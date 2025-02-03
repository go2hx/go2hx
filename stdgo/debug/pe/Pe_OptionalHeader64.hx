package stdgo.debug.pe;
@:structInit @:using(stdgo.debug.pe.Pe.OptionalHeader64_static_extension) abstract OptionalHeader64(stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64) from stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64 to stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64 {
    public var magic(get, set) : std.UInt;
    function get_magic():std.UInt return this.magic;
    function set_magic(v:std.UInt):std.UInt {
        this.magic = (v : stdgo.GoUInt16);
        return v;
    }
    public var majorLinkerVersion(get, set) : std.UInt;
    function get_majorLinkerVersion():std.UInt return this.majorLinkerVersion;
    function set_majorLinkerVersion(v:std.UInt):std.UInt {
        this.majorLinkerVersion = (v : stdgo.GoUInt8);
        return v;
    }
    public var minorLinkerVersion(get, set) : std.UInt;
    function get_minorLinkerVersion():std.UInt return this.minorLinkerVersion;
    function set_minorLinkerVersion(v:std.UInt):std.UInt {
        this.minorLinkerVersion = (v : stdgo.GoUInt8);
        return v;
    }
    public var sizeOfCode(get, set) : std.UInt;
    function get_sizeOfCode():std.UInt return this.sizeOfCode;
    function set_sizeOfCode(v:std.UInt):std.UInt {
        this.sizeOfCode = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfInitializedData(get, set) : std.UInt;
    function get_sizeOfInitializedData():std.UInt return this.sizeOfInitializedData;
    function set_sizeOfInitializedData(v:std.UInt):std.UInt {
        this.sizeOfInitializedData = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfUninitializedData(get, set) : std.UInt;
    function get_sizeOfUninitializedData():std.UInt return this.sizeOfUninitializedData;
    function set_sizeOfUninitializedData(v:std.UInt):std.UInt {
        this.sizeOfUninitializedData = (v : stdgo.GoUInt32);
        return v;
    }
    public var addressOfEntryPoint(get, set) : std.UInt;
    function get_addressOfEntryPoint():std.UInt return this.addressOfEntryPoint;
    function set_addressOfEntryPoint(v:std.UInt):std.UInt {
        this.addressOfEntryPoint = (v : stdgo.GoUInt32);
        return v;
    }
    public var baseOfCode(get, set) : std.UInt;
    function get_baseOfCode():std.UInt return this.baseOfCode;
    function set_baseOfCode(v:std.UInt):std.UInt {
        this.baseOfCode = (v : stdgo.GoUInt32);
        return v;
    }
    public var imageBase(get, set) : haxe.UInt64;
    function get_imageBase():haxe.UInt64 return this.imageBase;
    function set_imageBase(v:haxe.UInt64):haxe.UInt64 {
        this.imageBase = (v : stdgo.GoUInt64);
        return v;
    }
    public var sectionAlignment(get, set) : std.UInt;
    function get_sectionAlignment():std.UInt return this.sectionAlignment;
    function set_sectionAlignment(v:std.UInt):std.UInt {
        this.sectionAlignment = (v : stdgo.GoUInt32);
        return v;
    }
    public var fileAlignment(get, set) : std.UInt;
    function get_fileAlignment():std.UInt return this.fileAlignment;
    function set_fileAlignment(v:std.UInt):std.UInt {
        this.fileAlignment = (v : stdgo.GoUInt32);
        return v;
    }
    public var majorOperatingSystemVersion(get, set) : std.UInt;
    function get_majorOperatingSystemVersion():std.UInt return this.majorOperatingSystemVersion;
    function set_majorOperatingSystemVersion(v:std.UInt):std.UInt {
        this.majorOperatingSystemVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var minorOperatingSystemVersion(get, set) : std.UInt;
    function get_minorOperatingSystemVersion():std.UInt return this.minorOperatingSystemVersion;
    function set_minorOperatingSystemVersion(v:std.UInt):std.UInt {
        this.minorOperatingSystemVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var majorImageVersion(get, set) : std.UInt;
    function get_majorImageVersion():std.UInt return this.majorImageVersion;
    function set_majorImageVersion(v:std.UInt):std.UInt {
        this.majorImageVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var minorImageVersion(get, set) : std.UInt;
    function get_minorImageVersion():std.UInt return this.minorImageVersion;
    function set_minorImageVersion(v:std.UInt):std.UInt {
        this.minorImageVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var majorSubsystemVersion(get, set) : std.UInt;
    function get_majorSubsystemVersion():std.UInt return this.majorSubsystemVersion;
    function set_majorSubsystemVersion(v:std.UInt):std.UInt {
        this.majorSubsystemVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var minorSubsystemVersion(get, set) : std.UInt;
    function get_minorSubsystemVersion():std.UInt return this.minorSubsystemVersion;
    function set_minorSubsystemVersion(v:std.UInt):std.UInt {
        this.minorSubsystemVersion = (v : stdgo.GoUInt16);
        return v;
    }
    public var win32VersionValue(get, set) : std.UInt;
    function get_win32VersionValue():std.UInt return this.win32VersionValue;
    function set_win32VersionValue(v:std.UInt):std.UInt {
        this.win32VersionValue = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfImage(get, set) : std.UInt;
    function get_sizeOfImage():std.UInt return this.sizeOfImage;
    function set_sizeOfImage(v:std.UInt):std.UInt {
        this.sizeOfImage = (v : stdgo.GoUInt32);
        return v;
    }
    public var sizeOfHeaders(get, set) : std.UInt;
    function get_sizeOfHeaders():std.UInt return this.sizeOfHeaders;
    function set_sizeOfHeaders(v:std.UInt):std.UInt {
        this.sizeOfHeaders = (v : stdgo.GoUInt32);
        return v;
    }
    public var checkSum(get, set) : std.UInt;
    function get_checkSum():std.UInt return this.checkSum;
    function set_checkSum(v:std.UInt):std.UInt {
        this.checkSum = (v : stdgo.GoUInt32);
        return v;
    }
    public var subsystem(get, set) : std.UInt;
    function get_subsystem():std.UInt return this.subsystem;
    function set_subsystem(v:std.UInt):std.UInt {
        this.subsystem = (v : stdgo.GoUInt16);
        return v;
    }
    public var dllCharacteristics(get, set) : std.UInt;
    function get_dllCharacteristics():std.UInt return this.dllCharacteristics;
    function set_dllCharacteristics(v:std.UInt):std.UInt {
        this.dllCharacteristics = (v : stdgo.GoUInt16);
        return v;
    }
    public var sizeOfStackReserve(get, set) : haxe.UInt64;
    function get_sizeOfStackReserve():haxe.UInt64 return this.sizeOfStackReserve;
    function set_sizeOfStackReserve(v:haxe.UInt64):haxe.UInt64 {
        this.sizeOfStackReserve = (v : stdgo.GoUInt64);
        return v;
    }
    public var sizeOfStackCommit(get, set) : haxe.UInt64;
    function get_sizeOfStackCommit():haxe.UInt64 return this.sizeOfStackCommit;
    function set_sizeOfStackCommit(v:haxe.UInt64):haxe.UInt64 {
        this.sizeOfStackCommit = (v : stdgo.GoUInt64);
        return v;
    }
    public var sizeOfHeapReserve(get, set) : haxe.UInt64;
    function get_sizeOfHeapReserve():haxe.UInt64 return this.sizeOfHeapReserve;
    function set_sizeOfHeapReserve(v:haxe.UInt64):haxe.UInt64 {
        this.sizeOfHeapReserve = (v : stdgo.GoUInt64);
        return v;
    }
    public var sizeOfHeapCommit(get, set) : haxe.UInt64;
    function get_sizeOfHeapCommit():haxe.UInt64 return this.sizeOfHeapCommit;
    function set_sizeOfHeapCommit(v:haxe.UInt64):haxe.UInt64 {
        this.sizeOfHeapCommit = (v : stdgo.GoUInt64);
        return v;
    }
    public var loaderFlags(get, set) : std.UInt;
    function get_loaderFlags():std.UInt return this.loaderFlags;
    function set_loaderFlags(v:std.UInt):std.UInt {
        this.loaderFlags = (v : stdgo.GoUInt32);
        return v;
    }
    public var numberOfRvaAndSizes(get, set) : std.UInt;
    function get_numberOfRvaAndSizes():std.UInt return this.numberOfRvaAndSizes;
    function set_numberOfRvaAndSizes(v:std.UInt):std.UInt {
        this.numberOfRvaAndSizes = (v : stdgo.GoUInt32);
        return v;
    }
    public var dataDirectory(get, set) : haxe.ds.Vector<DataDirectory>;
    function get_dataDirectory():haxe.ds.Vector<DataDirectory> return haxe.ds.Vector.fromArrayCopy([for (i in this.dataDirectory) i]);
    function set_dataDirectory(v:haxe.ds.Vector<DataDirectory>):haxe.ds.Vector<DataDirectory> {
        this.dataDirectory = ([for (i in v) i] : stdgo.GoArray<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>);
        return v;
    }
    public function new(?magic:std.UInt, ?majorLinkerVersion:std.UInt, ?minorLinkerVersion:std.UInt, ?sizeOfCode:std.UInt, ?sizeOfInitializedData:std.UInt, ?sizeOfUninitializedData:std.UInt, ?addressOfEntryPoint:std.UInt, ?baseOfCode:std.UInt, ?imageBase:haxe.UInt64, ?sectionAlignment:std.UInt, ?fileAlignment:std.UInt, ?majorOperatingSystemVersion:std.UInt, ?minorOperatingSystemVersion:std.UInt, ?majorImageVersion:std.UInt, ?minorImageVersion:std.UInt, ?majorSubsystemVersion:std.UInt, ?minorSubsystemVersion:std.UInt, ?win32VersionValue:std.UInt, ?sizeOfImage:std.UInt, ?sizeOfHeaders:std.UInt, ?checkSum:std.UInt, ?subsystem:std.UInt, ?dllCharacteristics:std.UInt, ?sizeOfStackReserve:haxe.UInt64, ?sizeOfStackCommit:haxe.UInt64, ?sizeOfHeapReserve:haxe.UInt64, ?sizeOfHeapCommit:haxe.UInt64, ?loaderFlags:std.UInt, ?numberOfRvaAndSizes:std.UInt, ?dataDirectory:haxe.ds.Vector<DataDirectory>) this = new stdgo._internal.debug.pe.Pe_OptionalHeader64.OptionalHeader64(
(magic : stdgo.GoUInt16),
(majorLinkerVersion : stdgo.GoUInt8),
(minorLinkerVersion : stdgo.GoUInt8),
(sizeOfCode : stdgo.GoUInt32),
(sizeOfInitializedData : stdgo.GoUInt32),
(sizeOfUninitializedData : stdgo.GoUInt32),
(addressOfEntryPoint : stdgo.GoUInt32),
(baseOfCode : stdgo.GoUInt32),
(imageBase : stdgo.GoUInt64),
(sectionAlignment : stdgo.GoUInt32),
(fileAlignment : stdgo.GoUInt32),
(majorOperatingSystemVersion : stdgo.GoUInt16),
(minorOperatingSystemVersion : stdgo.GoUInt16),
(majorImageVersion : stdgo.GoUInt16),
(minorImageVersion : stdgo.GoUInt16),
(majorSubsystemVersion : stdgo.GoUInt16),
(minorSubsystemVersion : stdgo.GoUInt16),
(win32VersionValue : stdgo.GoUInt32),
(sizeOfImage : stdgo.GoUInt32),
(sizeOfHeaders : stdgo.GoUInt32),
(checkSum : stdgo.GoUInt32),
(subsystem : stdgo.GoUInt16),
(dllCharacteristics : stdgo.GoUInt16),
(sizeOfStackReserve : stdgo.GoUInt64),
(sizeOfStackCommit : stdgo.GoUInt64),
(sizeOfHeapReserve : stdgo.GoUInt64),
(sizeOfHeapCommit : stdgo.GoUInt64),
(loaderFlags : stdgo.GoUInt32),
(numberOfRvaAndSizes : stdgo.GoUInt32),
([for (i in dataDirectory) i] : stdgo.GoArray<stdgo._internal.debug.pe.Pe_DataDirectory.DataDirectory>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
