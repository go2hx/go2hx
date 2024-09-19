package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_singleStringReplacer_asInterface) class T_singleStringReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>, _w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = (stdgo._internal.strings.Strings__getStringWriter._getStringWriter(_w) : stdgo._internal.io.Io_StringWriter.StringWriter);
        var __0:stdgo.GoInt = (0 : stdgo.GoInt), __1:stdgo.GoInt = (0 : stdgo.GoInt);
var _wn = __1, _i = __0;
        while (true) {
            var _match = (_r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            {
                var __tmp__ = _sw.writeString(_r._value?.__copy__());
                _wn = __tmp__._0;
                _err = __tmp__._1;
            };
            _n = (_n + (_wn) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
            _i = (_i + ((_match + (_r._finder._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        {
            var __tmp__ = _sw.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
            _wn = __tmp__._0;
            _err = __tmp__._1;
        };
        _n = (_n + (_wn) : stdgo.GoInt);
        return { _0 : _n, _1 : _err };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_singleStringReplacer.T_singleStringReplacer> = _r;
        var _buf:stdgo._internal.strings.Strings_Builder.Builder = ({} : stdgo._internal.strings.Strings_Builder.Builder);
        var __0 = (0 : stdgo.GoInt), __1 = (false : Bool);
var _matched = __1, _i = __0;
        while (true) {
            var _match = (_r._finder._next((_s.__slice__(_i) : stdgo.GoString)?.__copy__()) : stdgo.GoInt);
            if (_match == ((-1 : stdgo.GoInt))) {
                break;
            };
            _matched = true;
            _buf.grow((_match + (_r._value.length) : stdgo.GoInt));
            _buf.writeString((_s.__slice__(_i, (_i + _match : stdgo.GoInt)) : stdgo.GoString)?.__copy__());
            _buf.writeString(_r._value?.__copy__());
            _i = (_i + ((_match + (_r._finder._pattern.length) : stdgo.GoInt)) : stdgo.GoInt);
        };
        if (!_matched) {
            return _s?.__copy__();
        };
        _buf.writeString((_s.__slice__(_i) : stdgo.GoString)?.__copy__());
        return (_buf.string() : stdgo.GoString)?.__copy__();
    }
}
