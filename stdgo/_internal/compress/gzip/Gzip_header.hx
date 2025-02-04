package stdgo._internal.compress.gzip;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_header_static_extension.Header_static_extension) class Header {
    public var comment : stdgo.GoString = "";
    public var extra : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var modTime : stdgo._internal.time.Time_time.Time = ({} : stdgo._internal.time.Time_time.Time);
    public var name : stdgo.GoString = "";
    public var oS : stdgo.GoUInt8 = 0;
    public function new(?comment:stdgo.GoString, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?modTime:stdgo._internal.time.Time_time.Time, ?name:stdgo.GoString, ?oS:stdgo.GoUInt8) {
        if (comment != null) this.comment = comment;
        if (extra != null) this.extra = extra;
        if (modTime != null) this.modTime = modTime;
        if (name != null) this.name = name;
        if (oS != null) this.oS = oS;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Header(comment, extra, modTime, name, oS);
    }
}
