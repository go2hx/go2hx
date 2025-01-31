package stdgo._internal.debug.plan9obj;
import stdgo._internal.errors.Errors;
import stdgo._internal.os.Os;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.internal.saferio.Saferio;
import stdgo._internal.fmt.Fmt;
@:structInit @:using(stdgo._internal.debug.plan9obj.Plan9obj_SectionHeader_static_extension.SectionHeader_static_extension) class SectionHeader {
    public var name : stdgo.GoString = "";
    public var size : stdgo.GoUInt32 = 0;
    public var offset : stdgo.GoUInt32 = 0;
    public function new(?name:stdgo.GoString, ?size:stdgo.GoUInt32, ?offset:stdgo.GoUInt32) {
        if (name != null) this.name = name;
        if (size != null) this.size = size;
        if (offset != null) this.offset = offset;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new SectionHeader(name, size, offset);
    }
}
