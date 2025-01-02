package stdgo._internal.encoding.json;
function benchmarkCodeDecoder(_b:stdgo.Ref<stdgo._internal.testing.Testing_B.B>):Void {
        @:check2r _b.reportAllocs();
        if (stdgo._internal.encoding.json.Json__codeJSON._codeJSON == null) {
            @:check2r _b.stopTimer();
            stdgo._internal.encoding.json.Json__codeInit._codeInit();
            @:check2r _b.startTimer();
        };
        @:check2r _b.runParallel(function(_pb:stdgo.Ref<stdgo._internal.testing.Testing_PB.PB>):Void {
            var _buf:stdgo._internal.bytes.Bytes_Buffer.Buffer = ({} : stdgo._internal.bytes.Bytes_Buffer.Buffer);
            var _dec = stdgo._internal.encoding.json.Json_newDecoder.newDecoder(stdgo.Go.asInterface((stdgo.Go.setRef(_buf) : stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>)));
            var _r:stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse = ({} : stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse);
            while (@:check2r _pb.next()) {
                @:check2 _buf.write(stdgo._internal.encoding.json.Json__codeJSON._codeJSON);
                @:check2 _buf.writeByte((10 : stdgo.GoUInt8));
                @:check2 _buf.writeByte((10 : stdgo.GoUInt8));
                @:check2 _buf.writeByte((10 : stdgo.GoUInt8));
                {
                    var _err = (@:check2r _dec.decode(stdgo.Go.toInterface((stdgo.Go.setRef(_r) : stdgo.Ref<stdgo._internal.encoding.json.Json_T_codeResponse.T_codeResponse>))) : stdgo.Error);
                    if (_err != null) {
                        @:check2r _b.fatal(stdgo.Go.toInterface(("Decode:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
                    };
                };
            };
        });
        @:check2r _b.setBytes((stdgo._internal.encoding.json.Json__codeJSON._codeJSON.length : stdgo.GoInt64));
    }
