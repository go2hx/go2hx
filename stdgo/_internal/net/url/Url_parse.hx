package stdgo._internal.net.url;
function parse(_rawURL:stdgo.GoString):{ var _0 : stdgo.Ref<stdgo._internal.net.url.Url_url.URL>; var _1 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_rawURL?.__copy__(), ("#" : stdgo.GoString)), _u:stdgo.GoString = __tmp__._0, _frag:stdgo.GoString = __tmp__._1, __0:Bool = __tmp__._2;
        var __tmp__ = stdgo._internal.net.url.Url__parse._parse(_u?.__copy__(), false), _url:stdgo.Ref<stdgo._internal.net.url.Url_url.URL> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L470"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L471"
            return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _u?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>)) };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L473"
        if (_frag == ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L474"
            return { _0 : _url, _1 : (null : stdgo.Error) };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L476"
        {
            _err = _url._setFragment(_frag?.__copy__());
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L477"
                return { _0 : null, _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.net.url.Url_error.Error(("parse" : stdgo.GoString), _rawURL?.__copy__(), _err) : stdgo._internal.net.url.Url_error.Error)) : stdgo.Ref<stdgo._internal.net.url.Url_error.Error>)) };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L479"
        return { _0 : _url, _1 : (null : stdgo.Error) };
    }
