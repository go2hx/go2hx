package stdgo._internal.net.url;
@:keep @:allow(stdgo._internal.net.url.Url.Values_asInterface) class Values_static_extension {
    @:keep
    @:tdfield
    static public function encode( _v:stdgo._internal.net.url.Url_values.Values):stdgo.GoString {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L966"
        if (_v == null) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L967"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        var _buf:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var _keys = (new stdgo.Slice<stdgo.GoString>((0 : stdgo.GoInt).toBasic(), (_v.length)).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L971"
        for (_k => _ in _v) {
            _keys = (_keys.__append__(_k?.__copy__()) : stdgo.Slice<stdgo.GoString>);
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L974"
        stdgo._internal.sort.Sort_strings.strings(_keys);
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L975"
        for (__0 => _k in _keys) {
            var _vs = (_v[_k] ?? (null : stdgo.Slice<stdgo.GoString>));
            var _keyEscaped = (stdgo._internal.net.url.Url_queryescape.queryEscape(_k?.__copy__())?.__copy__() : stdgo.GoString);
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L978"
            for (__1 => _v in _vs) {
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L979"
                if ((_buf.len() > (0 : stdgo.GoInt) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L980"
                    _buf.writeByte((38 : stdgo.GoUInt8));
                };
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L982"
                _buf.writeString(_keyEscaped?.__copy__());
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L983"
                _buf.writeByte((61 : stdgo.GoUInt8));
                //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L984"
                _buf.writeString(stdgo._internal.net.url.Url_queryescape.queryEscape(_v?.__copy__())?.__copy__());
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L987"
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function has( _v:stdgo._internal.net.url.Url_values.Values, _key:stdgo.GoString):Bool {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        var __tmp__ = (_v != null && _v.__exists__(_key?.__copy__()) ? { _0 : _v[_key?.__copy__()], _1 : true } : { _0 : (null : stdgo.Slice<stdgo.GoString>), _1 : false }), __0:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L913"
        return _ok;
    }
    @:keep
    @:tdfield
    static public function del( _v:stdgo._internal.net.url.Url_values.Values, _key:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L907"
        if (_v != null) _v.__remove__(_key);
    }
    @:keep
    @:tdfield
    static public function add( _v:stdgo._internal.net.url.Url_values.Values, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        _v[_key] = ((_v[_key] ?? (null : stdgo.Slice<stdgo.GoString>)).__append__(_value?.__copy__()) : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function set( _v:stdgo._internal.net.url.Url_values.Values, _key:stdgo.GoString, _value:stdgo.GoString):Void {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        _v[_key] = (new stdgo.Slice<stdgo.GoString>(1, 1, ...[_value?.__copy__()]).__setString__() : stdgo.Slice<stdgo.GoString>);
    }
    @:keep
    @:tdfield
    static public function get( _v:stdgo._internal.net.url.Url_values.Values, _key:stdgo.GoString):stdgo.GoString {
        @:recv var _v:stdgo._internal.net.url.Url_values.Values = _v;
        var _vs = (_v[_key] ?? (null : stdgo.Slice<stdgo.GoString>));
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L887"
        if ((_vs.length) == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L888"
            return (stdgo.Go.str() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/url/url.go#L890"
        return _vs[(0 : stdgo.GoInt)]?.__copy__();
    }
}
