package stdgo._internal.encoding.json;
function testUnmarshal(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (_i => _tt in stdgo._internal.encoding.json.Json__unmarshaltests._unmarshalTests) {
            var _scan:stdgo._internal.encoding.json.Json_t_scanner.T_scanner = ({} : stdgo._internal.encoding.json.Json_t_scanner.T_scanner);
            var _in = (_tt._in : stdgo.Slice<stdgo.GoUInt8>);
            {
                var _err = (stdgo._internal.encoding.json.Json__checkvalid._checkValid(_in, (stdgo.Go.setRef(_scan) : stdgo.Ref<stdgo._internal.encoding.json.Json_t_scanner.T_scanner>)) : stdgo.Error);
                if (_err != null) {
                    if (!stdgo._internal.encoding.json.Json__equalerror._equalError(_err, _tt._err)) {
                        @:check2r _t.errorf(("#%d: checkValid: %#v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
            };
            if (_tt._ptr == null) {
                continue;
            };
            var _typ = (stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._ptr) : stdgo._internal.reflect.Reflect_type_.Type_);
            if (_typ.kind() != ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                @:check2r _t.errorf(("#%d: unmarshalTest.ptr %T is not a pointer type" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                continue;
            };
            _typ = _typ.elem();
            var _v = (stdgo._internal.reflect.Reflect_new_.new_(_typ)?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_tt._ptr, _v.interface_())) {
                @:check2r _t.errorf(("#%d: unmarshalTest.ptr %#v is not a pointer to a zero value" : stdgo.GoString), stdgo.Go.toInterface(_i), _tt._ptr);
                continue;
            };
            var _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_in)));
            if (_tt._useNumber) {
                @:check2r _dec.useNumber();
            };
            if (_tt._disallowUnknownFields) {
                @:check2r _dec.disallowUnknownFields();
            };
            {
                var _err = (@:check2r _dec.decode(_v.interface_()) : stdgo.Error);
                if (!stdgo._internal.encoding.json.Json__equalerror._equalError(_err, _tt._err)) {
                    @:check2r _t.errorf(("#%d: %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tt._err));
                    continue;
                } else if (_err != null) {
                    continue;
                };
            };
            if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.elem().interface_(), _tt._out)) {
                @:check2r _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _tt._out);
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v.elem().interface_()), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __4:stdgo.Error = __tmp__._1;
                stdgo.Go.println((_data : stdgo.GoString));
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_tt._out);
                    _data = @:tmpset0 __tmp__._0;
                };
                stdgo.Go.println((_data : stdgo.GoString));
                continue;
            };
            if (_tt._err == null) {
                var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(_v.interface_()), _enc:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    @:check2r _t.errorf(("#%d: error re-marshaling: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_err));
                    continue;
                };
                if ((_tt._golden && !stdgo._internal.bytes.Bytes_equal.equal(_enc, _in) : Bool)) {
                    @:check2r _t.errorf(("#%d: remarshal mismatch:\nhave: %s\nwant: %s" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_in));
                };
                var _vv = (stdgo._internal.reflect.Reflect_new_.new_(stdgo._internal.reflect.Reflect_typeof.typeOf(_tt._ptr).elem())?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                _dec = stdgo._internal.encoding.json.Json_newdecoder.newDecoder(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newreader.newReader(_enc)));
                if (_tt._useNumber) {
                    @:check2r _dec.useNumber();
                };
                {
                    var _err = (@:check2r _dec.decode(_vv.interface_()) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _t.errorf(("#%d: error re-unmarshaling %#q: %v" : stdgo.GoString), stdgo.Go.toInterface(_i), stdgo.Go.toInterface(_enc), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                if (!stdgo._internal.reflect.Reflect_deepequal.deepEqual(_v.elem().interface_(), _vv.elem().interface_())) {
                    @:check2r _t.errorf(("#%d: mismatch\nhave: %#+v\nwant: %#+v" : stdgo.GoString), stdgo.Go.toInterface(_i), _v.elem().interface_(), _vv.elem().interface_());
                    @:check2r _t.errorf(("     In: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_map_.map_(stdgo._internal.encoding.json.Json__nospace._noSpace, (_in : stdgo.GoString)?.__copy__())));
                    @:check2r _t.errorf(("Marshal: %q" : stdgo.GoString), stdgo.Go.toInterface(stdgo._internal.strings.Strings_map_.map_(stdgo._internal.encoding.json.Json__nospace._noSpace, (_enc : stdgo.GoString)?.__copy__())));
                    continue;
                };
            };
        };
    }
