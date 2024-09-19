package _internal.bufio_test;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.bufio.Bufio;
function exampleScanner_custom():Void {
        {};
        var _scanner = stdgo._internal.bufio.Bufio_newScanner.newScanner(stdgo.Go.asInterface(stdgo._internal.strings.Strings_newReader.newReader(("1234 5678 1234567901234567890" : stdgo.GoString))));
        var _split = function(_data:stdgo.Slice<stdgo.GoUInt8>, _atEOF:Bool):{ var _0 : stdgo.GoInt; var _1 : stdgo.Slice<stdgo.GoUInt8>; var _2 : stdgo.Error; } {
            var _advance = (0 : stdgo.GoInt), _token = (null : stdgo.Slice<stdgo.GoUInt8>), _err = (null : stdgo.Error);
            {
                var __tmp__ = stdgo._internal.bufio.Bufio_scanWords.scanWords(_data, _atEOF);
                _advance = __tmp__._0;
                _token = __tmp__._1;
                _err = __tmp__._2;
            };
            if (((_err == null) && (_token != null) : Bool)) {
                {
                    var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt((_token : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (32 : stdgo.GoInt));
                    _err = __tmp__._1;
                };
            };
            return { _0 : _advance, _1 : _token, _2 : _err };
        };
        _scanner.split(_split);
        while (_scanner.scan()) {
            stdgo._internal.fmt.Fmt_printf.printf(("%s\n" : stdgo.GoString), stdgo.Go.toInterface(_scanner.text()));
        };
        {
            var _err = (_scanner.err() : stdgo.Error);
            if (_err != null) {
                stdgo._internal.fmt.Fmt_printf.printf(("Invalid input: %s" : stdgo.GoString), stdgo.Go.toInterface(_err));
            };
        };
    }
