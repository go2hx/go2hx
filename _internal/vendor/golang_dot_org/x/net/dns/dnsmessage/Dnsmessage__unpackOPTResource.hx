package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackOPTResource(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _length:stdgo.GoUInt16):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource; var _1 : stdgo.Error; } {
        var _opts:stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option> = (null : stdgo.Slice<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option>);
        {
            var _oldOff = (_off : stdgo.GoInt);
            while ((_off < (_oldOff + (_length : stdgo.GoInt) : stdgo.GoInt) : Bool)) {
                var _err:stdgo.Error = (null : stdgo.Error);
                var _o:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Option.Option);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off);
                    _o.code = __tmp__._0;
                    _off = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Code" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
                var _l:stdgo.GoUInt16 = (0 : stdgo.GoUInt16);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUint16._unpackUint16(_msg, _off);
                    _l = __tmp__._0;
                    _off = __tmp__._1;
                    _err = __tmp__._2;
                };
                if (_err != null) {
                    return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Data" : stdgo.GoString), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
                _o.data = (new stdgo.Slice<stdgo.GoUInt8>((_l : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                if (stdgo.Go.copySlice(_o.data, (_msg.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>)) != ((_l : stdgo.GoInt))) {
                    return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource() : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError(("Data" : stdgo.GoString), _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__errCalcLen._errCalcLen) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
                };
                _off = (_off + ((_l : stdgo.GoInt)) : stdgo.GoInt);
                _opts = (_opts.__append__(_o?.__copy__()));
            };
        };
        return { _0 : (new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource(_opts) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource), _1 : (null : stdgo.Error) };
    }
