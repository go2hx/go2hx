package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackAResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource; var _1 : stdgo.Error; } {
        var _a:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4, ...[for (i in 0 ... 4) (0 : stdgo.GoUInt8)]);
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackBytes._unpackBytes(_msg, _off, (_a.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>)), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource), _1 : _err };
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource(_a?.__copy__()) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource), _1 : (null : stdgo.Error) };
    }
