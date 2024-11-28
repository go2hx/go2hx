package stdgo._internal.net.netip;
function _splitAddrPort(_s:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; var _2 : Bool; var _3 : stdgo.Error; } {
        var _ip = ("" : stdgo.GoString), _port = ("" : stdgo.GoString), _v6 = false, _err = (null : stdgo.Error);
        var _i = (stdgo._internal.net.netip.Netip__stringsLastIndexByte._stringsLastIndexByte(_s?.__copy__(), (58 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_i == ((-1 : stdgo.GoInt))) {
            return { _0 : _ip = stdgo.Go.str()?.__copy__(), _1 : _port = stdgo.Go.str()?.__copy__(), _2 : _v6 = false, _3 : _err = stdgo._internal.errors.Errors_new_.new_(("not an ip:port" : stdgo.GoString)) };
        };
        {
            final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
            final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _ip = __tmp__0;
            _port = __tmp__1;
        };
        if ((_ip.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _ip = stdgo.Go.str()?.__copy__(), _1 : _port = stdgo.Go.str()?.__copy__(), _2 : _v6 = false, _3 : _err = stdgo._internal.errors.Errors_new_.new_(("no IP" : stdgo.GoString)) };
        };
        if ((_port.length) == ((0 : stdgo.GoInt))) {
            return { _0 : _ip = stdgo.Go.str()?.__copy__(), _1 : _port = stdgo.Go.str()?.__copy__(), _2 : _v6 = false, _3 : _err = stdgo._internal.errors.Errors_new_.new_(("no port" : stdgo.GoString)) };
        };
        if (_ip[(0 : stdgo.GoInt)] == ((91 : stdgo.GoUInt8))) {
            if ((((_ip.length) < (2 : stdgo.GoInt) : Bool) || (_ip[((_ip.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] != (93 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : _ip = stdgo.Go.str()?.__copy__(), _1 : _port = stdgo.Go.str()?.__copy__(), _2 : _v6 = false, _3 : _err = stdgo._internal.errors.Errors_new_.new_(("missing ]" : stdgo.GoString)) };
            };
            _ip = (_ip.__slice__((1 : stdgo.GoInt), ((_ip.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            _v6 = true;
        };
        return { _0 : _ip = _ip?.__copy__(), _1 : _port = _port?.__copy__(), _2 : _v6, _3 : _err = (null : stdgo.Error) };
    }
