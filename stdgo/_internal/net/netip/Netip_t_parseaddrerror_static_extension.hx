package stdgo._internal.net.netip;
@:keep @:allow(stdgo._internal.net.netip.Netip.T_parseAddrError_asInterface) class T_parseAddrError_static_extension {
    @:keep
    @:tdfield
    static public function error( _err:stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError):stdgo.GoString {
        @:recv var _err:stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError = _err?.__copy__();
        var _q = (stdgo._internal.strconv.Strconv_quote.quote : stdgo.GoString -> stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L148"
        if (_err._at != ((stdgo.Go.str() : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L149"
            return ((((((("ParseAddr(" : stdgo.GoString) + _q(_err._in?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err._msg?.__copy__() : stdgo.GoString) + (" (at " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _q(_err._at?.__copy__())?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/net/netip/netip.go#L151"
        return (((("ParseAddr(" : stdgo.GoString) + _q(_err._in?.__copy__())?.__copy__() : stdgo.GoString) + ("): " : stdgo.GoString)?.__copy__() : stdgo.GoString) + _err._msg?.__copy__() : stdgo.GoString)?.__copy__();
    }
}
