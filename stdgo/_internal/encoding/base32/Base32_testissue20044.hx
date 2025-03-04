package stdgo._internal.encoding.base32;
function testIssue20044(_t:stdgo.Ref<stdgo._internal.testing.Testing_t_.T_>):Void {
        var _badErr = (stdgo._internal.errors.Errors_new_.new_(("bad reader error" : stdgo.GoString)) : stdgo.Error);
        var _testCases = (new stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0>(12, 12, ...[
({ _r : ({ _data : ((("MY======" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("f" : stdgo.GoString), _err : _badErr, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("\n\n\n\n\n\n\n\n" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[_badErr, (null : stdgo.Error)]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _err : _badErr, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("\n\n\n\n\n\n\n\nMY======" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[(null : stdgo.Error), _badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("f" : stdgo.GoString), _err : _badErr, _dbuflen : (8 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("MY=====" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _err : _badErr, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("MY=====" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[(null : stdgo.Error)]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _err : stdgo._internal.io.Io_errunexpectedeof.errUnexpectedEOF, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("Ma======" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : (stdgo.Go.str() : stdgo.GoString)?.__copy__(), _err : _badErr, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("MZXW6YTB" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[stdgo._internal.io.Io_eof.eOF]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("fooba" : stdgo.GoString), _err : stdgo._internal.io.Io_eof.eOF, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("NRSWC43VOJSS4===" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[(null : stdgo.Error), _badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("leasure." : stdgo.GoString), _err : _badErr, _dbuflen : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("NRSWC43VOJSS4===" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[(null : stdgo.Error), stdgo._internal.io.Io_eof.eOF]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("leasure." : stdgo.GoString), _err : stdgo._internal.io.Io_eof.eOF, _dbuflen : (1 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("NRSWC43VOJSS4===" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[stdgo._internal.io.Io_eof.eOF]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("leasure." : stdgo.GoString), _err : stdgo._internal.io.Io_eof.eOF, _dbuflen : (11 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("NRSWC43VOJSS4===" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(1, 1, ...[_badErr]) : stdgo.Slice<stdgo.Error>) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("leasure." : stdgo.GoString), _err : _badErr, _dbuflen : (11 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0),
({ _r : ({ _data : ((("NRSWC43VOJSS4===" : stdgo.GoString) : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), _errs : (new stdgo.Slice<stdgo.Error>(2, 2, ...[(null : stdgo.Error), _badErr]) : stdgo.Slice<stdgo.Error>), _limit : (11 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("leasure." : stdgo.GoString), _err : _badErr, _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0)].concat([for (i in 12 ... (12 > 12 ? 12 : 12 : stdgo.GoInt).toBasic()) ({ _r : ({} : stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader), _res : ("" : stdgo.GoString), _err : (null : stdgo.Error), _dbuflen : (0 : stdgo.GoInt) } : stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0)])) : stdgo.Slice<stdgo._internal.encoding.base32.Base32_t__struct_0.T__struct_0>);
        for (__0 => _tc in _testCases) {
            var _input = _tc._r._data;
            var _decoder = (stdgo._internal.encoding.base32.Base32_newdecoder.newDecoder(stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding, stdgo.Go.asInterface((stdgo.Go.setRef(_tc._r) : stdgo.Ref<stdgo._internal.encoding.base32.Base32_t_badreader.T_badReader>))) : stdgo._internal.io.Io_reader.Reader);
            var _dbuflen:stdgo.GoInt = (0 : stdgo.GoInt);
            if ((_tc._dbuflen > (0 : stdgo.GoInt) : Bool)) {
                _dbuflen = _tc._dbuflen;
            } else {
                _dbuflen = @:check2r stdgo._internal.encoding.base32.Base32_stdencoding.stdEncoding.decodedLen((_input.length));
            };
            var _dbuf = (new stdgo.Slice<stdgo.GoUInt8>((_dbuflen : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            var _err:stdgo.Error = (null : stdgo.Error);
            var _res:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            while (_err == null) {
                var _n:stdgo.GoInt = (0 : stdgo.GoInt);
                {
                    var __tmp__ = _decoder.read(_dbuf);
                    _n = @:tmpset0 __tmp__._0;
                    _err = @:tmpset0 __tmp__._1;
                };
                if ((_n > (0 : stdgo.GoInt) : Bool)) {
                    _res = (_res.__append__(...((_dbuf.__slice__(0, _n) : stdgo.Slice<stdgo.GoUInt8>) : Array<stdgo.GoUInt8>)));
                };
            };
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decoding of %q = %q, want %q" : stdgo.GoString), stdgo.Go.toInterface((_input : stdgo.GoString)), stdgo.Go.toInterface((_res : stdgo.GoString)), stdgo.Go.toInterface(_tc._res));
            stdgo._internal.encoding.base32.Base32__testequal._testEqual(_t, ("Decoding of %q err = %v, expected %v" : stdgo.GoString), stdgo.Go.toInterface((_input : stdgo.GoString)), stdgo.Go.toInterface(_err), stdgo.Go.toInterface(_tc._err));
        };
    }
