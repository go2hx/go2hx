package _internal.encoding.json_test;
function exampleValid():Void {
        var _goodJSON = ("{\"example\": 1}" : stdgo.GoString);
        var _badJSON = ("{\"example\":2:]}}" : stdgo.GoString);
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(stdgo._internal.encoding.json.Json_valid.valid((_goodJSON : stdgo.Slice<stdgo.GoUInt8>))), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json_valid.valid((_badJSON : stdgo.Slice<stdgo.GoUInt8>))));
    }
