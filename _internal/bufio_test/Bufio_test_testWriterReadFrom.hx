package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFrom(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _ws = (new stdgo.Slice<stdgo._internal.io.Io_Writer.Writer -> stdgo._internal.io.Io_Writer.Writer>(2, 2, ...[function(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
            return stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyWriter.T_onlyWriter(_w) : _internal.bufio_test.Bufio_test_T_onlyWriter.T_onlyWriter));
        }, function(_w:stdgo._internal.io.Io_Writer.Writer):stdgo._internal.io.Io_Writer.Writer {
            return _w;
        }]) : stdgo.Slice<stdgo._internal.io.Io_Writer.Writer -> stdgo._internal.io.Io_Writer.Writer>);
        var _rs = (new stdgo.Slice<stdgo._internal.io.Io_Reader.Reader -> stdgo._internal.io.Io_Reader.Reader>(2, 2, ...[stdgo._internal.testing.iotest.Iotest_dataErrReader.dataErrReader, function(_r:stdgo._internal.io.Io_Reader.Reader):stdgo._internal.io.Io_Reader.Reader {
            return _r;
        }]) : stdgo.Slice<stdgo._internal.io.Io_Reader.Reader -> stdgo._internal.io.Io_Reader.Reader>);
        for (_ri => _rfunc in _rs) {
            for (_wi => _wfunc in _ws) {
                var _input = _internal.bufio_test.Bufio_test__createTestInput._createTestInput((8192 : stdgo.GoInt));
                var _b = (stdgo.Go.setRef(({} : stdgo._internal.strings.Strings_Builder.Builder)) : stdgo.Ref<stdgo._internal.strings.Strings_Builder.Builder>);
                var _w = stdgo._internal.bufio.Bufio_newWriter.newWriter(_wfunc(stdgo.Go.asInterface(_b)));
                var _r = (_rfunc(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newReader.newReader(_input))) : stdgo._internal.io.Io_Reader.Reader);
                {
                    var __tmp__ = _w.readFrom(_r), _n:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                    if (((_err != null) || (_n != (_input.length : stdgo.GoInt64)) : Bool)) {
                        _t.errorf(("ws[%d],rs[%d]: w.ReadFrom(r) = %d, %v, want %d, nil" : stdgo.GoString), stdgo.Go.toInterface(_wi), stdgo.Go.toInterface(_ri), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(_err), stdgo.Go.toInterface((_input.length)));
                        continue;
                    };
                };
                {
                    var _err = (_w.flush() : stdgo.Error);
                    if (_err != null) {
                        _t.errorf(("Flush returned %v" : stdgo.GoString), stdgo.Go.toInterface(_err));
                        continue;
                    };
                };
                {
                    var __0 = ((_b.string() : stdgo.GoString)?.__copy__() : stdgo.GoString), __1 = ((_input : stdgo.GoString)?.__copy__() : stdgo.GoString);
var _want = __1, _got = __0;
                    if (_got != (_want)) {
                        _t.errorf(("ws[%d], rs[%d]:\ngot  %q\nwant %q\n" : stdgo.GoString), stdgo.Go.toInterface(_wi), stdgo.Go.toInterface(_ri), stdgo.Go.toInterface(_got), stdgo.Go.toInterface(_want));
                    };
                };
            };
        };
    }
