package stdgo._internal.html.template;
function _replace(_s:stdgo.GoString, _replacementTable:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _written = __2, _w = __1, _r = __0;
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i = (_i + (_w) : stdgo.GoInt), {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decodeRuneInString.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
                    _r = __tmp__._0;
                    _w = __tmp__._1;
                };
                var _repl:stdgo.GoString = ("" : stdgo.GoString);
                if (((_r : stdgo.GoInt) < (stdgo._internal.html.template.Template__lowUnicodeReplacementTable._lowUnicodeReplacementTable.length) : Bool)) {
                    _repl = stdgo._internal.html.template.Template__lowUnicodeReplacementTable._lowUnicodeReplacementTable[(_r : stdgo.GoInt)]?.__copy__();
                } else if ((((_r : stdgo.GoInt) < (_replacementTable.length) : Bool) && (_replacementTable[(_r : stdgo.GoInt)] != stdgo.Go.str()) : Bool)) {
                    _repl = _replacementTable[(_r : stdgo.GoInt)]?.__copy__();
                } else if (_r == ((8232 : stdgo.GoInt32))) {
                    _repl = ("\\u2028" : stdgo.GoString);
                } else if (_r == ((8233 : stdgo.GoInt32))) {
                    _repl = ("\\u2029" : stdgo.GoString);
                } else {
                    continue;
                };
                if (_written == ((0 : stdgo.GoInt))) {
                    _b.grow((_s.length));
                };
                _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString)?.__copy__());
                _b.writeString(_repl?.__copy__());
                _written = (_i + _w : stdgo.GoInt);
            });
        };
        if (_written == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
