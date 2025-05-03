package stdgo._internal.html.template;
function _htmlReplacer(_s:stdgo.GoString, _replacementTable:stdgo.Slice<stdgo.GoString>, _badRunes:Bool):stdgo.GoString {
        var __0 = (0 : stdgo.GoInt), __1 = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
var _b = __1, _written = __0;
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt);
var _w = __1, _r = __0;
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L147"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L152"
                if (((_r : stdgo.GoInt) < (_replacementTable.length) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L153"
                    {
                        var _repl = (_replacementTable[(_r : stdgo.GoInt)].__copy__() : stdgo.GoString);
                        if ((_repl.length) != ((0 : stdgo.GoInt))) {
                            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L154"
                            if (_written == ((0 : stdgo.GoInt))) {
                                //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L155"
                                _b.grow((_s.length));
                            };
                            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L157"
                            _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
                            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L158"
                            _b.writeString(_repl.__copy__());
                            _written = (_i + _w : stdgo.GoInt);
                        };
                    };
                } else if (_badRunes) {} else if (((((64976 : stdgo.GoInt32) <= _r : Bool) && (_r <= (65007 : stdgo.GoInt32) : Bool) : Bool) || (((65520 : stdgo.GoInt32) <= _r : Bool) && (_r <= (65535 : stdgo.GoInt32) : Bool) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L165"
                    if (_written == ((0 : stdgo.GoInt))) {
                        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L166"
                        _b.grow((_s.length));
                    };
                    //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L168"
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%s&#x%x;" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_written, _i) : stdgo.GoString)), stdgo.Go.toInterface(_r));
                    _written = (_i + _w : stdgo.GoInt);
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L172"
        if (_written == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L173"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L175"
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/html.go#L176"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
