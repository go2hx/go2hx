package stdgo._internal.internal.xcoff;
@:structInit class LoaderSymbol32 {
    public var lname : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8, ...[for (i in 0 ... 8) (0 : stdgo.GoUInt8)]);
    public var lvalue : stdgo.GoUInt32 = 0;
    public var lscnum : stdgo.GoUInt16 = 0;
    public var lsmtype : stdgo.GoUInt8 = 0;
    public var lsmclas : stdgo.GoUInt8 = 0;
    public var lifile : stdgo.GoUInt32 = 0;
    public var lparm : stdgo.GoUInt32 = 0;
    public function new(?lname:stdgo.GoArray<stdgo.GoUInt8>, ?lvalue:stdgo.GoUInt32, ?lscnum:stdgo.GoUInt16, ?lsmtype:stdgo.GoUInt8, ?lsmclas:stdgo.GoUInt8, ?lifile:stdgo.GoUInt32, ?lparm:stdgo.GoUInt32) {
        if (lname != null) this.lname = lname;
        if (lvalue != null) this.lvalue = lvalue;
        if (lscnum != null) this.lscnum = lscnum;
        if (lsmtype != null) this.lsmtype = lsmtype;
        if (lsmclas != null) this.lsmclas = lsmclas;
        if (lifile != null) this.lifile = lifile;
        if (lparm != null) this.lparm = lparm;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new LoaderSymbol32(lname, lvalue, lscnum, lsmtype, lsmclas, lifile, lparm);
    }
}
