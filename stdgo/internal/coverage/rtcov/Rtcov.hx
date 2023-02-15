package stdgo.internal.coverage.rtcov;
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
    // CovMetaBlob is a container for holding the meta-data symbol (an
    // RODATA variable) for an instrumented Go package. Here "p" points to
    // the symbol itself, "len" is the length of the sym in bytes, and
    // "hash" is an md5sum for the sym computed by the compiler. When
    // the init function for a coverage-instrumented package executes, it
    // will make a call into the runtime which will create a covMetaBlob
    // object for the package and chain it onto a global list.
    
    
**/
@:structInit class CovMetaBlob {
    public var p : Pointer<GoUInt8> = (null : Pointer<GoUInt8>);
    public var len : GoUInt32 = 0;
    public var hash : GoArray<GoUInt8> = new GoArray<GoUInt8>(...[for (i in 0 ... 16) (0 : GoUInt8)]);
    public var pkgPath : GoString = "";
    public var pkgID : GoInt = 0;
    public var counterMode : GoUInt8 = 0;
    public var counterGranularity : GoUInt8 = 0;
    public function new(?p:Pointer<GoUInt8>, ?len:GoUInt32, ?hash:GoArray<GoUInt8>, ?pkgPath:GoString, ?pkgID:GoInt, ?counterMode:GoUInt8, ?counterGranularity:GoUInt8) {
        if (p != null) this.p = p;
        if (len != null) this.len = len;
        if (hash != null) this.hash = hash;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (pkgID != null) this.pkgID = pkgID;
        if (counterMode != null) this.counterMode = counterMode;
        if (counterGranularity != null) this.counterGranularity = counterGranularity;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CovMetaBlob(p, len, hash, pkgPath, pkgID, counterMode, counterGranularity);
    }
}
/**
    // CovCounterBlob is a container for encapsulating a counter section
    // (BSS variable) for an instrumented Go module. Here "counters"
    // points to the counter payload and "len" is the number of uint32
    // entries in the section.
    
    
**/
@:structInit class CovCounterBlob {
    public var counters : Pointer<GoUInt32> = (null : Pointer<GoUInt32>);
    public var len : GoUInt64 = 0;
    public function new(?counters:Pointer<GoUInt32>, ?len:GoUInt64) {
        if (counters != null) this.counters = counters;
        if (len != null) this.len = len;
    }
    public function __underlying__() return Go.toInterface(this);
    public function __copy__() {
        return new CovCounterBlob(counters, len);
    }
}
