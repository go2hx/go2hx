package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5565132:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5568280:Bool = false;
        var _twoDots_5567853:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5566798:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5565761:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5565101i32;
                    } else {
                        _gotoNext = 5565132i32;
                    };
                } else if (__value__ == (5565101i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5565132i32;
                } else if (__value__ == (5565132i32)) {
                    _localPartBytes_5565132 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5565195i32;
                    } else {
                        _gotoNext = 5566699i32;
                    };
                } else if (__value__ == (5565195i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5565684i32;
                } else if (__value__ == (5565684i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5565700i32;
                } else if (__value__ == (5565700i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5565704i32;
                    } else {
                        _gotoNext = 5568044i32;
                    };
                } else if (__value__ == (5565704i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5565725i32;
                    } else {
                        _gotoNext = 5565761i32;
                    };
                } else if (__value__ == (5565725i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5565761i32;
                } else if (__value__ == (5565761i32)) {
                    _c_5565761 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5565791i32;
                } else if (__value__ == (5565791i32)) {
                    if (_c_5565761 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5565803i32;
                    } else if (_c_5565761 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5565845i32;
                    } else if (((((((((_c_5565761 == ((11 : stdgo.GoUInt8)) || _c_5565761 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5565761 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5565761 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5565761 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5565761 : Bool) && (_c_5565761 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5565761 : Bool) && (_c_5565761 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5565761 : Bool) && (_c_5565761 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5565761 : Bool) && (_c_5565761 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5566168i32;
                    } else {
                        _gotoNext = 5566647i32;
                    };
                } else if (__value__ == (5565803i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5565700i32;
                } else if (__value__ == (5565845i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5565900i32;
                    } else {
                        _gotoNext = 5565939i32;
                    };
                } else if (__value__ == (5565900i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5565939i32;
                } else if (__value__ == (5565939i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5566047i32;
                    } else {
                        _gotoNext = 5566129i32;
                    };
                } else if (__value__ == (5566047i32)) {
                    _localPartBytes_5565132 = (_localPartBytes_5565132.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5568044i32;
                } else if (__value__ == (5566129i32)) {
                    _gotoNext = 5566129i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5568044i32;
                } else if (__value__ == (5566168i32)) {
                    _localPartBytes_5565132 = (_localPartBytes_5565132.__append__(_c_5565761));
                    _gotoNext = 5568044i32;
                } else if (__value__ == (5566647i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5568044i32;
                } else if (__value__ == (5566699i32)) {
                    _gotoNext = 5566699i32;
                    _gotoNext = 5566724i32;
                } else if (__value__ == (5566724i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5566736i32;
                } else if (__value__ == (5566736i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5566752i32;
                    } else {
                        _gotoNext = 5567609i32;
                    };
                } else if (__value__ == (5566752i32)) {
                    _c_5566798 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5566813i32;
                } else if (__value__ == (5566813i32)) {
                    if (_c_5566798 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5566825i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5566798 : Bool) && (_c_5566798 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5566798 : Bool) && (_c_5566798 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5566798 : Bool) && (_c_5566798 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5566798 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5566798 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5566798 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5567148i32;
                    } else {
                        _gotoNext = 5567569i32;
                    };
                } else if (__value__ == (5566825i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5567093i32;
                    } else {
                        _gotoNext = 5567132i32;
                    };
                } else if (__value__ == (5567093i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5567132i32;
                } else if (__value__ == (5567132i32)) {
                    _gotoNext = 5567148i32;
                } else if (__value__ == (5567148i32)) {
                    _localPartBytes_5565132 = (_localPartBytes_5565132.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5567609i32;
                } else if (__value__ == (5567569i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5566736i32;
                } else if (__value__ == (5567609i32)) {
                    if ((_localPartBytes_5565132.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5567637i32;
                    } else {
                        _gotoNext = 5567853i32;
                    };
                } else if (__value__ == (5567637i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5567853i32;
                } else if (__value__ == (5567853i32)) {
                    _twoDots_5567853 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5565132[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5565132[((_localPartBytes_5565132.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5565132, _twoDots_5567853) : Bool)) {
                        _gotoNext = 5568008i32;
                    } else {
                        _gotoNext = 5568044i32;
                    };
                } else if (__value__ == (5568008i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5568044i32;
                } else if (__value__ == (5568044i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5568076i32;
                    } else {
                        _gotoNext = 5568106i32;
                    };
                } else if (__value__ == (5568076i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5568106i32;
                } else if (__value__ == (5568106i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5568280 = __tmp__._1;
                        };
                        if (!_ok_5568280) {
                            _gotoNext = 5568317i32;
                        } else {
                            _gotoNext = 5568348i32;
                        };
                    };
                } else if (__value__ == (5568317i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5568348i32;
                } else if (__value__ == (5568348i32)) {
                    _mailbox._local = (_localPartBytes_5565132 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
