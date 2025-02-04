package stdgo._internal.strings;
function toValidUTF8(_s:stdgo.GoString, _replacement:stdgo.GoString):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        for (_i => _c in _s) {
            if (_c != ((65533 : stdgo.GoInt32))) {
                continue;
            };
            var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
            if (_wid == ((1 : stdgo.GoInt))) {
                @:check2 _b.grow(((_s.length) + (_replacement.length) : stdgo.GoInt));
                @:check2 _b.writeString((_s.__slice__(0, _i) : stdgo.GoString)?.__copy__());
                _s = (_s.__slice__(_i) : stdgo.GoString)?.__copy__();
                break;
            };
        };
        if (@:check2 _b.cap() == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        var _invalid = (false : Bool);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _c = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                    _i++;
                    _invalid = false;
                    @:check2 _b.writeByte(_c);
                    continue;
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), __0:stdgo.GoInt32 = __tmp__._0, _wid:stdgo.GoInt = __tmp__._1;
                if (_wid == ((1 : stdgo.GoInt))) {
                    _i++;
                    if (!_invalid) {
                        _invalid = true;
                        @:check2 _b.writeString(_replacement?.__copy__());
                    };
                    continue;
                };
                _invalid = false;
                @:check2 _b.writeString((_s.__slice__(_i, (_i + _wid : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _i = (_i + (_wid) : stdgo.GoInt);
            };
        };
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
