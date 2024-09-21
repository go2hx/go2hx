package _internal.encoding.json_test;
function exampleUnmarshal():Void {
        var _jsonBlob:stdgo.Slice<stdgo.GoUInt8> = (("[\n\t{\"Name\": \"Platypus\", \"Order\": \"Monotremata\"},\n\t{\"Name\": \"Quoll\",    \"Order\": \"Dasyuromorphia\"}\n]" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        {};
        var _animals:stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleUnmarshal___localname___Animal_809.T_exampleUnmarshal___localname___Animal_809> = (null : stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleUnmarshal___localname___Animal_809.T_exampleUnmarshal___localname___Animal_809>);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_jsonBlob, stdgo.Go.toInterface((stdgo.Go.setRef(_animals) : stdgo.Ref<stdgo.Slice<_internal.encoding.json_test.Json_test_T_exampleUnmarshal___localname___Animal_809.T_exampleUnmarshal___localname___Animal_809>>))) : stdgo.Error);
        if (_err != null) {
            stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface(("error:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%+v" : stdgo.GoString), stdgo.Go.toInterface(_animals));
    }
