package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackSOAResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource; var _1 : stdgo.Error; } {
        var _ns:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        var __tmp__ = _ns._unpack(_msg, _off), _off:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("NS" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var _mbox:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Name.Name);
        {
            {
                var __tmp__ = _mbox._unpack(_msg, _off);
                _off = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("MBox" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _off), _serial:stdgo.GoUInt32 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Serial" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _off), _refresh:stdgo.GoUInt32 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Refresh" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _off), _retry:stdgo.GoUInt32 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Retry" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _off), _expire:stdgo.GoUInt32 = __tmp__._0, _off:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Expire" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint32._unpackUint32(_msg, _off), _minTTL:stdgo.GoUInt32 = __tmp__._0, __0:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("MinTTL" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource(_ns?.__copy__(), _mbox?.__copy__(), _serial, _refresh, _retry, _expire, _minTTL) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource), _1 : (null : stdgo.Error) };
    }
