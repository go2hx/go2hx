package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var _twoDots_5598824:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5597769:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5596732:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_5596103:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5599251:Bool = false;
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5596072i32;
                    } else {
                        _gotoNext = 5596103i32;
                    };
                } else if (__value__ == (5596072i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5596103i32;
                } else if (__value__ == (5596103i32)) {
                    _localPartBytes_5596103 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5596166i32;
                    } else {
                        _gotoNext = 5597670i32;
                    };
                } else if (__value__ == (5596166i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5596655i32;
                } else if (__value__ == (5596655i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5596671i32;
                } else if (__value__ == (5596671i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5596675i32;
                    } else {
                        _gotoNext = 5599015i32;
                    };
                } else if (__value__ == (5596675i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5596696i32;
                    } else {
                        _gotoNext = 5596732i32;
                    };
                } else if (__value__ == (5596696i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5596732i32;
                } else if (__value__ == (5596732i32)) {
                    _c_5596732 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5596762i32;
                } else if (__value__ == (5596762i32)) {
                    if (_c_5596732 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5596774i32;
                    } else if (_c_5596732 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5596816i32;
                    } else if (((((((((_c_5596732 == ((11 : stdgo.GoUInt8)) || _c_5596732 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5596732 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5596732 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5596732 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5596732 : Bool) && (_c_5596732 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5596732 : Bool) && (_c_5596732 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5596732 : Bool) && (_c_5596732 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5596732 : Bool) && (_c_5596732 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5597139i32;
                    } else {
                        _gotoNext = 5597618i32;
                    };
                } else if (__value__ == (5596774i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5596671i32;
                } else if (__value__ == (5596816i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5596871i32;
                    } else {
                        _gotoNext = 5596910i32;
                    };
                } else if (__value__ == (5596871i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5596910i32;
                } else if (__value__ == (5596910i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5597018i32;
                    } else {
                        _gotoNext = 5597100i32;
                    };
                } else if (__value__ == (5597018i32)) {
                    _localPartBytes_5596103 = (_localPartBytes_5596103.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5599015i32;
                } else if (__value__ == (5597100i32)) {
                    _gotoNext = 5597100i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5599015i32;
                } else if (__value__ == (5597139i32)) {
                    _localPartBytes_5596103 = (_localPartBytes_5596103.__append__(_c_5596732));
                    _gotoNext = 5599015i32;
                } else if (__value__ == (5597618i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5599015i32;
                } else if (__value__ == (5597670i32)) {
                    _gotoNext = 5597670i32;
                    _gotoNext = 5597695i32;
                } else if (__value__ == (5597695i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5597707i32;
                } else if (__value__ == (5597707i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5597723i32;
                    } else {
                        _gotoNext = 5598580i32;
                    };
                } else if (__value__ == (5597723i32)) {
                    _c_5597769 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5597784i32;
                } else if (__value__ == (5597784i32)) {
                    if (_c_5597769 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5597796i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5597769 : Bool) && (_c_5597769 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5597769 : Bool) && (_c_5597769 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5597769 : Bool) && (_c_5597769 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5597769 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5597769 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5597769 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5598119i32;
                    } else {
                        _gotoNext = 5598540i32;
                    };
                } else if (__value__ == (5597796i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598064i32;
                    } else {
                        _gotoNext = 5598103i32;
                    };
                } else if (__value__ == (5598064i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5598103i32;
                } else if (__value__ == (5598103i32)) {
                    _gotoNext = 5598119i32;
                } else if (__value__ == (5598119i32)) {
                    _localPartBytes_5596103 = (_localPartBytes_5596103.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5598580i32;
                } else if (__value__ == (5598540i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5597707i32;
                } else if (__value__ == (5598580i32)) {
                    if ((_localPartBytes_5596103.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5598608i32;
                    } else {
                        _gotoNext = 5598824i32;
                    };
                } else if (__value__ == (5598608i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5598824i32;
                } else if (__value__ == (5598824i32)) {
                    _twoDots_5598824 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5596103[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5596103[((_localPartBytes_5596103.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5596103, _twoDots_5598824) : Bool)) {
                        _gotoNext = 5598979i32;
                    } else {
                        _gotoNext = 5599015i32;
                    };
                } else if (__value__ == (5598979i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5599015i32;
                } else if (__value__ == (5599015i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5599047i32;
                    } else {
                        _gotoNext = 5599077i32;
                    };
                } else if (__value__ == (5599047i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5599077i32;
                } else if (__value__ == (5599077i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5599251 = __tmp__._1;
                        };
                        if (!_ok_5599251) {
                            _gotoNext = 5599288i32;
                        } else {
                            _gotoNext = 5599319i32;
                        };
                    };
                } else if (__value__ == (5599288i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5599319i32;
                } else if (__value__ == (5599319i32)) {
                    _mailbox._local = (_localPartBytes_5596103 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
