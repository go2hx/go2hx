package stdgo._internal.net.netip;
function _parseIPv4(_s:stdgo.GoString):{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } {
        var _ip = ({} : stdgo._internal.net.netip.Netip_addr.Addr), _err = (null : stdgo.Error);
        var _fields:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(4, 4).__setNumber32__();
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _pos = __1, _val = __0;
        var _digLen:stdgo.GoInt = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                if (((_s[(_i : stdgo.GoInt)] >= (48 : stdgo.GoUInt8) : Bool) && (_s[(_i : stdgo.GoInt)] <= (57 : stdgo.GoUInt8) : Bool) : Bool)) {
                    if (((_digLen == (1 : stdgo.GoInt)) && (_val == (0 : stdgo.GoInt)) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("IPv4 field has octet with leading zero" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                            _ip = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _val = (((_val * (10 : stdgo.GoInt) : stdgo.GoInt) + (_s[(_i : stdgo.GoInt)] : stdgo.GoInt) : stdgo.GoInt) - (48 : stdgo.GoInt) : stdgo.GoInt);
                    _digLen++;
                    if ((_val > (255 : stdgo.GoInt) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("IPv4 field has value >255" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                            _ip = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                } else if (_s[(_i : stdgo.GoInt)] == ((46 : stdgo.GoUInt8))) {
                    if (((_i == ((0 : stdgo.GoInt)) || _i == (((_s.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : Bool) || (_s[(_i - (1 : stdgo.GoInt) : stdgo.GoInt)] == (46 : stdgo.GoUInt8)) : Bool)) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("IPv4 field must have at least one digit" : stdgo.GoString), _at : (_s.__slice__(_i) : stdgo.GoString).__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                            _ip = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    if (_pos == ((3 : stdgo.GoInt))) {
                        return {
                            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("IPv4 address too long" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                            _ip = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _fields[(_pos : stdgo.GoInt)] = (_val : stdgo.GoUInt8);
                    _pos++;
                    _val = (0 : stdgo.GoInt);
                    _digLen = (0 : stdgo.GoInt);
                } else {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s.__copy__(), _msg : ("unexpected character" : stdgo.GoString), _at : (_s.__slice__(_i) : stdgo.GoString).__copy__() } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                        _ip = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        if ((_pos < (3 : stdgo.GoInt) : Bool)) {
            return {
                final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : (new stdgo._internal.net.netip.Netip_addr.Addr() : stdgo._internal.net.netip.Netip_addr.Addr), _1 : stdgo.Go.asInterface(({ _in : _s?.__copy__(), _msg : ("IPv4 address too short" : stdgo.GoString) } : stdgo._internal.net.netip.Netip_t_parseaddrerror.T_parseAddrError)) };
                _ip = __tmp__._0;
                _err = __tmp__._1;
                __tmp__;
            };
        };
        _fields[(3 : stdgo.GoInt)] = (_val : stdgo.GoUInt8);
        return {
            final __tmp__:{ var _0 : stdgo._internal.net.netip.Netip_addr.Addr; var _1 : stdgo.Error; } = { _0 : stdgo._internal.net.netip.Netip_addrfrom4.addrFrom4(_fields?.__copy__())?.__copy__(), _1 : (null : stdgo.Error) };
            _ip = __tmp__._0;
            _err = __tmp__._1;
            __tmp__;
        };
    }
