package stdgo._internal.encoding.json;
function testDecoderBuffered(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _r = stdgo._internal.strings.Strings_newreader.newReader(("{\"Name\": \"Gopher\"} extra " : stdgo.GoString));
        var _m:stdgo._internal.encoding.json.Json_t__struct_41.T__struct_41 = ({ name : ("" : stdgo.GoString) } : stdgo._internal.encoding.json.Json_t__struct_41.T__struct_41);
        var _d = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(_r));
        var _err = (@:check2r _d.decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_m) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_41.T__struct_41>)))) : stdgo.Error);
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        if (_m.name != (("Gopher" : stdgo.GoString))) {
            @:check2r _t.errorf(("Name = %q; want Gopher" : stdgo.GoString), stdgo.Go.toInterface(_m.name));
        };
        var __tmp__ = stdgo._internal.io.Io_readall.readAll(@:check2r _d.buffered()), _rest:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            @:check2r _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var __0 = ((_rest : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((" extra " : stdgo.GoString) : stdgo.GoString);
var _w = __1, _g = __0;
            if (_g != (_w)) {
                @:check2r _t.errorf(("Remaining = %q; want %q" : stdgo.GoString), stdgo.Go.toInterface(_g), stdgo.Go.toInterface(_w));
            };
        };
    }
