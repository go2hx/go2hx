package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _skipResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipName._skipName(_msg, _off), _newOff:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Name" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipType._skipType(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Type" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipClass._skipClass(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Class" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        {
            {
                var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__skipUint32._skipUint32(_msg, _newOff);
                _newOff = __tmp__._0;
                _err = __tmp__._1;
            };
            if (_err != null) {
                return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("TTL" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
            };
        };
        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _newOff), _length:stdgo.GoUInt16 = __tmp__._0, _newOff:stdgo.GoInt = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : _off, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Length" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        {
            _newOff = (_newOff + ((_length : stdgo.GoInt)) : stdgo.GoInt);
            if ((_newOff > (_msg.length) : Bool)) {
                return { _0 : _off, _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errResourceLen._errResourceLen };
            };
        };
        return { _0 : _newOff, _1 : (null : stdgo.Error) };
    }
