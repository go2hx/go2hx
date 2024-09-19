package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackTXTResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource; var _1 : stdgo.Error; } {
        var _txts = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (1 : stdgo.GoInt)).__setString__() : stdgo.Slice<stdgo.GoString>);
        {
            var _n = ((0 : stdgo.GoUInt16) : stdgo.GoUInt16);
            while ((_n < _length : Bool)) {
                var _t:stdgo.GoString = ("" : stdgo.GoString);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackText._unpackText(_msg, _off);
                        _t = __tmp__._0?.__copy__();
                        _off = __tmp__._1;
                        _err = __tmp__._2;
                    };
                    if (_err != null) {
                        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("text" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                    };
                };
                if (((_length - _n : stdgo.GoUInt16) < ((_t.length : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16) : Bool)) {
                    return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource), _1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen };
                };
                _n = (_n + (((_t.length : stdgo.GoUInt16) + (1 : stdgo.GoUInt16) : stdgo.GoUInt16)) : stdgo.GoUInt16);
                _txts = (_txts.__append__(_t?.__copy__()));
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource(_txts) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource), _1 : (null : stdgo.Error) };
    }
