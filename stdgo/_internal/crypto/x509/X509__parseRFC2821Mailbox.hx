package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5522586:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5521549:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5520920:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5524068:Bool = false;
        var _twoDots_5523641:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5520889i32;
                    } else {
                        _gotoNext = 5520920i32;
                    };
                } else if (__value__ == (5520889i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5520920i32;
                } else if (__value__ == (5520920i32)) {
                    _localPartBytes_5520920 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5520983i32;
                    } else {
                        _gotoNext = 5522487i32;
                    };
                } else if (__value__ == (5520983i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5521472i32;
                } else if (__value__ == (5521472i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5521488i32;
                } else if (__value__ == (5521488i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5521492i32;
                    } else {
                        _gotoNext = 5523832i32;
                    };
                } else if (__value__ == (5521492i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5521513i32;
                    } else {
                        _gotoNext = 5521549i32;
                    };
                } else if (__value__ == (5521513i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5521549i32;
                } else if (__value__ == (5521549i32)) {
                    _c_5521549 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5521579i32;
                } else if (__value__ == (5521579i32)) {
                    if (_c_5521549 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5521591i32;
                    } else if (_c_5521549 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5521633i32;
                    } else if (((((((((_c_5521549 == ((11 : stdgo.GoUInt8)) || _c_5521549 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5521549 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5521549 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5521549 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5521549 : Bool) && (_c_5521549 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5521549 : Bool) && (_c_5521549 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5521549 : Bool) && (_c_5521549 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5521549 : Bool) && (_c_5521549 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5521956i32;
                    } else {
                        _gotoNext = 5522435i32;
                    };
                } else if (__value__ == (5521591i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5521488i32;
                } else if (__value__ == (5521633i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5521688i32;
                    } else {
                        _gotoNext = 5521727i32;
                    };
                } else if (__value__ == (5521688i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5521727i32;
                } else if (__value__ == (5521727i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5521835i32;
                    } else {
                        _gotoNext = 5521917i32;
                    };
                } else if (__value__ == (5521835i32)) {
                    _localPartBytes_5520920 = (_localPartBytes_5520920.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5523832i32;
                } else if (__value__ == (5521917i32)) {
                    _gotoNext = 5521917i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5523832i32;
                } else if (__value__ == (5521956i32)) {
                    _localPartBytes_5520920 = (_localPartBytes_5520920.__append__(_c_5521549));
                    _gotoNext = 5523832i32;
                } else if (__value__ == (5522435i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5523832i32;
                } else if (__value__ == (5522487i32)) {
                    _gotoNext = 5522487i32;
                    _gotoNext = 5522512i32;
                } else if (__value__ == (5522512i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5522524i32;
                } else if (__value__ == (5522524i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5522540i32;
                    } else {
                        _gotoNext = 5523397i32;
                    };
                } else if (__value__ == (5522540i32)) {
                    _c_5522586 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5522601i32;
                } else if (__value__ == (5522601i32)) {
                    if (_c_5522586 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5522613i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5522586 : Bool) && (_c_5522586 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5522586 : Bool) && (_c_5522586 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5522586 : Bool) && (_c_5522586 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5522586 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5522586 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5522586 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5522936i32;
                    } else {
                        _gotoNext = 5523357i32;
                    };
                } else if (__value__ == (5522613i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5522881i32;
                    } else {
                        _gotoNext = 5522920i32;
                    };
                } else if (__value__ == (5522881i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5522920i32;
                } else if (__value__ == (5522920i32)) {
                    _gotoNext = 5522936i32;
                } else if (__value__ == (5522936i32)) {
                    _localPartBytes_5520920 = (_localPartBytes_5520920.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5523397i32;
                } else if (__value__ == (5523357i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5522524i32;
                } else if (__value__ == (5523397i32)) {
                    if ((_localPartBytes_5520920.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5523425i32;
                    } else {
                        _gotoNext = 5523641i32;
                    };
                } else if (__value__ == (5523425i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5523641i32;
                } else if (__value__ == (5523641i32)) {
                    _twoDots_5523641 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5520920[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5520920[((_localPartBytes_5520920.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5520920, _twoDots_5523641) : Bool)) {
                        _gotoNext = 5523796i32;
                    } else {
                        _gotoNext = 5523832i32;
                    };
                } else if (__value__ == (5523796i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5523832i32;
                } else if (__value__ == (5523832i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5523864i32;
                    } else {
                        _gotoNext = 5523894i32;
                    };
                } else if (__value__ == (5523864i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5523894i32;
                } else if (__value__ == (5523894i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5524068 = __tmp__._1;
                        };
                        if (!_ok_5524068) {
                            _gotoNext = 5524105i32;
                        } else {
                            _gotoNext = 5524136i32;
                        };
                    };
                } else if (__value__ == (5524105i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5524136i32;
                } else if (__value__ == (5524136i32)) {
                    _mailbox._local = (_localPartBytes_5520920 : stdgo.GoString)?.__copy__();
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
