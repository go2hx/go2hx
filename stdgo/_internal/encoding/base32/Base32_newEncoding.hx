package stdgo._internal.encoding.base32;
function newEncoding(_encoder:stdgo.GoString):stdgo.Ref<stdgo._internal.encoding.base32.Base32_Encoding.Encoding> {
        if ((_encoder.length) != ((32 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("encoding alphabet is not 32-bytes long" : stdgo.GoString));
        };
        var _e = (stdgo.Go.setRef(({} : stdgo._internal.encoding.base32.Base32_Encoding.Encoding)) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_Encoding.Encoding>);
        (@:checkr _e ?? throw "null pointer dereference")._padChar = (61 : stdgo.GoInt32);
        ((@:checkr _e ?? throw "null pointer dereference")._encode.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(_encoder);
        ((@:checkr _e ?? throw "null pointer dereference")._decodeMap.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(stdgo.Go.str(255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255,
255));
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_encoder.length) : Bool)) {
                (@:checkr _e ?? throw "null pointer dereference")._decodeMap[(_encoder[(_i : stdgo.GoInt)] : stdgo.GoInt)] = (_i : stdgo.GoUInt8);
                _i++;
            };
        };
        return _e;
    }
