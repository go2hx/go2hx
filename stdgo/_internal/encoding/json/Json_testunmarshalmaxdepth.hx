package stdgo._internal.encoding.json;
function testUnmarshalMaxDepth(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testcases = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16>(6, 6, ...[({ _name : ("ArrayUnderMaxNestingDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16), ({ _name : ("ArrayOverMaxNestingDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16), ({ _name : ("ArrayOverStackDepth" : stdgo.GoString), _data : (((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("[" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("]" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16), ({ _name : ("ObjectUnderMaxNestingDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (9999 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16), ({ _name : ("ObjectOverMaxNestingDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (10000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16), ({ _name : ("ObjectOverStackDepth" : stdgo.GoString), _data : ((((("{\"a\":" : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("{\"a\":" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("0" : stdgo.GoString)?.__copy__() : stdgo.GoString) + stdgo._internal.strings.Strings_repeat.repeat(("}" : stdgo.GoString), (3000000 : stdgo.GoInt))?.__copy__() : stdgo.GoString) + ("}" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__(), _errMaxDepth : true } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16)].concat([for (i in 6 ... (6 > 6 ? 6 : 6 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _data : ("" : stdgo.GoString), _errMaxDepth : false } : stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_16.T__struct_16>);
        var _targets = (new stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17>(4, 4, ...[({ _name : ("unstructured" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v:stdgo.AnyInterface = (null : stdgo.AnyInterface);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2526"
            return stdgo.Go.toInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo.AnyInterface>));
        } } : stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17), ({ _name : ("typed named field" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = ({ a : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_t__struct_18.T__struct_18);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2535"
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_18.T__struct_18>)));
        } } : stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17), ({ _name : ("typed missing field" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = ({ b : (null : stdgo.AnyInterface) } : stdgo._internal.encoding.json.Json_t__struct_19.T__struct_19);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2544"
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_t__struct_19.T__struct_19>)));
        } } : stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17), ({ _name : ("custom unmarshaler" : stdgo.GoString), _newValue : function():stdgo.AnyInterface {
            var _v = (new stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler() : stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2551"
            return stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_v) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unmarshaler.T_unmarshaler>)));
        } } : stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17)].concat([for (i in 4 ... (4 > 4 ? 4 : 4 : stdgo.GoInt).toBasic()) ({ _name : ("" : stdgo.GoString), _newValue : null } : stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17)])) : stdgo.Slice<stdgo._internal.encoding.json.Json_t__struct_17.T__struct_17>);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2556"
        for (__4 => _tc in _testcases) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2557"
            for (__5 => _target in _targets) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2558"
                _t.run(((_target._name + ("-" : stdgo.GoString)?.__copy__() : stdgo.GoString) + _tc._name?.__copy__() : stdgo.GoString)?.__copy__(), function(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
                    var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal((_tc._data : stdgo.Slice<stdgo.GoUInt8>), _target._newValue()) : stdgo.Error);
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2560"
                    if (!_tc._errMaxDepth) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2561"
                        if (_err != null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2562"
                            _t.errorf(("unexpected error: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    } else {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2565"
                        if (_err == null) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2566"
                            _t.errorf(("expected error containing \'exceeded max depth\', got none" : stdgo.GoString));
                        } else if (!stdgo._internal.strings.Strings_contains.contains(_err.error()?.__copy__(), ("exceeded max depth" : stdgo.GoString))) {
                            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L2568"
                            _t.errorf(("expected error containing \'exceeded max depth\', got: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        };
                    };
                });
            };
        };
    }
