package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _c_5608491:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5607862:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5611010:Bool = false;
        var _twoDots_5610583:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5609528:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5607831i32;
                    } else {
                        _gotoNext = 5607862i32;
                    };
                } else if (__value__ == (5607831i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5607862i32;
                } else if (__value__ == (5607862i32)) {
                    _localPartBytes_5607862 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5607925i32;
                    } else {
                        _gotoNext = 5609429i32;
                    };
                } else if (__value__ == (5607925i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608414i32;
                } else if (__value__ == (5608414i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5608430i32;
                } else if (__value__ == (5608430i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5608434i32;
                    } else {
                        _gotoNext = 5610774i32;
                    };
                } else if (__value__ == (5608434i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608455i32;
                    } else {
                        _gotoNext = 5608491i32;
                    };
                } else if (__value__ == (5608455i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5608491i32;
                } else if (__value__ == (5608491i32)) {
                    _c_5608491 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 5608521i32;
                } else if (__value__ == (5608521i32)) {
                    if (_c_5608491 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608533i32;
                    } else if (_c_5608491 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5608575i32;
                    } else if (((((((((_c_5608491 == ((11 : stdgo.GoUInt8)) || _c_5608491 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5608491 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5608491 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5608491 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5608491 : Bool) && (_c_5608491 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5608491 : Bool) && (_c_5608491 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5608491 : Bool) && (_c_5608491 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5608491 : Bool) && (_c_5608491 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5608898i32;
                    } else {
                        _gotoNext = 5609377i32;
                    };
                } else if (__value__ == (5608533i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5608430i32;
                } else if (__value__ == (5608575i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608630i32;
                    } else {
                        _gotoNext = 5608669i32;
                    };
                } else if (__value__ == (5608630i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5608669i32;
                } else if (__value__ == (5608669i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5608777i32;
                    } else {
                        _gotoNext = 5608859i32;
                    };
                } else if (__value__ == (5608777i32)) {
                    _localPartBytes_5607862 = (_localPartBytes_5607862.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5610774i32;
                } else if (__value__ == (5608859i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5610774i32;
                } else if (__value__ == (5608898i32)) {
                    _localPartBytes_5607862 = (_localPartBytes_5607862.__append__(_c_5608491));
                    _gotoNext = 5610774i32;
                } else if (__value__ == (5609377i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5610774i32;
                } else if (__value__ == (5609429i32)) {
                    _gotoNext = 5609454i32;
                } else if (__value__ == (5609454i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5609466i32;
                } else if (__value__ == (5609466i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5609482i32;
                    } else {
                        _gotoNext = 5610339i32;
                    };
                } else if (__value__ == (5609482i32)) {
                    _c_5609528 = _in[(0 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 5609543i32;
                } else if (__value__ == (5609543i32)) {
                    if (_c_5609528 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5609555i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5609528 : Bool) && (_c_5609528 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5609528 : Bool) && (_c_5609528 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5609528 : Bool) && (_c_5609528 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5609528 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5609528 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5609528 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5609878i32;
                    } else {
                        _gotoNext = 5610299i32;
                    };
                } else if (__value__ == (5609555i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5609823i32;
                    } else {
                        _gotoNext = 5609862i32;
                    };
                } else if (__value__ == (5609823i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5609862i32;
                } else if (__value__ == (5609862i32)) {
                    _gotoNext = 5609878i32;
                } else if (__value__ == (5609878i32)) {
                    _localPartBytes_5607862 = (_localPartBytes_5607862.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5610339i32;
                } else if (__value__ == (5610299i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5609466i32;
                } else if (__value__ == (5610339i32)) {
                    if ((_localPartBytes_5607862.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5610367i32;
                    } else {
                        _gotoNext = 5610583i32;
                    };
                } else if (__value__ == (5610367i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5610583i32;
                } else if (__value__ == (5610583i32)) {
                    _twoDots_5610583 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5607862[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5607862[((_localPartBytes_5607862.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5607862, _twoDots_5610583) : Bool)) {
                        _gotoNext = 5610738i32;
                    } else {
                        _gotoNext = 5610774i32;
                    };
                } else if (__value__ == (5610738i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5610774i32;
                } else if (__value__ == (5610774i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5610806i32;
                    } else {
                        _gotoNext = 5610836i32;
                    };
                } else if (__value__ == (5610806i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5610836i32;
                } else if (__value__ == (5610836i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5611010 = __tmp__._1;
                        };
                        if (!_ok_5611010) {
                            _gotoNext = 5611047i32;
                        } else {
                            _gotoNext = 5611078i32;
                        };
                    };
                } else if (__value__ == (5611047i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5611078i32;
                } else if (__value__ == (5611078i32)) {
                    _mailbox._local = (_localPartBytes_5607862 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
