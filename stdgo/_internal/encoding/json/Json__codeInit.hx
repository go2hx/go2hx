package stdgo._internal.encoding.json;
function _codeInit():Void {
        var __deferstack__:Array<Void -> Void> = [];
        try {
            var __tmp__ = stdgo._internal.os.Os_open.open(("testdata/code.json.gz" : stdgo.GoString)), _f:stdgo.Ref<stdgo._internal.os.Os_File.File> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            __deferstack__.unshift(() -> _f.close());
            var __tmp__ = stdgo._internal.compress.gzip.Gzip_newReader.newReader(stdgo.Go.asInterface(_f)), _gz:stdgo.Ref<stdgo._internal.compress.gzip.Gzip_Reader.Reader> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            var __tmp__ = stdgo._internal.io.Io_readAll.readAll(stdgo.Go.asInterface(_gz)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (_err != null) {
                throw stdgo.Go.toInterface(_err);
            };
            stdgo._internal.encoding.json.Json__codeJSON._codeJSON = _data;
            {
                var _err = (stdgo._internal.encoding.json.Json_unmarshal.unmarshal(stdgo._internal.encoding.json.Json__codeJSON._codeJSON, stdgo.Go.toInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codeStruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>))) : stdgo.Error);
                if (_err != null) {
                    throw stdgo.Go.toInterface((("unmarshal code.json: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
            };
            {
                {
                    var __tmp__ = stdgo._internal.encoding.json.Json_marshal.marshal(stdgo.Go.toInterface((stdgo.Go.setRef(stdgo._internal.encoding.json.Json__codeStruct._codeStruct) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>)));
                    _data = __tmp__._0;
                    _err = __tmp__._1;
                };
                if (_err != null) {
                    throw stdgo.Go.toInterface((("marshal code.json: " : stdgo.GoString) + _err.error()?.__copy__() : stdgo.GoString));
                };
            };
            if (!stdgo._internal.bytes.Bytes_equal.equal(_data, stdgo._internal.encoding.json.Json__codeJSON._codeJSON)) {
                stdgo.Go.println(("different lengths" : stdgo.GoString), (_data.length), (stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length));
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor(((_i < (_data.length) : Bool) && (_i < (stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length) : Bool) : Bool), _i++, {
                        if (_data[(_i : stdgo.GoInt)] != (stdgo._internal.encoding.json.Json__codeJSON._codeJSON[(_i : stdgo.GoInt)])) {
                            stdgo.Go.println(("re-marshal: changed at byte" : stdgo.GoString), _i);
                            stdgo.Go.println(("orig: " : stdgo.GoString), ((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.__slice__((_i - (10 : stdgo.GoInt) : stdgo.GoInt), (_i + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString));
                            stdgo.Go.println(("new: " : stdgo.GoString), ((_data.__slice__((_i - (10 : stdgo.GoInt) : stdgo.GoInt), (_i + (10 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString));
                            break;
                        };
                    });
                };
                throw stdgo.Go.toInterface(("re-marshal code.json: different result" : stdgo.GoString));
            };
            {
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return;
        };
    }