package stdgo._internal.encoding.json;
@:keep @:allow(stdgo._internal.encoding.json.Json.Decoder_asInterface) class Decoder_static_extension {
    @:keep
    @:tdfield
    static public function inputOffset( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.GoInt64 {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L510"
        return ((@:checkr _dec ?? throw "null pointer dereference")._scanned + ((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt64) : stdgo.GoInt64);
    }
    @:keep
    @:tdfield
    static public function _peek( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoUInt8; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _err:stdgo.Error = (null : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L489"
        while (true) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L490"
            {
                var _i = ((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt);
                while ((_i < ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : Bool)) {
                    var _c = ((@:checkr _dec ?? throw "null pointer dereference")._buf[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L492"
                    if (stdgo._internal.encoding.json.Json__isspace._isSpace(_c)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L493"
                        {
                            _i++;
                            continue;
                        };
                    };
(@:checkr _dec ?? throw "null pointer dereference")._scanp = _i;
//"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L496"
                    return { _0 : _c, _1 : (null : stdgo.Error) };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L499"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L500"
                return { _0 : (0 : stdgo.GoUInt8), _1 : _err };
            };
            _err = _dec._refill();
        };
    }
    @:keep
    @:tdfield
    static public function more( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L484"
        return ((_err == null && _c != ((93 : stdgo.GoUInt8)) : Bool) && (_c != (125 : stdgo.GoUInt8)) : Bool);
    }
    @:keep
    @:tdfield
    static public function _tokenError( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _c:stdgo.GoUInt8):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _context:stdgo.GoString = ("" : stdgo.GoString);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L463"
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((0 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                _context = (" looking for beginning of value" : stdgo.GoString);
            } else if (__value__ == ((3 : stdgo.GoInt))) {
                _context = (" after array element" : stdgo.GoString);
            } else if (__value__ == ((5 : stdgo.GoInt))) {
                _context = (" looking for beginning of object key string" : stdgo.GoString);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                _context = (" after object key" : stdgo.GoString);
            } else if (__value__ == ((8 : stdgo.GoInt))) {
                _context = (" after object key:value pair" : stdgo.GoString);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L477"
        return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(((("invalid character " : stdgo.GoString) + stdgo._internal.encoding.json.Json__quotechar._quoteChar(_c)?.__copy__() : stdgo.GoString) + _context?.__copy__() : stdgo.GoString)?.__copy__(), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>)) };
    }
    @:keep
    @:tdfield
    static public function token( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo._internal.encoding.json.Json_token.Token; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L368"
        while (true) {
            var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L370"
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L371"
                return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L373"
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    {
                        final __value__ = _c;
                        if (__switchIndex__ == 0 || (__switchIndex__ == -1 && (__value__ == (91 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L375"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L376"
                                return _dec._tokenError(_c);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L378"
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__append__((@:checkr _dec ?? throw "null pointer dereference")._tokenState) : stdgo.Slice<stdgo.GoInt>);
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (1 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L381"
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((91 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 1 || (__switchIndex__ == -1 && (__value__ == (93 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L384"
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (1 : stdgo.GoInt)) && ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (3 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L385"
                                return _dec._tokenError(_c);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L387"
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (@:checkr _dec ?? throw "null pointer dereference")._tokenStack[(((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__slice__(0, (((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L390"
                            _dec._tokenValueEnd();
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L391"
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((93 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 2 || (__switchIndex__ == -1 && (__value__ == (123 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L394"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L395"
                                return _dec._tokenError(_c);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L397"
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__append__((@:checkr _dec ?? throw "null pointer dereference")._tokenState) : stdgo.Slice<stdgo.GoInt>);
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (4 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L400"
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((123 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 3 || (__switchIndex__ == -1 && (__value__ == (125 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L403"
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (4 : stdgo.GoInt)) && ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != (8 : stdgo.GoInt)) : Bool)) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L404"
                                return _dec._tokenError(_c);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L406"
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (@:checkr _dec ?? throw "null pointer dereference")._tokenStack[(((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)];
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenStack = ((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.__slice__(0, (((@:checkr _dec ?? throw "null pointer dereference")._tokenStack.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoInt>);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L409"
                            _dec._tokenValueEnd();
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L410"
                            return { _0 : stdgo.Go.toInterface(stdgo.Go.asInterface((125 : stdgo._internal.encoding.json.Json_delim.Delim))), _1 : (null : stdgo.Error) };
                            break;
                            break;
                        } else if (__switchIndex__ == 4 || (__switchIndex__ == -1 && (__value__ == (58 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L413"
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState != ((6 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L414"
                                return _dec._tokenError(_c);
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L416"
                            (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                            (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (7 : stdgo.GoInt);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L418"
                            {
                                __continue__ = true;
                                break;
                            };
                            break;
                            break;
                        } else if (__switchIndex__ == 5 || (__switchIndex__ == -1 && (__value__ == (44 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L421"
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == ((3 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L422"
                                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (2 : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L424"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L426"
                            if ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == ((8 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L427"
                                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (5 : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L429"
                                {
                                    __continue__ = true;
                                    break;
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L431"
                            return _dec._tokenError(_c);
                            break;
                            break;
                        } else if (__switchIndex__ == 6 || (__switchIndex__ == -1 && (__value__ == (34 : stdgo.GoUInt8)))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L434"
                            if ((((@:checkr _dec ?? throw "null pointer dereference")._tokenState == (4 : stdgo.GoInt)) || ((@:checkr _dec ?? throw "null pointer dereference")._tokenState == (5 : stdgo.GoInt)) : Bool)) {
                                var _x:stdgo.GoString = ("" : stdgo.GoString), _x__pointer__ = stdgo.Go.pointer(_x);
                                var _old = ((@:checkr _dec ?? throw "null pointer dereference")._tokenState : stdgo.GoInt);
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (0 : stdgo.GoInt);
                                var _err = (_dec.decode(stdgo.Go.toInterface(_x__pointer__)) : stdgo.Error);
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = _old;
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L440"
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L441"
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
                                };
                                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (6 : stdgo.GoInt);
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L444"
                                return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L446"
                            @:fallthrough {
                                __switchIndex__ = 7;
                                __run__ = true;
                                continue;
                            };
                            break;
                        } else {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L449"
                            if (!_dec._tokenValueAllowed()) {
                                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L450"
                                return _dec._tokenError(_c);
                            };
                            var _x:stdgo.AnyInterface = (null : stdgo.AnyInterface);
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L453"
                            {
                                var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_x) : stdgo.Ref<stdgo.AnyInterface>))) : stdgo.Error);
                                if (_err != null) {
                                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L454"
                                    return { _0 : (null : stdgo._internal.encoding.json.Json_token.Token), _1 : _err };
                                };
                            };
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L456"
                            return { _0 : stdgo.Go.toInterface(_x), _1 : (null : stdgo.Error) };
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokenValueEnd( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L341"
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (3 : stdgo.GoInt);
            } else if (__value__ == ((7 : stdgo.GoInt))) {
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (8 : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _tokenValueAllowed( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Bool {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L333"
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((0 : stdgo.GoInt)) || __value__ == ((1 : stdgo.GoInt)) || __value__ == ((2 : stdgo.GoInt)) || __value__ == ((7 : stdgo.GoInt))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L335"
                return true;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L337"
        return false;
    }
    @:keep
    @:tdfield
    static public function _tokenPrepareForDecode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L307"
        {
            final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._tokenState;
            if (__value__ == ((3 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L310"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L311"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L313"
                if (_c != ((44 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L314"
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected comma after array element" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L316"
                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (2 : stdgo.GoInt);
            } else if (__value__ == ((6 : stdgo.GoInt))) {
                var __tmp__ = _dec._peek(), _c:stdgo.GoUInt8 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L320"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L321"
                    return _err;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L323"
                if (_c != ((58 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L324"
                    return stdgo.Go.asInterface((stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError(("expected colon after object key" : stdgo.GoString), _dec.inputOffset()) : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L326"
                (@:checkr _dec ?? throw "null pointer dereference")._scanp++;
                (@:checkr _dec ?? throw "null pointer dereference")._tokenState = (7 : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L329"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function _refill( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L149"
        if (((@:checkr _dec ?? throw "null pointer dereference")._scanp > (0 : stdgo.GoInt) : Bool)) {
            (@:checkr _dec ?? throw "null pointer dereference")._scanned = ((@:checkr _dec ?? throw "null pointer dereference")._scanned + (((@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt64)) : stdgo.GoInt64);
            var _n = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__copyTo__(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt);
            (@:checkr _dec ?? throw "null pointer dereference")._buf = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>);
            (@:checkr _dec ?? throw "null pointer dereference")._scanp = (0 : stdgo.GoInt);
        };
        {};
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L158"
        if ((((@:checkr _dec ?? throw "null pointer dereference")._buf.capacity - ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : stdgo.GoInt) < (512 : stdgo.GoInt) : Bool)) {
            var _newBuf = (new stdgo.Slice<stdgo.GoUInt8>(((@:checkr _dec ?? throw "null pointer dereference")._buf.length : stdgo.GoInt).toBasic(), (((2 : stdgo.GoInt) * (@:checkr _dec ?? throw "null pointer dereference")._buf.capacity : stdgo.GoInt) + (512 : stdgo.GoInt) : stdgo.GoInt)).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L160"
            _newBuf.__copyTo__((@:checkr _dec ?? throw "null pointer dereference")._buf);
            (@:checkr _dec ?? throw "null pointer dereference")._buf = _newBuf;
        };
        var __tmp__ = (@:checkr _dec ?? throw "null pointer dereference")._r.read(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__(((@:checkr _dec ?? throw "null pointer dereference")._buf.length), (@:checkr _dec ?? throw "null pointer dereference")._buf.capacity) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        (@:checkr _dec ?? throw "null pointer dereference")._buf = ((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((0 : stdgo.GoInt), (((@:checkr _dec ?? throw "null pointer dereference")._buf.length) + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L168"
        return _err;
    }
    @:keep
    @:tdfield
    static public function _readValue( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        var _n_11:stdgo.GoInt = (0 : stdgo.GoInt);
        var _c_10:stdgo.GoUInt8 = (0 : stdgo.GoUInt8);
        var inputBreak = false;
        var _err_9:stdgo.Error = (null : stdgo.Error);
        var _scanp_8:stdgo.GoInt = (0 : stdgo.GoInt);
        var _gotoNext = 0i64;
        _gotoNext == ((0i64 : stdgo.GoInt));
        //"file://#L0"
        while (_gotoNext != ((-1i64 : stdgo.GoInt))) {
            //"file://#L0"
            {
                final __value__ = _gotoNext;
                if (__value__ == (0i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L90"
                    (@:checkr _dec ?? throw "null pointer dereference")._scan._reset();
                    _scanp_8 = (@:checkr _dec ?? throw "null pointer dereference")._scanp;
                    _gotoNext = 5449033i64;
                } else if (__value__ == (5449033i64)) {
                    0i64;
                    inputBreak = false;
                    _gotoNext = 5449144i64;
                } else if (__value__ == (5449144i64)) {
                    //"file://#L0"
                    if (!inputBreak && ((_scanp_8 >= (0 : stdgo.GoInt) : Bool))) {
                        _gotoNext = 5449159i64;
                    } else {
                        _gotoNext = 5450254i64;
                    };
                } else if (__value__ == (5449159i64)) {
                    0i64;
                    _gotoNext = 5449205i64;
                } else if (__value__ == (5449205i64)) {
                    //"file://#L0"
                    if ((_scanp_8 < ((@:checkr _dec ?? throw "null pointer dereference")._buf.length) : Bool)) {
                        _gotoNext = 5449241i64;
                    } else {
                        _gotoNext = 5449961i64;
                    };
                } else if (__value__ == (5449233i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L100"
                    _scanp_8++;
                    _gotoNext = 5449205i64;
                } else if (__value__ == (5449241i64)) {
                    _c_10 = (@:checkr _dec ?? throw "null pointer dereference")._buf[(_scanp_8 : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L102"
                    (@:checkr _dec ?? throw "null pointer dereference")._scan._bytes++;
                    _gotoNext = 5449289i64;
                } else if (__value__ == (5449289i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L103"
                    {
                        final __value__ = (@:checkr _dec ?? throw "null pointer dereference")._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), _c_10);
                        if (__value__ == ((10 : stdgo.GoInt))) {
                            _gotoNext = 5449329i64;
                        } else if (__value__ == ((5 : stdgo.GoInt)) || __value__ == ((8 : stdgo.GoInt))) {
                            _gotoNext = 5449542i64;
                        } else if (__value__ == ((11 : stdgo.GoInt))) {
                            _gotoNext = 5449796i64;
                        } else {
                            _gotoNext = 5449233i64;
                        };
                    };
                } else if (__value__ == (5449329i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L108"
                    (@:checkr _dec ?? throw "null pointer dereference")._scan._bytes--;
                    inputBreak = true;
                    _gotoNext = 5449144i64;
                } else if (__value__ == (5449542i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L114"
                    if (stdgo._internal.encoding.json.Json__stateendvalue._stateEndValue((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5449755i64;
                    } else {
                        _gotoNext = 5449233i64;
                    };
                } else if (__value__ == (5449755i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L115"
                    _scanp_8++;
                    inputBreak = true;
                    _gotoNext = 5449144i64;
                } else if (__value__ == (5449796i64)) {
                    (@:checkr _dec ?? throw "null pointer dereference")._err = (@:checkr _dec ?? throw "null pointer dereference")._scan._err;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L120"
                    return { _0 : (0 : stdgo.GoInt), _1 : (@:checkr _dec ?? throw "null pointer dereference")._scan._err };
                    _gotoNext = 5449233i64;
                } else if (__value__ == (5449961i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L126"
                    if (_err_9 != null) {
                        _gotoNext = 5449975i64;
                    } else {
                        _gotoNext = 5450182i64;
                    };
                } else if (__value__ == (5449975i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L127"
                    if (stdgo.Go.toInterface(_err_9) == (stdgo.Go.toInterface(stdgo._internal.io.Io_eof.eOF))) {
                        _gotoNext = 5449997i64;
                    } else {
                        _gotoNext = 5450144i64;
                    };
                } else if (__value__ == (5449997i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L128"
                    if ((@:checkr _dec ?? throw "null pointer dereference")._scan._step((stdgo.Go.setRef((@:checkr _dec ?? throw "null pointer dereference")._scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>), (32 : stdgo.GoUInt8)) == ((10 : stdgo.GoInt))) {
                        _gotoNext = 5450047i64;
                    } else {
                        _gotoNext = 5450076i64;
                    };
                } else if (__value__ == (5450047i64)) {
                    inputBreak = true;
                    _gotoNext = 5449144i64;
                } else if (__value__ == (5450076i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L131"
                    if (stdgo._internal.encoding.json.Json__nonspace._nonSpace((@:checkr _dec ?? throw "null pointer dereference")._buf)) {
                        _gotoNext = 5450097i64;
                    } else {
                        _gotoNext = 5450144i64;
                    };
                } else if (__value__ == (5450097i64)) {
                    _err_9 = stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF;
                    _gotoNext = 5450144i64;
                } else if (__value__ == (5450144i64)) {
                    (@:checkr _dec ?? throw "null pointer dereference")._err = _err_9;
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L136"
                    return { _0 : (0 : stdgo.GoInt), _1 : _err_9 };
                    _gotoNext = 5450182i64;
                } else if (__value__ == (5450182i64)) {
                    _n_11 = (_scanp_8 - (@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt);
                    _err_9 = _dec._refill();
                    _scanp_8 = ((@:checkr _dec ?? throw "null pointer dereference")._scanp + _n_11 : stdgo.GoInt);
                    _gotoNext = 5449144i64;
                } else if (__value__ == (5450254i64)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L143"
                    return { _0 : (_scanp_8 - (@:checkr _dec ?? throw "null pointer dereference")._scanp : stdgo.GoInt), _1 : (null : stdgo.Error) };
                    _gotoNext = -1i64;
                };
            };
        };
        //"file://#L0"
        throw stdgo.Go.toInterface(("unreachable goto control flow" : stdgo.GoString));
    }
    @:keep
    @:tdfield
    static public function buffered( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):stdgo._internal.io.Io_reader.Reader {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L84"
        return stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp) : stdgo.Slice<stdgo.GoUInt8>)));
    }
    @:keep
    @:tdfield
    static public function decode( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>, _v:stdgo.AnyInterface):stdgo.Error {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L50"
        if ((@:checkr _dec ?? throw "null pointer dereference")._err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L51"
            return (@:checkr _dec ?? throw "null pointer dereference")._err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L54"
        {
            var _err = (_dec._tokenPrepareForDecode() : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L55"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L58"
        if (!_dec._tokenValueAllowed()) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L59"
            return stdgo.Go.asInterface((stdgo.Go.setRef(({ _msg : ("not at beginning of value" : stdgo.GoString), offset : _dec.inputOffset() } : stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError)) : stdgo.Ref<stdgo._internal.encoding.json.Json_syntaxerror.SyntaxError>));
        };
        var __tmp__ = _dec._readValue(), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L64"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L65"
            return _err;
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L67"
        (@:checkr _dec ?? throw "null pointer dereference")._d._init(((@:checkr _dec ?? throw "null pointer dereference")._buf.__slice__((@:checkr _dec ?? throw "null pointer dereference")._scanp, ((@:checkr _dec ?? throw "null pointer dereference")._scanp + _n : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
        (@:checkr _dec ?? throw "null pointer dereference")._scanp = ((@:checkr _dec ?? throw "null pointer dereference")._scanp + (_n) : stdgo.GoInt);
        _err = (@:checkr _dec ?? throw "null pointer dereference")._d._unmarshal(_v);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L76"
        _dec._tokenValueEnd();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/stream.go#L78"
        return _err;
    }
    @:keep
    @:tdfield
    static public function disallowUnknownFields( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw "null pointer dereference")._d._disallowUnknownFields = true;
    }
    @:keep
    @:tdfield
    static public function useNumber( _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder>):Void {
        @:recv var _dec:stdgo.Ref<stdgo._internal.encoding.json.Json_decoder.Decoder> = _dec;
        (@:checkr _dec ?? throw "null pointer dereference")._d._useNumber = true;
    }
}
