package stdgo._internal.html.template;
function _htmlReplacer(_s:stdgo.GoString, _replacementTable:stdgo.Slice<stdgo.GoString>, _badRunes:Bool):stdgo.GoString {
        var __0 = (0 : stdgo.GoInt), __1 = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
var _b = __1, _written = __0;
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt);
var _w = __1, _r = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
if (((_r : stdgo.GoInt) < (_replacementTable.length) : Bool)) {
                    {
                        var _repl = (_replacementTable[(_r : stdgo.GoInt)].__copy__() : stdgo.GoString);
                        if ((_repl.length) != ((0 : stdgo.GoInt))) {
                            if (_written == ((0 : stdgo.GoInt))) {
                                @:check2r _b.grow((_s.length));
                            };
                            @:check2r _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
                            @:check2r _b.writeString(_repl.__copy__());
                            _written = (_i + _w : stdgo.GoInt);
                        };
                    };
                } else if (_badRunes) {} else if (((((64976 : stdgo.GoInt32) <= _r : Bool) && (_r <= (65007 : stdgo.GoInt32) : Bool) : Bool) || (((65520 : stdgo.GoInt32) <= _r : Bool) && (_r <= (65535 : stdgo.GoInt32) : Bool) : Bool) : Bool)) {
                    if (_written == ((0 : stdgo.GoInt))) {
                        @:check2r _b.grow((_s.length));
                    };
                    stdgo._internal.fmt.Fmt_fprintf.fprintf(stdgo.Go.asInterface(_b), ("%s&#x%x;" : stdgo.GoString), stdgo.Go.toInterface((_s.__slice__(_written, _i) : stdgo.GoString)), stdgo.Go.toInterface(_r));
                    _written = (_i + _w : stdgo.GoInt);
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
        };
        if (_written == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        @:check2r _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        return (@:check2r _b.string() : stdgo.GoString)?.__copy__();
    }
