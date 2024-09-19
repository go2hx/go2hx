package _internal.io_test;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
import stdgo._internal.io.Io;
function testMultiReader(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _mr:stdgo._internal.io.Io_Reader.Reader = (null : stdgo._internal.io.Io_Reader.Reader);
        var _buf:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
        var _nread = (0 : stdgo.GoInt);
        var _withFooBar = (function(_tests:() -> Void):Void {
            var _r1 = stdgo._internal.strings.Strings_newReader.newReader(("foo " : stdgo.GoString));
            var _r2 = stdgo._internal.strings.Strings_newReader.newReader(stdgo.Go.str()?.__copy__());
            var _r3 = stdgo._internal.strings.Strings_newReader.newReader(("bar" : stdgo.GoString));
            _mr = stdgo._internal.io.Io_multiReader.multiReader(stdgo.Go.asInterface(_r1), stdgo.Go.asInterface(_r2), stdgo.Go.asInterface(_r3));
            _buf = (new stdgo.Slice<stdgo.GoUInt8>((20 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>);
            _tests();
        } : (() -> Void) -> Void);
        var _expectRead = (function(_size:stdgo.GoInt, _expected:stdgo.GoString, _eerr:stdgo.Error):Void {
            _nread++;
            var __tmp__ = _mr.read((_buf.__slice__((0 : stdgo.GoInt), _size) : stdgo.Slice<stdgo.GoUInt8>)), _n:stdgo.GoInt = __tmp__._0, _gerr:stdgo.Error = __tmp__._1;
            if (_n != ((_expected.length))) {
                _t.errorf(("#%d, expected %d bytes; got %d" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface((_expected.length)), stdgo.Go.toInterface(_n));
            };
            var _got = (((_buf.__slice__((0 : stdgo.GoInt), _n) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_got != (_expected)) {
                _t.errorf(("#%d, expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface(_expected), stdgo.Go.toInterface(_got));
            };
            if (stdgo.Go.toInterface(_gerr) != (stdgo.Go.toInterface(_eerr))) {
                _t.errorf(("#%d, expected error %v; got %v" : stdgo.GoString), stdgo.Go.toInterface(_nread), stdgo.Go.toInterface(_eerr), stdgo.Go.toInterface(_gerr));
            };
            _buf = (_buf.__slice__(_n) : stdgo.Slice<stdgo.GoUInt8>);
        } : (stdgo.GoInt, stdgo.GoString, stdgo.Error) -> Void);
        _withFooBar(function():Void {
            _expectRead((2 : stdgo.GoInt), ("fo" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), ("o " : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), ("bar" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((5 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), stdgo._internal.io.Io_eof.eof);
        });
        _withFooBar(function():Void {
            _expectRead((4 : stdgo.GoInt), ("foo " : stdgo.GoString), (null : stdgo.Error));
            _expectRead((1 : stdgo.GoInt), ("b" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((3 : stdgo.GoInt), ("ar" : stdgo.GoString), (null : stdgo.Error));
            _expectRead((1 : stdgo.GoInt), stdgo.Go.str()?.__copy__(), stdgo._internal.io.Io_eof.eof);
        });
        _withFooBar(function():Void {
            _expectRead((5 : stdgo.GoInt), ("foo " : stdgo.GoString), (null : stdgo.Error));
        });
    }
