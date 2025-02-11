package stdgo._internal.crypto.x509;
function _parseNameConstraintsExtension(_out:stdgo.Ref<stdgo._internal.crypto.x509.X509_certificate.Certificate>, _e:stdgo._internal.crypto.x509.pkix.Pkix_extension.Extension):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _unhandled = false, _err = (null : stdgo.Error);
        var _outer = (_e.value : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
        var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_), __2:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
var _excluded = __2, _permitted = __1, _toplevel = __0;
        var __0:Bool = false, __1:Bool = false;
var _haveExcluded = __1, _havePermitted = __0;
        var _haveExcluded__pointer__ = stdgo.Go.pointer(_haveExcluded);
        var _havePermitted__pointer__ = stdgo.Go.pointer(_havePermitted);
        if (((((!@:check2 _outer.readASN1((stdgo.Go.setRef(_toplevel) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !_outer.empty() : Bool) || !@:check2 _toplevel.readOptionalASN1((stdgo.Go.setRef(_permitted) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _havePermitted__pointer__, (0 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed()) : Bool) || !@:check2 _toplevel.readOptionalASN1((stdgo.Go.setRef(_excluded) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _haveExcluded__pointer__, (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific().constructed()) : Bool) || !_toplevel.empty() : Bool)) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
                _unhandled = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        if (((!_havePermitted && !_haveExcluded : Bool) || ((_permitted.length) == ((0 : stdgo.GoInt)) && (_excluded.length) == ((0 : stdgo.GoInt)) : Bool) : Bool)) {
            return {
                final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : stdgo._internal.errors.Errors_new_.new_(("x509: empty name constraints extension" : stdgo.GoString)) };
                _unhandled = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        var _getValues = (function(_subtrees:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } {
            var _dnsNames = (null : stdgo.Slice<stdgo.GoString>), _ips = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _emails = (null : stdgo.Slice<stdgo.GoString>), _uriDomains = (null : stdgo.Slice<stdgo.GoString>), _err = (null : stdgo.Error);
            while (!_subtrees.empty()) {
                var __0:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_), __1:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ = (new _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_(0, 0) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
var _value = __1, _seq = __0;
                var _tag:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag = ((0 : stdgo.GoUInt8) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag);
                var _tag__pointer__ = stdgo.Go.pointer(_tag);
                if ((!@:check2 _subtrees.readASN1((stdgo.Go.setRef(_seq) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), (48 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag)) || !@:check2 _seq.readAnyASN1((stdgo.Go.setRef(_value) : stdgo.Ref<_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_>), _tag__pointer__) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: invalid NameConstraints extension" : stdgo.GoString)) };
                        _dnsNames = __tmp__._0;
                        _ips = __tmp__._1;
                        _emails = __tmp__._2;
                        _uriDomains = __tmp__._3;
                        _err = __tmp__._4;
                        __tmp__;
                    };
                };
                var __0 = (2 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), __1 = (1 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), __2 = (7 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific(), __3 = (6 : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.asn1.Asn1_tag.Tag).contextSpecific();
var _uriTag = __3, _ipTag = __2, _emailTag = __1, _dnsTag = __0;
                {
                    final __value__ = _tag;
                    if (__value__ == (_dnsTag)) {
                        var _domain = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        var _trimmedDomain = (_domain?.__copy__() : stdgo.GoString);
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse dnsName constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
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
                                _ip = (_value.__slice__(0, (4 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                _mask = (_value.__slice__((4 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            } else if (__value__ == ((32 : stdgo.GoInt))) {
                                _ip = (_value.__slice__(0, (16 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                                _mask = (_value.__slice__((16 : stdgo.GoInt)) : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_);
                            } else {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained value of length %d" : stdgo.GoString), stdgo.Go.toInterface(_l)) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        if (!stdgo._internal.crypto.x509.X509__isvalidipmask._isValidIPMask(_mask)) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: IP constraint contained invalid mask %x" : stdgo.GoString), stdgo.Go.toInterface(_mask)) };
                                _dnsNames = __tmp__._0;
                                _ips = __tmp__._1;
                                _emails = __tmp__._2;
                                _uriDomains = __tmp__._3;
                                _err = __tmp__._4;
                                __tmp__;
                            };
                        };
                        _ips = (_ips.__append__((stdgo.Go.setRef(({ iP : (_ip : stdgo._internal.net.Net_ip.IP), mask : (_mask : stdgo._internal.net.Net_ipmask.IPMask) } : stdgo._internal.net.Net_ipnet.IPNet)) : stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>)));
                    } else if (__value__ == (_emailTag)) {
                        var _constraint = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_constraint?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        if (stdgo._internal.strings.Strings_contains.contains(_constraint?.__copy__(), ("@" : stdgo.GoString))) {
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__parserfc2821mailbox._parseRFC2821Mailbox(_constraint?.__copy__()), __1:stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
                                        _dnsNames = __tmp__._0;
                                        _ips = __tmp__._1;
                                        _emails = __tmp__._2;
                                        _uriDomains = __tmp__._3;
                                        _err = __tmp__._4;
                                        __tmp__;
                                    };
                                };
                            };
                        } else {
                            var _domain = (_constraint?.__copy__() : stdgo.GoString);
                            if ((((_domain.length) > (0 : stdgo.GoInt) : Bool) && (_domain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                                _domain = (_domain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                            };
                            {
                                var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_domain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                                if (!_ok) {
                                    return {
                                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse rfc822Name constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_constraint)) };
                                        _dnsNames = __tmp__._0;
                                        _ips = __tmp__._1;
                                        _emails = __tmp__._2;
                                        _uriDomains = __tmp__._3;
                                        _err = __tmp__._4;
                                        __tmp__;
                                    };
                                };
                            };
                        };
                        _emails = (_emails.__append__(_constraint?.__copy__()));
                    } else if (__value__ == (_uriTag)) {
                        var _domain = ((_value : stdgo.GoString)?.__copy__() : stdgo.GoString);
                        {
                            var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_domain?.__copy__()) : stdgo.Error);
                            if (_err != null) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.errors.Errors_new_.new_((("x509: invalid constraint value: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString)?.__copy__()) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        if (stdgo._internal.net.Net_parseip.parseIP(_domain?.__copy__()) != null) {
                            return {
                                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q: cannot be IP address" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                                _dnsNames = __tmp__._0;
                                _ips = __tmp__._1;
                                _emails = __tmp__._2;
                                _uriDomains = __tmp__._3;
                                _err = __tmp__._4;
                                __tmp__;
                            };
                        };
                        var _trimmedDomain = (_domain?.__copy__() : stdgo.GoString);
                        if ((((_trimmedDomain.length) > (0 : stdgo.GoInt) : Bool) && (_trimmedDomain[(0 : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                            _trimmedDomain = (_trimmedDomain.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                        };
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_trimmedDomain?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return {
                                    final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>), _2 : (null : stdgo.Slice<stdgo.GoString>), _3 : (null : stdgo.Slice<stdgo.GoString>), _4 : stdgo._internal.fmt.Fmt_errorf.errorf(("x509: failed to parse URI constraint %q" : stdgo.GoString), stdgo.Go.toInterface(_domain)) };
                                    _dnsNames = __tmp__._0;
                                    _ips = __tmp__._1;
                                    _emails = __tmp__._2;
                                    _uriDomains = __tmp__._3;
                                    _err = __tmp__._4;
                                    __tmp__;
                                };
                            };
                        };
                        _uriDomains = (_uriDomains.__append__(_domain?.__copy__()));
                    } else {
                        _unhandled = true;
                    };
                };
            };
            return {
                final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; } = { _0 : _dnsNames, _1 : _ips, _2 : _emails, _3 : _uriDomains, _4 : (null : stdgo.Error) };
                _dnsNames = __tmp__._0;
                _ips = __tmp__._1;
                _emails = __tmp__._2;
                _uriDomains = __tmp__._3;
                _err = __tmp__._4;
                __tmp__;
            };
        } : _internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_ -> { var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.Net_ipnet.IPNet>>; var _2 : stdgo.Slice<stdgo.GoString>; var _3 : stdgo.Slice<stdgo.GoString>; var _4 : stdgo.Error; });
        {
            {
                var __tmp__ = _getValues(_permitted);
                (@:checkr _out ?? throw "null pointer dereference").permittedDNSDomains = @:tmpset0 __tmp__._0;
                (@:checkr _out ?? throw "null pointer dereference").permittedIPRanges = @:tmpset0 __tmp__._1;
                (@:checkr _out ?? throw "null pointer dereference").permittedEmailAddresses = @:tmpset0 __tmp__._2;
                (@:checkr _out ?? throw "null pointer dereference").permittedURIDomains = @:tmpset0 __tmp__._3;
                _err = @:tmpset0 __tmp__._4;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _unhandled = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        {
            {
                var __tmp__ = _getValues(_excluded);
                (@:checkr _out ?? throw "null pointer dereference").excludedDNSDomains = @:tmpset0 __tmp__._0;
                (@:checkr _out ?? throw "null pointer dereference").excludedIPRanges = @:tmpset0 __tmp__._1;
                (@:checkr _out ?? throw "null pointer dereference").excludedEmailAddresses = @:tmpset0 __tmp__._2;
                (@:checkr _out ?? throw "null pointer dereference").excludedURIDomains = @:tmpset0 __tmp__._3;
                _err = @:tmpset0 __tmp__._4;
            };
            if (_err != null) {
                return {
                    final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : false, _1 : _err };
                    _unhandled = __tmp__._0;
                    _err = __tmp__._1;
                    __tmp__;
                };
            };
        };
        (@:checkr _out ?? throw "null pointer dereference").permittedDNSDomainsCritical = _e.critical;
        return {
            final __tmp__:{ var _0 : Bool; var _1 : stdgo.Error; } = { _0 : _unhandled, _1 : (null : stdgo.Error) };
            _unhandled = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
