package stdgo._internal.encoding.json;
function testUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1092"
        for (_i => _tt in stdgo._internal.encoding.json.Json__unmarshaltests._unmarshalTests) {
            var _scan:stdgo._internal.encoding.json.Json_t_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_t_scanner.T_scanner);
            var _in = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1095"
            {
                var _err = (stdgo._internal.encoding.json.Json__checkvalid._checkValid(_in, (stdgo.Go.setRef(_scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Error);
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1096"
                    if (!stdgo._internal.encoding.json.Json__equalerror._equalError(_err, _tt._err)) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1097"
                        _t.errorf(("#%d: checkValid: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1098"
                        continue;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1101"
            if (_tt._ptr == null) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1102"
                continue;
            };
            var _typ = (stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._ptr) : stdgo._internal.reflect.Reflect_type_.Type_);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1106"
            if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1107"
                _t.errorf(("#%d: unmarshalTest.ptr %T is not a pointer type" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1108"
                continue;
            };
            _typ = _typ.elem();
            var _v = (stdgo._internal.reflect.Reflect_new_.new_(_typ)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1115"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_tt._ptr, _v.interface_())) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1122"
                _t.errorf(("#%d: unmarshalTest.ptr %#v is not a pointer to a zero value" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1123"
                continue;
            };
            var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_in)));
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1127"
            if (_tt._useNumber) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1128"
                _dec.useNumber();
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1130"
            if (_tt._disallowUnknownFields) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1131"
                _dec.disallowUnknownFields();
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1133"
            {
                var _err = (_dec.decode(_v.interface_()) : stdgo.Error);
                if (!stdgo._internal.encoding.json.Json__equalerror._equalError(_err, _tt._err)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1134"
                    _t.errorf(("#%d: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1135"
                    continue;
                } else if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1137"
                    continue;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1139"
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.elem().interface_(), _tt._out)) {
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1140"
                _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _tt._out);
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v.elem().interface_()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1142"
                stdgo.Go.println((_data : stdgo.GoString));
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._out);
                    _data = @:tmpset0 __tmp__._0;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1144"
                stdgo.Go.println((_data : stdgo.GoString));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1145"
                continue;
            };
            //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1149"
            if (_tt._err == null) {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v.interface_()), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1151"
                if (_err != null) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1152"
                    _t.errorf(("#%d: error re-marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1153"
                    continue;
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1155"
                if ((_tt._golden && !stdgo._internal.bytes.Bytes_equal.equal(_enc, _in) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1156"
                    _t.errorf(("#%d: remarshal mismatch:\nhave: %s\nwant: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_in));
                };
                var _vv = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._ptr).elem())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_enc)));
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1160"
                if (_tt._useNumber) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1161"
                    _dec.useNumber();
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1163"
                {
                    var _err = (_dec.decode(_vv.interface_()) : stdgo.Error);
                    if (_err != null) {
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1164"
                        _t.errorf(("#%d: error re-unmarshaling %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                        //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1165"
                        continue;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1167"
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.elem().interface_(), _vv.elem().interface_())) {
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1168"
                    _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _vv.elem().interface_());
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1169"
                    _t.errorf(("     In: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_map_.map_(stdgo._internal.encoding.json.Json__nospace._noSpace, (_in : stdgo.GoString)?.__copy__())));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1170"
                    _t.errorf(("Marshal: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_map_.map_(stdgo._internal.encoding.json.Json__nospace._noSpace, (_enc : stdgo.GoString)?.__copy__())));
                    //"file:///home/runner/.go/go1.21.3/src/encoding/json/decode_test.go#L1171"
                    continue;
                };
            };
        };
    }
