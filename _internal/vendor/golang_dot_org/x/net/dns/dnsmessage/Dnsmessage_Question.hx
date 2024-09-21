package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question_static_extension.Question_static_extension) class Question {
    public var name : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
    public var type : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_ = ((0 : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_);
    public var class_ : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_ = ((0 : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_);
    public function new(?name:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name, ?type:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_, ?class_:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Class_.Class_) {
        if (name != null) this.name = name;
        if (type != null) this.type = type;
        if (class_ != null) this.class_ = class_;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Question(name, type, class_);
    }
}
