package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackNSResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource; var _1 : stdgo.Error; } {
        var _ns:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        {
            var __tmp__ = _ns._unpack(_msg, _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource), _1 : _err };
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource(_ns?.__copy__()) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource), _1 : (null : stdgo.Error) };
    }
