package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackPTRResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource; var _1 : stdgo.Error; } {
        var _ptr:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        {
            var __tmp__ = _ptr._unpack(_msg, _off), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource), _1 : _err };
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource(_ptr?.__copy__()) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource), _1 : (null : stdgo.Error) };
    }
