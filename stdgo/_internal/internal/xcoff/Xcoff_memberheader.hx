package stdgo._internal.internal.xcoff;
@:structInit @:using(stdgo._internal.internal.xcoff.Xcoff_memberheader_static_extension.MemberHeader_static_extension) class MemberHeader {
    public var name : stdgo.GoString = "";
    public var size : stdgo.GoUInt64 = 0;
    public function new(?name:stdgo.GoString, ?size:stdgo.GoUInt64) {
        if (name != null) this.name = name;
        if (size != null) this.size = size;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new MemberHeader(name, size);
    }
}
