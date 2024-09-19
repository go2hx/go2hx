package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleScanner_emptyFinalToken():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1,2,3,4," : stdgo.GoString))));
        var _onComma = function(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
            var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
            {
                var _i = (0 : stdgo.GoInt);
                stdgo.Go.cfor((_i < (_data.length) : Bool), _i++, {
                    if (_data[(_i : stdgo.GoInt)] == ((44 : stdgo.GoUInt8))) {
                        return { _0 : (_i + (1 : stdgo.GoInt) : stdgo.GoInt), _1 : (_data.__slice__(0, _i) : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
                    };
                });
            };
            if (!_atEOF) {
                return { _0 : (0 : stdgo.GoInt), _1 : (null : stdgo.Slice<stdgo.GoUInt8>), _2 : (null : stdgo.Error) };
            };
            return { _0 : (0 : stdgo.GoInt), _1 : _data, _2 : stdgo._internal.bufio.Bufio_errFinalToken.errFinalToken };
        };
        _scanner.split(_onComma);
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt_printf.printf(("%q " : stdgo.GoString), stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err = (_scanner.err() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_fprintln.fprintln(stdgo.Go.asInterface(stdgo._internal.os.Os_stderr.stderr), stdgo.Go.toInterface(("reading input:" : stdgo.GoString)), stdgo.Go.toInterface(_err));
            };
        };
    }
