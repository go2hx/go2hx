package stdgo._internal.mime;
function _consumeValue(_v:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _value = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        if (_v == ((stdgo.Go.str() : stdgo.GoString))) {
            return { _0 : _value, _1 : _rest };
        };
        if (_v[(0 : stdgo.GoInt)] != ((34 : stdgo.GoUInt8))) {
            return {
                final __tmp__ = stdgo._internal.mime.Mime__consumetoken._consumeToken(_v?.__copy__());
                _value = __tmp__._0?.__copy__();
                _rest = __tmp__._1?.__copy__();
                { _0 : _value, _1 : _rest };
            };
        };
        var _buffer = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>);
        {
            var _i = (1 : stdgo.GoInt);
            while ((_i < (_v.length) : Bool)) {
                var _r = (_v[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
if (_r == ((34 : stdgo.GoUInt8))) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (@:check2r _buffer.string() : stdgo.GoString).__copy__(), _1 : (_v.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString).__copy__() };
                        _value = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
if (((_r == ((92 : stdgo.GoUInt8)) && ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) < (_v.length) : Bool) : Bool) && stdgo._internal.mime.Mime__istspecial._isTSpecial((_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)] : stdgo.GoInt32)) : Bool)) {
                    @:check2r _buffer.writeByte(_v[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    _i++;
                    {
                        _i++;
                        continue;
                    };
                };
if (((_r == (13 : stdgo.GoUInt8)) || (_r == (10 : stdgo.GoUInt8)) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString).__copy__(), _1 : _v.__copy__() };
                        _value = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
@:check2r _buffer.writeByte(_v[(_i : stdgo.GoInt)]);
                _i++;
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _v?.__copy__() };
            _value = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
