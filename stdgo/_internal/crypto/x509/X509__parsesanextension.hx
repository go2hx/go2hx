package stdgo._internal.crypto.x509;
function _parseSANExtension(_der:_internal.vendor.golang_dot_org.x.crypto.cryptobyte.Cryptobyte_string_.String_):{ var _0 : stdgo.Slice<stdgo.GoString>; var _1 : stdgo.Slice<stdgo.GoString>; var _2 : stdgo.Slice<stdgo._internal.net.Net_ip.IP>; var _3 : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>; var _4 : stdgo.Error; } {
        var _dnsNames = (null : stdgo.Slice<stdgo.GoString>), _emailAddresses = (null : stdgo.Slice<stdgo.GoString>), _ipAddresses = (null : stdgo.Slice<stdgo._internal.net.Net_ip.IP>), _uris = (null : stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>), _err = (null : stdgo.Error);
        _err = stdgo._internal.crypto.x509.X509__foreachsan._forEachSAN(_der, function(_tag:stdgo.GoInt, _data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Error {
            {
                final __value__ = _tag;
                if (__value__ == ((1 : stdgo.GoInt))) {
                    var _email = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    {
                        var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN rfc822Name is malformed" : stdgo.GoString));
                        };
                    };
                    _emailAddresses = (_emailAddresses.__append__(_email?.__copy__()));
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    var _name = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    {
                        var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN dNSName is malformed" : stdgo.GoString));
                        };
                    };
                    _dnsNames = (_dnsNames.__append__((_name : stdgo.GoString)?.__copy__()));
                } else if (__value__ == ((6 : stdgo.GoInt))) {
                    var _uriStr = ((_data : stdgo.GoString)?.__copy__() : stdgo.GoString);
                    {
                        var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriStr?.__copy__()) : stdgo.Error);
                        if (_err != null) {
                            return stdgo._internal.errors.Errors_new_.new_(("x509: SAN uniformResourceIdentifier is malformed" : stdgo.GoString));
                        };
                    };
                    var __tmp__ = stdgo._internal.net.url.Url_parse.parse(_uriStr?.__copy__()), _uri:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err != null) {
                        return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse URI %q: %s" : stdgo.GoString), stdgo.Go.toInterface(_uriStr), stdgo.Go.toInterface(_err));
                    };
                    if ((((@:checkr _uri ?? throw "null pointer dereference").host.length) > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                            if (!_ok) {
                                return stdgo._internal.fmt.Fmt_errorf.errorf(("x509: cannot parse URI %q: invalid domain" : stdgo.GoString), stdgo.Go.toInterface(_uriStr));
                            };
                        };
                    };
                    _uris = (_uris.__append__(_uri));
                } else if (__value__ == ((7 : stdgo.GoInt))) {
                    {
                        final __value__ = (_data.length);
                        if (__value__ == ((4 : stdgo.GoInt)) || __value__ == ((16 : stdgo.GoInt))) {
                            _ipAddresses = (_ipAddresses.__append__(_data));
                        } else {
                            return stdgo._internal.errors.Errors_new_.new_((("x509: cannot parse IP address of length " : stdgo.GoString) + stdgo._internal.strconv.Strconv_itoa.itoa((_data.length))?.__copy__() : stdgo.GoString)?.__copy__());
                        };
                    };
                };
            };
            return (null : stdgo.Error);
        });
        return { _0 : _dnsNames, _1 : _emailAddresses, _2 : _ipAddresses, _3 : _uris, _4 : _err };
    }
