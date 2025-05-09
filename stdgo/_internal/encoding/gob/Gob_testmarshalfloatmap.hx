package stdgo._internal.encoding.gob;
function testMarshalFloatMap(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _nan1 = (stdgo._internal.math.Math_nan.naN() : stdgo.GoFloat64);
        var _nan2 = (stdgo._internal.math.Math_float64frombits.float64frombits((stdgo._internal.math.Math_float64bits.float64bits(_nan1) ^ (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoFloat64);
        var _in = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            x.set(_nan1, ("a" : stdgo.GoString));
x.set(_nan1, ("b" : stdgo.GoString));
x.set(_nan2, ("c" : stdgo.GoString));
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>);
        var _b:stdgo._internal.bytes.Bytes_buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_buffer.Buffer);
        var _enc = stdgo._internal.encoding.gob.Gob_newencoder.newEncoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1171"
        {
            var _err = (_enc.encode(stdgo.Go.toInterface(_in)) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1172"
                _t.errorf(("Encode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        var _out = ({
            final x = new stdgo.GoMap.GoFloat64Map<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>);
        var _dec = stdgo._internal.encoding.gob.Gob_newdecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_b) : stdgo.Ref<stdgo._internal.bytes.Bytes_buffer.Buffer>)));
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1177"
        {
            var _err = (_dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_out) : stdgo.Ref<stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>>))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1178"
                _t.fatalf(("Decode : %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
        {};
        var _readMap = function(_m:stdgo.GoMap<stdgo.GoFloat64, stdgo.GoString>):stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951> {
            var _entries = (null : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1186"
            for (_k => _v in _m) {
                _entries = (_entries.__append__((new stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951(stdgo._internal.math.Math_float64bits.float64bits(_k), _v?.__copy__()) : stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951)) : stdgo.Slice<stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951>);
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1189"
            stdgo._internal.sort.Sort_slice.slice(stdgo.Go.toInterface(_entries), function(_i:stdgo.GoInt, _j:stdgo.GoInt):Bool {
                var __0 = (_entries[(_i : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951), __1 = (_entries[(_j : stdgo.GoInt)] : stdgo._internal.encoding.gob.Gob_t_testmarshalfloatmap___localname___mapentry_27951.T_testMarshalFloatMap___localname___mapEntry_27951);
var _ej = __1, _ei = __0;
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1191"
                if (_ei._keyBits != (_ej._keyBits)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1192"
                    return (_ei._keyBits < _ej._keyBits : Bool);
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1194"
                return (_ei._value < _ej._value : Bool);
            });
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1196"
            return _entries;
        };
        var _got = _readMap(_out);
        var _want = _readMap(_in);
        //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1201"
        if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want))) {
            //"file:///home/runner/.go/go1.21.3/src/encoding/gob/encoder_test.go#L1202"
            _t.fatalf(("\nEncode: %v\nDecode: %v" : stdgo.GoString), stdgo.Go.toInterface(_want), stdgo.Go.toInterface(_got));
        };
    }
