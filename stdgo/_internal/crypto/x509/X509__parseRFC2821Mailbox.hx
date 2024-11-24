package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
        var quotedStringBreak = false;
        var _localPartBytes_5600359:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _ok_5603507:Bool = false;
        var _twoDots_5603080:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_5602025:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_5600988:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var _gotoNext = 0i32;
        var __blank__ = _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5600328i32;
                    } else {
                        _gotoNext = 5600359i32;
                    };
                } else if (__value__ == (5600328i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600359i32;
                } else if (__value__ == (5600359i32)) {
                    _localPartBytes_5600359 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5600422i32;
                    } else {
                        _gotoNext = 5601926i32;
                    };
                } else if (__value__ == (5600422i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5600911i32;
                } else if (__value__ == (5600911i32)) {
                    var __blank__ = 0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5600927i32;
                } else if (__value__ == (5600927i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5600931i32;
                    } else {
                        _gotoNext = 5603271i32;
                    };
                } else if (__value__ == (5600931i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5600952i32;
                    } else {
                        _gotoNext = 5600988i32;
                    };
                } else if (__value__ == (5600952i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5600988i32;
                } else if (__value__ == (5600988i32)) {
                    _c_5600988 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5601018i32;
                } else if (__value__ == (5601018i32)) {
                    if (_c_5600988 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5601030i32;
                    } else if (_c_5600988 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5601072i32;
                    } else if (((((((((_c_5600988 == ((11 : stdgo.GoUInt8)) || _c_5600988 == ((12 : stdgo.GoUInt8)) : Bool) || _c_5600988 == ((32 : stdgo.GoUInt8)) : Bool) || _c_5600988 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5600988 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_5600988 : Bool) && (_c_5600988 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_5600988 : Bool) && (_c_5600988 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_5600988 : Bool) && (_c_5600988 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_5600988 : Bool) && (_c_5600988 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5601395i32;
                    } else {
                        _gotoNext = 5601874i32;
                    };
                } else if (__value__ == (5601030i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5600927i32;
                } else if (__value__ == (5601072i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5601127i32;
                    } else {
                        _gotoNext = 5601166i32;
                    };
                } else if (__value__ == (5601127i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5601166i32;
                } else if (__value__ == (5601166i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5601274i32;
                    } else {
                        _gotoNext = 5601356i32;
                    };
                } else if (__value__ == (5601274i32)) {
                    _localPartBytes_5600359 = (_localPartBytes_5600359.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5603271i32;
                } else if (__value__ == (5601356i32)) {
                    _gotoNext = 5601356i32;
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    var __blank__ = 0i32;
                    _gotoNext = 5603271i32;
                } else if (__value__ == (5601395i32)) {
                    _localPartBytes_5600359 = (_localPartBytes_5600359.__append__(_c_5600988));
                    _gotoNext = 5603271i32;
                } else if (__value__ == (5601874i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5603271i32;
                } else if (__value__ == (5601926i32)) {
                    _gotoNext = 5601926i32;
                    _gotoNext = 5601951i32;
                } else if (__value__ == (5601951i32)) {
                    var __blank__ = 0i32;
                    nextCharBreak = false;
                    _gotoNext = 5601963i32;
                } else if (__value__ == (5601963i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5601979i32;
                    } else {
                        _gotoNext = 5602836i32;
                    };
                } else if (__value__ == (5601979i32)) {
                    _c_5602025 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5602040i32;
                } else if (__value__ == (5602040i32)) {
                    if (_c_5602025 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5602052i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_5602025 : Bool) && (_c_5602025 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_5602025 : Bool) && (_c_5602025 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_5602025 : Bool) && (_c_5602025 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_5602025 == ((33 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((35 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((36 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((37 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((38 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((39 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((42 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((43 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((45 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((47 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((61 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((63 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((94 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((95 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((96 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((123 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((124 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((125 : stdgo.GoUInt8)) : Bool) || _c_5602025 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_5602025 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5602375i32;
                    } else {
                        _gotoNext = 5602796i32;
                    };
                } else if (__value__ == (5602052i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602320i32;
                    } else {
                        _gotoNext = 5602359i32;
                    };
                } else if (__value__ == (5602320i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5602359i32;
                } else if (__value__ == (5602359i32)) {
                    _gotoNext = 5602375i32;
                } else if (__value__ == (5602375i32)) {
                    _localPartBytes_5600359 = (_localPartBytes_5600359.__append__(_in[(0 : stdgo.GoInt)]));
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5602836i32;
                } else if (__value__ == (5602796i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5601963i32;
                } else if (__value__ == (5602836i32)) {
                    if ((_localPartBytes_5600359.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5602864i32;
                    } else {
                        _gotoNext = 5603080i32;
                    };
                } else if (__value__ == (5602864i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5603080i32;
                } else if (__value__ == (5603080i32)) {
                    _twoDots_5603080 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_5600359[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_5600359[((_localPartBytes_5600359.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_5600359, _twoDots_5603080) : Bool)) {
                        _gotoNext = 5603235i32;
                    } else {
                        _gotoNext = 5603271i32;
                    };
                } else if (__value__ == (5603235i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5603271i32;
                } else if (__value__ == (5603271i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5603303i32;
                    } else {
                        _gotoNext = 5603333i32;
                    };
                } else if (__value__ == (5603303i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5603333i32;
                } else if (__value__ == (5603333i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__());
                            _ok_5603507 = __tmp__._1;
                        };
                        if (!_ok_5603507) {
                            _gotoNext = 5603544i32;
                        } else {
                            _gotoNext = 5603575i32;
                        };
                    };
                } else if (__value__ == (5603544i32)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                    _gotoNext = 5603575i32;
                } else if (__value__ == (5603575i32)) {
                    _mailbox._local = (_localPartBytes_5600359 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return { _0 : _mailbox?.__copy__(), _1 : true };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
