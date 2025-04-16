package stdgo._internal.crypto.x509;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        var _mailbox = ({} : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox), _ok = false;
        var _ok_4:Bool = false;
        var _twoDots_3:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _c_2:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var nextCharBreak = false;
        var _c_1:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var quotedStringBreak = false;
        var _localPartBytes_0:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _gotoNext = 0i32;
        _gotoNext == ((0i32 : stdgo.GoInt));
        while (_gotoNext != ((-1i32 : stdgo.GoInt))) {
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5552781i32;
                    } else {
                        _gotoNext = 5552812i32;
                    };
                } else if (__value__ == (5552781i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5552812i32;
                } else if (__value__ == (5552812i32)) {
                    _localPartBytes_0 = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5552875i32;
                    } else {
                        _gotoNext = 5554379i32;
                    };
                } else if (__value__ == (5552875i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5553364i32;
                } else if (__value__ == (5553364i32)) {
                    0i32;
                    quotedStringBreak = false;
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5553380i32)) {
                    if (!quotedStringBreak) {
                        _gotoNext = 5553384i32;
                    } else {
                        _gotoNext = 5555724i32;
                    };
                } else if (__value__ == (5553384i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5553405i32;
                    } else {
                        _gotoNext = 5553441i32;
                    };
                } else if (__value__ == (5553405i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553441i32;
                } else if (__value__ == (5553441i32)) {
                    _c_1 = _in[(0 : stdgo.GoInt)];
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5553471i32;
                } else if (__value__ == (5553471i32)) {
                    if (_c_1 == ((34 : stdgo.GoUInt8))) {
                        _gotoNext = 5553483i32;
                    } else if (_c_1 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5553525i32;
                    } else if (((((((((_c_1 == ((11 : stdgo.GoUInt8)) || _c_1 == ((12 : stdgo.GoUInt8)) : Bool) || _c_1 == ((32 : stdgo.GoUInt8)) : Bool) || _c_1 == ((33 : stdgo.GoUInt8)) : Bool) || _c_1 == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c_1 : Bool) && (_c_1 <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5553848i32;
                    } else {
                        _gotoNext = 5554327i32;
                    };
                } else if (__value__ == (5553483i32)) {
                    quotedStringBreak = true;
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5553525i32)) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5553580i32;
                    } else {
                        _gotoNext = 5553619i32;
                    };
                } else if (__value__ == (5553580i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553619i32;
                } else if (__value__ == (5553619i32)) {
                    if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                        _gotoNext = 5553727i32;
                    } else {
                        _gotoNext = 5553809i32;
                    };
                } else if (__value__ == (5553727i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5553809i32)) {
                    _gotoNext = 5553809i32;
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    0i32;
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5553848i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_c_1) : stdgo.Slice<stdgo.GoUInt8>);
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5554327i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5553380i32;
                } else if (__value__ == (5554379i32)) {
                    _gotoNext = 5554379i32;
                    _gotoNext = 5554404i32;
                } else if (__value__ == (5554404i32)) {
                    0i32;
                    nextCharBreak = false;
                    _gotoNext = 5554416i32;
                } else if (__value__ == (5554416i32)) {
                    if (!nextCharBreak && (((_in.length) > (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5554432i32;
                    } else {
                        _gotoNext = 5555289i32;
                    };
                } else if (__value__ == (5554432i32)) {
                    _c_2 = _in[(0 : stdgo.GoInt)];
                    _gotoNext = 5554493i32;
                } else if (__value__ == (5554493i32)) {
                    if (_c_2 == ((92 : stdgo.GoUInt8))) {
                        _gotoNext = 5554505i32;
                    } else if (((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c_2 : Bool) && (_c_2 <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c_2 == ((33 : stdgo.GoUInt8)) : Bool) || _c_2 == ((35 : stdgo.GoUInt8)) : Bool) || _c_2 == ((36 : stdgo.GoUInt8)) : Bool) || _c_2 == ((37 : stdgo.GoUInt8)) : Bool) || _c_2 == ((38 : stdgo.GoUInt8)) : Bool) || _c_2 == ((39 : stdgo.GoUInt8)) : Bool) || _c_2 == ((42 : stdgo.GoUInt8)) : Bool) || _c_2 == ((43 : stdgo.GoUInt8)) : Bool) || _c_2 == ((45 : stdgo.GoUInt8)) : Bool) || _c_2 == ((47 : stdgo.GoUInt8)) : Bool) || _c_2 == ((61 : stdgo.GoUInt8)) : Bool) || _c_2 == ((63 : stdgo.GoUInt8)) : Bool) || _c_2 == ((94 : stdgo.GoUInt8)) : Bool) || _c_2 == ((95 : stdgo.GoUInt8)) : Bool) || _c_2 == ((96 : stdgo.GoUInt8)) : Bool) || _c_2 == ((123 : stdgo.GoUInt8)) : Bool) || _c_2 == ((124 : stdgo.GoUInt8)) : Bool) || _c_2 == ((125 : stdgo.GoUInt8)) : Bool) || _c_2 == ((126 : stdgo.GoUInt8)) : Bool) || (_c_2 == (46 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5554828i32;
                    } else {
                        _gotoNext = 5555249i32;
                    };
                } else if (__value__ == (5554505i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5554773i32;
                    } else {
                        _gotoNext = 5554812i32;
                    };
                } else if (__value__ == (5554773i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5554812i32;
                } else if (__value__ == (5554812i32)) {
                    _gotoNext = 5554828i32;
                } else if (__value__ == (5554828i32)) {
                    _localPartBytes_0 = (_localPartBytes_0.__append__(_in[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt8>);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    _gotoNext = 5554416i32;
                } else if (__value__ == (5555249i32)) {
                    nextCharBreak = true;
                    _gotoNext = 5554416i32;
                } else if (__value__ == (5555289i32)) {
                    if ((_localPartBytes_0.length) == ((0 : stdgo.GoInt))) {
                        _gotoNext = 5555317i32;
                    } else {
                        _gotoNext = 5555533i32;
                    };
                } else if (__value__ == (5555317i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5555533i32;
                } else if (__value__ == (5555533i32)) {
                    _twoDots_3 = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                    if (((_localPartBytes_0[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes_0[((_localPartBytes_0.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes_0, _twoDots_3) : Bool)) {
                        _gotoNext = 5555688i32;
                    } else {
                        _gotoNext = 5555724i32;
                    };
                } else if (__value__ == (5555688i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5555724i32;
                } else if (__value__ == (5555724i32)) {
                    if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                        _gotoNext = 5555756i32;
                    } else {
                        _gotoNext = 5555786i32;
                    };
                } else if (__value__ == (5555756i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5555786i32;
                } else if (__value__ == (5555786i32)) {
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        {
                            var __tmp__ = stdgo._internal.crypto.x509.X509__domaintoreverselabels._domainToReverseLabels(_in?.__copy__());
                            _ok_4 = @:tmpset0 __tmp__._1;
                        };
                        if (!_ok_4) {
                            _gotoNext = 5555997i32;
                        } else {
                            _gotoNext = 5556028i32;
                        };
                    };
                } else if (__value__ == (5555997i32)) {
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : false };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = 5556028i32;
                } else if (__value__ == (5556028i32)) {
                    _mailbox._local = (_localPartBytes_0 : stdgo.GoString)?.__copy__();
                    _mailbox._domain = _in?.__copy__();
                    return {
                        @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo._internal.crypto.x509.X509_t_rfc2821mailbox.T_rfc2821Mailbox; var _1 : Bool; } = { _0 : _mailbox?.__copy__(), _1 : true };
                        _mailbox = __tmp__._0;
                        _ok = __tmp__._1;
                        __tmp__;
                    };
                    _gotoNext = -1i32;
                };
            };
        };
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
