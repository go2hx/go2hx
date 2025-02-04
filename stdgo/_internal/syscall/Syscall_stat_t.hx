package stdgo._internal.syscall;
@:structInit @:using(stdgo._internal.syscall.Syscall_stat_t_static_extension.Stat_t_static_extension) class Stat_t {
    public var dev : stdgo.GoInt64 = 0;
    public var ino : stdgo.GoUInt64 = 0;
    public var mode : stdgo.GoUInt32 = 0;
    public var nlink : stdgo.GoUInt32 = 0;
    public var uid : stdgo.GoUInt32 = 0;
    public var gid : stdgo.GoUInt32 = 0;
    public var rdev : stdgo.GoInt64 = 0;
    public var size : stdgo.GoInt64 = 0;
    public var blksize : stdgo.GoInt32 = 0;
    public var blocks : stdgo.GoInt32 = 0;
    public var atime : stdgo.GoInt64 = 0;
    public var atimeNsec : stdgo.GoInt64 = 0;
    public var mtime : stdgo.GoInt64 = 0;
    public var mtimeNsec : stdgo.GoInt64 = 0;
    public var ctime : stdgo.GoInt64 = 0;
    public var ctimeNsec : stdgo.GoInt64 = 0;
    public function new(?dev:stdgo.GoInt64, ?ino:stdgo.GoUInt64, ?mode:stdgo.GoUInt32, ?nlink:stdgo.GoUInt32, ?uid:stdgo.GoUInt32, ?gid:stdgo.GoUInt32, ?rdev:stdgo.GoInt64, ?size:stdgo.GoInt64, ?blksize:stdgo.GoInt32, ?blocks:stdgo.GoInt32, ?atime:stdgo.GoInt64, ?atimeNsec:stdgo.GoInt64, ?mtime:stdgo.GoInt64, ?mtimeNsec:stdgo.GoInt64, ?ctime:stdgo.GoInt64, ?ctimeNsec:stdgo.GoInt64) {
        if (dev != null) this.dev = dev;
        if (ino != null) this.ino = ino;
        if (mode != null) this.mode = mode;
        if (nlink != null) this.nlink = nlink;
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (rdev != null) this.rdev = rdev;
        if (size != null) this.size = size;
        if (blksize != null) this.blksize = blksize;
        if (blocks != null) this.blocks = blocks;
        if (atime != null) this.atime = atime;
        if (atimeNsec != null) this.atimeNsec = atimeNsec;
        if (mtime != null) this.mtime = mtime;
        if (mtimeNsec != null) this.mtimeNsec = mtimeNsec;
        if (ctime != null) this.ctime = ctime;
        if (ctimeNsec != null) this.ctimeNsec = ctimeNsec;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Stat_t(
dev,
ino,
mode,
nlink,
uid,
gid,
rdev,
size,
blksize,
blocks,
atime,
atimeNsec,
mtime,
mtimeNsec,
ctime,
ctimeNsec);
    }
}
