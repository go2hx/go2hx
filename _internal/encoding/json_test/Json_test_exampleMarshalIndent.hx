package _internal.encoding.json_test;
function exampleMarshalIndent():Void {
        var _data = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            x.set(("a" : stdgo.GoString), (1 : stdgo.GoInt));
x.set(("b" : stdgo.GoString), (2 : stdgo.GoInt));
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoInt>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(stdgo.Go.toInterface(_data), ("<prefix>" : stdgo.GoString), ("<indent>" : stdgo.GoString)), _b:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
        };
        stdgo._internal.fmt.Fmt_println.println(stdgo.Go.toInterface((_b : stdgo.GoString)));
    }
