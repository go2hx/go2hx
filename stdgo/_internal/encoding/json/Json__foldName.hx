package stdgo._internal.encoding.json;
function _foldName(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _arr:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32, ...[for (i in 0 ... 32) (0 : stdgo.GoUInt8)]);
        return stdgo._internal.encoding.json.Json__appendFoldedName._appendFoldedName((_arr.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _in);
    }
