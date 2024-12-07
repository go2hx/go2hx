package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _twoDots_5605035:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5603980:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5602943:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5602314:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5605462:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602283i32;
                    } else {
                        _gotoNext = 5602314i32;
                    };
                } else if (__value__ == (5602283i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602314i32;
                } else if (__value__ == (5602314i32)) {
                    _localPartBytes_5602314 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5602377i32;
                    } else {
                        _gotoNext = 5603881i32;
                    };
                } else if (__value__ == (5602377i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602866i32;
                } else if (__value__ == (5602866i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5602882i32;
                } else if (__value__ == (5602882i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5602886i32;
                    } else {
                        _gotoNext = 5605226i32;
                    };
                } else if (__value__ == (5602886i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602907i32;
                    } else {
                        _gotoNext = 5602943i32;
                    };
                } else if (__value__ == (5602907i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602943i32;
                } else if (__value__ == (5602943i32)) {
                    _c_5602943 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602973i32;
                } else if (__value__ == (5602973i32)) {
                    if (_c_5602943 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5602985i32;
                    } else if (_c_5602943 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5603027i32;
                    } else if (((((((((_c_5602943 == ((11 : stdgo.GoUInt8)) || _c_5602943 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5602943 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5602943 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5602943 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5602943 : Bool) && (_c_5602943 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5602943 : Bool) && (_c_5602943 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5602943 : Bool) && (_c_5602943 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5602943 : Bool) && (_c_5602943 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5603350i32;
                    } else {
                        _gotoNext = 5603829i32;
                    };
                } else if (__value__ == (5602985i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5602882i32;
                } else if (__value__ == (5603027i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5603082i32;
                    } else {
                        _gotoNext = 5603121i32;
                    };
                } else if (__value__ == (5603082i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5603121i32;
                } else if (__value__ == (5603121i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5603229i32;
                    } else {
                        _gotoNext = 5603311i32;
                    };
                } else if (__value__ == (5603229i32)) {
                    _localPartBytes_5602314 = (_localPartBytes_5602314.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5605226i32;
                } else if (__value__ == (5603311i32)) {
                    _gotoNext = 5603311i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5605226i32;
                } else if (__value__ == (5603350i32)) {
                    _localPartBytes_5602314 = (_localPartBytes_5602314.__append__(_c_5602943));
                    _gotoNext = 5605226i32;
                } else if (__value__ == (5603829i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605226i32;
                } else if (__value__ == (5603881i32)) {
                    _gotoNext = 5603881i32;
                    _gotoNext = 5603906i32;
                } else if (__value__ == (5603906i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5603918i32;
                } else if (__value__ == (5603918i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5603934i32;
                    } else {
                        _gotoNext = 5604791i32;
                    };
                } else if (__value__ == (5603934i32)) {
                    _c_5603980 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5603995i32;
                } else if (__value__ == (5603995i32)) {
                    if (_c_5603980 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5604007i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5603980 : Bool) && (_c_5603980 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5603980 : Bool) && (_c_5603980 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5603980 : Bool) && (_c_5603980 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5603980 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5603980 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5603980 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5604330i32;
                    } else {
                        _gotoNext = 5604751i32;
                    };
                } else if (__value__ == (5604007i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604275i32;
                    } else {
                        _gotoNext = 5604314i32;
                    };
                } else if (__value__ == (5604275i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604314i32;
                } else if (__value__ == (5604314i32)) {
                    _gotoNext = 5604330i32;
                } else if (__value__ == (5604330i32)) {
                    _localPartBytes_5602314 = (_localPartBytes_5602314.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604791i32;
                } else if (__value__ == (5604751i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5603918i32;
                } else if (__value__ == (5604791i32)) {
                    if ((_localPartBytes_5602314.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604819i32;
                    } else {
                        _gotoNext = 5605035i32;
                    };
                } else if (__value__ == (5604819i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605035i32;
                } else if (__value__ == (5605035i32)) {
                    _twoDots_5605035 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5602314[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5602314[((_localPartBytes_5602314.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5602314, _twoDots_5605035) : Bool)) {
                        _gotoNext = 5605190i32;
                    } else {
                        _gotoNext = 5605226i32;
                    };
                } else if (__value__ == (5605190i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605226i32;
                } else if (__value__ == (5605226i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5605258i32;
                    } else {
                        _gotoNext = 5605288i32;
                    };
                } else if (__value__ == (5605258i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605288i32;
                } else if (__value__ == (5605288i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5605462 = __tmp__._1;
                        };
                        if (!_ok_5605462) {
                            _gotoNext = 5605499i32;
                        } else {
                            _gotoNext = 5605530i32;
                        };
                    };
                } else if (__value__ == (5605499i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605530i32;
                } else if (__value__ == (5605530i32)) {
                    _mailbox._local = (_localPartBytes_5602314 : stdgo.GoString)?.__copy__();
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
