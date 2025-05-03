package stdgo._internal.encoding.json;
function testOmitEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _o:stdgo._internal.encoding.json.Json_optionals.Optionals = ({} : stdgo._internal.encoding.json.Json_optionals.Optionals);
        _o.sw = ("something" : stdgo.GoString);
        _o.mr = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        _o.mo = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.AnyInterface>();
            x.__defaultValue__ = () -> (null : stdgo.AnyInterface);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.AnyInterface>);
        var __tmp__ = stdgo._internal.encoding.json.Json_marshalindent.marshalIndent(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_o) : stdgo.Ref<stdgo._internal.encoding.json.Json_optionals.Optionals>))), (stdgo.Go.str() : stdgo.GoString)?.__copy__(), (" " : stdgo.GoString)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L66"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L67"
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L69"
        {
            var _got = ((_got : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (stdgo._internal.encoding.json.Json__optionalsexpected._optionalsExpected)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/encode_test.go#L70"
                _t.errorf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__optionalsexpected._optionalsExpected));
            };
        };
    }
