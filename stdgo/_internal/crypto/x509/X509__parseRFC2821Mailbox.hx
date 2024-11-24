package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var nextCharBreak = false;
        var _c_5545496:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5544867:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5548015:Bool = false;
        var _twoDots_5547588:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5546533:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5544836i32;
                    } else {
                        _gotoNext = 5544867i32;
                    };
                } else if (__value__ == (5544836i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5544867i32;
                } else if (__value__ == (5544867i32)) {
                    _localPartBytes_5544867 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5544930i32;
                    } else {
                        _gotoNext = 5546434i32;
                    };
                } else if (__value__ == (5544930i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5545419i32;
                } else if (__value__ == (5545419i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5545435i32;
                } else if (__value__ == (5545435i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5545439i32;
                    } else {
                        _gotoNext = 5547779i32;
                    };
                } else if (__value__ == (5545439i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5545460i32;
                    } else {
                        _gotoNext = 5545496i32;
                    };
                } else if (__value__ == (5545460i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5545496i32;
                } else if (__value__ == (5545496i32)) {
                    _c_5545496 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5545526i32;
                } else if (__value__ == (5545526i32)) {
                    if (_c_5545496 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5545538i32;
                    } else if (_c_5545496 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5545580i32;
                    } else if (((((((((_c_5545496 == ((11 : stdgo.GoUInt8)) || _c_5545496 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5545496 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5545496 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5545496 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5545496 : Bool) && (_c_5545496 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5545496 : Bool) && (_c_5545496 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5545496 : Bool) && (_c_5545496 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5545496 : Bool) && (_c_5545496 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5545903i32;
                    } else {
                        _gotoNext = 5546382i32;
                    };
                } else if (__value__ == (5545538i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5545435i32;
                } else if (__value__ == (5545580i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5545635i32;
                    } else {
                        _gotoNext = 5545674i32;
                    };
                } else if (__value__ == (5545635i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5545674i32;
                } else if (__value__ == (5545674i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5545782i32;
                    } else {
                        _gotoNext = 5545864i32;
                    };
                } else if (__value__ == (5545782i32)) {
                    _localPartBytes_5544867 = (_localPartBytes_5544867.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5547779i32;
                } else if (__value__ == (5545864i32)) {
                    _gotoNext = 5545864i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5547779i32;
                } else if (__value__ == (5545903i32)) {
                    _localPartBytes_5544867 = (_localPartBytes_5544867.__append__(_c_5545496));
                    _gotoNext = 5547779i32;
                } else if (__value__ == (5546382i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5547779i32;
                } else if (__value__ == (5546434i32)) {
                    _gotoNext = 5546434i32;
                    _gotoNext = 5546459i32;
                } else if (__value__ == (5546459i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5546471i32;
                } else if (__value__ == (5546471i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5546487i32;
                    } else {
                        _gotoNext = 5547344i32;
                    };
                } else if (__value__ == (5546487i32)) {
                    _c_5546533 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5546548i32;
                } else if (__value__ == (5546548i32)) {
                    if (_c_5546533 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5546560i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5546533 : Bool) && (_c_5546533 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5546533 : Bool) && (_c_5546533 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5546533 : Bool) && (_c_5546533 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5546533 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5546533 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5546533 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5546883i32;
                    } else {
                        _gotoNext = 5547304i32;
                    };
                } else if (__value__ == (5546560i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5546828i32;
                    } else {
                        _gotoNext = 5546867i32;
                    };
                } else if (__value__ == (5546828i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5546867i32;
                } else if (__value__ == (5546867i32)) {
                    _gotoNext = 5546883i32;
                } else if (__value__ == (5546883i32)) {
                    _localPartBytes_5544867 = (_localPartBytes_5544867.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5547344i32;
                } else if (__value__ == (5547304i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5546471i32;
                } else if (__value__ == (5547344i32)) {
                    if ((_localPartBytes_5544867.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5547372i32;
                    } else {
                        _gotoNext = 5547588i32;
                    };
                } else if (__value__ == (5547372i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5547588i32;
                } else if (__value__ == (5547588i32)) {
                    _twoDots_5547588 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5544867[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5544867[((_localPartBytes_5544867.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5544867, _twoDots_5547588) : Bool)) {
                        _gotoNext = 5547743i32;
                    } else {
                        _gotoNext = 5547779i32;
                    };
                } else if (__value__ == (5547743i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5547779i32;
                } else if (__value__ == (5547779i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5547811i32;
                    } else {
                        _gotoNext = 5547841i32;
                    };
                } else if (__value__ == (5547811i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5547841i32;
                } else if (__value__ == (5547841i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5548015 = __tmp__._1;
                        };
                        if (!_ok_5548015) {
                            _gotoNext = 5548052i32;
                        } else {
                            _gotoNext = 5548083i32;
                        };
                    };
                } else if (__value__ == (5548052i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5548083i32;
                } else if (__value__ == (5548083i32)) {
                    _mailbox._local = (_localPartBytes_5544867 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
