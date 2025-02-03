package stdgo.net.url;
class URL_static_extension {
    static public function joinPath(_u:URL, _elem:haxe.Rest<String>):URL {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.joinPath(_u, ...[for (i in _elem) i]);
    }
    static public function unmarshalBinary(_u:URL, _text:Array<std.UInt>):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _text = ([for (i in _text) (i : stdgo.GoUInt8)] : stdgo.Slice<stdgo.GoUInt8>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.unmarshalBinary(_u, _text);
    }
    static public function marshalBinary(_u:URL):stdgo.Tuple<Array<std.UInt>, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return {
            final obj = stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.marshalBinary(_u);
            { _0 : [for (i in obj._0) i], _1 : obj._1 };
        };
    }
    static public function port(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.port(_u);
    }
    static public function hostname(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.hostname(_u);
    }
    static public function requestURI(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.requestURI(_u);
    }
    static public function query(_u:URL):Values {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.query(_u);
    }
    static public function resolveReference(_u:URL, _ref:URL):URL {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _ref = (_ref : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.resolveReference(_u, _ref);
    }
    static public function parse(_u:URL, _ref:String):stdgo.Tuple<URL, stdgo.Error> {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _ref = (_ref : stdgo.GoString);
        return {
            final obj = stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.parse(_u, _ref);
            { _0 : obj._0, _1 : obj._1 };
        };
    }
    static public function isAbs(_u:URL):Bool {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.isAbs(_u);
    }
    static public function redacted(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.redacted(_u);
    }
    static public function string(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.string(_u);
    }
    static public function escapedFragment(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.escapedFragment(_u);
    }
    static public function _setFragment(_u:URL, _f:String):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _f = (_f : stdgo.GoString);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension._setFragment(_u, _f);
    }
    static public function escapedPath(_u:URL):String {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension.escapedPath(_u);
    }
    static public function _setPath(_u:URL, _p:String):stdgo.Error {
        final _u = (_u : stdgo.Ref<stdgo._internal.net.url.Url_URL.URL>);
        final _p = (_p : stdgo.GoString);
        return stdgo._internal.net.url.Url_URL_static_extension.URL_static_extension._setPath(_u, _p);
    }
}
