package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_byteReplacer_asInterface) class T_byteReplacer_static_extension {
    @:keep
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>, _w:stdgo._internal.io.Io_Writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = (stdgo._internal.strings.Strings__getStringWriter._getStringWriter(_w) : stdgo._internal.io.Io_StringWriter.StringWriter);
        var _last = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_r[(_b : stdgo.GoInt)] == (_b)) {
                    continue;
                };
                if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString)?.__copy__()), _wn:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = (_n + (_wn) : stdgo.GoInt);
                    if (_err != null) {
                        return { _0 : _n, _1 : _err };
                    };
                };
                _last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
                var __tmp__ = _w.write((_r.__slice__(_b, ((_b : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _n = (_n + (_nw) : stdgo.GoInt);
                if (_err != null) {
                    return { _0 : _n, _1 : _err };
                };
            });
        };
        if (_last != ((_s.length))) {
            var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            _n = (_n + (_nw) : stdgo.GoInt);
            if (_err != null) {
                return { _0 : _n, _1 : _err };
            };
        };
        return { _0 : _n, _1 : (null : stdgo.Error) };
    }
    @:keep
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_T_byteReplacer.T_byteReplacer> = _r;
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_s.length) : Bool), _i++, {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_r[(_b : stdgo.GoInt)] != (_b)) {
                    if (_buf == null) {
                        _buf = (_s : stdgo.Slice<stdgo.GoUInt8>);
                    };
                    _buf[(_i : stdgo.GoInt)] = _r[(_b : stdgo.GoInt)];
                };
            });
        };
        if (_buf == null) {
            return _s?.__copy__();
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
}