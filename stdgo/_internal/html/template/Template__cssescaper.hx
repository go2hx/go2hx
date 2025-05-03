package stdgo._internal.html.template;
function _cssEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, __6:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _written = __2, _w = __1, _r = __0;
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L162"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
var _repl:stdgo.GoString = ("" : stdgo.GoString);
//"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L166"
                if ((((_r : stdgo.GoInt) < (stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable.length) : Bool) && (stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable[(_r : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    _repl = stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable[(_r : stdgo.GoInt)].__copy__();
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L170"
                    {
                        _i = (_i + (_w) : stdgo.GoInt);
                        continue;
                    };
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L172"
                if (_written == ((0 : stdgo.GoInt))) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L173"
                    _b.grow((_s.length));
                };
//"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L175"
                _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
//"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L176"
                _b.writeString(_repl.__copy__());
_written = (_i + _w : stdgo.GoInt);
//"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L178"
                if (((_repl != ("\\\\" : stdgo.GoString)) && (((_written == ((_s.length)) || stdgo._internal.html.template.Template__ishex._isHex(_s[(_written : stdgo.GoInt)]) : Bool) || stdgo._internal.html.template.Template__iscssspace._isCSSSpace(_s[(_written : stdgo.GoInt)]) : Bool)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L179"
                    _b.writeByte((32 : stdgo.GoUInt8));
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L182"
        if (_written == ((0 : stdgo.GoInt))) {
            //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L183"
            return _s?.__copy__();
        };
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L185"
        _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        //"file:///home/runner/.go/go1.21.3/src/html/template/css.go#L186"
        return (_b.string() : stdgo.GoString)?.__copy__();
    }
