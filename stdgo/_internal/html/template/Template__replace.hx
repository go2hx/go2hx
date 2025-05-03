package stdgo._internal.html.template;
function _replace(_s:stdgo.GoString, _replacementTable:stdgo.Slice<stdgo.GoString>):stdgo.GoString {
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _written = __2, _w = __1, _r = __0;
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L263"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
var _repl:stdgo.GoString = ("" : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L267"
                if (((_r : stdgo.GoInt) < (stdgo._internal.html.template.Template__lowunicodereplacementtable._lowUnicodeReplacementTable.length) : Bool)) {
                    _repl = stdgo._internal.html.template.Template__lowunicodereplacementtable._lowUnicodeReplacementTable[(_r : stdgo.GoInt)].__copy__();
                } else if ((((_r : stdgo.GoInt) < (_replacementTable.length) : Bool) && (_replacementTable[(_r : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    _repl = _replacementTable[(_r : stdgo.GoInt)].__copy__();
                } else if (_r == ((8232 : stdgo.GoInt32))) {
                    _repl = ("\\u2028" : stdgo.GoString);
                } else if (_r == ((8233 : stdgo.GoInt32))) {
                    _repl = ("\\u2029" : stdgo.GoString);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L277"
                    {
                        _i = (_i + (_w) : stdgo.GoInt);
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L279"
                if (_written == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L280"
                    _b.grow((_s.length));
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L282"
                _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
//"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L283"
                _b.writeString(_repl.__copy__());
_written = (_i + _w : stdgo.GoInt);
                _i = (_i + (_w) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L286"
        if (_written == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L287"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L289"
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/js.go#L290"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
