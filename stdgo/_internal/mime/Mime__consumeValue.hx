package stdgo._internal.mime;
function _consumeValue(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _value = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        if (_v == (stdgo.Go.str())) {
            return { _0 : _value, _1 : _rest };
        };
        if (_v[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
            return stdgo._internal.mime.Mime__consumeToken._consumeToken(_v?.__copy__());
        };
        var _buffer = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
        {
            var _i = (1 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_v.length) : Bool), _i++, {
                var _r = (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                if (_r == ((34 : stdgo.GoUInt8))) {
                    return { _0 : (_buffer.string() : stdgo.GoString)?.__copy__(), _1 : (_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                };
                if (((_r == ((92 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_v.length) : Bool) : Bool) && stdgo._internal.mime.Mime__isTSpecial._isTSpecial((_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32)) : Bool)) {
                    _buffer.writeByte(_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _i++;
                    continue;
                };
                if (((_r == (13 : stdgo.GoUInt8)) || (_r == (10 : stdgo.GoUInt8)) : Bool)) {
                    return { _0 : stdgo.Go.str()?.__copy__(), _1 : _v?.__copy__() };
                };
                _buffer.writeByte(_v[(_i : stdgo.GoInt)]);
            });
        };
        return { _0 : stdgo.Go.str()?.__copy__(), _1 : _v?.__copy__() };
    }
