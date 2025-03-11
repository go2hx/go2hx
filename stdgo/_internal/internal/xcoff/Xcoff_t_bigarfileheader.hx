package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_t_bigarfileheader_static_extension.T_bigarFileHeader_static_extension) class T_bigarFileHeader {
    public var flmagic : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(8, 8).__setNumber32__();
    public var flmemoff : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var flgstoff : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var flgst64off : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var flfstmoff : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var fllstmoff : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public var flfreeoff : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(20, 20).__setNumber32__();
    public function new(?flmagic:stdgo.GoArray<stdgo.GoUInt8>, ?flmemoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgstoff:stdgo.GoArray<stdgo.GoUInt8>, ?flgst64off:stdgo.GoArray<stdgo.GoUInt8>, ?flfstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?fllstmoff:stdgo.GoArray<stdgo.GoUInt8>, ?flfreeoff:stdgo.GoArray<stdgo.GoUInt8>) {
        if (flmagic != null) this.flmagic = flmagic;
        if (flmemoff != null) this.flmemoff = flmemoff;
        if (flgstoff != null) this.flgstoff = flgstoff;
        if (flgst64off != null) this.flgst64off = flgst64off;
        if (flfstmoff != null) this.flfstmoff = flfstmoff;
        if (fllstmoff != null) this.fllstmoff = fllstmoff;
        if (flfreeoff != null) this.flfreeoff = flfreeoff;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new T_bigarFileHeader(flmagic, flmemoff, flgstoff, flgst64off, flfstmoff, fllstmoff, flfreeoff);
    }
}
