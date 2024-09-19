package _internal.vendor.golang_dot_org.x.net.dns.dnsmessage;
function _unpackResourceBody(_msg:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoInt, _hdr:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceHeader.ResourceHeader):{ var _0 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var __0:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody = (null : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody), __1:stdgo.Error = (null : stdgo.Error), __2:stdgo.GoString = ("" : stdgo.GoString);
var _name = __2, _err = __1, _r = __0;
        {
            final __value__ = _hdr.type;
            if (__value__ == ((1 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackAResource._unpackAResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AResource.AResource>));
                _name = ("A" : stdgo.GoString);
            } else if (__value__ == ((2 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackNSResource._unpackNSResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_NSResource.NSResource>));
                _name = ("NS" : stdgo.GoString);
            } else if (__value__ == ((5 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackCNAMEResource._unpackCNAMEResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_CNAMEResource.CNAMEResource>));
                _name = ("CNAME" : stdgo.GoString);
            } else if (__value__ == ((6 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackSOAResource._unpackSOAResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SOAResource.SOAResource>));
                _name = ("SOA" : stdgo.GoString);
            } else if (__value__ == ((12 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackPTRResource._unpackPTRResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_PTRResource.PTRResource>));
                _name = ("PTR" : stdgo.GoString);
            } else if (__value__ == ((15 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackMXResource._unpackMXResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_MXResource.MXResource>));
                _name = ("MX" : stdgo.GoString);
            } else if (__value__ == ((16 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackTXTResource._unpackTXTResource(_msg, _off, _hdr.length_);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_TXTResource.TXTResource>));
                _name = ("TXT" : stdgo.GoString);
            } else if (__value__ == ((28 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackAAAAResource._unpackAAAAResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_AAAAResource.AAAAResource>));
                _name = ("AAAA" : stdgo.GoString);
            } else if (__value__ == ((33 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackSRVResource._unpackSRVResource(_msg, _off);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_SRVResource.SRVResource>));
                _name = ("SRV" : stdgo.GoString);
            } else if (__value__ == ((41 : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_Type_.Type_))) {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackOPTResource._unpackOPTResource(_msg, _off, _hdr.length_);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_OPTResource.OPTResource>));
                _name = ("OPT" : stdgo.GoString);
            } else {
                var _rb:_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource = ({} : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource);
                {
                    var __tmp__ = _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage__unpackUnknownResource._unpackUnknownResource(_hdr.type, _msg, _off, _hdr.length_);
                    _rb = __tmp__._0?.__copy__();
                    _err = __tmp__._1;
                };
                _r = stdgo.Go.asInterface((stdgo.Go.setRef(_rb) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_UnknownResource.UnknownResource>));
                _name = ("Unknown" : stdgo.GoString);
            };
        };
        if (_err != null) {
            return { _0 : (null : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_ResourceBody.ResourceBody), _1 : _off, _2 : stdgo.Go.asInterface((stdgo.Go.setRef((new _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError((_name + (" record" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _err) : _internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError)) : stdgo.Ref<_internal.vendor.golang_dot_org.x.net.dns.dnsmessage.Dnsmessage_T_nestedError.T_nestedError>)) };
        };
        return { _0 : _r, _1 : (_off + (_hdr.length_ : stdgo.GoInt) : stdgo.GoInt), _2 : (null : stdgo.Error) };
    }
