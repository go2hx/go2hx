package stdgo._internal.html.template;
function _cssEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, __6:stdgo._internal.html.template.Template_T_contentType.T_contentType = __tmp__._1;
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
                if ((((_r : stdgo.GoInt) < (stdgo._internal.html.template.Template__cssReplacementTable._cssReplacementTable.length) : Bool) && (stdgo._internal.html.template.Template__cssReplacementTable._cssReplacementTable[(_r : stdgo.GoInt)] != stdgo.Go.str()) : Bool)) {
                    _repl = stdgo._internal.html.template.Template__cssReplacementTable._cssReplacementTable[(_r : stdgo.GoInt)]?.__copy__();
                } else {
                    continue;
                };
                if (_written == ((0 : stdgo.GoInt))) {
                    _b.grow((_s.length));
                };
                _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString)?.__copy__());
                _b.writeString(_repl?.__copy__());
                _written = (_i + _w : stdgo.GoInt);
                if (((_repl != ("\\\\" : stdgo.GoString)) && (((_written == ((_s.length)) || stdgo._internal.html.template.Template__isHex._isHex(_s[(_written : stdgo.GoInt)]) : Bool) || stdgo._internal.html.template.Template__isCSSSpace._isCSSSpace(_s[(_written : stdgo.GoInt)]) : Bool)) : Bool)) {
                    _b.writeByte((32 : stdgo.GoUInt8));
                };
            });
        };
        if (_written == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        return (_b.string() : stdgo.GoString)?.__copy__();
    }