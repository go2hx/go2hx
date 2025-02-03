package stdgo.syscall;
@:structInit @:using(stdgo.syscall.Syscall.Stat_t_static_extension) abstract Stat_t(stdgo._internal.syscall.Syscall_Stat_t.Stat_t) from stdgo._internal.syscall.Syscall_Stat_t.Stat_t to stdgo._internal.syscall.Syscall_Stat_t.Stat_t {
    public var dev(get, set) : haxe.Int64;
    function get_dev():haxe.Int64 return this.dev;
    function set_dev(v:haxe.Int64):haxe.Int64 {
        this.dev = (v : stdgo.GoInt64);
        return v;
    }
    public var ino(get, set) : haxe.UInt64;
    function get_ino():haxe.UInt64 return this.ino;
    function set_ino(v:haxe.UInt64):haxe.UInt64 {
        this.ino = (v : stdgo.GoUInt64);
        return v;
    }
    public var mode(get, set) : std.UInt;
    function get_mode():std.UInt return this.mode;
    function set_mode(v:std.UInt):std.UInt {
        this.mode = (v : stdgo.GoUInt32);
        return v;
    }
    public var nlink(get, set) : std.UInt;
    function get_nlink():std.UInt return this.nlink;
    function set_nlink(v:std.UInt):std.UInt {
        this.nlink = (v : stdgo.GoUInt32);
        return v;
    }
    public var uid(get, set) : std.UInt;
    function get_uid():std.UInt return this.uid;
    function set_uid(v:std.UInt):std.UInt {
        this.uid = (v : stdgo.GoUInt32);
        return v;
    }
    public var gid(get, set) : std.UInt;
    function get_gid():std.UInt return this.gid;
    function set_gid(v:std.UInt):std.UInt {
        this.gid = (v : stdgo.GoUInt32);
        return v;
    }
    public var rdev(get, set) : haxe.Int64;
    function get_rdev():haxe.Int64 return this.rdev;
    function set_rdev(v:haxe.Int64):haxe.Int64 {
        this.rdev = (v : stdgo.GoInt64);
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public var blksize(get, set) : StdTypes.Int;
    function get_blksize():StdTypes.Int return this.blksize;
    function set_blksize(v:StdTypes.Int):StdTypes.Int {
        this.blksize = (v : stdgo.GoInt32);
        return v;
    }
    public var blocks(get, set) : StdTypes.Int;
    function get_blocks():StdTypes.Int return this.blocks;
    function set_blocks(v:StdTypes.Int):StdTypes.Int {
        this.blocks = (v : stdgo.GoInt32);
        return v;
    }
    public var atime(get, set) : haxe.Int64;
    function get_atime():haxe.Int64 return this.atime;
    function set_atime(v:haxe.Int64):haxe.Int64 {
        this.atime = (v : stdgo.GoInt64);
        return v;
    }
    public var atimeNsec(get, set) : haxe.Int64;
    function get_atimeNsec():haxe.Int64 return this.atimeNsec;
    function set_atimeNsec(v:haxe.Int64):haxe.Int64 {
        this.atimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public var mtime(get, set) : haxe.Int64;
    function get_mtime():haxe.Int64 return this.mtime;
    function set_mtime(v:haxe.Int64):haxe.Int64 {
        this.mtime = (v : stdgo.GoInt64);
        return v;
    }
    public var mtimeNsec(get, set) : haxe.Int64;
    function get_mtimeNsec():haxe.Int64 return this.mtimeNsec;
    function set_mtimeNsec(v:haxe.Int64):haxe.Int64 {
        this.mtimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public var ctime(get, set) : haxe.Int64;
    function get_ctime():haxe.Int64 return this.ctime;
    function set_ctime(v:haxe.Int64):haxe.Int64 {
        this.ctime = (v : stdgo.GoInt64);
        return v;
    }
    public var ctimeNsec(get, set) : haxe.Int64;
    function get_ctimeNsec():haxe.Int64 return this.ctimeNsec;
    function set_ctimeNsec(v:haxe.Int64):haxe.Int64 {
        this.ctimeNsec = (v : stdgo.GoInt64);
        return v;
    }
    public function new(?dev:haxe.Int64, ?ino:haxe.UInt64, ?mode:std.UInt, ?nlink:std.UInt, ?uid:std.UInt, ?gid:std.UInt, ?rdev:haxe.Int64, ?size:haxe.Int64, ?blksize:StdTypes.Int, ?blocks:StdTypes.Int, ?atime:haxe.Int64, ?atimeNsec:haxe.Int64, ?mtime:haxe.Int64, ?mtimeNsec:haxe.Int64, ?ctime:haxe.Int64, ?ctimeNsec:haxe.Int64) this = new stdgo._internal.syscall.Syscall_Stat_t.Stat_t(
(dev : stdgo.GoInt64),
(ino : stdgo.GoUInt64),
(mode : stdgo.GoUInt32),
(nlink : stdgo.GoUInt32),
(uid : stdgo.GoUInt32),
(gid : stdgo.GoUInt32),
(rdev : stdgo.GoInt64),
(size : stdgo.GoInt64),
(blksize : stdgo.GoInt32),
(blocks : stdgo.GoInt32),
(atime : stdgo.GoInt64),
(atimeNsec : stdgo.GoInt64),
(mtime : stdgo.GoInt64),
(mtimeNsec : stdgo.GoInt64),
(ctime : stdgo.GoInt64),
(ctimeNsec : stdgo.GoInt64));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
