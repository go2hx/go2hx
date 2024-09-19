package stdgo._internal.net.http;
function _sockssplitHostPort(_address:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoInt; var _2 : stdgo.Error; } {
        var __tmp__ = stdgo._internal.net.Net_splitHostPort.splitHostPort(_address?.__copy__()), _host:stdgo.GoString = __tmp__._0, _port:stdgo.GoString = __tmp__._1, _err:stdgo.Error = __tmp__._2;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_port?.__copy__()), _portnum:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : _err };
        };
        if ((((1 : stdgo.GoInt) > _portnum : Bool) || (_portnum > (65535 : stdgo.GoInt) : Bool) : Bool)) {
            return { _0 : stdgo.Go.str()?.__copy__(), _1 : (0 : stdgo.GoInt), _2 : stdgo._internal.errors.Errors_new_.new_((("port number out of range " : stdgo.GoString) + _port?.__copy__() : stdgo.GoString)?.__copy__()) };
        };
        return { _0 : _host?.__copy__(), _1 : _portnum, _2 : (null : stdgo.Error) };
    }
