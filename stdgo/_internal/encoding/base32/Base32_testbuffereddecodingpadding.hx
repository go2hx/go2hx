package stdgo._internal.encoding.base32;
function testBufferedDecodingPadding(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _testcases = (new stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3>(5, 5, ...[({ _chunks : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("I4======" : stdgo.GoString), ("==" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _expectedError : ("unexpected EOF" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3), ({ _chunks : (new stdgo.Slice<stdgo.GoString>(1, 1, ...[("I4======N4======" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _expectedError : ("illegal base32 data at input byte 2" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3), ({ _chunks : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("I4======" : stdgo.GoString), ("N4======" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _expectedError : ("illegal base32 data at input byte 0" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3), ({ _chunks : (new stdgo.Slice<stdgo.GoString>(2, 2, ...[("I4======" : stdgo.GoString), ("========" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _expectedError : ("illegal base32 data at input byte 0" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3), ({ _chunks : (new stdgo.Slice<stdgo.GoString>(3, 3, ...[("I4I4I4I4" : stdgo.GoString), ("I4======" : stdgo.GoString), ("I4======" : stdgo.GoString)]).__setString__() : stdgo.Slice<stdgo.GoString>), _expectedError : ("illegal base32 data at input byte 0" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3)].concat([for (i in 5 ... (5 > 5 ? 5 : 5 : stdgo.GoInt).toBasic()) ({ _chunks : (null : stdgo.Slice<stdgo.GoString>), _expectedError : ("" : stdgo.GoString) } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3)])) : stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3>);
        for (__0 => _testcase in _testcases) {
            var _testcase = ({
                final x = _testcase;
                ({ _chunks : x._chunks, _expectedError : x._expectedError?.__copy__() } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3);
            } : stdgo._internal.encoding.base32.Base32_t__struct_3.T__struct_3);
            var __tmp__ = stdgo._internal.io.Io_pipe.pipe(), _pr:stdgo.Ref<stdgo._internal.io.Io_pipereader.PipeReader> = __tmp__._0, _pw:stdgo.Ref<stdgo._internal.io.Io_pipewriter.PipeWriter> = __tmp__._1;
            stdgo.Go.routine(() -> ({
                var a = function():Void {
                    for (__1 => _chunk in _testcase._chunks) {
                        @:check2r _pw.write((_chunk : stdgo.Slice<stdgo.GoUInt8>));
                    };
                    @:check2r _pw.close();
                };
                a();
            }));
            var _decoder = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface(_pr)) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = stdgo._internal.io.Io_readall.readAll(_decoder), __1:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            if (((_err == null) && (_testcase._expectedError.length != (0 : stdgo.GoInt)) : Bool)) {
                @:check2r _t.errorf(("case %q: got nil error, want %v" : stdgo.GoString), stdgo.Go.toInterface(_testcase._chunks), stdgo.Go.toInterface(_testcase._expectedError));
            } else if (_err.error() != (_testcase._expectedError)) {
                @:check2r _t.errorf(("case %q: got %v, want %v" : stdgo.GoString), stdgo.Go.toInterface(_testcase._chunks), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_testcase._expectedError));
            };
        };
    }
