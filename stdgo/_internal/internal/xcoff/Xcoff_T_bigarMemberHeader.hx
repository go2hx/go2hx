package stdgo._internal.internal.xcoff;
@:structInit class T_bigarMemberHeader {
    public var arsize : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
    public var arnxtmem : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
    public var arprvmem : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20, ...[for (i in 0 ... 20) (0 : stdgo.GoUInt8)]);
    public var ardate : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
    public var aruid : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
    public var argid : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
    public var armode : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(12, 12, ...[for (i in 0 ... 12) (0 : stdgo.GoUInt8)]);
    public var arnamlen : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
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
