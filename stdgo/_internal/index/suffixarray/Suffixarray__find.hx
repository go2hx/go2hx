package stdgo._internal.index.suffixarray;
function _find(_src:stdgo.GoString, _s:stdgo.GoString, _n:stdgo.GoInt):stdgo.Slice<stdgo.GoInt> {
        var _res:stdgo.Slice<stdgo.GoInt> = (null : stdgo.Slice<stdgo.GoInt>);
        if (((_s != (stdgo.Go.str() : stdgo.GoString)) && (_n != (0 : stdgo.GoInt)) : Bool)) {
            {
                var _i = (-1 : stdgo.GoInt);
                while (((_n < (0 : stdgo.GoInt) : Bool) || ((_res.length) < _n : Bool) : Bool)) {
                    var _j = (stdgo._internal.strings.Strings_index.index((_src.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), _s?.__copy__()) : stdgo.GoInt);
                    if ((_j < (0 : stdgo.GoInt) : Bool)) {
                        break;
                    };
                    _i = (_i + ((_j + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
                    _res = (_res.__append__(_i));
                };
            };
        };
        return _res;
    }
