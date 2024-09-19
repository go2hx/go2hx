package stdgo._internal.compress.gzip;
@:structInit class Header {
    public var comment : stdgo.GoString = "";
    public var extra : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var name : stdgo.GoString = "";
    public var os : stdgo.GoUInt8 = 0;
    public function new(?comment:stdgo.GoString, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?modTime:stdgo._internal.time.Time_Time.Time, ?name:stdgo.GoString, ?os:stdgo.GoUInt8) {
        if (comment != null) this.comment = comment;
        if (extra != null) this.extra = extra;
        if (modTime != null) this.modTime = modTime;
        if (name != null) this.name = name;
        if (os != null) this.os = os;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Header(comment, extra, modTime, name, os);
    }
}
