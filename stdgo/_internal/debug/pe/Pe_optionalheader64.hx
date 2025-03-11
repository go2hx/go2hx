package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_optionalheader64_static_extension.OptionalHeader64_static_extension) class OptionalHeader64 {
    public var magic : stdgo.GoUInt16 = 0;
    public var majorLinkerVersion : stdgo.GoUInt8 = 0;
    public var minorLinkerVersion : stdgo.GoUInt8 = 0;
    public var sizeOfCode : stdgo.GoUInt32 = 0;
    public var sizeOfInitializedData : stdgo.GoUInt32 = 0;
    public var sizeOfUninitializedData : stdgo.GoUInt32 = 0;
    public var addressOfEntryPoint : stdgo.GoUInt32 = 0;
    public var baseOfCode : stdgo.GoUInt32 = 0;
    public var imageBase : stdgo.GoUInt64 = 0;
    public var sectionAlignment : stdgo.GoUInt32 = 0;
    public var fileAlignment : stdgo.GoUInt32 = 0;
    public var majorOperatingSystemVersion : stdgo.GoUInt16 = 0;
    public var minorOperatingSystemVersion : stdgo.GoUInt16 = 0;
    public var majorImageVersion : stdgo.GoUInt16 = 0;
    public var minorImageVersion : stdgo.GoUInt16 = 0;
    public var majorSubsystemVersion : stdgo.GoUInt16 = 0;
    public var minorSubsystemVersion : stdgo.GoUInt16 = 0;
    public var win32VersionValue : stdgo.GoUInt32 = 0;
    public var sizeOfImage : stdgo.GoUInt32 = 0;
    public var sizeOfHeaders : stdgo.GoUInt32 = 0;
    public var checkSum : stdgo.GoUInt32 = 0;
    public var subsystem : stdgo.GoUInt16 = 0;
    public var dllCharacteristics : stdgo.GoUInt16 = 0;
    public var sizeOfStackReserve : stdgo.GoUInt64 = 0;
    public var sizeOfStackCommit : stdgo.GoUInt64 = 0;
    public var sizeOfHeapReserve : stdgo.GoUInt64 = 0;
    public var sizeOfHeapCommit : stdgo.GoUInt64 = 0;
    public var loaderFlags : stdgo.GoUInt32 = 0;
    public var numberOfRvaAndSizes : stdgo.GoUInt32 = 0;
    public var dataDirectory : stdgo.GoArray<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory> = new stdgo.GoArray<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>(16, 16, ...[for (i in 0 ... (16 > 16 ? 16 : 16 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory)]);
    public function new(?magic:stdgo.GoUInt16, ?majorLinkerVersion:stdgo.GoUInt8, ?minorLinkerVersion:stdgo.GoUInt8, ?sizeOfCode:stdgo.GoUInt32, ?sizeOfInitializedData:stdgo.GoUInt32, ?sizeOfUninitializedData:stdgo.GoUInt32, ?addressOfEntryPoint:stdgo.GoUInt32, ?baseOfCode:stdgo.GoUInt32, ?imageBase:stdgo.GoUInt64, ?sectionAlignment:stdgo.GoUInt32, ?fileAlignment:stdgo.GoUInt32, ?majorOperatingSystemVersion:stdgo.GoUInt16, ?minorOperatingSystemVersion:stdgo.GoUInt16, ?majorImageVersion:stdgo.GoUInt16, ?minorImageVersion:stdgo.GoUInt16, ?majorSubsystemVersion:stdgo.GoUInt16, ?minorSubsystemVersion:stdgo.GoUInt16, ?win32VersionValue:stdgo.GoUInt32, ?sizeOfImage:stdgo.GoUInt32, ?sizeOfHeaders:stdgo.GoUInt32, ?checkSum:stdgo.GoUInt32, ?subsystem:stdgo.GoUInt16, ?dllCharacteristics:stdgo.GoUInt16, ?sizeOfStackReserve:stdgo.GoUInt64, ?sizeOfStackCommit:stdgo.GoUInt64, ?sizeOfHeapReserve:stdgo.GoUInt64, ?sizeOfHeapCommit:stdgo.GoUInt64, ?loaderFlags:stdgo.GoUInt32, ?numberOfRvaAndSizes:stdgo.GoUInt32, ?dataDirectory:stdgo.GoArray<stdgo._internal.debug.pe.Pe_datadirectory.DataDirectory>) {
        if (magic != null) this.magic = magic;
        if (majorLinkerVersion != null) this.majorLinkerVersion = majorLinkerVersion;
        if (minorLinkerVersion != null) this.minorLinkerVersion = minorLinkerVersion;
        if (sizeOfCode != null) this.sizeOfCode = sizeOfCode;
        if (sizeOfInitializedData != null) this.sizeOfInitializedData = sizeOfInitializedData;
        if (sizeOfUninitializedData != null) this.sizeOfUninitializedData = sizeOfUninitializedData;
        if (addressOfEntryPoint != null) this.addressOfEntryPoint = addressOfEntryPoint;
        if (baseOfCode != null) this.baseOfCode = baseOfCode;
        if (imageBase != null) this.imageBase = imageBase;
        if (sectionAlignment != null) this.sectionAlignment = sectionAlignment;
        if (fileAlignment != null) this.fileAlignment = fileAlignment;
        if (majorOperatingSystemVersion != null) this.majorOperatingSystemVersion = majorOperatingSystemVersion;
        if (minorOperatingSystemVersion != null) this.minorOperatingSystemVersion = minorOperatingSystemVersion;
        if (majorImageVersion != null) this.majorImageVersion = majorImageVersion;
        if (minorImageVersion != null) this.minorImageVersion = minorImageVersion;
        if (majorSubsystemVersion != null) this.majorSubsystemVersion = majorSubsystemVersion;
        if (minorSubsystemVersion != null) this.minorSubsystemVersion = minorSubsystemVersion;
        if (win32VersionValue != null) this.win32VersionValue = win32VersionValue;
        if (sizeOfImage != null) this.sizeOfImage = sizeOfImage;
        if (sizeOfHeaders != null) this.sizeOfHeaders = sizeOfHeaders;
        if (checkSum != null) this.checkSum = checkSum;
        if (subsystem != null) this.subsystem = subsystem;
        if (dllCharacteristics != null) this.dllCharacteristics = dllCharacteristics;
        if (sizeOfStackReserve != null) this.sizeOfStackReserve = sizeOfStackReserve;
        if (sizeOfStackCommit != null) this.sizeOfStackCommit = sizeOfStackCommit;
        if (sizeOfHeapReserve != null) this.sizeOfHeapReserve = sizeOfHeapReserve;
        if (sizeOfHeapCommit != null) this.sizeOfHeapCommit = sizeOfHeapCommit;
        if (loaderFlags != null) this.loaderFlags = loaderFlags;
        if (numberOfRvaAndSizes != null) this.numberOfRvaAndSizes = numberOfRvaAndSizes;
        if (dataDirectory != null) this.dataDirectory = dataDirectory;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new OptionalHeader64(
magic,
majorLinkerVersion,
minorLinkerVersion,
sizeOfCode,
sizeOfInitializedData,
sizeOfUninitializedData,
addressOfEntryPoint,
baseOfCode,
imageBase,
sectionAlignment,
fileAlignment,
majorOperatingSystemVersion,
minorOperatingSystemVersion,
majorImageVersion,
minorImageVersion,
majorSubsystemVersion,
minorSubsystemVersion,
win32VersionValue,
sizeOfImage,
sizeOfHeaders,
checkSum,
subsystem,
dllCharacteristics,
sizeOfStackReserve,
sizeOfStackCommit,
sizeOfHeapReserve,
sizeOfHeapCommit,
loaderFlags,
numberOfRvaAndSizes,
dataDirectory);
    }
}
