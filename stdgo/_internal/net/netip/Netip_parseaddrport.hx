package stdgo._internal.net.netip;
function parseAddrPort(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addrport.AddrPort; var _1 : stdgo.Error; } {
        var _ipp:stdgo._internal.net.netip.Netip_addrport.AddrPort = ({} : stdgo._internal.net.netip.Netip_addrport.AddrPort);
        var __tmp__ = stdgo._internal.net.netip.Netip__splitaddrport._splitAddrPort(_s?.__copy__()), _ip:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _v6:Bool = __tmp__._2, _err:stdgo.Error = __tmp__._3;
        if (_err != null) {
            return { _0 : _ipp?.__copy__(), _1 : _err };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_parseuint.parseUint(_port?.__copy__(), (10 : stdgo.GoInt), (16 : stdgo.GoInt)), _port16:stdgo.GoUInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : _ipp?.__copy__(), _1 : stdgo._internal.errors.Errors_new_.new_((((("invalid port " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_port?.__copy__())?.__copy__() : stdgo.GoString) + (" parsing " : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        _ipp._port = (_port16 : stdgo.GoUInt16);
        {
            var __tmp__ = stdgo._internal.net.netip.Netip_parseaddr.parseAddr(_ip?.__copy__());
            _ipp._ip = @:tmpset0 __tmp__._0?.__copy__();
            _err = @:tmpset0 __tmp__._1;
        };
        if (_err != null) {
            return { _0 : (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort), _1 : _err };
        };
        if ((_v6 && _ipp._ip.is4() : Bool)) {
            return { _0 : (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort), _1 : stdgo._internal.errors.Errors_new_.new_(((("invalid ip:port " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + (", square brackets can only be used with IPv6 addresses" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        } else if ((!_v6 && _ipp._ip.is6() : Bool)) {
            return { _0 : (new stdgo._internal.net.netip.Netip_addrport.AddrPort() : stdgo._internal.net.netip.Netip_addrport.AddrPort), _1 : stdgo._internal.errors.Errors_new_.new_(((("invalid ip:port " : stdgo.GoString) + stdgo._internal.strconv.Strconv_quote.quote(_s?.__copy__())?.__copy__() : stdgo.GoString) + (", IPv6 addresses must be surrounded by square brackets" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _ipp?.__copy__(), _1 : (null : stdgo.Error) };
    }
