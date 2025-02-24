package stdgo._internal.crypto.tls;
function _checkKeySize(_n:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; } {
        var _max = (0 : stdgo.GoInt), _ok = false;
        {
            var _v = (@:check2r stdgo._internal.crypto.tls.Tls__tlsmaxrsasize._tlsmaxrsasize.value()?.__copy__() : stdgo.GoString);
            if (_v != ((stdgo.Go.str() : stdgo.GoString))) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi(_v?.__copy__()), _max:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (_err == null) {
                        if (((_n <= _max : Bool)) != ((_n <= (8192 : stdgo.GoInt) : Bool))) {
                            @:check2r stdgo._internal.crypto.tls.Tls__tlsmaxrsasize._tlsmaxrsasize.incNonDefault();
                        };
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : _max, _1 : (_n <= _max : Bool) };
                            _max = __tmp__._0;
                            _ok = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : Bool; } = { _0 : (8192 : stdgo.GoInt), _1 : (_n <= (8192 : stdgo.GoInt) : Bool) };
            _max = __tmp__._0;
            _ok = __tmp__._1;
            __tmp__;
        };
    }
