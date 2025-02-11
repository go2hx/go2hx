package stdgo._internal.crypto.x509;
function _marshalSANs(_dnsNames:stdgo.Slice<stdgo.GoString>, _emailAddresses:stdgo.Slice<stdgo.GoString>, _ipAddresses:stdgo.Slice<stdgo._internal.net.Net_ip.IP>, _uris:stdgo.Slice<stdgo.Ref<stdgo._internal.net.url.Url_url.URL>>):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } {
        var _derBytes = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
        var _rawValues:stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue> = (null : stdgo.Slice<stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue>);
        for (__1 => _name in _dnsNames) {
            {
                var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_name?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (2 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_name : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)));
        };
        for (__2 => _email in _emailAddresses) {
            {
                var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_email?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (1 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_email : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)));
        };
        for (__3 => _rawIP in _ipAddresses) {
            var _ip = (_rawIP.to4() : stdgo._internal.net.Net_ip.IP);
            if (_ip == null) {
                _ip = _rawIP;
            };
            _rawValues = (_rawValues.__append__(({ tag : (7 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : _ip } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)));
        };
        for (__4 => _uri in _uris) {
            var _uriStr = ((@:check2r _uri.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            {
                var _err = (stdgo._internal.crypto.x509.X509__isia5string._isIA5String(_uriStr?.__copy__()) : stdgo.Error);
                if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.Error; } = { _0 : (null : stdgo.Slice<stdgo.GoUInt8>), _1 : _err };
                        _derBytes = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
            };
            _rawValues = (_rawValues.__append__(({ tag : (6 : stdgo.GoInt), class_ : (2 : stdgo.GoInt), bytes : (_uriStr : stdgo.Slice<stdgo.GoUInt8>) } : stdgo._internal.encoding.asn1.Asn1_rawvalue.RawValue)));
        };
        return {
            final __tmp__ = stdgo._internal.encoding.asn1.Asn1_marshal.marshal(stdgo.Go.toInterface(_rawValues));
            _derBytes = __tmp__._0;
            _err = __tmp__._1;
            { _0 : _derBytes, _1 : _err };
        };
    }
