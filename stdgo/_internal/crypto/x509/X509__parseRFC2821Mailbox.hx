package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_5611125:Bool = false;
        var _twoDots_5610698:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5609643:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5608606:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5607977:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5607946i32;
                    } else {
                        _gotoNext = 5607977i32;
                    };
                } else if (__value__ == (5607946i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5607977i32;
                } else if (__value__ == (5607977i32)) {
                    _localPartBytes_5607977 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608040i32;
                    } else {
                        _gotoNext = 5609544i32;
                    };
                } else if (__value__ == (5608040i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608529i32;
                } else if (__value__ == (5608529i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5608545i32;
                } else if (__value__ == (5608545i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5608549i32;
                    } else {
                        _gotoNext = 5610889i32;
                    };
                } else if (__value__ == (5608549i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608570i32;
                    } else {
                        _gotoNext = 5608606i32;
                    };
                } else if (__value__ == (5608570i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5608606i32;
                } else if (__value__ == (5608606i32)) {
                    _c_5608606 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5608636i32;
                } else if (__value__ == (5608636i32)) {
                    if (_c_5608606 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5608648i32;
                    } else if (_c_5608606 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5608690i32;
                    } else if (((((((((_c_5608606 == ((11 : stdgo.GoUInt8)) || _c_5608606 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5608606 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5608606 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5608606 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5608606 : Bool) && (_c_5608606 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5608606 : Bool) && (_c_5608606 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5608606 : Bool) && (_c_5608606 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5608606 : Bool) && (_c_5608606 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5609013i32;
                    } else {
                        _gotoNext = 5609492i32;
                    };
                } else if (__value__ == (5608648i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5608545i32;
                } else if (__value__ == (5608690i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5608745i32;
                    } else {
                        _gotoNext = 5608784i32;
                    };
                } else if (__value__ == (5608745i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5608784i32;
                } else if (__value__ == (5608784i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5608892i32;
                    } else {
                        _gotoNext = 5608974i32;
                    };
                } else if (__value__ == (5608892i32)) {
                    _localPartBytes_5607977 = (_localPartBytes_5607977.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5610889i32;
                } else if (__value__ == (5608974i32)) {
                    _gotoNext = 5608974i32;
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    var __blank__ = 0i32;
                    _gotoNext = 5610889i32;
                } else if (__value__ == (5609013i32)) {
                    _localPartBytes_5607977 = (_localPartBytes_5607977.__append__(_c_5608606));
                    _gotoNext = 5610889i32;
                } else if (__value__ == (5609492i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5610889i32;
                } else if (__value__ == (5609544i32)) {
                    _gotoNext = 5609544i32;
                    _gotoNext = 5609569i32;
                } else if (__value__ == (5609569i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5609581i32;
                } else if (__value__ == (5609581i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5609597i32;
                    } else {
                        _gotoNext = 5610454i32;
                    };
                } else if (__value__ == (5609597i32)) {
                    _c_5609643 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5609658i32;
                } else if (__value__ == (5609658i32)) {
                    if (_c_5609643 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5609670i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5609643 : Bool) && (_c_5609643 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5609643 : Bool) && (_c_5609643 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5609643 : Bool) && (_c_5609643 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5609643 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5609643 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5609643 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5609993i32;
                    } else {
                        _gotoNext = 5610414i32;
                    };
                } else if (__value__ == (5609670i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5609938i32;
                    } else {
                        _gotoNext = 5609977i32;
                    };
                } else if (__value__ == (5609938i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5609977i32;
                } else if (__value__ == (5609977i32)) {
                    _gotoNext = 5609993i32;
                } else if (__value__ == (5609993i32)) {
                    _localPartBytes_5607977 = (_localPartBytes_5607977.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5610454i32;
                } else if (__value__ == (5610414i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5609581i32;
                } else if (__value__ == (5610454i32)) {
                    if ((_localPartBytes_5607977.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5610482i32;
                    } else {
                        _gotoNext = 5610698i32;
                    };
                } else if (__value__ == (5610482i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5610698i32;
                } else if (__value__ == (5610698i32)) {
                    _twoDots_5610698 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5607977[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5607977[((_localPartBytes_5607977.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5607977, _twoDots_5610698) : Bool)) {
                        _gotoNext = 5610853i32;
                    } else {
                        _gotoNext = 5610889i32;
                    };
                } else if (__value__ == (5610853i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5610889i32;
                } else if (__value__ == (5610889i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5610921i32;
                    } else {
                        _gotoNext = 5610951i32;
                    };
                } else if (__value__ == (5610921i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5610951i32;
                } else if (__value__ == (5610951i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5611125 = __tmp__._1;
                        };
                        if (!_ok_5611125) {
                            _gotoNext = 5611162i32;
                        } else {
                            _gotoNext = 5611193i32;
                        };
                    };
                } else if (__value__ == (5611162i32)) {
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = false };
                    _gotoNext = 5611193i32;
                } else if (__value__ == (5611193i32)) {
                    _mailbox._local = (_localPartBytes_5607977 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox = _mailbox?.__copy__(), _1 : _ok = true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
