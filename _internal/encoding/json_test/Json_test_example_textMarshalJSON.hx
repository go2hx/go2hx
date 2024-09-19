package _internal.encoding.json_test;
function example_textMarshalJSON():Void {
        var _blob = ("[\"small\",\"regular\",\"large\",\"unrecognized\",\"small\",\"normal\",\"small\",\"large\"]" : stdgo.GoString);
        var _inventory:stdgo.Slice<_internal.encoding.json_test.Json_test_Size.Size> = (null : stdgo.Slice<_internal.encoding.json_test.Json_test_Size.Size>);
        {
            var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_blob : stdgo.Slice<stdgo.GoUInt8>), stdgo.Go.toInterface((stdgo.Go.setRef(_inventory) : stdgo.Ref<stdgo.Slice<_internal.encoding.json_test.Json_test_Size.Size>>))) : stdgo.Error);
            if (_err != null) {
                stdgo._internal.log.Log_fatal.fatal(stdgo.Go.toInterface(_err));
            };
        };
        var _counts = ({
            final x = new stdgo.GoMap.GoIntMap<stdgo.GoInt>();
            x.__defaultValue__ = () -> (0 : stdgo.GoInt);
            {};
            x;
        } : stdgo.GoMap<_internal.encoding.json_test.Json_test_Size.Size, stdgo.GoInt>);
        for (__0 => _size in _inventory) {
            _counts[_size] = ((_counts[_size] ?? (0 : stdgo.GoInt)) + ((1 : stdgo.GoInt)) : stdgo.GoInt);
        };
        stdgo._internal.fmt.Fmt_printf.printf(("Inventory Counts:\n* Small:        %d\n* Large:        %d\n* Unrecognized: %d\n" : stdgo.GoString), stdgo.Go.toInterface((_counts[(1 : _internal.encoding.json_test.Json_test_Size.Size)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_counts[(2 : _internal.encoding.json_test.Json_test_Size.Size)] ?? (0 : stdgo.GoInt))), stdgo.Go.toInterface((_counts[(0 : _internal.encoding.json_test.Json_test_Size.Size)] ?? (0 : stdgo.GoInt))));
    }
