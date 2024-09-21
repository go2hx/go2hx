package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name_static_extension.Name_static_extension) class Name {
    public var data : stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(255, 255, ...[for (i in 0 ... 255) (0 : stdgo.GoUInt8)]);
    public var length_ : stdgo.GoUInt8 = 0;
    public function new(?data:stdgo.GoArray<stdgo.GoUInt8>, ?length_:stdgo.GoUInt8) {
        if (data != null) this.data = data;
        if (length_ != null) this.length_ = length_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Name(data, length_);
    }
}
