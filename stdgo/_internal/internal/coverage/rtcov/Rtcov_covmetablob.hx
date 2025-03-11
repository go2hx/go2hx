package stdgo._internal.internal.coverage.rtcov;
@:structInit @:using(stdgo._internal.internal.coverage.rtcov.Rtcov_covmetablob_static_extension.CovMetaBlob_static_extension) class CovMetaBlob {
    public var p : stdgo.Pointer<stdgo.GoUInt8> = (null : stdgo.Pointer<stdgo.GoUInt8>);
    public var len : stdgo.GoUInt32 = 0;
    public var hash : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
    public var pkgPath : stdgo.GoString = "";
    public var pkgID : stdgo.GoInt = 0;
    public var counterMode : stdgo.GoUInt8 = 0;
    public var counterGranularity : stdgo.GoUInt8 = 0;
    public function new(?p:stdgo.Pointer<stdgo.GoUInt8>, ?len:stdgo.GoUInt32, ?hash:stdgo.GoArray<stdgo.GoUInt8>, ?pkgPath:stdgo.GoString, ?pkgID:stdgo.GoInt, ?counterMode:stdgo.GoUInt8, ?counterGranularity:stdgo.GoUInt8) {
        if (p != null) this.p = p;
        if (len != null) this.len = len;
        if (hash != null) this.hash = hash;
        if (pkgPath != null) this.pkgPath = pkgPath;
        if (pkgID != null) this.pkgID = pkgID;
        if (counterMode != null) this.counterMode = counterMode;
        if (counterGranularity != null) this.counterGranularity = counterGranularity;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new CovMetaBlob(p, len, hash, pkgPath, pkgID, counterMode, counterGranularity);
    }
}
