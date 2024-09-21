package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Builder_static_extension.Builder_static_extension) class Builder {
    public var _msg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _section : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
    public var _header : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header);
    public var _start : stdgo.GoInt = 0;
    public var _compression : stdgo.GoMap<stdgo.GoString, stdgo.GoInt> = (null : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
    public function new(?_msg:stdgo.Slice<stdgo.GoUInt8>, ?_section:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section, ?_header:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header, ?_start:stdgo.GoInt, ?_compression:stdgo.GoMap<stdgo.GoString, stdgo.GoInt>) {
        if (_msg != null) this._msg = _msg;
        if (_section != null) this._section = _section;
        if (_header != null) this._header = _header;
        if (_start != null) this._start = _start;
        if (_compression != null) this._compression = _compression;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Builder(_msg, _section, _header, _start, _compression);
    }
}
