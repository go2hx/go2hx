package _internal.encoding.json_test;
function exampleMarshal():Void {
        {};
        var _group = ({ id : (1 : stdgo.GoInt), name : ("Reds" : stdgo.GoString), colors : (new stdgo.Slice<stdgo.GoString>(4, 4, ...[("Crimson" : stdgo.GoString), ("Red" : stdgo.GoString), ("Ruby" : stdgo.GoString), ("Maroon" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>) } : _internal.encoding.json_test.Json_test_T_exampleMarshal___localname___ColorGroup_284.T_exampleMarshal___localname___ColorGroup_284);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface(_group)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.os.Os_stdout.stdout.write(_b);
    }
