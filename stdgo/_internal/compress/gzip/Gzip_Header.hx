package stdgo._internal.compress.gzip;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.hash.crc32.Crc32;
import stdgo._internal.time.Time;
import stdgo._internal.compress.flate.Flate;
@:structInit @:using(stdgo._internal.compress.gzip.Gzip_Header_static_extension.Header_static_extension) class Header {
    public var comment : stdgo.GoString = "";
    public var extra : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var modTime : stdgo._internal.time.Time_Time.Time = ({} : stdgo._internal.time.Time_Time.Time);
    public var name : stdgo.GoString = "";
    public var oS : stdgo.GoUInt8 = 0;
    public function new(?comment:stdgo.GoString, ?extra:stdgo.Slice<stdgo.GoUInt8>, ?modTime:stdgo._internal.time.Time_Time.Time, ?name:stdgo.GoString, ?oS:stdgo.GoUInt8) {
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
