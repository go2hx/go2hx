package stdgo._internal.syscall;
@:structInit class Dirent {
    public var reclen : stdgo.GoUInt16 = 0;
    public var name : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(256, 256, ...[for (i in 0 ... 256) (0 : stdgo.GoUInt8)]);
    public function new(?reclen:stdgo.GoUInt16, ?name:stdgo.GoArray<stdgo.GoUInt8>) {
        if (reclen != null) this.reclen = reclen;
        if (name != null) this.name = name;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Dirent(reclen, name);
    }
}
