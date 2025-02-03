package stdgo.archive.tar;
@:structInit @:using(stdgo.archive.tar.Tar.Header_static_extension) abstract Header(stdgo._internal.archive.tar.Tar_Header.Header) from stdgo._internal.archive.tar.Tar_Header.Header to stdgo._internal.archive.tar.Tar_Header.Header {
    public var typeflag(get, set) : std.UInt;
    function get_typeflag():std.UInt return this.typeflag;
    function set_typeflag(v:std.UInt):std.UInt {
        this.typeflag = (v : stdgo.GoUInt8);
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var linkname(get, set) : String;
    function get_linkname():String return this.linkname;
    function set_linkname(v:String):String {
        this.linkname = (v : stdgo.GoString);
        return v;
    }
    public var size(get, set) : haxe.Int64;
    function get_size():haxe.Int64 return this.size;
    function set_size(v:haxe.Int64):haxe.Int64 {
        this.size = (v : stdgo.GoInt64);
        return v;
    }
    public var mode(get, set) : haxe.Int64;
    function get_mode():haxe.Int64 return this.mode;
    function set_mode(v:haxe.Int64):haxe.Int64 {
        this.mode = (v : stdgo.GoInt64);
        return v;
    }
    public var uid(get, set) : StdTypes.Int;
    function get_uid():StdTypes.Int return this.uid;
    function set_uid(v:StdTypes.Int):StdTypes.Int {
        this.uid = (v : stdgo.GoInt);
        return v;
    }
    public var gid(get, set) : StdTypes.Int;
    function get_gid():StdTypes.Int return this.gid;
    function set_gid(v:StdTypes.Int):StdTypes.Int {
        this.gid = (v : stdgo.GoInt);
        return v;
    }
    public var uname(get, set) : String;
    function get_uname():String return this.uname;
    function set_uname(v:String):String {
        this.uname = (v : stdgo.GoString);
        return v;
    }
    public var gname(get, set) : String;
    function get_gname():String return this.gname;
    function set_gname(v:String):String {
        this.gname = (v : stdgo.GoString);
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_modTime():stdgo._internal.time.Time_Time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.modTime = v;
        return v;
    }
    public var accessTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_accessTime():stdgo._internal.time.Time_Time.Time return this.accessTime;
    function set_accessTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.accessTime = v;
        return v;
    }
    public var changeTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_changeTime():stdgo._internal.time.Time_Time.Time return this.changeTime;
    function set_changeTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.changeTime = v;
        return v;
    }
    public var devmajor(get, set) : haxe.Int64;
    function get_devmajor():haxe.Int64 return this.devmajor;
    function set_devmajor(v:haxe.Int64):haxe.Int64 {
        this.devmajor = (v : stdgo.GoInt64);
        return v;
    }
    public var devminor(get, set) : haxe.Int64;
    function get_devminor():haxe.Int64 return this.devminor;
    function set_devminor(v:haxe.Int64):haxe.Int64 {
        this.devminor = (v : stdgo.GoInt64);
        return v;
    }
    public var xattrs(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_xattrs():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.xattrs;
    function set_xattrs(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.xattrs = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var pAXRecords(get, set) : stdgo.GoMap<stdgo.GoString, stdgo.GoString>;
    function get_pAXRecords():stdgo.GoMap<stdgo.GoString, stdgo.GoString> return this.pAXRecords;
    function set_pAXRecords(v:stdgo.GoMap<stdgo.GoString, stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        this.pAXRecords = (v : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        return v;
    }
    public var format(get, set) : Format;
    function get_format():Format return this.format;
    function set_format(v:Format):Format {
        this.format = v;
        return v;
    }
    public function new(?typeflag:std.UInt, ?name:String, ?linkname:String, ?size:haxe.Int64, ?mode:haxe.Int64, ?uid:StdTypes.Int, ?gid:StdTypes.Int, ?uname:String, ?gname:String, ?modTime:stdgo._internal.time.Time_Time.Time, ?accessTime:stdgo._internal.time.Time_Time.Time, ?changeTime:stdgo._internal.time.Time_Time.Time, ?devmajor:haxe.Int64, ?devminor:haxe.Int64, ?xattrs:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?pAXRecords:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, ?format:Format) this = new stdgo._internal.archive.tar.Tar_Header.Header(
(typeflag : stdgo.GoUInt8),
(name : stdgo.GoString),
(linkname : stdgo.GoString),
(size : stdgo.GoInt64),
(mode : stdgo.GoInt64),
(uid : stdgo.GoInt),
(gid : stdgo.GoInt),
(uname : stdgo.GoString),
(gname : stdgo.GoString),
modTime,
accessTime,
changeTime,
(devmajor : stdgo.GoInt64),
(devminor : stdgo.GoInt64),
(xattrs : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
(pAXRecords : stdgo.GoMap<stdgo.GoString, stdgo.GoString>),
format);
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
