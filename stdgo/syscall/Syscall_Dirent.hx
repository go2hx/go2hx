package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Dirent_static_extension) abstract Dirent(stdgo._internal.syscall.Syscall_Dirent.Dirent) from stdgo._internal.syscall.Syscall_Dirent.Dirent to stdgo._internal.syscall.Syscall_Dirent.Dirent {
    public var reclen(get, set) : std.UInt;
    function get_reclen():std.UInt return this.reclen;
    function set_reclen(v:std.UInt):std.UInt {
        this.reclen = (v : stdgo.GoUInt16);
        return v;
    }
    public var name(get, set) : haxe.ds.Vector<std.UInt>;
    function get_name():haxe.ds.Vector<std.UInt> return haxe.ds.Vector.fromArrayCopy([for (i in this.name) i]);
    function set_name(v:haxe.ds.Vector<std.UInt>):haxe.ds.Vector<std.UInt> {
        this.name = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>);
        return v;
    }
    public function new(?reclen:std.UInt, ?name:haxe.ds.Vector<std.UInt>) this = new stdgo._internal.syscall.Syscall_Dirent.Dirent((reclen : stdgo.GoUInt16), ([for (i in name) (i : stdgo.GoUInt8)] : stdgo.GoArray<stdgo.GoUInt8>));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
