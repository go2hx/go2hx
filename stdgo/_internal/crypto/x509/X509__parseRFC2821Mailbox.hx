package stdgo._internal.crypto.x509;
import stdgo._internal.crypto.sha1.Sha1;
import stdgo._internal.crypto.sha256.Sha256;
import stdgo._internal.crypto.sha512.Sha512;
function _parseRFC2821Mailbox(_in:stdgo.GoString):{ var _0 : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox; var _1 : Bool; } {
        stdgo._internal.internal.Macro.controlFlow({
            var _mailbox = ({} : stdgo._internal.crypto.x509.X509_T_rfc2821Mailbox.T_rfc2821Mailbox), _ok = false;
            if ((_in.length) == ((0 : stdgo.GoInt))) {
                return { _0 : _mailbox?.__copy__(), _1 : false };
            };
            var _localPartBytes = (new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), ((_in.length) / (2 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            if (_in[(0 : stdgo.GoInt)] == ((34 : stdgo.GoUInt8))) {
                _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                @:label("QuotedString") while (true) {
                    if ((_in.length) == ((0 : stdgo.GoInt))) {
                        return { _0 : _mailbox?.__copy__(), _1 : false };
                    };
                    var _c = (_in[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if (_c == ((34 : stdgo.GoUInt8))) {
                                @:jump("QuotedString") break;
                                break;
                            } else if (_c == ((92 : stdgo.GoUInt8))) {
                                if ((_in.length) == ((0 : stdgo.GoInt))) {
                                    return { _0 : _mailbox?.__copy__(), _1 : false };
                                };
                                if ((((_in[(0 : stdgo.GoInt)] == ((11 : stdgo.GoUInt8)) || _in[(0 : stdgo.GoInt)] == ((12 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (9 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _in[(0 : stdgo.GoInt)] : Bool) && (_in[(0 : stdgo.GoInt)] <= (127 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                                    _localPartBytes = (_localPartBytes.__append__(_in[(0 : stdgo.GoInt)]));
                                    _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                } else {
                                    return { _0 : _mailbox?.__copy__(), _1 : false };
                                };
                                break;
                            } else if (((((((((_c == ((11 : stdgo.GoUInt8)) || _c == ((12 : stdgo.GoUInt8)) : Bool) || _c == ((32 : stdgo.GoUInt8)) : Bool) || _c == ((33 : stdgo.GoUInt8)) : Bool) || _c == ((127 : stdgo.GoUInt8)) : Bool) || ((((1 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (8 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((14 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (31 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((35 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (91 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((93 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (126 : stdgo.GoUInt8) : Bool) : Bool)) : Bool)) {
                                _localPartBytes = (_localPartBytes.__append__(_c));
                                break;
                            } else {
                                return { _0 : _mailbox?.__copy__(), _1 : false };
                            };
                            break;
                        };
                    };
                };
            } else {
                @:label("NextChar") while (((_in.length) > (0 : stdgo.GoInt) : Bool)) {
                    var _c = (_in[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                    {
                        var __switchIndex__ = -1;
                        var __run__ = true;
                        while (__run__) {
                            __run__ = false;
                            if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (_c == (92 : stdgo.GoUInt8)))) {
                                _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                if ((_in.length) == ((0 : stdgo.GoInt))) {
                                    return { _0 : _mailbox?.__copy__(), _1 : false };
                                };
                                @:fallthrough {
                                    __switchIndex__ = 1;
                                    __run__ = true;
                                    continue;
                                };
                                break;
                            } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && ((((((((((((((((((((((((((48 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (57 : stdgo.GoUInt8) : Bool) : Bool)) || ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || ((((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool)) : Bool) || _c == ((33 : stdgo.GoUInt8)) : Bool) || _c == ((35 : stdgo.GoUInt8)) : Bool) || _c == ((36 : stdgo.GoUInt8)) : Bool) || _c == ((37 : stdgo.GoUInt8)) : Bool) || _c == ((38 : stdgo.GoUInt8)) : Bool) || _c == ((39 : stdgo.GoUInt8)) : Bool) || _c == ((42 : stdgo.GoUInt8)) : Bool) || _c == ((43 : stdgo.GoUInt8)) : Bool) || _c == ((45 : stdgo.GoUInt8)) : Bool) || _c == ((47 : stdgo.GoUInt8)) : Bool) || _c == ((61 : stdgo.GoUInt8)) : Bool) || _c == ((63 : stdgo.GoUInt8)) : Bool) || _c == ((94 : stdgo.GoUInt8)) : Bool) || _c == ((95 : stdgo.GoUInt8)) : Bool) || _c == ((96 : stdgo.GoUInt8)) : Bool) || _c == ((123 : stdgo.GoUInt8)) : Bool) || _c == ((124 : stdgo.GoUInt8)) : Bool) || _c == ((125 : stdgo.GoUInt8)) : Bool) || _c == ((126 : stdgo.GoUInt8)) : Bool) || (_c == (46 : stdgo.GoUInt8)) : Bool))) {
                                _localPartBytes = (_localPartBytes.__append__(_in[(0 : stdgo.GoInt)]));
                                _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
                                break;
                                break;
                            } else {
                                @:jump("NextChar") break;
                                break;
                            };
                            break;
                        };
                    };
                };
                if ((_localPartBytes.length) == ((0 : stdgo.GoInt))) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                };
                var _twoDots = (new stdgo.Slice<stdgo.GoUInt8>(2, 2, ...[(46 : stdgo.GoUInt8), (46 : stdgo.GoUInt8)]).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
                if (((_localPartBytes[(0 : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) || _localPartBytes[((_localPartBytes.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == ((46 : stdgo.GoUInt8)) : Bool) || stdgo._internal.bytes.Bytes_contains.contains(_localPartBytes, _twoDots) : Bool)) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                };
            };
            if (((_in.length == (0 : stdgo.GoInt)) || (_in[(0 : stdgo.GoInt)] != (64 : stdgo.GoUInt8)) : Bool)) {
                return { _0 : _mailbox?.__copy__(), _1 : false };
            };
            _in = (_in.__slice__((1 : stdgo.GoInt)) : stdgo.GoString)?.__copy__();
            {
                var __tmp__ = stdgo._internal.crypto.x509.X509__domainToReverseLabels._domainToReverseLabels(_in?.__copy__()), __1:stdgo.Slice<stdgo.GoString> = __tmp__._0, _ok:Bool = __tmp__._1;
                if (!_ok) {
                    return { _0 : _mailbox?.__copy__(), _1 : false };
                };
            };
            _mailbox._local = (_localPartBytes : stdgo.GoString)?.__copy__();
            _mailbox._domain = _in?.__copy__();
            return { _0 : _mailbox?.__copy__(), _1 : true };
        });
    }
