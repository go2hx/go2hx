package stdgo._internal.encoding.json;
function testUnmarshalNulls(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _jsonData = ((("{\n\t\t\t\t\"Bool\"    : null,\n\t\t\t\t\"Int\"     : null,\n\t\t\t\t\"Int8\"    : null,\n\t\t\t\t\"Int16\"   : null,\n\t\t\t\t\"Int32\"   : null,\n\t\t\t\t\"Int64\"   : null,\n\t\t\t\t\"Uint\"    : null,\n\t\t\t\t\"Uint8\"   : null,\n\t\t\t\t\"Uint16\"  : null,\n\t\t\t\t\"Uint32\"  : null,\n\t\t\t\t\"Uint64\"  : null,\n\t\t\t\t\"Float32\" : null,\n\t\t\t\t\"Float64\" : null,\n\t\t\t\t\"String\"  : null,\n\t\t\t\t\"PBool\": null,\n\t\t\t\t\"Map\": null,\n\t\t\t\t\"Slice\": null,\n\t\t\t\t\"Interface\": null,\n\t\t\t\t\"PRaw\": null,\n\t\t\t\t\"PTime\": null,\n\t\t\t\t\"PBigInt\": null,\n\t\t\t\t\"PText\": null,\n\t\t\t\t\"PBuffer\": null,\n\t\t\t\t\"PStruct\": null,\n\t\t\t\t\"Raw\": null,\n\t\t\t\t\"Time\": null,\n\t\t\t\t\"BigInt\": null,\n\t\t\t\t\"Text\": null,\n\t\t\t\t\"Buffer\": null,\n\t\t\t\t\"Struct\": null\n\t\t\t}" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>);
        var _nulls = ({ bool_ : true, int_ : (2 : stdgo.GoInt), int8 : (3 : stdgo.GoInt8), int16 : (4 : stdgo.GoInt16), int32 : (5 : stdgo.GoInt32), int64 : (6i64 : stdgo.GoInt64), uint : (7u32 : stdgo.GoUInt), uint8 : (8 : stdgo.GoUInt8), uint16 : (9 : stdgo.GoUInt16), uint32 : (10u32 : stdgo.GoUInt32), uint64 : (11i64 : stdgo.GoUInt64), float32 : (12.100000381469727 : stdgo.GoFloat64), float64 : (13.1 : stdgo.GoFloat64), string : ("14" : stdgo.GoString), pBool : stdgo.Go.pointer(false), map_ : ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>), slice : (new stdgo.Slice<stdgo.GoString>(0, 0, ...[]).__setString__() : stdgo.Slice<stdgo.GoString>), interface_ : stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON)) : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaljson.MustNotUnmarshalJSON>))), pRaw : (stdgo.Go.setRef((new stdgo._internal.encoding.json.Json_rawmessage.RawMessage(0, 0) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage)) : stdgo.Ref<stdgo._internal.encoding.json.Json_rawmessage.RawMessage>), pTime : (stdgo.Go.setRef(({} : stdgo._internal.time.Time_time.Time)) : stdgo.Ref<stdgo._internal.time.Time_time.Time>), pBigInt : (stdgo.Go.setRef(({} : stdgo._internal.math.big.Big_int_.Int_)) : stdgo.Ref<stdgo._internal.math.big.Big_int_.Int_>), pText : (stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText)) : stdgo.Ref<stdgo._internal.encoding.json.Json_mustnotunmarshaltext.MustNotUnmarshalText>), pStruct : (stdgo.Go.setRef(({} : stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue)) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_unquotedvalue.T_unquotedValue>), pBuffer : (stdgo.Go.setRef(({} : stdgo._internal.bytes.Bytes_buffer.Buffer)) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>), raw : ((("123" : stdgo.GoString) : stdgo.GoString) : stdgo._internal.encoding.json.Json_rawmessage.RawMessage), time : stdgo._internal.time.Time_unix.unix((123456789i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64))?.__copy__(), bigInt : (stdgo._internal.math.big.Big_newint.newInt((123i64 : stdgo.GoInt64)) : stdgo._internal.math.big.Big_int_.Int_)?.__copy__() } : stdgo._internal.encoding.json.Json_nulltest.NullTest);
        var _before = ((_nulls.time.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(_jsonData, stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_nulls) : stdgo.Ref<stdgo._internal.encoding.json.Json_nulltest.NullTest>)))) : stdgo.Error);
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1862"
        if (_err != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1863"
            _t.errorf(("Unmarshal of null values failed: %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1865"
        if ((((((((((((((!_nulls.bool_ || _nulls.int_ != ((2 : stdgo.GoInt)) : Bool) || _nulls.int8 != ((3 : stdgo.GoInt8)) : Bool) || _nulls.int16 != ((4 : stdgo.GoInt16)) : Bool) || _nulls.int32 != ((5 : stdgo.GoInt32)) : Bool) || _nulls.int64 != ((6i64 : stdgo.GoInt64)) : Bool) || _nulls.uint != ((7u32 : stdgo.GoUInt)) : Bool) || _nulls.uint8 != ((8 : stdgo.GoUInt8)) : Bool) || _nulls.uint16 != ((9 : stdgo.GoUInt16)) : Bool) || _nulls.uint32 != ((10u32 : stdgo.GoUInt32)) : Bool) || _nulls.uint64 != ((11i64 : stdgo.GoUInt64)) : Bool) || _nulls.float32 != ((12.100000381469727 : stdgo.GoFloat64)) : Bool) || _nulls.float64 != ((13.1 : stdgo.GoFloat64)) : Bool) || (_nulls.string != ("14" : stdgo.GoString)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1868"
            _t.errorf(("Unmarshal of null values affected primitives" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1871"
        if (_nulls.pBool != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1872"
            _t.errorf(("Unmarshal of null did not clear nulls.PBool" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1874"
        if (_nulls.map_ != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1875"
            _t.errorf(("Unmarshal of null did not clear nulls.Map" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1877"
        if (_nulls.slice != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1878"
            _t.errorf(("Unmarshal of null did not clear nulls.Slice" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1880"
        if (_nulls.interface_ != null) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1881"
            _t.errorf(("Unmarshal of null did not clear nulls.Interface" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1883"
        if (({
            final value = _nulls.pRaw;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1884"
            _t.errorf(("Unmarshal of null did not clear nulls.PRaw" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1886"
        if (({
            final value = _nulls.pTime;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1887"
            _t.errorf(("Unmarshal of null did not clear nulls.PTime" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1889"
        if (({
            final value = _nulls.pBigInt;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1890"
            _t.errorf(("Unmarshal of null did not clear nulls.PBigInt" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1892"
        if (({
            final value = _nulls.pText;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1893"
            _t.errorf(("Unmarshal of null did not clear nulls.PText" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1895"
        if (({
            final value = _nulls.pBuffer;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1896"
            _t.errorf(("Unmarshal of null did not clear nulls.PBuffer" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1898"
        if (({
            final value = _nulls.pStruct;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1899"
            _t.errorf(("Unmarshal of null did not clear nulls.PStruct" : stdgo.GoString));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1902"
        if ((_nulls.raw : stdgo.GoString) != (("null" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1903"
            _t.errorf(("Unmarshal of RawMessage null did not record null: %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.raw : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1905"
        if ((_nulls.time.string() : stdgo.GoString) != (_before)) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1906"
            _t.errorf(("Unmarshal of time.Time null set time to %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.time.string() : stdgo.GoString)));
        };
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1908"
        if ((_nulls.bigInt.string() : stdgo.GoString) != (("123" : stdgo.GoString))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1909"
            _t.errorf(("Unmarshal of big.Int null set int to %v" : stdgo.GoString), stdgo.Go.toInterface((_nulls.bigInt.string() : stdgo.GoString)));
        };
    }
