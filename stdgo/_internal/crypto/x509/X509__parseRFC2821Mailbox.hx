package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5520826:Bool = false;
        var _twoDots_5520399:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5519344:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5518307:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5517678:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5517647i32;
                    } else {
                        _gotoNext = 5517678i32;
                    };
                } else if (__value__ == (5517647i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5517678i32;
                } else if (__value__ == (5517678i32)) {
                    _localPartBytes_5517678 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5517741i32;
                    } else {
                        _gotoNext = 5519245i32;
                    };
                } else if (__value__ == (5517741i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518230i32;
                } else if (__value__ == (5518230i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5518246i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5518250i32;
                    } else {
                        _gotoNext = 5520590i32;
                    };
                } else if (__value__ == (5518250i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5518271i32;
                    } else {
                        _gotoNext = 5518307i32;
                    };
                } else if (__value__ == (5518271i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518307i32;
                } else if (__value__ == (5518307i32)) {
                    _c_5518307 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518337i32;
                } else if (__value__ == (5518337i32)) {
                    if (_c_5518307 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5518349i32;
                    } else if (_c_5518307 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5518391i32;
                    } else if (((((((((_c_5518307 == ((11 : stdgo.GoUInt8)) || _c_5518307 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5518307 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5518307 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5518307 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5518307 : Bool) && (_c_5518307 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5518307 : Bool) && (_c_5518307 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5518307 : Bool) && (_c_5518307 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5518307 : Bool) && (_c_5518307 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5518714i32;
                    } else {
                        _gotoNext = 5519193i32;
                    };
                } else if (__value__ == (5518349i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5518391i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5518446i32;
                    } else {
                        _gotoNext = 5518485i32;
                    };
                } else if (__value__ == (5518446i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518485i32;
                } else if (__value__ == (5518485i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5518593i32;
                    } else {
                        _gotoNext = 5518675i32;
                    };
                } else if (__value__ == (5518593i32)) {
                    _localPartBytes_5517678 = (_localPartBytes_5517678.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5518675i32)) {
                    _gotoNext = 5518675i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5518714i32)) {
                    _localPartBytes_5517678 = (_localPartBytes_5517678.__append__(_c_5518307));
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5519193i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5518246i32;
                } else if (__value__ == (5519245i32)) {
                    _gotoNext = 5519245i32;
                    _gotoNext = 5519270i32;
                } else if (__value__ == (5519270i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5519282i32;
                } else if (__value__ == (5519282i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5519298i32;
                    } else {
                        _gotoNext = 5520155i32;
                    };
                } else if (__value__ == (5519298i32)) {
                    _c_5519344 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5519359i32;
                } else if (__value__ == (5519359i32)) {
                    if (_c_5519344 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5519371i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5519344 : Bool) && (_c_5519344 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5519344 : Bool) && (_c_5519344 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5519344 : Bool) && (_c_5519344 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5519344 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5519344 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5519344 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5519694i32;
                    } else {
                        _gotoNext = 5520115i32;
                    };
                } else if (__value__ == (5519371i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5519639i32;
                    } else {
                        _gotoNext = 5519678i32;
                    };
                } else if (__value__ == (5519639i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5519678i32;
                } else if (__value__ == (5519678i32)) {
                    _gotoNext = 5519694i32;
                } else if (__value__ == (5519694i32)) {
                    _localPartBytes_5517678 = (_localPartBytes_5517678.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5519282i32;
                } else if (__value__ == (5520115i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5519282i32;
                } else if (__value__ == (5520155i32)) {
                    if ((_localPartBytes_5517678.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5520183i32;
                    } else {
                        _gotoNext = 5520399i32;
                    };
                } else if (__value__ == (5520183i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520399i32;
                } else if (__value__ == (5520399i32)) {
                    _twoDots_5520399 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5517678[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5517678[((_localPartBytes_5517678.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5517678, _twoDots_5520399) : Bool)) {
                        _gotoNext = 5520554i32;
                    } else {
                        _gotoNext = 5520590i32;
                    };
                } else if (__value__ == (5520554i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520590i32;
                } else if (__value__ == (5520590i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5520622i32;
                    } else {
                        _gotoNext = 5520652i32;
                    };
                } else if (__value__ == (5520622i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520652i32;
                } else if (__value__ == (5520652i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5520826 = __tmp__._1;
                        };
                        if (!_ok_5520826) {
                            _gotoNext = 5520863i32;
                        } else {
                            _gotoNext = 5520894i32;
                        };
                    };
                } else if (__value__ == (5520863i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520894i32;
                } else if (__value__ == (5520894i32)) {
                    _mailbox._local = (_localPartBytes_5517678 : stdgo.GoString)?.__copy__();
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
