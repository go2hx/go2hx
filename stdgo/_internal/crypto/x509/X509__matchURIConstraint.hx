package stdgo._internal.crypto.x509;
function _matchURIConstraint(_uri:stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _host = ((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with empty host (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _uri.string() : stdgo.GoString))) };
        };
        if ((stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), (":" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__());
                _host = __tmp__._0?.__copy__();
                _err = __tmp__._2;
            };
            if (_err != null) {
                return { _0 : false, _1 : _err };
            };
        };
        if (((stdgo._internal.strings.Strings_hasPrefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hasSuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool) || (stdgo._internal.net.Net_parseIP.parseIP(_host?.__copy__()) != null) : Bool)) {
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with IP (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((@:check2r _uri.string() : stdgo.GoString))) };
        };
        return stdgo._internal.crypto.x509.X509__matchDomainConstraint._matchDomainConstraint(_host?.__copy__(), _constraint?.__copy__());
    }
