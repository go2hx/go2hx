package stdgo._internal.strings;
@:keep @:allow(stdgo._internal.strings.Strings.T_byteStringReplacer_asInterface) class T_byteStringReplacer_static_extension {
    @:keep
    @:tdfield
    static public function writeString( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer>, _w:stdgo._internal.io.Io_writer.Writer, _s:stdgo.GoString):{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer> = _r;
        var _n = (0 : stdgo.GoInt), _err = (null : stdgo.Error);
        var _sw = (stdgo._internal.strings.Strings__getstringwriter._getStringWriter(_w) : stdgo._internal.io.Io_stringwriter.StringWriter);
        var _last = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)] == null) {
                    {
                        _i++;
                        continue;
                    };
                };
if (_last != (_i)) {
                    var __tmp__ = _sw.writeString((_s.__slice__(_last, _i) : stdgo.GoString).__copy__()), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    _n = (_n + (_nw) : stdgo.GoInt);
                    if (_err != null) {
                        return {
                            final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                            _n = __tmp__._0;
                            _err = __tmp__._1;
                            __tmp__;
                        };
                    };
                };
_last = (_i + (1 : stdgo.GoInt) : stdgo.GoInt);
var __tmp__ = _w.write((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)]), _nw:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
_n = (_n + (_nw) : stdgo.GoInt);
if (_err != null) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoInt; var _1 : stdgo.Error; } = { _0 : _n, _1 : _err };
                        _n = __tmp__._0;
                        _err = __tmp__._1;
                        __tmp__;
                    };
                };
                _i++;
            };
        };
        if (_last != ((_s.length))) {
            var _nw:stdgo.GoInt = (0 : stdgo.GoInt);
            {
                var __tmp__ = _sw.writeString((_s.__slice__(_last) : stdgo.GoString)?.__copy__());
                _nw = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._1;
            };
            _n = (_n + (_nw) : stdgo.GoInt);
        };
        return { _0 : _n, _1 : _err };
    }
    @:keep
    @:tdfield
    static public function replace( _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer>, _s:stdgo.GoString):stdgo.GoString {
        @:recv var _r:stdgo.Ref<stdgo._internal.strings.Strings_t_bytestringreplacer.T_byteStringReplacer> = _r;
        var _newSize = (_s.length : stdgo.GoInt);
        var _anyChanges = (false : Bool);
        if (((((@:checkr _r ?? throw "null pointer dereference")._toReplace.length) * (8 : stdgo.GoInt) : stdgo.GoInt) <= (_s.length) : Bool)) {
            for (__0 => _x in (@:checkr _r ?? throw "null pointer dereference")._toReplace) {
                {
                    var _c = (stdgo._internal.strings.Strings_count.count(_s?.__copy__(), _x?.__copy__()) : stdgo.GoInt);
                    if (_c != ((0 : stdgo.GoInt))) {
                        _newSize = (_newSize + ((_c * ((((@:checkr _r ?? throw "null pointer dereference")._replacements[(_x[(0 : stdgo.GoInt)] : stdgo.GoInt)].length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.GoInt);
                        _anyChanges = true;
                    };
                };
            };
        } else {
            {
                var _i = (0 : stdgo.GoInt);
                while ((_i < (_s.length) : Bool)) {
                    var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)] != null) {
                        _newSize = (_newSize + ((((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)].length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                        _anyChanges = true;
                    };
                    _i++;
                };
            };
        };
        if (!_anyChanges) {
            return _s?.__copy__();
        };
        var _buf = (new stdgo.Slice<stdgo.GoUInt8>((_newSize : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var _j = (0 : stdgo.GoInt);
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if ((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)] != null) {
                    _j = (_j + ((_buf.__slice__(_j) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__((@:checkr _r ?? throw "null pointer dereference")._replacements[(_b : stdgo.GoInt)])) : stdgo.GoInt);
                } else {
                    _buf[(_j : stdgo.GoInt)] = _b;
                    _j++;
                };
                _i++;
            };
        };
        return (_buf : stdgo.GoString)?.__copy__();
    }
}
