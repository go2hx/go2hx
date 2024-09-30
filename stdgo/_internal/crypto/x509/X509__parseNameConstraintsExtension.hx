package stdgo._internal.crypto.x509;
function _parseNameConstraintsExtension(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_Certificate.Certificate>, _e:stdgo._internal.crypto.x509.pkix.Pkix_Extension.Extension):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _unhandled = false, _err = (null : stdgo.Error);
        var _outer = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
        var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0), __2:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
var _excluded = __2, _permitted = __1, _toplevel = __0;
        var __0:Bool = false, __1:Bool = false;
var _haveExcluded = __1, _havePermitted = __0;
        if (((((!_outer.readASN1((stdgo.Go.setRef(_toplevel) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_outer.empty() : Bool) || !_toplevel.readOptionalASN1((stdgo.Go.setRef(_permitted) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_havePermitted), (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific().constructed()) : Bool) || !_toplevel.readOptionalASN1((stdgo.Go.setRef(_excluded) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_haveExcluded), (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific().constructed()) : Bool) || !_toplevel.empty() : Bool)) {
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
        };
        if (((!_havePermitted && !_haveExcluded : Bool) || ((_permitted.length) == ((0 : stdgo.GoInt)) && (_excluded.length) == ((0 : stdgo.GoInt)) : Bool) : Bool)) {
            return { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: empty name constraints extension" : stdgo.GoString)) };
        };
        var _getValues = (function(_subtrees:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } {
            var _dnsNames = (null : stdgo.Slice<stdgo.GoString>), _ips = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _emails = (null : stdgo.Slice<stdgo.GoString>), _uriDomains = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
            while (!_subtrees.empty()) {
                var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ = new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_(0, 0);
var _value = __1, _seq = __0;
                var _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag);
                if ((!_subtrees.readASN1((stdgo.Go.setRef(_seq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag)) || !_seq.readAnyASN1((stdgo.Go.setRef(_value) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_>), stdgo.Go.pointer(_tag)) : Bool)) {
                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
                };
                var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), __2:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = (7 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific(), __3:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag = (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_Tag.Tag).contextSpecific();
var _uriTag = __3, _ipTag = __2, _emailTag = __1, _dnsTag = __0;
                {
                    final __value__ = _tag;
                    if (__value__ == (_dnsTag)) {
                        var _domain = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                            };
                        };
                        var _trimmedDomain = (_domain?.__copy__() : stdgo.GoString);
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse dnsName constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                            };
                        };
                        _dnsNames = (_dnsNames.__append__(_domain?.__copy__()));
                    } else if (__value__ == (_ipTag)) {
                        var _l = (_value.length : stdgo.GoInt);
                        var __0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>), __1:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
var _mask = __1, _ip = __0;
                        {
                            final __value__ = _l;
                            if (__value__ == ((8 : stdgo.GoInt))) {
                                _ip = (_value.__slice__(0, (4 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                                _mask = (_value.__slice__((4 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                _ip = (_value.__slice__(0, (16 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                                _mask = (_value.__slice__((16 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_);
                            } else {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained value of length %d" : stdgo.GoString), stdgo.Go.toInterface(_l)) };
                            };
                        };
                        if (!stdgo._internal.crypto.x509.X509__isValidIPMask._isValidIPMask(_mask)) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained invalid mask %x" : stdgo.GoString), stdgo.Go.toInterface(_mask)) };
                        };
                        _ips = (_ips.__append__((stdgo.Go.setRef(({ ip : (_ip : stdgo._internal.net.Net_IP.IP), mask : (_mask : stdgo._internal.net.Net_IPMask.IPMask) } : stdgo._internal.net.Net_IPNet.IPNet)) : stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>)));
                    } else if (__value__ == (_emailTag)) {
                        var _constraint = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_constraint?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                            };
                        };
                        if (stdgo._internal.strings.Strings_contains.contains(_constraint?.__copy__(), ("@" : stdgo.GoString))) {
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__parseRFC2821Mailbox._parseRFC2821Mailbox(_constraint?.__copy__()), __1:stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
                                };
                            };
                        } else {
                            var _domain = (_constraint?.__copy__() : stdgo.GoString);
                            if ((((_domain.length) > (0 : stdgo.GoInt) : Bool) && (_domain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                                _domain = (_domain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_domain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
                                };
                            };
                        };
                        _emails = (_emails.__append__(_constraint?.__copy__()));
                    } else if (__value__ == (_uriTag)) {
                        var _domain = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isIA5String._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                            };
                        };
                        if (stdgo._internal.net.Net_parseIP.parseIP(_domain?.__copy__()) != null) {
                            return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q: cannot be IP address" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                        };
                        var _trimmedDomain = (_domain?.__copy__() : stdgo.GoString);
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                            };
                        };
                        _uriDomains = (_uriDomains.__append__(_domain?.__copy__()));
                    } else {
                        _unhandled = true;
                    };
                };
            };
            return { _0 : _dnsNames, _1 : _ips, _2 : _emails, _3 : _uriDomains, _4 : (null : stdgo.Error) };
        } : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_String_.String_ -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_IPNet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; });
        {
            {
                var __tmp__ = _getValues(_permitted);
                _out.permittedDNSDomains = __tmp__._0;
                _out.permittedIPRanges = __tmp__._1;
                _out.permittedEmailAddresses = __tmp__._2;
                _out.permittedURIDomains = __tmp__._3;
                _err = __tmp__._4;
            };
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        {
            {
                var __tmp__ = _getValues(_excluded);
                _out.excludedDNSDomains = __tmp__._0;
                _out.excludedIPRanges = __tmp__._1;
                _out.excludedEmailAddresses = __tmp__._2;
                _out.excludedURIDomains = __tmp__._3;
                _err = __tmp__._4;
            };
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        _out.permittedDNSDomainsCritical = _e.critical;
        return { _0 : _unhandled, _1 : (null : stdgo.Error) };
    }
