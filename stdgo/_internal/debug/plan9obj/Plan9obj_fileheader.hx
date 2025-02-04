package stdgo._internal.debug.plan9obj;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_fileheader_static_extension.FileHeader_static_extension) class FileHeader {
    public var magic : stdgo.GoUInt32 = 0;
    public var bss : stdgo.GoUInt32 = 0;
    public var entry : stdgo.GoUInt64 = 0;
    public var ptrSize : stdgo.GoInt = 0;
    public var loadAddress : stdgo.GoUInt64 = 0;
    public var hdrSize : stdgo.GoUInt64 = 0;
    public function new(?magic:stdgo.GoUInt32, ?bss:stdgo.GoUInt32, ?entry:stdgo.GoUInt64, ?ptrSize:stdgo.GoInt, ?loadAddress:stdgo.GoUInt64, ?hdrSize:stdgo.GoUInt64) {
        if (magic != null) this.magic = magic;
        if (bss != null) this.bss = bss;
        if (entry != null) this.entry = entry;
        if (ptrSize != null) this.ptrSize = ptrSize;
        if (loadAddress != null) this.loadAddress = loadAddress;
        if (hdrSize != null) this.hdrSize = hdrSize;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new FileHeader(magic, bss, entry, ptrSize, loadAddress, hdrSize);
    }
}
