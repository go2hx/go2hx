package stdgo._internal.archive.tar;
@:structInit @:using(stdgo._internal.archive.tar.Tar_Header_static_extension.Header_static_extension) class Header {
    public var typeflag : stdgo.GoUInt8 = 0;
    public var name : stdgo.GoString = "";
    public var linkname : stdgo.GoString = "";
    public var size : stdgo.GoInt64 = 0;
    public var mode : stdgo.GoInt64 = 0;
    public var uid : stdgo.GoInt = 0;
    public var gid : stdgo.GoInt = 0;
    public var uname : stdgo.GoString = "";
    public var gname : stdgo.GoString = "";
    public var modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var accessTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var changeTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var devmajor : stdgo.GoInt64 = 0;
    public var devminor : stdgo.GoInt64 = 0;
    public var xattrs : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var paxrecords : stdgo.GoMap<stdgo.GoString, stdgo.GoString> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
    public var format : stdgo._internal.archive.tar.Tar_Format.Format = ((0 : stdgo.GoInt) : stdgo._internal.archive.tar.Tar_Format.Format);
    public function new(?typeflag:stdgo.GoUInt8, ?name:stdgo.GoString, ?linkname:stdgo.GoString, ?size:stdgo.GoInt64, ?mode:stdgo.GoInt64, ?uid:stdgo.GoInt, ?gid:stdgo.GoInt, ?uname:stdgo.GoString, ?gname:stdgo.GoString, ?modTime:stdgo._internal.time.Time_Time.Time, ?accessTime:stdgo._internal.time.Time_Time.Time, ?changeTime:stdgo._internal.time.Time_Time.Time, ?devmajor:stdgo.GoInt64, ?devminor:stdgo.GoInt64, ?xattrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?paxrecords:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?format:stdgo._internal.archive.tar.Tar_Format.Format) {
        if (typeflag != null) this.typeflag = typeflag;
        if (name != null) this.name = name;
        if (linkname != null) this.linkname = linkname;
        if (size != null) this.size = size;
        if (mode != null) this.mode = mode;
        if (uid != null) this.uid = uid;
        if (gid != null) this.gid = gid;
        if (uname != null) this.uname = uname;
        if (gname != null) this.gname = gname;
        if (modTime != null) this.modTime = modTime;
        if (accessTime != null) this.accessTime = accessTime;
        if (changeTime != null) this.changeTime = changeTime;
        if (devmajor != null) this.devmajor = devmajor;
        if (devminor != null) this.devminor = devminor;
        if (xattrs != null) this.xattrs = xattrs;
        if (paxrecords != null) this.paxrecords = paxrecords;
        if (format != null) this.format = format;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Header(
typeflag,
name,
linkname,
size,
mode,
uid,
gid,
uname,
gname,
modTime,
accessTime,
changeTime,
devmajor,
devminor,
xattrs,
paxrecords,
format);
    }
}
