package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5589419:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5592567:Bool = false;
        var _twoDots_5592140:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5591085:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5590048:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5589388i32;
                    } else {
                        _gotoNext = 5589419i32;
                    };
                } else if (__value__ == (5589388i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5589419i32;
                } else if (__value__ == (5589419i32)) {
                    _localPartBytes_5589419 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5589482i32;
                    } else {
                        _gotoNext = 5590986i32;
                    };
                } else if (__value__ == (5589482i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5589971i32;
                } else if (__value__ == (5589971i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5589987i32;
                } else if (__value__ == (5589987i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5589991i32;
                    } else {
                        _gotoNext = 5592331i32;
                    };
                } else if (__value__ == (5589991i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590012i32;
                    } else {
                        _gotoNext = 5590048i32;
                    };
                } else if (__value__ == (5590012i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5590048i32;
                } else if (__value__ == (5590048i32)) {
                    _c_5590048 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    var __blank__ = 0i32;
                    _gotoNext = 5590078i32;
                } else if (__value__ == (5590078i32)) {
                    if (_c_5590048 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5590090i32;
                    } else if (_c_5590048 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5590132i32;
                    } else if (((((((((_c_5590048 == ((11 : stdgo.GoUInt8)) || _c_5590048 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5590048 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5590048 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5590048 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5590048 : Bool) && (_c_5590048 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5590048 : Bool) && (_c_5590048 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5590048 : Bool) && (_c_5590048 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5590048 : Bool) && (_c_5590048 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5590455i32;
                    } else {
                        _gotoNext = 5590934i32;
                    };
                } else if (__value__ == (5590090i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5589987i32;
                } else if (__value__ == (5590132i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5590187i32;
                    } else {
                        _gotoNext = 5590226i32;
                    };
                } else if (__value__ == (5590187i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5590226i32;
                } else if (__value__ == (5590226i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5590334i32;
                    } else {
                        _gotoNext = 5590416i32;
                    };
                } else if (__value__ == (5590334i32)) {
                    _localPartBytes_5589419 = (_localPartBytes_5589419.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5592331i32;
                } else if (__value__ == (5590416i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592331i32;
                } else if (__value__ == (5590455i32)) {
                    _localPartBytes_5589419 = (_localPartBytes_5589419.__append__(_c_5590048));
                    _gotoNext = 5592331i32;
                } else if (__value__ == (5590934i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592331i32;
                } else if (__value__ == (5590986i32)) {
                    _gotoNext = 5591011i32;
                } else if (__value__ == (5591011i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5591023i32;
                } else if (__value__ == (5591023i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5591039i32;
                    } else {
                        _gotoNext = 5591896i32;
                    };
                } else if (__value__ == (5591039i32)) {
                    _c_5591085 = _in[(0 : stdgo.GoInt)];
                    var __blank__ = 0i32;
                    _gotoNext = 5591100i32;
                } else if (__value__ == (5591100i32)) {
                    if (_c_5591085 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5591112i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5591085 : Bool) && (_c_5591085 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5591085 : Bool) && (_c_5591085 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5591085 : Bool) && (_c_5591085 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5591085 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5591085 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5591085 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5591435i32;
                    } else {
                        _gotoNext = 5591856i32;
                    };
                } else if (__value__ == (5591112i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5591380i32;
                    } else {
                        _gotoNext = 5591419i32;
                    };
                } else if (__value__ == (5591380i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5591419i32;
                } else if (__value__ == (5591419i32)) {
                    _gotoNext = 5591435i32;
                } else if (__value__ == (5591435i32)) {
                    _localPartBytes_5589419 = (_localPartBytes_5589419.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5591896i32;
                } else if (__value__ == (5591856i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5591023i32;
                } else if (__value__ == (5591896i32)) {
                    if ((_localPartBytes_5589419.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5591924i32;
                    } else {
                        _gotoNext = 5592140i32;
                    };
                } else if (__value__ == (5591924i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592140i32;
                } else if (__value__ == (5592140i32)) {
                    _twoDots_5592140 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5589419[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5589419[((_localPartBytes_5589419.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5589419, _twoDots_5592140) : Bool)) {
                        _gotoNext = 5592295i32;
                    } else {
                        _gotoNext = 5592331i32;
                    };
                } else if (__value__ == (5592295i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592331i32;
                } else if (__value__ == (5592331i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5592363i32;
                    } else {
                        _gotoNext = 5592393i32;
                    };
                } else if (__value__ == (5592363i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592393i32;
                } else if (__value__ == (5592393i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5592567 = __tmp__._1;
                        };
                        if (!_ok_5592567) {
                            _gotoNext = 5592604i32;
                        } else {
                            _gotoNext = 5592635i32;
                        };
                    };
                } else if (__value__ == (5592604i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5592635i32;
                } else if (__value__ == (5592635i32)) {
                    _mailbox._local = (_localPartBytes_5589419 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
