package stdgo.internal.platform;
class Platform {
    /**
        RaceDetectorSupported reports whether goos/goarch supports the race
        detector. There is a copy of this function in cmd/dist/test.go.
        Race detector only supports 48-bit VMA on arm64. But it will always
        return true for arm64, because we don't have VMA size information during
        the compile time.
    **/
    static public inline function raceDetectorSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_raceDetectorSupported.raceDetectorSupported(_goos, _goarch);
    }
    /**
        MSanSupported reports whether goos/goarch supports the memory
        sanitizer option.
    **/
    static public inline function mSanSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_mSanSupported.mSanSupported(_goos, _goarch);
    }
    /**
        ASanSupported reports whether goos/goarch supports the address
        sanitizer option.
    **/
    static public inline function aSanSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_aSanSupported.aSanSupported(_goos, _goarch);
    }
    /**
        FuzzSupported reports whether goos/goarch supports fuzzing
        ('go test -fuzz=.').
    **/
    static public inline function fuzzSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_fuzzSupported.fuzzSupported(_goos, _goarch);
    }
    /**
        FuzzInstrumented reports whether fuzzing on goos/goarch uses coverage
        instrumentation. (FuzzInstrumented implies FuzzSupported.)
    **/
    static public inline function fuzzInstrumented(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_fuzzInstrumented.fuzzInstrumented(_goos, _goarch);
    }
    /**
        MustLinkExternal reports whether goos/goarch requires external linking
        with or without cgo dependencies.
    **/
    static public inline function mustLinkExternal(_goos:String, _goarch:String, _withCgo:Bool):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_mustLinkExternal.mustLinkExternal(_goos, _goarch, _withCgo);
    }
    /**
        BuildModeSupported reports whether goos/goarch supports the given build mode
        using the given compiler.
        There is a copy of this function in cmd/dist/test.go.
    **/
    static public inline function buildModeSupported(_compiler:String, _buildmode:String, _goos:String, _goarch:String):Bool {
        final _compiler = (_compiler : stdgo.GoString);
        final _buildmode = (_buildmode : stdgo.GoString);
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_buildModeSupported.buildModeSupported(_compiler, _buildmode, _goos, _goarch);
    }
    static public inline function internalLinkPIESupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_internalLinkPIESupported.internalLinkPIESupported(_goos, _goarch);
    }
    /**
        DefaultPIE reports whether goos/goarch produces a PIE binary when using the
        "default" buildmode. On Windows this is affected by -race,
        so force the caller to pass that in to centralize that choice.
    **/
    static public inline function defaultPIE(_goos:String, _goarch:String, _isRace:Bool):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_defaultPIE.defaultPIE(_goos, _goarch, _isRace);
    }
    /**
        ExecutableHasDWARF reports whether the linked executable includes DWARF
        symbols on goos/goarch.
    **/
    static public inline function executableHasDWARF(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_executableHasDWARF.executableHasDWARF(_goos, _goarch);
    }
    /**
        CgoSupported reports whether goos/goarch supports cgo.
    **/
    static public inline function cgoSupported(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_cgoSupported.cgoSupported(_goos, _goarch);
    }
    /**
        FirstClass reports whether goos/goarch is considered a “first class” port.
        (See https://go.dev/wiki/PortingPolicy#first-class-ports.)
    **/
    static public inline function firstClass(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_firstClass.firstClass(_goos, _goarch);
    }
    /**
        Broken reportsr whether goos/goarch is considered a broken port.
        (See https://go.dev/wiki/PortingPolicy#broken-ports.)
    **/
    static public inline function broken(_goos:String, _goarch:String):Bool {
        final _goos = (_goos : stdgo.GoString);
        final _goarch = (_goarch : stdgo.GoString);
        return stdgo._internal.internal.platform.Platform_broken.broken(_goos, _goarch);
    }
}
