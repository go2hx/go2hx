package stdgo._internal.index.suffixarray;
import stdgo._internal.errors.Errors;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.io.Io;
import stdgo._internal.sort.Sort;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.regexp.Regexp;
function _text_32(_text:stdgo.Slice<stdgo.GoUInt8>, _sa:stdgo.Slice<stdgo.GoInt32>):Void {
        if (((((_text.length : stdgo.GoInt32) : stdgo.GoInt) != (_text.length)) || (_text.length != (_sa.length)) : Bool)) {
            throw stdgo.Go.toInterface(("suffixarray: misuse of text_32" : stdgo.GoString));
        };
        stdgo._internal.index.suffixarray.Suffixarray__sais_8_32._sais_8_32(_text, (256 : stdgo.GoInt), _sa, (new stdgo.Slice<stdgo.GoInt32>((512 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoInt32>));
    }
