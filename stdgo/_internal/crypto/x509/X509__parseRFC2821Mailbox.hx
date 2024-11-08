package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5597551:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5600699:Bool = false;
        var _twoDots_5600272:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5599217:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5598180:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5597520i32;
                    } else {
                        _gotoNext = 5597551i32;
                    };
                } else if (__value__ == (5597520i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5597551i32;
                } else if (__value__ == (5597551i32)) {
                    _localPartBytes_5597551 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5597614i32;
                    } else {
                        _gotoNext = 5599118i32;
                    };
                } else if (__value__ == (5597614i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5598103i32;
                } else if (__value__ == (5598103i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5598119i32;
                } else if (__value__ == (5598119i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5598123i32;
                    } else {
                        _gotoNext = 5600463i32;
                    };
                } else if (__value__ == (5598123i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598144i32;
                    } else {
                        _gotoNext = 5598180i32;
                    };
                } else if (__value__ == (5598144i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5598180i32;
                } else if (__value__ == (5598180i32)) {
                    _c_5598180 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 5598210i32;
                } else if (__value__ == (5598210i32)) {
                    if (_c_5598180 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5598222i32;
                    } else if (_c_5598180 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5598264i32;
                    } else if (((((((((_c_5598180 == ((11 : stdgo.GoUInt8)) || _c_5598180 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5598180 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5598180 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5598180 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5598180 : Bool) && (_c_5598180 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5598180 : Bool) && (_c_5598180 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5598180 : Bool) && (_c_5598180 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5598180 : Bool) && (_c_5598180 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5598587i32;
                    } else {
                        _gotoNext = 5599066i32;
                    };
                } else if (__value__ == (5598222i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5598119i32;
                } else if (__value__ == (5598264i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598319i32;
                    } else {
                        _gotoNext = 5598358i32;
                    };
                } else if (__value__ == (5598319i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5598358i32;
                } else if (__value__ == (5598358i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5598466i32;
                    } else {
                        _gotoNext = 5598548i32;
                    };
                } else if (__value__ == (5598466i32)) {
                    _localPartBytes_5597551 = (_localPartBytes_5597551.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5600463i32;
                } else if (__value__ == (5598548i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5600463i32;
                } else if (__value__ == (5598587i32)) {
                    _localPartBytes_5597551 = (_localPartBytes_5597551.__append__(_c_5598180));
                    _gotoNext = 5600463i32;
                } else if (__value__ == (5599066i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600463i32;
                } else if (__value__ == (5599118i32)) {
                    _gotoNext = 5599143i32;
                } else if (__value__ == (5599143i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5599155i32;
                } else if (__value__ == (5599155i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5599171i32;
                    } else {
                        _gotoNext = 5600028i32;
                    };
                } else if (__value__ == (5599171i32)) {
                    _c_5599217 = _in[(0 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 5599232i32;
                } else if (__value__ == (5599232i32)) {
                    if (_c_5599217 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5599244i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5599217 : Bool) && (_c_5599217 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5599217 : Bool) && (_c_5599217 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5599217 : Bool) && (_c_5599217 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5599217 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5599217 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5599217 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5599567i32;
                    } else {
                        _gotoNext = 5599988i32;
                    };
                } else if (__value__ == (5599244i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5599512i32;
                    } else {
                        _gotoNext = 5599551i32;
                    };
                } else if (__value__ == (5599512i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5599551i32;
                } else if (__value__ == (5599551i32)) {
                    _gotoNext = 5599567i32;
                } else if (__value__ == (5599567i32)) {
                    _localPartBytes_5597551 = (_localPartBytes_5597551.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5600028i32;
                } else if (__value__ == (5599988i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5599155i32;
                } else if (__value__ == (5600028i32)) {
                    if ((_localPartBytes_5597551.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5600056i32;
                    } else {
                        _gotoNext = 5600272i32;
                    };
                } else if (__value__ == (5600056i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600272i32;
                } else if (__value__ == (5600272i32)) {
                    _twoDots_5600272 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5597551[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5597551[((_localPartBytes_5597551.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5597551, _twoDots_5600272) : Bool)) {
                        _gotoNext = 5600427i32;
                    } else {
                        _gotoNext = 5600463i32;
                    };
                } else if (__value__ == (5600427i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600463i32;
                } else if (__value__ == (5600463i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5600495i32;
                    } else {
                        _gotoNext = 5600525i32;
                    };
                } else if (__value__ == (5600495i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600525i32;
                } else if (__value__ == (5600525i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5600699 = __tmp__._1;
                        };
                        if (!_ok_5600699) {
                            _gotoNext = 5600736i32;
                        } else {
                            _gotoNext = 5600767i32;
                        };
                    };
                } else if (__value__ == (5600736i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600767i32;
                } else if (__value__ == (5600767i32)) {
                    _mailbox._local = (_localPartBytes_5597551 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
