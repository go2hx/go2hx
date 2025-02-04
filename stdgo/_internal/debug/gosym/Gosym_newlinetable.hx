package stdgo._internal.debug.gosym;
function newLineTable(_data:stdgo.Slice<stdgo.GoUInt8>, _text:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> {
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
        } : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>) : stdgo.GoMap<stdgo.GoUInt32, stdgo.GoString>) } : stdgo._internal.debug.gosym.Gosym_linetable.LineTable)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
    }
