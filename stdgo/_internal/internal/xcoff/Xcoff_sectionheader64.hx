package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_sectionheader64_static_extension.SectionHeader64_static_extension) class SectionHeader64 {
    public var sname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var spaddr : stdgo.GoUInt64 = 0;
    public var svaddr : stdgo.GoUInt64 = 0;
    public var ssize : stdgo.GoUInt64 = 0;
    public var sscnptr : stdgo.GoUInt64 = 0;
    public var srelptr : stdgo.GoUInt64 = 0;
    public var slnnoptr : stdgo.GoUInt64 = 0;
    public var snreloc : stdgo.GoUInt32 = 0;
    public var snlnno : stdgo.GoUInt32 = 0;
    public var sflags : stdgo.GoUInt32 = 0;
    public var spad : stdgo.GoUInt32 = 0;
    public function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt64, ?svaddr:stdgo.GoUInt64, ?ssize:stdgo.GoUInt64, ?sscnptr:stdgo.GoUInt64, ?srelptr:stdgo.GoUInt64, ?slnnoptr:stdgo.GoUInt64, ?snreloc:stdgo.GoUInt32, ?snlnno:stdgo.GoUInt32, ?sflags:stdgo.GoUInt32, ?spad:stdgo.GoUInt32) {
        if (sname != null) this.sname = sname;
        if (spaddr != null) this.spaddr = spaddr;
        if (svaddr != null) this.svaddr = svaddr;
        if (ssize != null) this.ssize = ssize;
        if (sscnptr != null) this.sscnptr = sscnptr;
        if (srelptr != null) this.srelptr = srelptr;
        if (slnnoptr != null) this.slnnoptr = slnnoptr;
        if (snreloc != null) this.snreloc = snreloc;
        if (snlnno != null) this.snlnno = snlnno;
        if (sflags != null) this.sflags = sflags;
        if (spad != null) this.spad = spad;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader64(
sname,
spaddr,
svaddr,
ssize,
sscnptr,
srelptr,
slnnoptr,
snreloc,
snlnno,
sflags,
spad);
    }
}
