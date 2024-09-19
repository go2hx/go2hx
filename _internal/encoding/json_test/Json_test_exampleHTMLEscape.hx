package _internal.encoding.json_test;
function exampleHTMLEscape():Void {
        var _out:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
        stdgo._internal.encoding.json.Json_htmlescape.htmlescape((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>), (("{\"Name\":\"<b>HTML content</b>\"}" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>));
        _out.writeTo(stdgo.Go.asInterface(stdgo._internal.os.Os_stdout.stdout));
    }
