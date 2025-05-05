package stdgo._internal.crypto.x509;
function _matchURIConstraint(_uri:stdgo.Ref<stdgo._internal.net.url.Url_url.URL>, _constraint:stdgo.GoString):{ var _0 : Bool; var _1 : stdgo.Error; } {
        var _host = ((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__() : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L420"
        if ((_host.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L421"
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with empty host (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((_uri.string() : stdgo.GoString))) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L424"
        if ((stdgo._internal.strings.Strings_contains.contains(_host?.__copy__(), (":" : stdgo.GoString)) && !stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool)) {
            var _err:stdgo.Error = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.net.Net_splithostport.splitHostPort((@:checkr _uri ?? throw "null pointer dereference").host?.__copy__());
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._2;
            };
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L427"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L428"
                return { _0 : false, _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L432"
        if (((stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString)) && stdgo._internal.strings.Strings_hassuffix.hasSuffix(_host?.__copy__(), ("]" : stdgo.GoString)) : Bool) || (stdgo._internal.net.Net_parseip.parseIP(_host?.__copy__()) != null) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L434"
            return { _0 : false, _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("URI with IP (%q) cannot be matched against constraints" : stdgo.GoString), stdgo.Go.toInterface((_uri.string() : stdgo.GoString))) };
        };
        //"file:///home/runner/.go/go1.21.3/src/crypto/x509/verify.go#L437"
        return stdgo._internal.crypto.x509.X509__matchdomainconstraint._matchDomainConstraint(_host?.__copy__(), _constraint?.__copy__());
    }
