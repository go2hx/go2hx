package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackSRVResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource; var _1 : stdgo.Error; } {
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off), _priority:stdgo.GoUInt16 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Priority" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off), _weight:stdgo.GoUInt16 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Weight" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off), _port:stdgo.GoUInt16 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Port" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var _target:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        {
            var __tmp__ = _target._unpackCompressed(_msg, _off, false), __0:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Target" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource(_priority, _weight, _port, _target?.__copy__()) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource), _1 : (null : stdgo.Error) };
    }
