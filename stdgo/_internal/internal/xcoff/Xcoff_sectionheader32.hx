package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_sectionheader32_static_extension.SectionHeader32_static_extension) class SectionHeader32 {
    public var sname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var spaddr : stdgo.GoUInt32 = 0;
    public var svaddr : stdgo.GoUInt32 = 0;
    public var ssize : stdgo.GoUInt32 = 0;
    public var sscnptr : stdgo.GoUInt32 = 0;
    public var srelptr : stdgo.GoUInt32 = 0;
    public var slnnoptr : stdgo.GoUInt32 = 0;
    public var snreloc : stdgo.GoUInt16 = 0;
    public var snlnno : stdgo.GoUInt16 = 0;
    public var sflags : stdgo.GoUInt32 = 0;
    public function new(?sname:stdgo.GoArray<stdgo.GoUInt8>, ?spaddr:stdgo.GoUInt32, ?svaddr:stdgo.GoUInt32, ?ssize:stdgo.GoUInt32, ?sscnptr:stdgo.GoUInt32, ?srelptr:stdgo.GoUInt32, ?slnnoptr:stdgo.GoUInt32, ?snreloc:stdgo.GoUInt16, ?snlnno:stdgo.GoUInt16, ?sflags:stdgo.GoUInt32) {
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
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader32(sname, spaddr, svaddr, ssize, sscnptr, srelptr, slnnoptr, snreloc, snlnno, sflags);
    }
}
