package stdgo._internal.html.template;
function _cssEscaper(_args:haxe.Rest<stdgo.AnyInterface>):stdgo.GoString {
        var _args = new stdgo.Slice<stdgo.AnyInterface>(_args.length, 0, ..._args);
        var __tmp__ = stdgo._internal.html.template.Template__stringify._stringify(...(_args : Array<stdgo.AnyInterface>)), _s:stdgo.GoString = __tmp__._0, __6:stdgo._internal.html.template.Template_t_contenttype.T_contentType = __tmp__._1;
        var _b:stdgo._internal.strings.Strings_builder.Builder = ({} : stdgo._internal.strings.Strings_builder.Builder);
        var __0 = ((0 : stdgo.GoInt32) : stdgo.GoInt32), __1 = (0 : stdgo.GoInt), __2 = (0 : stdgo.GoInt);
var _written = __2, _w = __1, _r = __0;
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString).__copy__());
                    _r = @:tmpset0 __tmp__._0;
                    _w = @:tmpset0 __tmp__._1;
                };
var _repl:stdgo.GoString = ("" : stdgo.GoString);
if ((((_r : stdgo.GoInt) < (stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable.length) : Bool) && (stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable[(_r : stdgo.GoInt)] != (stdgo.Go.str() : stdgo.GoString)) : Bool)) {
                    _repl = stdgo._internal.html.template.Template__cssreplacementtable._cssReplacementTable[(_r : stdgo.GoInt)].__copy__();
                } else {
                    {
                        _i = (_i + (_w) : stdgo.GoInt);
                        continue;
                    };
                };
if (_written == ((0 : stdgo.GoInt))) {
                    @:check2 _b.grow((_s.length));
                };
@:check2 _b.writeString((_s.__slice__(_written, _i) : stdgo.GoString).__copy__());
@:check2 _b.writeString(_repl.__copy__());
_written = (_i + _w : stdgo.GoInt);
if (((_repl != ("\\\\" : stdgo.GoString)) && (((_written == ((_s.length)) || stdgo._internal.html.template.Template__ishex._isHex(_s[(_written : stdgo.GoInt)]) : Bool) || stdgo._internal.html.template.Template__iscssspace._isCSSSpace(_s[(_written : stdgo.GoInt)]) : Bool)) : Bool)) {
                    @:check2 _b.writeByte((32 : stdgo.GoUInt8));
                };
                _i = (_i + (_w) : stdgo.GoInt);
            };
        };
        if (_written == ((0 : stdgo.GoInt))) {
            return _s?.__copy__();
        };
        @:check2 _b.writeString((_s.__slice__(_written) : stdgo.GoString)?.__copy__());
        return (@:check2 _b.string() : stdgo.GoString)?.__copy__();
    }
