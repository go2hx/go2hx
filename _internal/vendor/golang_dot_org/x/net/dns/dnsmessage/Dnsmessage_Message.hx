package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Message_static_extension.Message_static_extension) class Message {
    @:embedded
    public var header : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header);
    public var questions : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>);
    public var answers : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
    public var authorities : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
    public var additionals : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>);
    public function new(?header:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header.Header, ?questions:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Question.Question>, ?answers:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>, ?authorities:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>, ?additionals:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Resource.Resource>) {
        if (header != null) this.header = header;
        if (questions != null) this.questions = questions;
        if (answers != null) this.answers = answers;
        if (authorities != null) this.authorities = authorities;
        if (additionals != null) this.additionals = additionals;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    @:embedded
    public function _pack():{ var _0 : stdgo.GoUInt16; var _1 : stdgo.GoUInt16; } return this.header._pack();
    public function __copy__() {
        return new Message(header, questions, answers, authorities, additionals);
    }
}
