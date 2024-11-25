package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_5500125:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5499496:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5502644:Bool = false;
        var _twoDots_5502217:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5501162:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5499465i32;
                    } else {
                        _gotoNext = 5499496i32;
                    };
                } else if (__value__ == (5499465i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5499496i32;
                } else if (__value__ == (5499496i32)) {
                    _localPartBytes_5499496 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5499559i32;
                    } else {
                        _gotoNext = 5501063i32;
                    };
                } else if (__value__ == (5499559i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5500048i32;
                } else if (__value__ == (5500048i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5500064i32;
                } else if (__value__ == (5500064i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5500068i32;
                    } else {
                        _gotoNext = 5502408i32;
                    };
                } else if (__value__ == (5500068i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5500089i32;
                    } else {
                        _gotoNext = 5500125i32;
                    };
                } else if (__value__ == (5500089i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5500125i32;
                } else if (__value__ == (5500125i32)) {
                    _c_5500125 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5500155i32;
                } else if (__value__ == (5500155i32)) {
                    if (_c_5500125 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5500167i32;
                    } else if (_c_5500125 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5500209i32;
                    } else if (((((((((_c_5500125 == ((11 : stdgo.GoUInt8)) || _c_5500125 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5500125 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5500125 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5500125 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5500125 : Bool) && (_c_5500125 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5500125 : Bool) && (_c_5500125 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5500125 : Bool) && (_c_5500125 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5500125 : Bool) && (_c_5500125 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5500532i32;
                    } else {
                        _gotoNext = 5501011i32;
                    };
                } else if (__value__ == (5500167i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5500064i32;
                } else if (__value__ == (5500209i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5500264i32;
                    } else {
                        _gotoNext = 5500303i32;
                    };
                } else if (__value__ == (5500264i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5500303i32;
                } else if (__value__ == (5500303i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5500411i32;
                    } else {
                        _gotoNext = 5500493i32;
                    };
                } else if (__value__ == (5500411i32)) {
                    _localPartBytes_5499496 = (_localPartBytes_5499496.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5502408i32;
                } else if (__value__ == (5500493i32)) {
                    _gotoNext = 5500493i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5502408i32;
                } else if (__value__ == (5500532i32)) {
                    _localPartBytes_5499496 = (_localPartBytes_5499496.__append__(_c_5500125));
                    _gotoNext = 5502408i32;
                } else if (__value__ == (5501011i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5502408i32;
                } else if (__value__ == (5501063i32)) {
                    _gotoNext = 5501063i32;
                    _gotoNext = 5501088i32;
                } else if (__value__ == (5501088i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5501100i32;
                } else if (__value__ == (5501100i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5501116i32;
                    } else {
                        _gotoNext = 5501973i32;
                    };
                } else if (__value__ == (5501116i32)) {
                    _c_5501162 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5501177i32;
                } else if (__value__ == (5501177i32)) {
                    if (_c_5501162 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5501189i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5501162 : Bool) && (_c_5501162 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5501162 : Bool) && (_c_5501162 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5501162 : Bool) && (_c_5501162 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5501162 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5501162 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5501162 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5501512i32;
                    } else {
                        _gotoNext = 5501933i32;
                    };
                } else if (__value__ == (5501189i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5501457i32;
                    } else {
                        _gotoNext = 5501496i32;
                    };
                } else if (__value__ == (5501457i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5501496i32;
                } else if (__value__ == (5501496i32)) {
                    _gotoNext = 5501512i32;
                } else if (__value__ == (5501512i32)) {
                    _localPartBytes_5499496 = (_localPartBytes_5499496.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5501973i32;
                } else if (__value__ == (5501933i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5501100i32;
                } else if (__value__ == (5501973i32)) {
                    if ((_localPartBytes_5499496.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5502001i32;
                    } else {
                        _gotoNext = 5502217i32;
                    };
                } else if (__value__ == (5502001i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5502217i32;
                } else if (__value__ == (5502217i32)) {
                    _twoDots_5502217 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5499496[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5499496[((_localPartBytes_5499496.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5499496, _twoDots_5502217) : Bool)) {
                        _gotoNext = 5502372i32;
                    } else {
                        _gotoNext = 5502408i32;
                    };
                } else if (__value__ == (5502372i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5502408i32;
                } else if (__value__ == (5502408i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5502440i32;
                    } else {
                        _gotoNext = 5502470i32;
                    };
                } else if (__value__ == (5502440i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5502470i32;
                } else if (__value__ == (5502470i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5502644 = __tmp__._1;
                        };
                        if (!_ok_5502644) {
                            _gotoNext = 5502681i32;
                        } else {
                            _gotoNext = 5502712i32;
                        };
                    };
                } else if (__value__ == (5502681i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5502712i32;
                } else if (__value__ == (5502712i32)) {
                    _mailbox._local = (_localPartBytes_5499496 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
