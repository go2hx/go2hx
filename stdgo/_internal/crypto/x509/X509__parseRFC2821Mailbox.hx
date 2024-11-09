package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5522909:Bool = false;
        var _twoDots_5522482:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5521427:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5520390:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5519761:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5519730i32;
                    } else {
                        _gotoNext = 5519761i32;
                    };
                } else if (__value__ == (5519730i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5519761i32;
                } else if (__value__ == (5519761i32)) {
                    _localPartBytes_5519761 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5519824i32;
                    } else {
                        _gotoNext = 5521328i32;
                    };
                } else if (__value__ == (5519824i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5520313i32;
                } else if (__value__ == (5520313i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5520329i32;
                } else if (__value__ == (5520329i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5520333i32;
                    } else {
                        _gotoNext = 5522673i32;
                    };
                } else if (__value__ == (5520333i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5520354i32;
                    } else {
                        _gotoNext = 5520390i32;
                    };
                } else if (__value__ == (5520354i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5520390i32;
                } else if (__value__ == (5520390i32)) {
                    _c_5520390 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 5520420i32;
                } else if (__value__ == (5520420i32)) {
                    if (_c_5520390 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5520432i32;
                    } else if (_c_5520390 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5520474i32;
                    } else if (((((((((_c_5520390 == ((11 : stdgo.GoUInt8)) || _c_5520390 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5520390 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5520390 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5520390 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5520390 : Bool) && (_c_5520390 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5520390 : Bool) && (_c_5520390 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5520390 : Bool) && (_c_5520390 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5520390 : Bool) && (_c_5520390 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5520797i32;
                    } else {
                        _gotoNext = 5521276i32;
                    };
                } else if (__value__ == (5520432i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5520329i32;
                } else if (__value__ == (5520474i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5520529i32;
                    } else {
                        _gotoNext = 5520568i32;
                    };
                } else if (__value__ == (5520529i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5520568i32;
                } else if (__value__ == (5520568i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5520676i32;
                    } else {
                        _gotoNext = 5520758i32;
                    };
                } else if (__value__ == (5520676i32)) {
                    _localPartBytes_5519761 = (_localPartBytes_5519761.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5522673i32;
                } else if (__value__ == (5520758i32)) {
                    _gotoNext = 5520758i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5522673i32;
                } else if (__value__ == (5520797i32)) {
                    _localPartBytes_5519761 = (_localPartBytes_5519761.__append__(_c_5520390));
                    _gotoNext = 5522673i32;
                } else if (__value__ == (5521276i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5522673i32;
                } else if (__value__ == (5521328i32)) {
                    _gotoNext = 5521328i32;
                    _gotoNext = 5521353i32;
                } else if (__value__ == (5521353i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5521365i32;
                } else if (__value__ == (5521365i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5521381i32;
                    } else {
                        _gotoNext = 5522238i32;
                    };
                } else if (__value__ == (5521381i32)) {
                    _c_5521427 = _in[(0 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 5521442i32;
                } else if (__value__ == (5521442i32)) {
                    if (_c_5521427 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5521454i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5521427 : Bool) && (_c_5521427 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5521427 : Bool) && (_c_5521427 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5521427 : Bool) && (_c_5521427 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5521427 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5521427 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5521427 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5521777i32;
                    } else {
                        _gotoNext = 5522198i32;
                    };
                } else if (__value__ == (5521454i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5521722i32;
                    } else {
                        _gotoNext = 5521761i32;
                    };
                } else if (__value__ == (5521722i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5521761i32;
                } else if (__value__ == (5521761i32)) {
                    _gotoNext = 5521777i32;
                } else if (__value__ == (5521777i32)) {
                    _localPartBytes_5519761 = (_localPartBytes_5519761.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5522238i32;
                } else if (__value__ == (5522198i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5521365i32;
                } else if (__value__ == (5522238i32)) {
                    if ((_localPartBytes_5519761.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5522266i32;
                    } else {
                        _gotoNext = 5522482i32;
                    };
                } else if (__value__ == (5522266i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5522482i32;
                } else if (__value__ == (5522482i32)) {
                    _twoDots_5522482 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5519761[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5519761[((_localPartBytes_5519761.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5519761, _twoDots_5522482) : Bool)) {
                        _gotoNext = 5522637i32;
                    } else {
                        _gotoNext = 5522673i32;
                    };
                } else if (__value__ == (5522637i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5522673i32;
                } else if (__value__ == (5522673i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5522705i32;
                    } else {
                        _gotoNext = 5522735i32;
                    };
                } else if (__value__ == (5522705i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5522735i32;
                } else if (__value__ == (5522735i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5522909 = __tmp__._1;
                        };
                        if (!_ok_5522909) {
                            _gotoNext = 5522946i32;
                        } else {
                            _gotoNext = 5522977i32;
                        };
                    };
                } else if (__value__ == (5522946i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5522977i32;
                } else if (__value__ == (5522977i32)) {
                    _mailbox._local = (_localPartBytes_5519761 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
