package stdgo._internal.html;
function unescapeString(_s:stdgo.GoString):stdgo.GoString {
        stdgo._internal.html.Html__populateMapsOnce._populateMapsOnce.do_(stdgo._internal.html.Html__populateMaps._populateMaps);
        var _i = (stdgo._internal.strings.Strings_indexByte.indexByte(_s?.__copy__(), (38 : stdgo.GoUInt8)) : stdgo.GoInt);
        if ((_i < (0 : stdgo.GoInt) : Bool)) {
            return _s?.__copy__();
        };
        var _b = (_s : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.html.Html__unescapeEntity._unescapeEntity(_b, _i, _i), _dst:stdgo.GoInt = __tmp__._0, _src:stdgo.GoInt = __tmp__._1;
        while ((((_s.__slice__(_src) : stdgo.GoString).length) > (0 : stdgo.GoInt) : Bool)) {
            if (_s[(_src : stdgo.GoInt)] == ((38 : stdgo.GoUInt8))) {
                _i = (0 : stdgo.GoInt);
            } else {
                _i = stdgo._internal.strings.Strings_indexByte.indexByte((_s.__slice__(_src) : stdgo.GoString)?.__copy__(), (38 : stdgo.GoUInt8));
            };
            if ((_i < (0 : stdgo.GoInt) : Bool)) {
                _dst = (_dst + (stdgo.Go.copySlice((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(_src) : stdgo.GoString))) : stdgo.GoInt);
                break;
            };
            if ((_i > (0 : stdgo.GoInt) : Bool)) {
                stdgo.Go.copySlice((_b.__slice__(_dst) : stdgo.Slice<stdgo.GoUInt8>), (_s.__slice__(_src, (_src + _i : stdgo.GoInt)) : stdgo.GoString));
            };
            {
                var __tmp__ = stdgo._internal.html.Html__unescapeEntity._unescapeEntity(_b, (_dst + _i : stdgo.GoInt), (_src + _i : stdgo.GoInt));
                _dst = __tmp__._0;
                _src = __tmp__._1;
            };
        };
        return ((_b.__slice__(0, _dst) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__();
    }