package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5602684:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5602055:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5605203:Bool = false;
        var _twoDots_5604776:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5603721:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602024i32;
                    } else {
                        _gotoNext = 5602055i32;
                    };
                } else if (__value__ == (5602024i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602055i32;
                } else if (__value__ == (5602055i32)) {
                    _localPartBytes_5602055 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5602118i32;
                    } else {
                        _gotoNext = 5603622i32;
                    };
                } else if (__value__ == (5602118i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602607i32;
                } else if (__value__ == (5602607i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5602623i32;
                } else if (__value__ == (5602623i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5602627i32;
                    } else {
                        _gotoNext = 5604967i32;
                    };
                } else if (__value__ == (5602627i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602648i32;
                    } else {
                        _gotoNext = 5602684i32;
                    };
                } else if (__value__ == (5602648i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602684i32;
                } else if (__value__ == (5602684i32)) {
                    _c_5602684 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602714i32;
                } else if (__value__ == (5602714i32)) {
                    if (_c_5602684 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5602726i32;
                    } else if (_c_5602684 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5602768i32;
                    } else if (((((((((_c_5602684 == ((11 : stdgo.GoUInt8)) || _c_5602684 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5602684 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5602684 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5602684 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5602684 : Bool) && (_c_5602684 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5602684 : Bool) && (_c_5602684 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5602684 : Bool) && (_c_5602684 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5602684 : Bool) && (_c_5602684 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5603091i32;
                    } else {
                        _gotoNext = 5603570i32;
                    };
                } else if (__value__ == (5602726i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5602623i32;
                } else if (__value__ == (5602768i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602823i32;
                    } else {
                        _gotoNext = 5602862i32;
                    };
                } else if (__value__ == (5602823i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5602862i32;
                } else if (__value__ == (5602862i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5602970i32;
                    } else {
                        _gotoNext = 5603052i32;
                    };
                } else if (__value__ == (5602970i32)) {
                    _localPartBytes_5602055 = (_localPartBytes_5602055.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604967i32;
                } else if (__value__ == (5603052i32)) {
                    _gotoNext = 5603052i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5604967i32;
                } else if (__value__ == (5603091i32)) {
                    _localPartBytes_5602055 = (_localPartBytes_5602055.__append__(_c_5602684));
                    _gotoNext = 5604967i32;
                } else if (__value__ == (5603570i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604967i32;
                } else if (__value__ == (5603622i32)) {
                    _gotoNext = 5603622i32;
                    _gotoNext = 5603647i32;
                } else if (__value__ == (5603647i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5603659i32;
                } else if (__value__ == (5603659i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5603675i32;
                    } else {
                        _gotoNext = 5604532i32;
                    };
                } else if (__value__ == (5603675i32)) {
                    _c_5603721 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5603736i32;
                } else if (__value__ == (5603736i32)) {
                    if (_c_5603721 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5603748i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5603721 : Bool) && (_c_5603721 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5603721 : Bool) && (_c_5603721 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5603721 : Bool) && (_c_5603721 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5603721 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5603721 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5603721 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5604071i32;
                    } else {
                        _gotoNext = 5604492i32;
                    };
                } else if (__value__ == (5603748i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604016i32;
                    } else {
                        _gotoNext = 5604055i32;
                    };
                } else if (__value__ == (5604016i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604055i32;
                } else if (__value__ == (5604055i32)) {
                    _gotoNext = 5604071i32;
                } else if (__value__ == (5604071i32)) {
                    _localPartBytes_5602055 = (_localPartBytes_5602055.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5604532i32;
                } else if (__value__ == (5604492i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5603659i32;
                } else if (__value__ == (5604532i32)) {
                    if ((_localPartBytes_5602055.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5604560i32;
                    } else {
                        _gotoNext = 5604776i32;
                    };
                } else if (__value__ == (5604560i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604776i32;
                } else if (__value__ == (5604776i32)) {
                    _twoDots_5604776 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5602055[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5602055[((_localPartBytes_5602055.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5602055, _twoDots_5604776) : Bool)) {
                        _gotoNext = 5604931i32;
                    } else {
                        _gotoNext = 5604967i32;
                    };
                } else if (__value__ == (5604931i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5604967i32;
                } else if (__value__ == (5604967i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5604999i32;
                    } else {
                        _gotoNext = 5605029i32;
                    };
                } else if (__value__ == (5604999i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605029i32;
                } else if (__value__ == (5605029i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5605203 = __tmp__._1;
                        };
                        if (!_ok_5605203) {
                            _gotoNext = 5605240i32;
                        } else {
                            _gotoNext = 5605271i32;
                        };
                    };
                } else if (__value__ == (5605240i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5605271i32;
                } else if (__value__ == (5605271i32)) {
                    _mailbox._local = (_localPartBytes_5602055 : stdgo.GoString)?.__copy__();
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
