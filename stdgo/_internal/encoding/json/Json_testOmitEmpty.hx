package stdgo._internal.encoding.json;
function testOmitEmpty(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _o:stdgo._internal.encoding.json.Json_Optionals.Optionals = ({} : stdgo._internal.encoding.json.Json_Optionals.Optionals);
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
        var __tmp__ = stdgo._internal.encoding.json.Json_marshalIndent.marshalIndent(stdgo.Go.toInterface((stdgo.Go.setRef(_o) : stdgo.Ref<stdgo._internal.encoding.json.Json_Optionals.Optionals>)), stdgo.Go.str()?.__copy__(), (" " : stdgo.GoString)), _got:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_err != null) {
            _t.fatal(stdgo.Go.toInterface(_err));
        };
        {
            var _got = ((_got : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (stdgo._internal.encoding.json.Json__optionalsExpected._optionalsExpected)) {
                _t.errorf((" got: %s\nwant: %s\n" : stdgo.GoString), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(stdgo._internal.encoding.json.Json__optionalsExpected._optionalsExpected));
            };
        };
    }