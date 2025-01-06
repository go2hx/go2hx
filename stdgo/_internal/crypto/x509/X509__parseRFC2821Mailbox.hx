package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5551418:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5550789:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5553937:Bool = false;
        var _twoDots_5553510:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5552455:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5550758i32;
                    } else {
                        _gotoNext = 5550789i32;
                    };
                } else if (__value__ == (5550758i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5550789i32;
                } else if (__value__ == (5550789i32)) {
                    _localPartBytes_5550789 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5550852i32;
                    } else {
                        _gotoNext = 5552356i32;
                    };
                } else if (__value__ == (5550852i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5551341i32;
                } else if (__value__ == (5551341i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5551357i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5551361i32;
                    } else {
                        _gotoNext = 5553701i32;
                    };
                } else if (__value__ == (5551361i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5551382i32;
                    } else {
                        _gotoNext = 5551418i32;
                    };
                } else if (__value__ == (5551382i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5551418i32;
                } else if (__value__ == (5551418i32)) {
                    _c_5551418 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5551448i32;
                } else if (__value__ == (5551448i32)) {
                    if (_c_5551418 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5551460i32;
                    } else if (_c_5551418 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5551502i32;
                    } else if (((((((((_c_5551418 == ((11 : stdgo.GoUInt8)) || _c_5551418 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5551418 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5551418 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5551418 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5551418 : Bool) && (_c_5551418 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5551418 : Bool) && (_c_5551418 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5551418 : Bool) && (_c_5551418 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5551418 : Bool) && (_c_5551418 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5551825i32;
                    } else {
                        _gotoNext = 5552304i32;
                    };
                } else if (__value__ == (5551460i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5551502i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5551557i32;
                    } else {
                        _gotoNext = 5551596i32;
                    };
                } else if (__value__ == (5551557i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5551596i32;
                } else if (__value__ == (5551596i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5551704i32;
                    } else {
                        _gotoNext = 5551786i32;
                    };
                } else if (__value__ == (5551704i32)) {
                    _localPartBytes_5550789 = (_localPartBytes_5550789.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5551786i32)) {
                    _gotoNext = 5551786i32;
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    var __blank__ = 0i32;
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5551825i32)) {
                    _localPartBytes_5550789 = (_localPartBytes_5550789.__append__(_c_5551418));
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5552304i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5551357i32;
                } else if (__value__ == (5552356i32)) {
                    _gotoNext = 5552356i32;
                    _gotoNext = 5552381i32;
                } else if (__value__ == (5552381i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5552393i32;
                } else if (__value__ == (5552393i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5552409i32;
                    } else {
                        _gotoNext = 5553266i32;
                    };
                } else if (__value__ == (5552409i32)) {
                    _c_5552455 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5552470i32;
                } else if (__value__ == (5552470i32)) {
                    if (_c_5552455 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5552482i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5552455 : Bool) && (_c_5552455 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5552455 : Bool) && (_c_5552455 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5552455 : Bool) && (_c_5552455 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5552455 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5552455 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5552455 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5552805i32;
                    } else {
                        _gotoNext = 5553226i32;
                    };
                } else if (__value__ == (5552482i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5552750i32;
                    } else {
                        _gotoNext = 5552789i32;
                    };
                } else if (__value__ == (5552750i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5552789i32;
                } else if (__value__ == (5552789i32)) {
                    _gotoNext = 5552805i32;
                } else if (__value__ == (5552805i32)) {
                    _localPartBytes_5550789 = (_localPartBytes_5550789.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5552393i32;
                } else if (__value__ == (5553226i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5552393i32;
                } else if (__value__ == (5553266i32)) {
                    if ((_localPartBytes_5550789.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5553294i32;
                    } else {
                        _gotoNext = 5553510i32;
                    };
                } else if (__value__ == (5553294i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553510i32;
                } else if (__value__ == (5553510i32)) {
                    _twoDots_5553510 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5550789[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5550789[((_localPartBytes_5550789.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5550789, _twoDots_5553510) : Bool)) {
                        _gotoNext = 5553665i32;
                    } else {
                        _gotoNext = 5553701i32;
                    };
                } else if (__value__ == (5553665i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553701i32;
                } else if (__value__ == (5553701i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5553733i32;
                    } else {
                        _gotoNext = 5553763i32;
                    };
                } else if (__value__ == (5553733i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553763i32;
                } else if (__value__ == (5553763i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5553937 = __tmp__._1;
                        };
                        if (!_ok_5553937) {
                            _gotoNext = 5553974i32;
                        } else {
                            _gotoNext = 5554005i32;
                        };
                    };
                } else if (__value__ == (5553974i32)) {
                    return {
                        final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5554005i32;
                } else if (__value__ == (5554005i32)) {
                    _mailbox._local = (_localPartBytes_5550789 : stdgo.GoString)?.__copy__();
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
