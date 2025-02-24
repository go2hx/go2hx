package stdgo._internal.encoding.base32;
function testDecoderError(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        for (__0 => _readErr in (new stdgo.Slice<stdgo.Error>(2, 2, ...[stdgo._internal.io.Io_eof.eOF, (null : stdgo.Error)]) : stdgo.Slice<stdgo.Error>)) {
            var _input = (("MZXW6YTb" : stdgo.GoString) : stdgo.GoString);
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((@:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodedLen((_input.length)) : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _br = ({ _data : (_input : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_readErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader);
            var _decoder = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(_br) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader>))) : stdgo._internal.io.Io_reader.Reader);
            var __tmp__ = _decoder.read(_dbuf), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Read after EOF, n = %d, expected %d" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface((0 : stdgo.GoInt)));
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((stdgo.Go.toInterface(_err) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError)) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError), _1 : true };
                } catch(_) {
                    { _0 : ((0 : stdgo.GoInt64) : stdgo._internal.encoding.base32.Base32_corruptinputerror.CorruptInputError), _1 : false };
                }, __1 = __tmp__._0, _ok = __tmp__._1;
                if (!_ok) {
                    @:check2r _t.errorf(("Corrupt input error expected.  Found %T" : stdgo.GoString), stdgo.Go.toInterface(_err));
                };
            };
        };
    }
