package stdgo._internal.bufio;
import stdgo._internal.errors.Errors;
import stdgo._internal.unicode.utf8.Utf8;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
function _dropCR(_data:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        if ((((_data.length) > (0 : stdgo.GoInt) : Bool) && (_data[((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)] == (13 : stdgo.GoUInt8)) : Bool)) {
            return (_data.__slice__((0 : stdgo.GoInt), ((_data.length) - (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
        return _data;
    }
