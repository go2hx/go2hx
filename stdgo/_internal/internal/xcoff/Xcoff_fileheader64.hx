package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_fileheader64_static_extension.FileHeader64_static_extension) class FileHeader64 {
    public var fmagic : stdgo.GoUInt16 = 0;
    public var fnscns : stdgo.GoUInt16 = 0;
    public var ftimedat : stdgo.GoUInt32 = 0;
    public var fsymptr : stdgo.GoUInt64 = 0;
    public var fopthdr : stdgo.GoUInt16 = 0;
    public var fflags : stdgo.GoUInt16 = 0;
    public var fnsyms : stdgo.GoUInt32 = 0;
    public function new(?fmagic:stdgo.GoUInt16, ?fnscns:stdgo.GoUInt16, ?ftimedat:stdgo.GoUInt32, ?fsymptr:stdgo.GoUInt64, ?fopthdr:stdgo.GoUInt16, ?fflags:stdgo.GoUInt16, ?fnsyms:stdgo.GoUInt32) {
        if (fmagic != null) this.fmagic = fmagic;
        if (fnscns != null) this.fnscns = fnscns;
        if (ftimedat != null) this.ftimedat = ftimedat;
        if (fsymptr != null) this.fsymptr = fsymptr;
        if (fopthdr != null) this.fopthdr = fopthdr;
        if (fflags != null) this.fflags = fflags;
        if (fnsyms != null) this.fnsyms = fnsyms;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader64(fmagic, fnscns, ftimedat, fsymptr, fopthdr, fflags, fnsyms);
    }
}
