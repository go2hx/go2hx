package stdgo._internal.net.netip;
function _parseIPv6(_in:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } {
        var _s = (_in?.__copy__() : stdgo.GoString);
        var _zone = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _i = (stdgo._internal.internal.bytealg.Bytealg_indexbytestring.indexByteString(_s?.__copy__(), (37 : stdgo.GoUInt8)) : stdgo.GoInt);
        if (_i != ((-1 : stdgo.GoInt))) {
            {
                final __tmp__0 = (_s.__slice__(0, _i) : stdgo.GoString)?.__copy__();
                final __tmp__1 = (_s.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                _s = __tmp__0;
                _zone = __tmp__1;
            };
            if (_zone == ((stdgo.Go.str() : stdgo.GoString))) {
                return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("zone must be a non-empty string" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
            };
        };
        var _ip:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(16, 16).__setNumber32__();
        var _ellipsis = (-1 : stdgo.GoInt);
        if (((((_s.length) >= (2 : stdgo.GoInt) : Bool) && _s[(0 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8)) : Bool) && (_s[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
            _ellipsis = (0 : stdgo.GoInt);
            _s = (_s.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if ((_s.length) == ((0 : stdgo.GoInt))) {
                return { _0 : stdgo._internal.net.netip.Netip_ipv6unspecified.iPv6Unspecified().withZone(_zone?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
            };
        };
        _i = (0 : stdgo.GoInt);
        while ((_i < (16 : stdgo.GoInt) : Bool)) {
            var _off = (0 : stdgo.GoInt);
            var _acc = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
            while ((_off < (_s.length) : Bool)) {
                var _c = (_s[(_off : stdgo.GoInt)] : stdgo.GoUInt8);
if (((_c >= (48 : stdgo.GoUInt8) : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _acc = (((_acc << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) + ((_c - (48 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoUInt32);
                } else if (((_c >= (97 : stdgo.GoUInt8) : Bool) && (_c <= (102 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _acc = (((_acc << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) + (((_c - (97 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoUInt32);
                } else if (((_c >= (65 : stdgo.GoUInt8) : Bool) && (_c <= (70 : stdgo.GoUInt8) : Bool) : Bool)) {
                    _acc = (((_acc << (4i64 : stdgo.GoUInt64) : stdgo.GoUInt32)) + (((_c - (65 : stdgo.GoUInt8) : stdgo.GoUInt8) + (10 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt32) : stdgo.GoUInt32);
                } else {
                    break;
                };
if ((_acc > (65535u32 : stdgo.GoUInt32) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in.__copy__(), _msg : ("IPv6 field has value >=2^16" : stdgo.GoString), _at : _s.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                };
                _off++;
            };
            if (_off == ((0 : stdgo.GoInt))) {
                return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("each colon-separated field must have at least one digit" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
            };
            if (((_off < (_s.length) : Bool) && (_s[(_off : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                if (((_ellipsis < (0 : stdgo.GoInt) : Bool) && (_i != (12 : stdgo.GoInt)) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("embedded IPv4 address must replace the final 2 fields of the address" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                };
                if (((_i + (4 : stdgo.GoInt) : stdgo.GoInt) > (16 : stdgo.GoInt) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("too many hex fields to fit an embedded IPv4 at the end of the address" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                };
                var __tmp__ = stdgo._internal.net.netip.Netip__parseipv4._parseIPv4(_s?.__copy__()), _ip4:stdgo._internal.net.netip.Netip_addr.Addr = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : _err.error()?.__copy__(), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                };
                _ip[(_i : stdgo.GoInt)] = _ip4._v4((0 : stdgo.GoUInt8));
                _ip[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = _ip4._v4((1 : stdgo.GoUInt8));
                _ip[(_i + (2 : stdgo.GoInt) : stdgo.GoInt)] = _ip4._v4((2 : stdgo.GoUInt8));
                _ip[(_i + (3 : stdgo.GoInt) : stdgo.GoInt)] = _ip4._v4((3 : stdgo.GoUInt8));
                _s = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                _i = (_i + ((4 : stdgo.GoInt)) : stdgo.GoInt);
                break;
            };
            _ip[(_i : stdgo.GoInt)] = ((_acc >> (8i64 : stdgo.GoUInt64) : stdgo.GoUInt32) : stdgo.GoUInt8);
            _ip[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] = (_acc : stdgo.GoUInt8);
            _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt);
            _s = (_s.__slice__(_off) : stdgo.GoString)?.__copy__();
            if ((_s.length) == ((0 : stdgo.GoInt))) {
                break;
            };
            if (_s[(0 : stdgo.GoInt)] != ((58 : stdgo.GoUInt8))) {
                return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("unexpected character, want colon" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
            } else if ((_s.length) == ((1 : stdgo.GoInt))) {
                return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("colon must be followed by more characters" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
            };
            _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            if (_s[(0 : stdgo.GoInt)] == ((58 : stdgo.GoUInt8))) {
                if ((_ellipsis >= (0 : stdgo.GoInt) : Bool)) {
                    return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("multiple :: in address" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                };
                _ellipsis = _i;
                _s = (_s.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                if ((_s.length) == ((0 : stdgo.GoInt))) {
                    break;
                };
            };
        };
        if ((_s.length) != ((0 : stdgo.GoInt))) {
            return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("trailing garbage after address" : stdgo.GoString), _at : _s?.__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
        };
        if ((_i < (16 : stdgo.GoInt) : Bool)) {
            if ((_ellipsis < (0 : stdgo.GoInt) : Bool)) {
                return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("address string too short" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
            };
            var _n = ((16 : stdgo.GoInt) - _i : stdgo.GoInt);
            {
                var _j = (_i - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_j >= _ellipsis : Bool)) {
                    _ip[(_j + _n : stdgo.GoInt)] = _ip[(_j : stdgo.GoInt)];
                    _j--;
                };
            };
            {
                var _j = ((_ellipsis + _n : stdgo.GoInt) - (1 : stdgo.GoInt) : stdgo.GoInt);
                while ((_j >= _ellipsis : Bool)) {
                    _ip[(_j : stdgo.GoInt)] = (0 : stdgo.GoUInt8);
                    _j--;
                };
            };
        } else if ((_ellipsis >= (0 : stdgo.GoInt) : Bool)) {
            return { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _in?.__copy__(), _msg : ("the :: must expand to at least one field of zeros" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
        };
        return { _0 : stdgo._internal.net.netip.Netip_addrfrom16.addrFrom16(_ip?.__copy__()).withZone(_zone?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
    }
