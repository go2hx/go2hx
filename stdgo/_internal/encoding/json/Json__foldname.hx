package stdgo._internal.encoding.json;
function _foldName(_in:stdgo.Slice<stdgo.GoUInt8>):stdgo.Slice<stdgo.GoUInt8> {
        var _arr:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(32, 32).__setNumber32__();
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/fold.go#L17"
        return stdgo._internal.encoding.json.Json__appendfoldedname._appendFoldedName((_arr.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), _in);
    }
