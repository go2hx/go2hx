package stdgo._internal.encoding.base64;
function testDecoderIssue3577(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _next = (new stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>((10 : stdgo.GoInt).toBasic(), () -> ({} : stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead)) : stdgo.Chan<stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead>);
        var _wantErr = (stdgo._internal.errors.Errors_new_.new_(("my error" : stdgo.GoString)) : stdgo.Error);
        _next.__send__((new stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead((5 : stdgo.GoInt), (null : stdgo.Error)) : stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead));
        _next.__send__((new stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead((10 : stdgo.GoInt), _wantErr) : stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead));
        _next.__send__((new stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead((0 : stdgo.GoInt), _wantErr) : stdgo._internal.encoding.base64.Base64_t_nextread.T_nextRead));
        var _d = (stdgo._internal.encoding.base64.Base64_newdecoder.newDecoder(stdgo._internal.encoding.base64.Base64_stdencoding.stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(({ _source : ("VHdhcyBicmlsbGlnLCBhbmQgdGhlIHNsaXRoeSB0b3Zlcw==" : stdgo.GoString), _nextc : _next } : stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader)) : stdgo.Ref<stdgo._internal.encoding.base64.Base64_t_faultinjectreader.T_faultInjectReader>))) : stdgo._internal.io.Io_reader.Reader);
        var _errc = (new stdgo.Chan<stdgo.Error>((1 : stdgo.GoInt).toBasic(), () -> (null : stdgo.Error)) : stdgo.Chan<stdgo.Error>);
        stdgo.Go.routine(() -> ({
            var a = function():Void {
                var __tmp__ = stdgo._internal.io.Io_readall.readAll(_d), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                _errc.__send__(_err);
            };
            a();
        }));
        {
            var __select__ = true;
            while (__select__) {
                if (_errc != null && _errc.__isGet__()) {
                    __select__ = false;
                    {
                        var _err = _errc.__get__();
                        {
                            if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(_wantErr))) {
                                @:check2r _t.errorf(("got error %v; want %v" : stdgo.GoString), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_wantErr));
                            };
                        };
                    };
                } else if (stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_duration.Duration)) != null && stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_duration.Duration)).__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.time.Time_after.after((5000000000i64 : stdgo._internal.time.Time_duration.Duration)).__get__();
                        {
                            @:check2r _t.errorf(("timeout; Decoder blocked without returning an error" : stdgo.GoString));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
