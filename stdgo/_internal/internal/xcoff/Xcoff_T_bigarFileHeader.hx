package stdgo._internal.internal.xcoff;
import stdgo._internal.os.Os;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strings.Strings;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.debug.dwarf.Dwarf;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_T_bigarFileHeader_static_extension.T_bigarFileHeader_static_extension) class T_bigarFileHeader {
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
