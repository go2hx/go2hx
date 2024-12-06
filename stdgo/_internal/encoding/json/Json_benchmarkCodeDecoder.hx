package stdgo._internal.encoding.json;
function benchmarkCodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        _b.reportAllocs();
        if (stdgo._internal.encoding.json.Json__codeJSON._codeJSON == null) {
            _b.stopTimer();
            stdgo._internal.encoding.json.Json__codeInit._codeInit();
            _b.startTimer();
        };
        _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _buf__pointer__ = (stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>);
            var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface(_buf__pointer__));
            var _r:stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse = ({} : stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>);
            var _r__pointer__ = (stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>);
            while (_pb.next()) {
                _buf.write(stdgo._internal.encoding.json.Json__codeJSON._codeJSON);
                _buf.writeByte((10 : stdgo.GoUInt8));
                _buf.writeByte((10 : stdgo.GoUInt8));
                _buf.writeByte((10 : stdgo.GoUInt8));
                {
                    var _err = (_dec.decode(stdgo.Go.toInterface(_r__pointer__)) : stdgo.Error);
                    if (_err != null) {
                        _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        _b.setBytes((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length : stdgo.GoInt64));
    }
