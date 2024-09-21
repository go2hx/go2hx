package _internal.encoding.json_test;
function example_customMarshalJSON():Void {
        var _blob = ("[\"gopher\",\"armadillo\",\"zebra\",\"unknown\",\"gopher\",\"bee\",\"gopher\",\"zebra\"]" : stdgo.GoString);
        var _zoo:stdgo.Slice<_internal.encoding.json_test.Json_test_Animal.Animal> = (null : stdgo.Slice<_internal.encoding.json_test.Json_test_Animal.Animal>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_blob : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_zoo) : stdgo.Ref<stdgo.Slice<_internal.encoding.json_test.Json_test_Animal.Animal>>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _census = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<_internal.encoding.json_test.Json_test_Animal.Animal, stdgo.GoInt>);
        for (__0 => _animal in _zoo) {
            _census[_animal] = ((_census[_animal] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.fmt.Fmt_printf.printf(("Zoo Census:\n* Gophers: %d\n* Zebras:  %d\n* Unknown: %d\n" : stdgo.GoString), stdgo.Go.toInterface((_census[(1 : _internal.encoding.json_test.Json_test_Animal.Animal)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_census[(2 : _internal.encoding.json_test.Json_test_Animal.Animal)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_census[(0 : _internal.encoding.json_test.Json_test_Animal.Animal)] ?? (0 : stdgo.GoInt))));
    }
