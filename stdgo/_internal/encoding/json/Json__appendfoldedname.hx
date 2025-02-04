package stdgo._internal.encoding.json;
function _appendFoldedName(_out:stdgo.Slice<stdgo.GoUInt8>, _in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_in.length) : Bool)) {
                {
                    var _c = (_in[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if ((_c < (128 : stdgo.GoUInt8) : Bool)) {
                        if ((((97 : stdgo.GoUInt8) <= _c : Bool) && (_c <= (122 : stdgo.GoUInt8) : Bool) : Bool)) {
                            _c = (_c - ((32 : stdgo.GoUInt8)) : stdgo.GoUInt8);
                        };
                        _out = (_out.__append__(_c));
                        _i++;
                        continue;
                    };
                };
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderune.decodeRune((_in.__slice__(_i) : stdgo.Slice<stdgo.GoUInt8>)), _r:stdgo.GoInt32 = __tmp__._0, _n:stdgo.GoInt = __tmp__._1;
                _out = stdgo._internal.unicode.utf8.Utf8_appendrune.appendRune(_out, stdgo._internal.encoding.json.Json__foldrune._foldRune(_r));
                _i = (_i + (_n) : stdgo.GoInt);
            };
        };
        return _out;
    }
