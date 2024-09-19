package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
@:structInit @:using(_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Parser_static_extension.Parser_static_extension) class Parser {
    public var _msg : stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
    public var _header : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header);
    public var _section : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section);
    public var _off : stdgo.GoInt = 0;
    public var _index : stdgo.GoInt = 0;
    public var _resHeaderValid : Bool = false;
    public var _resHeader : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader);
    public function new(?_msg:stdgo.Slice<stdgo.GoUInt8>, ?_header:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_header.T_header, ?_section:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_section.T_section, ?_off:stdgo.GoInt, ?_index:stdgo.GoInt, ?_resHeaderValid:Bool, ?_resHeader:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader) {
        if (_msg != null) this._msg = _msg;
        if (_header != null) this._header = _header;
        if (_section != null) this._section = _section;
        if (_off != null) this._off = _off;
        if (_index != null) this._index = _index;
        if (_resHeaderValid != null) this._resHeaderValid = _resHeaderValid;
        if (_resHeader != null) this._resHeader = _resHeader;
    }
    public function __underlying__() return stdgo.Go.toInterface(this);
    public function __copy__() {
        return new Parser(_msg, _header, _section, _off, _index, _resHeaderValid, _resHeader);
    }
}
