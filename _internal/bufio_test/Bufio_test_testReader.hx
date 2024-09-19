package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _texts:stdgo.GoArray<stdgo.GoString> = new stdgo.GoArray<stdgo.GoString>(31, 31, ...[for (i in 0 ... 31) ("" : stdgo.GoString)]);
        var _str = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        var _all = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (30 : stdgo.GoInt) : Bool), _i++, {
                _texts[(_i : stdgo.GoInt)] = (_str + ("\n" : stdgo.GoString)?.__copy__() : stdgo.GoString)?.__copy__();
                _all = (_all + (_texts[(_i : stdgo.GoInt)])?.__copy__() : stdgo.GoString);
                _str = (_str + (((((_i % (26 : stdgo.GoInt) : stdgo.GoInt) + (97 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoInt32) : stdgo.GoString))?.__copy__() : stdgo.GoString);
            });
        };
        _texts[(30 : stdgo.GoInt)] = _all?.__copy__();
        {
            var _h = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_h < (_texts.length) : Bool), _h++, {
                var _text = (_texts[(_h : stdgo.GoInt)]?.__copy__() : stdgo.GoString);
                {
                    var _i = (0 : stdgo.GoInt);
                    stdgo.Go.cfor((_i < (_internal.bufio_test.Bufio_test__readMakers._readMakers.length) : Bool), _i++, {
                        {
                            var _j = (0 : stdgo.GoInt);
                            stdgo.Go.cfor((_j < (_internal.bufio_test.Bufio_test__bufreaders._bufreaders.length) : Bool), _j++, {
                                {
                                    var _k = (0 : stdgo.GoInt);
                                    stdgo.Go.cfor((_k < (_internal.bufio_test.Bufio_test__bufsizes._bufsizes.length) : Bool), _k++, {
                                        var _readmaker = (_internal.bufio_test.Bufio_test__readMakers._readMakers[(_i : stdgo.GoInt)] : _internal.bufio_test.Bufio_test_T_readMaker.T_readMaker);
                                        var _bufreader = (_internal.bufio_test.Bufio_test__bufreaders._bufreaders[(_j : stdgo.GoInt)] : _internal.bufio_test.Bufio_test_T_bufReader.T_bufReader);
                                        var _bufsize = (_internal.bufio_test.Bufio_test__bufsizes._bufsizes[(_k : stdgo.GoInt)] : stdgo.GoInt);
                                        var _read = (_readmaker._fn(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(_text?.__copy__()))) : stdgo._internal.io.Io_Reader.Reader);
                                        var _buf = stdgo._internal.bufio.Bufio_newReaderSize.newReaderSize(_read, _bufsize);
                                        var _s = (_bufreader._fn(_buf)?.__copy__() : stdgo.GoString);
                                        if (_s != (_text)) {
                                            _t.errorf(("reader=%s fn=%s bufsize=%d want=%q got=%q" : stdgo.GoString), stdgo.Go.toInterface(_readmaker._name), stdgo.Go.toInterface(_bufreader._name), stdgo.Go.toInterface(_bufsize), stdgo.Go.toInterface(_text), stdgo.Go.toInterface(_s));
                                        };
                                    });
                                };
                            });
                        };
                    });
                };
            });
        };
    }
