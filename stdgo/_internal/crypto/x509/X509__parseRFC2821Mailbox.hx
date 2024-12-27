package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_5593992:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5593363:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5596511:Bool = false;
        var _twoDots_5596084:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5595029:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5593332i32;
                    } else {
                        _gotoNext = 5593363i32;
                    };
                } else if (__value__ == (5593332i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593363i32;
                } else if (__value__ == (5593363i32)) {
                    _localPartBytes_5593363 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5593426i32;
                    } else {
                        _gotoNext = 5594930i32;
                    };
                } else if (__value__ == (5593426i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5593915i32;
                } else if (__value__ == (5593915i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5593931i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5593935i32;
                    } else {
                        _gotoNext = 5596275i32;
                    };
                } else if (__value__ == (5593935i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5593956i32;
                    } else {
                        _gotoNext = 5593992i32;
                    };
                } else if (__value__ == (5593956i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593992i32;
                } else if (__value__ == (5593992i32)) {
                    _c_5593992 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5594022i32;
                } else if (__value__ == (5594022i32)) {
                    if (_c_5593992 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5594034i32;
                    } else if (_c_5593992 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5594076i32;
                    } else if (((((((((_c_5593992 == ((11 : stdgo.GoUInt8)) || _c_5593992 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5593992 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5593992 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5593992 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5593992 : Bool) && (_c_5593992 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5593992 : Bool) && (_c_5593992 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5593992 : Bool) && (_c_5593992 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5593992 : Bool) && (_c_5593992 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5594399i32;
                    } else {
                        _gotoNext = 5594878i32;
                    };
                } else if (__value__ == (5594034i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5594076i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5594131i32;
                    } else {
                        _gotoNext = 5594170i32;
                    };
                } else if (__value__ == (5594131i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5594170i32;
                } else if (__value__ == (5594170i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5594278i32;
                    } else {
                        _gotoNext = 5594360i32;
                    };
                } else if (__value__ == (5594278i32)) {
                    _localPartBytes_5593363 = (_localPartBytes_5593363.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5594360i32)) {
                    _gotoNext = 5594360i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5594399i32)) {
                    _localPartBytes_5593363 = (_localPartBytes_5593363.__append__(_c_5593992));
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5594878i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5593931i32;
                } else if (__value__ == (5594930i32)) {
                    _gotoNext = 5594930i32;
                    _gotoNext = 5594955i32;
                } else if (__value__ == (5594955i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5594967i32;
                } else if (__value__ == (5594967i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5594983i32;
                    } else {
                        _gotoNext = 5595840i32;
                    };
                } else if (__value__ == (5594983i32)) {
                    _c_5595029 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5595044i32;
                } else if (__value__ == (5595044i32)) {
                    if (_c_5595029 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5595056i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5595029 : Bool) && (_c_5595029 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5595029 : Bool) && (_c_5595029 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5595029 : Bool) && (_c_5595029 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5595029 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5595029 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5595029 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5595379i32;
                    } else {
                        _gotoNext = 5595800i32;
                    };
                } else if (__value__ == (5595056i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5595324i32;
                    } else {
                        _gotoNext = 5595363i32;
                    };
                } else if (__value__ == (5595324i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5595363i32;
                } else if (__value__ == (5595363i32)) {
                    _gotoNext = 5595379i32;
                } else if (__value__ == (5595379i32)) {
                    _localPartBytes_5593363 = (_localPartBytes_5593363.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5594967i32;
                } else if (__value__ == (5595800i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5594967i32;
                } else if (__value__ == (5595840i32)) {
                    if ((_localPartBytes_5593363.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5595868i32;
                    } else {
                        _gotoNext = 5596084i32;
                    };
                } else if (__value__ == (5595868i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5596084i32;
                } else if (__value__ == (5596084i32)) {
                    _twoDots_5596084 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5593363[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5593363[((_localPartBytes_5593363.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5593363, _twoDots_5596084) : Bool)) {
                        _gotoNext = 5596239i32;
                    } else {
                        _gotoNext = 5596275i32;
                    };
                } else if (__value__ == (5596239i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5596275i32;
                } else if (__value__ == (5596275i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5596307i32;
                    } else {
                        _gotoNext = 5596337i32;
                    };
                } else if (__value__ == (5596307i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5596337i32;
                } else if (__value__ == (5596337i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5596511 = __tmp__._1;
                        };
                        if (!_ok_5596511) {
                            _gotoNext = 5596548i32;
                        } else {
                            _gotoNext = 5596579i32;
                        };
                    };
                } else if (__value__ == (5596548i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5596579i32;
                } else if (__value__ == (5596579i32)) {
                    _mailbox._local = (_localPartBytes_5593363 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
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
