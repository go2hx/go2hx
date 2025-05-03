package stdgo._internal.net.url;
function _parseHost(_host:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.Error; } {
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L617"
        if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_host?.__copy__(), ("[" : stdgo.GoString))) {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_host?.__copy__(), ("]" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L621"
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L622"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_(("missing \']\' in host" : stdgo.GoString)) };
            };
            var _colonPort = ((_host.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L625"
            if (!stdgo._internal.net.url.Url__validoptionalport._validOptionalPort(_colonPort?.__copy__())) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L626"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid port %q after host" : stdgo.GoString), stdgo.Go.toInterface(_colonPort)) };
            };
            var _zone = (stdgo._internal.strings.Strings_index.index((_host.__slice__(0, _i) : stdgo.GoString)?.__copy__(), ("%25" : stdgo.GoString)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L636"
            if ((_zone >= (0 : stdgo.GoInt) : Bool)) {
                var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((_host.__slice__(0, _zone) : stdgo.GoString)?.__copy__(), (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _host1:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L638"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L639"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
                var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((_host.__slice__(_zone, _i) : stdgo.GoString)?.__copy__(), (4 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _host2:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L642"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L643"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
                var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape((_host.__slice__(_i) : stdgo.GoString)?.__copy__(), (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding)), _host3:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L646"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L647"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
                };
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L649"
                return { _0 : ((_host1 + _host2?.__copy__() : stdgo.GoString) + _host3?.__copy__() : stdgo.GoString)?.__copy__(), _1 : (null : stdgo.Error) };
            };
        } else {
            var _i = (stdgo._internal.strings.Strings_lastindex.lastIndex(_host?.__copy__(), (":" : stdgo.GoString)) : stdgo.GoInt);
            if (_i != ((-1 : stdgo.GoInt))) {
                var _colonPort = ((_host.__slice__(_i) : stdgo.GoString)?.__copy__() : stdgo.GoString);
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L653"
                if (!stdgo._internal.net.url.Url__validoptionalport._validOptionalPort(_colonPort?.__copy__())) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L654"
                    return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : stdgo._internal.fmt.Fmt_errorf.errorf(("invalid port %q after host" : stdgo.GoString), stdgo.Go.toInterface(_colonPort)) };
                };
            };
        };
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L659"
        {
            {
                var __tmp__ = stdgo._internal.net.url.Url__unescape._unescape(_host?.__copy__(), (3 : stdgo._internal.net.url.Url_t_encoding.T_encoding));
                _host = @:tmpset0 __tmp__._0?.__copy__();
                _err = @:tmpset0 __tmp__._1;
            };
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L660"
                return { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _err };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L662"
        return { _0 : _host?.__copy__(), _1 : (null : stdgo.Error) };
    }
