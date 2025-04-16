package stdgo.internal.platform;
var list(get, set) : stdgo.Slice<stdgo._internal.internal.platform.Platform_osarch.OSArch>;
private function get_list():stdgo.Slice<stdgo._internal.internal.platform.Platform_osarch.OSArch> return stdgo._internal.internal.platform.Platform_list.list;
private function set_list(v:stdgo.Slice<stdgo._internal.internal.platform.Platform_osarch.OSArch>):stdgo.Slice<stdgo._internal.internal.platform.Platform_osarch.OSArch> {
        stdgo._internal.internal.platform.Platform_list.list = v;
        return v;
    }
typedef OSArch = stdgo._internal.internal.platform.Platform_osarch.OSArch;
typedef OSArchPointer = stdgo._internal.internal.platform.Platform_osarchpointer.OSArchPointer;
class Platform {
    /**
        * RaceDetectorSupported reports whether goos/goarch supports the race
        * detector. There is a copy of this function in cmd/dist/test.go.
        * Race detector only supports 48-bit VMA on arm64. But it will always
        * return true for arm64, because we don't have VMA size information during
        * the compile time.
    **/
    static public inline function raceDetectorSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_racedetectorsupported.raceDetectorSupported(_goos, _goarch);
    /**
        * MSanSupported reports whether goos/goarch supports the memory
        * sanitizer option.
    **/
    static public inline function mSanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_msansupported.mSanSupported(_goos, _goarch);
    /**
        * ASanSupported reports whether goos/goarch supports the address
        * sanitizer option.
    **/
    static public inline function aSanSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_asansupported.aSanSupported(_goos, _goarch);
    /**
        * FuzzSupported reports whether goos/goarch supports fuzzing
        * ('go test -fuzz=.').
    **/
    static public inline function fuzzSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_fuzzsupported.fuzzSupported(_goos, _goarch);
    /**
        * FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
        * instrumentation. (FuzzInstrumented implies FuzzSupported.)
    **/
    static public inline function fuzzInstrumented(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_fuzzinstrumented.fuzzInstrumented(_goos, _goarch);
    /**
        * MustLinkExternal reports whether goos/goarch requires external linking
        * with or without cgo dependencies.
    **/
    static public inline function mustLinkExternal(_goos:stdgo.GoString, _goarch:stdgo.GoString, _withCgo:Bool):Bool return stdgo._internal.internal.platform.Platform_mustlinkexternal.mustLinkExternal(_goos, _goarch, _withCgo);
    /**
        * BuildModeSupported reports whether goos/goarch supports the given build mode
        * using the given compiler.
        * There is a copy of this function in cmd/dist/test.go.
    **/
    static public inline function buildModeSupported(_compiler:stdgo.GoString, _buildmode:stdgo.GoString, _goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_buildmodesupported.buildModeSupported(_compiler, _buildmode, _goos, _goarch);
    static public inline function internalLinkPIESupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_internallinkpiesupported.internalLinkPIESupported(_goos, _goarch);
    /**
        * DefaultPIE reports whether goos/goarch produces a PIE binary when using the
        * "default" buildmode. On Windows this is affected by -race,
        * so force the caller to pass that in to centralize that choice.
    **/
    static public inline function defaultPIE(_goos:stdgo.GoString, _goarch:stdgo.GoString, _isRace:Bool):Bool return stdgo._internal.internal.platform.Platform_defaultpie.defaultPIE(_goos, _goarch, _isRace);
    /**
        * ExecutableHasDWARF reports whether the linked executable includes DWARF
        * symbols on goos/goarch.
    **/
    static public inline function executableHasDWARF(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_executablehasdwarf.executableHasDWARF(_goos, _goarch);
    /**
        * CgoSupported reports whether goos/goarch supports cgo.
    **/
    static public inline function cgoSupported(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_cgosupported.cgoSupported(_goos, _goarch);
    /**
        * FirstClass reports whether goos/goarch is considered a “first class” port.
        * (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
    **/
    static public inline function firstClass(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_firstclass.firstClass(_goos, _goarch);
    /**
        * Broken reportsr whether goos/goarch is considered a broken port.
        * (See https://go.dev/wiki/PortingPolicy#broken-ports.)
    **/
    static public inline function broken(_goos:stdgo.GoString, _goarch:stdgo.GoString):Bool return stdgo._internal.internal.platform.Platform_broken.broken(_goos, _goarch);
}
