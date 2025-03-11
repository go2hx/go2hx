package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_t_bigarmemberheader_static_extension.T_bigarMemberHeader_static_extension) class T_bigarMemberHeader {
    public var arsize : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var arnxtmem : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var arprvmem : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var ardate : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var aruid : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var argid : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var armode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12).__setNumber32__();
    public var arnamlen : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
    public function new(?arsize:stdgo.GoArray<stdgo.GoUInt8>, ?arnxtmem:stdgo.GoArray<stdgo.GoUInt8>, ?arprvmem:stdgo.GoArray<stdgo.GoUInt8>, ?ardate:stdgo.GoArray<stdgo.GoUInt8>, ?aruid:stdgo.GoArray<stdgo.GoUInt8>, ?argid:stdgo.GoArray<stdgo.GoUInt8>, ?armode:stdgo.GoArray<stdgo.GoUInt8>, ?arnamlen:stdgo.GoArray<stdgo.GoUInt8>) {
        if (arsize != null) this.arsize = arsize;
        if (arnxtmem != null) this.arnxtmem = arnxtmem;
        if (arprvmem != null) this.arprvmem = arprvmem;
        if (ardate != null) this.ardate = ardate;
        if (aruid != null) this.aruid = aruid;
        if (argid != null) this.argid = argid;
        if (armode != null) this.armode = armode;
        if (arnamlen != null) this.arnamlen = arnamlen;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigarMemberHeader(arsize, arnxtmem, arprvmem, ardate, aruid, argid, armode, arnamlen);
    }
}
