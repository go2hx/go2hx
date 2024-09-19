package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackUnknownResource(_recordType:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_, _msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource; var _1 : stdgo.Error; } {
        var _parsed = ({ type : _recordType, data : (new stdgo.Slice<stdgo.GoUInt8>((_length : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource);
        {
            var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackBytes._unpackBytes(_msg, _off, _parsed.data), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource), _1 : _err };
            };
        };
        return { _0 : _parsed?.__copy__(), _1 : (null : stdgo.Error) };
    }
