package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _twoDots_5490963:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5489908:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5488871:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5488242:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5491390:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5488211i32;
                    } else {
                        _gotoNext = 5488242i32;
                    };
                } else if (__value__ == (5488211i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5488242i32;
                } else if (__value__ == (5488242i32)) {
                    _localPartBytes_5488242 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5488305i32;
                    } else {
                        _gotoNext = 5489809i32;
                    };
                } else if (__value__ == (5488305i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5488794i32;
                } else if (__value__ == (5488794i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5488810i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5488814i32;
                    } else {
                        _gotoNext = 5491154i32;
                    };
                } else if (__value__ == (5488814i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5488835i32;
                    } else {
                        _gotoNext = 5488871i32;
                    };
                } else if (__value__ == (5488835i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5488871i32;
                } else if (__value__ == (5488871i32)) {
                    _c_5488871 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5488901i32;
                } else if (__value__ == (5488901i32)) {
                    if (_c_5488871 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5488913i32;
                    } else if (_c_5488871 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5488955i32;
                    } else if (((((((((_c_5488871 == ((11 : stdgo.GoUInt8)) || _c_5488871 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5488871 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5488871 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5488871 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5488871 : Bool) && (_c_5488871 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5488871 : Bool) && (_c_5488871 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5488871 : Bool) && (_c_5488871 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5488871 : Bool) && (_c_5488871 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5489278i32;
                    } else {
                        _gotoNext = 5489757i32;
                    };
                } else if (__value__ == (5488913i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5488955i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5489010i32;
                    } else {
                        _gotoNext = 5489049i32;
                    };
                } else if (__value__ == (5489010i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5489049i32;
                } else if (__value__ == (5489049i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5489157i32;
                    } else {
                        _gotoNext = 5489239i32;
                    };
                } else if (__value__ == (5489157i32)) {
                    _localPartBytes_5488242 = (_localPartBytes_5488242.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5489239i32)) {
                    _gotoNext = 5489239i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5489278i32)) {
                    _localPartBytes_5488242 = (_localPartBytes_5488242.__append__(_c_5488871));
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5489757i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5488810i32;
                } else if (__value__ == (5489809i32)) {
                    _gotoNext = 5489809i32;
                    _gotoNext = 5489834i32;
                } else if (__value__ == (5489834i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5489846i32;
                } else if (__value__ == (5489846i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5489862i32;
                    } else {
                        _gotoNext = 5490719i32;
                    };
                } else if (__value__ == (5489862i32)) {
                    _c_5489908 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5489923i32;
                } else if (__value__ == (5489923i32)) {
                    if (_c_5489908 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5489935i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5489908 : Bool) && (_c_5489908 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5489908 : Bool) && (_c_5489908 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5489908 : Bool) && (_c_5489908 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5489908 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5489908 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5489908 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5490258i32;
                    } else {
                        _gotoNext = 5490679i32;
                    };
                } else if (__value__ == (5489935i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5490203i32;
                    } else {
                        _gotoNext = 5490242i32;
                    };
                } else if (__value__ == (5490203i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5490242i32;
                } else if (__value__ == (5490242i32)) {
                    _gotoNext = 5490258i32;
                } else if (__value__ == (5490258i32)) {
                    _localPartBytes_5488242 = (_localPartBytes_5488242.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5489846i32;
                } else if (__value__ == (5490679i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5489846i32;
                } else if (__value__ == (5490719i32)) {
                    if ((_localPartBytes_5488242.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5490747i32;
                    } else {
                        _gotoNext = 5490963i32;
                    };
                } else if (__value__ == (5490747i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5490963i32;
                } else if (__value__ == (5490963i32)) {
                    _twoDots_5490963 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5488242[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5488242[((_localPartBytes_5488242.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5488242, _twoDots_5490963) : Bool)) {
                        _gotoNext = 5491118i32;
                    } else {
                        _gotoNext = 5491154i32;
                    };
                } else if (__value__ == (5491118i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491154i32;
                } else if (__value__ == (5491154i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5491186i32;
                    } else {
                        _gotoNext = 5491216i32;
                    };
                } else if (__value__ == (5491186i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491216i32;
                } else if (__value__ == (5491216i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5491390 = __tmp__._1;
                        };
                        if (!_ok_5491390) {
                            _gotoNext = 5491427i32;
                        } else {
                            _gotoNext = 5491458i32;
                        };
                    };
                } else if (__value__ == (5491427i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5491458i32;
                } else if (__value__ == (5491458i32)) {
                    _mailbox._local = (_localPartBytes_5488242 : stdgo.GoString)?.__copy__();
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
