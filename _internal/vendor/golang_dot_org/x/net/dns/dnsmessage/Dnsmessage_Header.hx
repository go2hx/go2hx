package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Header_static_extension.Header_static_extension) class Header {
    public var id : stdgo.GoUInt16 = 0;
    public var response : Bool = false;
    public var opCode : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode = ((0 : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode);
    public var authoritative : Bool = false;
    public var truncated : Bool = false;
    public var recursionDesired : Bool = false;
    public var recursionAvailable : Bool = false;
    public var authenticData : Bool = false;
    public var checkingDisabled : Bool = false;
    public var rcode : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode = ((0 : stdgo.GoUInt16) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode);
    public function new(?id:stdgo.GoUInt16, ?response:Bool, ?opCode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OpCode.OpCode, ?authoritative:Bool, ?truncated:Bool, ?recursionDesired:Bool, ?recursionAvailable:Bool, ?authenticData:Bool, ?checkingDisabled:Bool, ?rcode:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_RCode.RCode) {
        if (id != null) this.id = id;
        if (response != null) this.response = response;
        if (opCode != null) this.opCode = opCode;
        if (authoritative != null) this.authoritative = authoritative;
        if (truncated != null) this.truncated = truncated;
        if (recursionDesired != null) this.recursionDesired = recursionDesired;
        if (recursionAvailable != null) this.recursionAvailable = recursionAvailable;
        if (authenticData != null) this.authenticData = authenticData;
        if (checkingDisabled != null) this.checkingDisabled = checkingDisabled;
        if (rcode != null) this.rcode = rcode;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Header(id, response, opCode, authoritative, truncated, recursionDesired, recursionAvailable, authenticData, checkingDisabled, rcode);
    }
}
