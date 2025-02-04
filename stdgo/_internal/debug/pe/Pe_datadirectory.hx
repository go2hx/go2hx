package stdgo._internal.debug.pe;
@:structInit @:using(stdgo._internal.debug.pe.Pe_datadirectory_static_extension.DataDirectory_static_extension) class DataDirectory {
    public var virtualAddress : stdgo.GoUInt32 = 0;
    public var size : stdgo.GoUInt32 = 0;
    public function new(?virtualAddress:stdgo.GoUInt32, ?size:stdgo.GoUInt32) {
        if (virtualAddress != null) this.virtualAddress = virtualAddress;
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new DataDirectory(virtualAddress, size);
    }
}
