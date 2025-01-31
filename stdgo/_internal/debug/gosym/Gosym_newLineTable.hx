package stdgo._internal.debug.gosym;
import stdgo._internal.encoding.binary.Binary;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.sort.Sort;
import stdgo._internal.strings.Strings;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.fmt.Fmt;
function newLineTable(_data:stdgo.Slice<stdgo.GoUInt8>, _text:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable> {
        return (stdgo.Go.setRef(({ data : _data, pC : _text, line : (0 : stdgo.GoInt), _funcNames : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>), _strings : (({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>) } : stdgo._internal.debug.gosym.Gosym_LineTable.LineTable)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_LineTable.LineTable>);
    }
