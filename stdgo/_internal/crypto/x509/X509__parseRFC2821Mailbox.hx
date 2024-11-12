package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5528831:Bool = false;
        var _twoDots_5528404:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5527349:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5526312:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5525683:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5525652i32;
                    } else {
                        _gotoNext = 5525683i32;
                    };
                } else if (__value__ == (5525652i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5525683i32;
                } else if (__value__ == (5525683i32)) {
                    _localPartBytes_5525683 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5525746i32;
                    } else {
                        _gotoNext = 5527250i32;
                    };
                } else if (__value__ == (5525746i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5526235i32;
                } else if (__value__ == (5526235i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5526251i32;
                } else if (__value__ == (5526251i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5526255i32;
                    } else {
                        _gotoNext = 5528595i32;
                    };
                } else if (__value__ == (5526255i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5526276i32;
                    } else {
                        _gotoNext = 5526312i32;
                    };
                } else if (__value__ == (5526276i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5526312i32;
                } else if (__value__ == (5526312i32)) {
                    _c_5526312 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5526342i32;
                } else if (__value__ == (5526342i32)) {
                    if (_c_5526312 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5526354i32;
                    } else if (_c_5526312 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5526396i32;
                    } else if (((((((((_c_5526312 == ((11 : stdgo.GoUInt8)) || _c_5526312 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5526312 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5526312 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5526312 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5526312 : Bool) && (_c_5526312 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5526312 : Bool) && (_c_5526312 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5526312 : Bool) && (_c_5526312 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5526312 : Bool) && (_c_5526312 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5526719i32;
                    } else {
                        _gotoNext = 5527198i32;
                    };
                } else if (__value__ == (5526354i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5526251i32;
                } else if (__value__ == (5526396i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5526451i32;
                    } else {
                        _gotoNext = 5526490i32;
                    };
                } else if (__value__ == (5526451i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5526490i32;
                } else if (__value__ == (5526490i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5526598i32;
                    } else {
                        _gotoNext = 5526680i32;
                    };
                } else if (__value__ == (5526598i32)) {
                    _localPartBytes_5525683 = (_localPartBytes_5525683.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5528595i32;
                } else if (__value__ == (5526680i32)) {
                    _gotoNext = 5526680i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5528595i32;
                } else if (__value__ == (5526719i32)) {
                    _localPartBytes_5525683 = (_localPartBytes_5525683.__append__(_c_5526312));
                    _gotoNext = 5528595i32;
                } else if (__value__ == (5527198i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5528595i32;
                } else if (__value__ == (5527250i32)) {
                    _gotoNext = 5527250i32;
                    _gotoNext = 5527275i32;
                } else if (__value__ == (5527275i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5527287i32;
                } else if (__value__ == (5527287i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5527303i32;
                    } else {
                        _gotoNext = 5528160i32;
                    };
                } else if (__value__ == (5527303i32)) {
                    _c_5527349 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5527364i32;
                } else if (__value__ == (5527364i32)) {
                    if (_c_5527349 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5527376i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5527349 : Bool) && (_c_5527349 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5527349 : Bool) && (_c_5527349 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5527349 : Bool) && (_c_5527349 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5527349 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5527349 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5527349 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5527699i32;
                    } else {
                        _gotoNext = 5528120i32;
                    };
                } else if (__value__ == (5527376i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5527644i32;
                    } else {
                        _gotoNext = 5527683i32;
                    };
                } else if (__value__ == (5527644i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5527683i32;
                } else if (__value__ == (5527683i32)) {
                    _gotoNext = 5527699i32;
                } else if (__value__ == (5527699i32)) {
                    _localPartBytes_5525683 = (_localPartBytes_5525683.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5528160i32;
                } else if (__value__ == (5528120i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5527287i32;
                } else if (__value__ == (5528160i32)) {
                    if ((_localPartBytes_5525683.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5528188i32;
                    } else {
                        _gotoNext = 5528404i32;
                    };
                } else if (__value__ == (5528188i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5528404i32;
                } else if (__value__ == (5528404i32)) {
                    _twoDots_5528404 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5525683[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5525683[((_localPartBytes_5525683.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5525683, _twoDots_5528404) : Bool)) {
                        _gotoNext = 5528559i32;
                    } else {
                        _gotoNext = 5528595i32;
                    };
                } else if (__value__ == (5528559i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5528595i32;
                } else if (__value__ == (5528595i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5528627i32;
                    } else {
                        _gotoNext = 5528657i32;
                    };
                } else if (__value__ == (5528627i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5528657i32;
                } else if (__value__ == (5528657i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5528831 = __tmp__._1;
                        };
                        if (!_ok_5528831) {
                            _gotoNext = 5528868i32;
                        } else {
                            _gotoNext = 5528899i32;
                        };
                    };
                } else if (__value__ == (5528868i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5528899i32;
                } else if (__value__ == (5528899i32)) {
                    _mailbox._local = (_localPartBytes_5525683 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
