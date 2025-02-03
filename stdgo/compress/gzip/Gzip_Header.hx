package stdgo.compress.gzip;
@:structInit @:using(stdgo.compress.gzip.Gzip.Header_static_extension) abstract Header(stdgo._internal.compress.gzip.Gzip_Header.Header) from stdgo._internal.compress.gzip.Gzip_Header.Header to stdgo._internal.compress.gzip.Gzip_Header.Header {
    public var comment(get, set) : String;
    function get_comment():String return this.comment;
    function set_comment(v:String):String {
        this.comment = (v : stdgo.GoString);
        return v;
    }
    public var extra(get, set) : Array<std.UInt>;
    function get_extra():Array<std.UInt> return [for (i in this.extra) i];
    function set_extra(v:Array<std.UInt>):Array<std.UInt> {
        this.extra = ([for (i in v) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return v;
    }
    public var modTime(get, set) : stdgo._internal.time.Time_Time.Time;
    function get_modTime():stdgo._internal.time.Time_Time.Time return this.modTime;
    function set_modTime(v:stdgo._internal.time.Time_Time.Time):stdgo._internal.time.Time_Time.Time {
        this.modTime = v;
        return v;
    }
    public var name(get, set) : String;
    function get_name():String return this.name;
    function set_name(v:String):String {
        this.name = (v : stdgo.GoString);
        return v;
    }
    public var oS(get, set) : std.UInt;
    function get_oS():std.UInt return this.oS;
    function set_oS(v:std.UInt):std.UInt {
        this.oS = (v : stdgo.GoUInt8);
        return v;
    }
    public function new(?comment:String, ?extra:Array<std.UInt>, ?modTime:stdgo._internal.time.Time_Time.Time, ?name:String, ?oS:std.UInt) this = new stdgo._internal.compress.gzip.Gzip_Header.Header((comment : stdgo.GoString), ([for (i in extra) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>), modTime, (name : stdgo.GoString), (oS : stdgo.GoUInt8));
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() return this.__copy__();
}
