package _internal.fmt_test;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.fmt.Fmt;
function testMultiLine(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _input = ("abc\ndef\n" : stdgo.GoString);
        var _tscan:_internal.fmt_test.Fmt_test_TwoLines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_TwoLines.TwoLines);
        var __tmp__ = stdgo._internal.fmt.Fmt_sscan.sscan(_input?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_tscan))), _n:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscan: expected 1 item; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscan: expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_tscan : stdgo.GoString) != (_input)) {
            _t.errorf(("Sscan: expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscan)));
        };
        var _tscanf:_internal.fmt_test.Fmt_test_TwoLines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_TwoLines.TwoLines);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanf.sscanf(_input?.__copy__(), ("%s" : stdgo.GoString), stdgo.Go.toInterface(stdgo.Go.pointer(_tscanf)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((1 : stdgo.GoInt))) {
            _t.errorf(("Sscanf: expected 1 item; got %d" : stdgo.GoString), stdgo.Go.toInterface(_n));
        };
        if (_err != null) {
            _t.errorf(("Sscanf: expected no error; got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
        if ((_tscanf : stdgo.GoString) != (_input)) {
            _t.errorf(("Sscanf: expected %q; got %q" : stdgo.GoString), stdgo.Go.toInterface(_input), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscanf)));
        };
        var _tscanln:_internal.fmt_test.Fmt_test_TwoLines.TwoLines = (("" : stdgo.GoString) : _internal.fmt_test.Fmt_test_TwoLines.TwoLines);
        {
            var __tmp__ = stdgo._internal.fmt.Fmt_sscanln.sscanln(_input?.__copy__(), stdgo.Go.toInterface(stdgo.Go.pointer(_tscanln)));
            _n = __tmp__._0;
            _err = __tmp__._1;
        };
        if (_n != ((0 : stdgo.GoInt))) {
            _t.errorf(("Sscanln: expected 0 items; got %d: %q" : stdgo.GoString), stdgo.Go.toInterface(_n), stdgo.Go.toInterface(stdgo.Go.asInterface(_tscanln)));
        };
        if (_err == null) {
            _t.error(stdgo.Go.toInterface(("Sscanln: expected error; got none" : stdgo.GoString)));
        } else if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_errUnexpectedEOF.errUnexpectedEOF))) {
            _t.errorf(("Sscanln: expected io.ErrUnexpectedEOF (ha!); got %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
        };
    }
