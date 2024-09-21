package _internal.encoding.hex_test;
function exampleDecode():Void {
        var _src = (("48656c6c6f20476f7068657221" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _dst = (new stdgo.Slice<stdgo.GoUInt8>((stdgo._internal.encoding.hex.Hex_decodedLen.decodedLen((_src.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
        var __tmp__ = stdgo._internal.encoding.hex.Hex_decode.decode(_dst, _src), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface((_dst.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>)));
    }
