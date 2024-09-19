package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function testWriterReadFromCounts(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _w0:_internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard = ((0 : stdgo.GoInt) : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard);
        var _b0 = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(stdgo.Go.pointer(_w0)), (1234 : stdgo.GoInt));
        _b0.writeString(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1000 : stdgo.GoInt))?.__copy__());
        if (_w0 != ((0 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1000 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        _b0.writeString(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (200 : stdgo.GoInt))?.__copy__());
        if (_w0 != ((0 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_b0), stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (30 : stdgo.GoInt))?.__copy__()))) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
        if (_w0 != ((0 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1230 \'x\'s: got %d writes, want 0" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_b0), stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (9 : stdgo.GoInt))?.__copy__()))) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
        if (_w0 != ((1 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1239 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w0)));
        };
        var _w1:_internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard = ((0 : stdgo.GoInt) : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard);
        var _b1 = stdgo._internal.bufio.Bufio_newWriterSize.newWriterSize(stdgo.Go.asInterface(stdgo.Go.pointer(_w1)), (1234 : stdgo.GoInt));
        _b1.writeString(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (1200 : stdgo.GoInt))?.__copy__());
        _b1.flush();
        if (_w1 != ((1 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("flush 1200 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        _b1.writeString(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (89 : stdgo.GoInt))?.__copy__());
        if (_w1 != ((1 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 89 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_b1), stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (700 : stdgo.GoInt))?.__copy__()))) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
        if (_w1 != ((1 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 789 \'x\'s: got %d writes, want 1" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        stdgo._internal.io.Io_copy.copy(stdgo.Go.asInterface(_b1), stdgo.Go.asInterface((new _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(stdgo._internal.strings.Strings_repeat.repeat(("x" : stdgo.GoString), (600 : stdgo.GoInt))?.__copy__()))) : _internal.bufio_test.Bufio_test_T_onlyReader.T_onlyReader)));
        if (_w1 != ((2 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("write 1200 + 1389 \'x\'s: got %d writes, want 2" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
        _b1.flush();
        if (_w1 != ((3 : _internal.bufio_test.Bufio_test_T_writeCountingDiscard.T_writeCountingDiscard))) {
            _t.fatalf(("flush 1200 + 1389 \'x\'s: got %d writes, want 3" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.asInterface(_w1)));
        };
    }
