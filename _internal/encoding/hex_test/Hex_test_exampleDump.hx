package _internal.encoding.hex_test;
function exampleDump():Void {
        var _content = (("Go is an open source programming language." : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        stdgo._internal.fmt.Fmt_printf.printf(("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.encoding.hex.Hex_dump.dump(_content)));
    }
