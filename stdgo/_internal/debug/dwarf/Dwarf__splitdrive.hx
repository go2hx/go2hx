package stdgo._internal.debug.dwarf;
function _splitDrive(_path:stdgo.GoString):{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } {
        var _drive = ("" : stdgo.GoString), _rest = ("" : stdgo.GoString);
        if ((((_path.length) >= (2 : stdgo.GoInt) : Bool) && (_path[(1 : stdgo.GoInt)] == (58 : stdgo.GoUInt8)) : Bool)) {
            {
                var _c = (_path[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
                if (((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool) || (((65 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (90 : stdgo.GoUInt8) : Bool) : Bool) : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_path.__slice__(0, (2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__() };
                        _drive = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        if (((((_path.length) > (3 : stdgo.GoInt) : Bool) && (((_path[(0 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) || (_path[(0 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool) && (((_path[(1 : stdgo.GoInt)] == (92 : stdgo.GoUInt8)) || (_path[(1 : stdgo.GoInt)] == (47 : stdgo.GoUInt8)) : Bool)) : Bool)) {
            var _npath = (stdgo._internal.strings.Strings_replace.replace(_path?.__copy__(), ("/" : stdgo.GoString), ("\\" : stdgo.GoString), (-1 : stdgo.GoInt))?.__copy__() : stdgo.GoString);
            var _slash1 = (stdgo._internal.strings.Strings_indexbyte.indexByte((_npath.__slice__((2 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (92 : stdgo.GoUInt8)) + (2 : stdgo.GoInt) : stdgo.GoInt);
            if ((_slash1 > (2 : stdgo.GoInt) : Bool)) {
                var _slash2 = ((stdgo._internal.strings.Strings_indexbyte.indexByte((_npath.__slice__((_slash1 + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (92 : stdgo.GoUInt8)) + _slash1 : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt);
                if ((_slash2 > _slash1 : Bool)) {
                    return {
                        final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (_path.__slice__(0, _slash2) : stdgo.GoString)?.__copy__(), _1 : (_path.__slice__(_slash2) : stdgo.GoString)?.__copy__() };
                        _drive = __tmp__._0;
                        _rest = __tmp__._1;
                        __tmp__;
                    };
                };
            };
        };
        return {
            final __tmp__:{ var _0 : stdgo.GoString; var _1 : stdgo.GoString; } = { _0 : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _1 : _path?.__copy__() };
            _drive = __tmp__._0;
            _rest = __tmp__._1;
            __tmp__;
        };
    }
