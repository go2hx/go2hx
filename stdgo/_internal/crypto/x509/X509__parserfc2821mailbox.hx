package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_4:Bool = false;
        var _twoDots_3:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5600835i32;
                    } else {
                        _gotoNext = 5600866i32;
                    };
                } else if (__value__ == (5600835i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5600866i32;
                } else if (__value__ == (5600866i32)) {
                    _localPartBytes_0 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5600929i32;
                    } else {
                        _gotoNext = 5602433i32;
                    };
                } else if (__value__ == (5600929i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5601418i32;
                } else if (__value__ == (5601418i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5601434i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5601438i32;
                    } else {
                        _gotoNext = 5603778i32;
                    };
                } else if (__value__ == (5601438i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5601459i32;
                    } else {
                        _gotoNext = 5601495i32;
                    };
                } else if (__value__ == (5601459i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5601495i32;
                } else if (__value__ == (5601495i32)) {
                    _c_1 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5601525i32;
                } else if (__value__ == (5601525i32)) {
                    if (_c_1 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5601537i32;
                    } else if (_c_1 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5601579i32;
                    } else if (((((((((_c_1 == ((11 : stdgo.GoUInt8)) || _c_1 == ((12 : stdgo.GoUInt8)) : Bool) || _c_1 == ((32 : stdgo.GoUInt8)) : Bool) || _c_1 == ((33 : stdgo.GoUInt8)) : Bool) || _c_1 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5601902i32;
                    } else {
                        _gotoNext = 5602381i32;
                    };
                } else if (__value__ == (5601537i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5601579i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5601634i32;
                    } else {
                        _gotoNext = 5601673i32;
                    };
                } else if (__value__ == (5601634i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5601673i32;
                } else if (__value__ == (5601673i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5601781i32;
                    } else {
                        _gotoNext = 5601863i32;
                    };
                } else if (__value__ == (5601781i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5601863i32)) {
                    _gotoNext = 5601863i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5601902i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_c_1));
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5602381i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5601434i32;
                } else if (__value__ == (5602433i32)) {
                    _gotoNext = 5602433i32;
                    _gotoNext = 5602458i32;
                } else if (__value__ == (5602458i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5602470i32;
                } else if (__value__ == (5602470i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5602486i32;
                    } else {
                        _gotoNext = 5603343i32;
                    };
                } else if (__value__ == (5602486i32)) {
                    _c_2 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5602547i32;
                } else if (__value__ == (5602547i32)) {
                    if (_c_2 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5602559i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_2 == ((33 : stdgo.GoUInt8)) : Bool) || _c_2 == ((35 : stdgo.GoUInt8)) : Bool) || _c_2 == ((36 : stdgo.GoUInt8)) : Bool) || _c_2 == ((37 : stdgo.GoUInt8)) : Bool) || _c_2 == ((38 : stdgo.GoUInt8)) : Bool) || _c_2 == ((39 : stdgo.GoUInt8)) : Bool) || _c_2 == ((42 : stdgo.GoUInt8)) : Bool) || _c_2 == ((43 : stdgo.GoUInt8)) : Bool) || _c_2 == ((45 : stdgo.GoUInt8)) : Bool) || _c_2 == ((47 : stdgo.GoUInt8)) : Bool) || _c_2 == ((61 : stdgo.GoUInt8)) : Bool) || _c_2 == ((63 : stdgo.GoUInt8)) : Bool) || _c_2 == ((94 : stdgo.GoUInt8)) : Bool) || _c_2 == ((95 : stdgo.GoUInt8)) : Bool) || _c_2 == ((96 : stdgo.GoUInt8)) : Bool) || _c_2 == ((123 : stdgo.GoUInt8)) : Bool) || _c_2 == ((124 : stdgo.GoUInt8)) : Bool) || _c_2 == ((125 : stdgo.GoUInt8)) : Bool) || _c_2 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_2 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5602882i32;
                    } else {
                        _gotoNext = 5603303i32;
                    };
                } else if (__value__ == (5602559i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602827i32;
                    } else {
                        _gotoNext = 5602866i32;
                    };
                } else if (__value__ == (5602827i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602866i32;
                } else if (__value__ == (5602866i32)) {
                    _gotoNext = 5602882i32;
                } else if (__value__ == (5602882i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602470i32;
                } else if (__value__ == (5603303i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5602470i32;
                } else if (__value__ == (5603343i32)) {
                    if ((_localPartBytes_0.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603371i32;
                    } else {
                        _gotoNext = 5603587i32;
                    };
                } else if (__value__ == (5603371i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603587i32;
                } else if (__value__ == (5603587i32)) {
                    _twoDots_3 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_0[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_0[((_localPartBytes_0.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_0, _twoDots_3) : Bool)) {
                        _gotoNext = 5603742i32;
                    } else {
                        _gotoNext = 5603778i32;
                    };
                } else if (__value__ == (5603742i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603778i32;
                } else if (__value__ == (5603778i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5603810i32;
                    } else {
                        _gotoNext = 5603840i32;
                    };
                } else if (__value__ == (5603810i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603840i32;
                } else if (__value__ == (5603840i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_4 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_4) {
                            _gotoNext = 5604051i32;
                        } else {
                            _gotoNext = 5604082i32;
                        };
                    };
                } else if (__value__ == (5604051i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604082i32;
                } else if (__value__ == (5604082i32)) {
                    _mailbox._local = (_localPartBytes_0 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
