package _internal.strconv_test;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.strconv.Strconv;
function testAllocationsFromBytes(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        {};
        var _bytes = ({ bool_ : (("false" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), number : (("123456789" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), string : (("hello, world!" : stdgo.GoString) : stdgo.Slice<stdgo.GoUInt8>), buffer : (new stdgo.Slice<stdgo.GoUInt8>((1024 : stdgo.GoInt).toBasic(), 0).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>) } : _internal.strconv_test.Strconv_test_T__struct_7.T__struct_7);
        var _checkNoAllocs = function(_f:() -> Void):stdgo.Ref<stdgo._internal.testing.Testing_T_.T_> -> Void {
            return function(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
                _t.helper();
                {
                    var _allocs = (stdgo._internal.testing.Testing_allocsPerRun.allocsPerRun((100 : stdgo.GoInt), _f) : stdgo.GoFloat64);
                    if (_allocs != (0 : stdgo.GoFloat64)) {
                        _t.errorf(("got %v allocs, want 0 allocs" : stdgo.GoString), stdgo.Go.toInterface(_allocs));
                    };
                };
            };
        };
        _t.run(("Atoi" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_bytes.number : stdgo.GoString)?.__copy__());
                _internal.strconv_test.Strconv_test_sink.sink.int_ = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseBool" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseBool.parseBool((_bytes.bool_ : stdgo.GoString)?.__copy__());
                _internal.strconv_test.Strconv_test_sink.sink.bool_ = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseInt" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseInt.parseInt((_bytes.number : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _internal.strconv_test.Strconv_test_sink.sink.int64 = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseUint" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseUint.parseUint((_bytes.number : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt));
                _internal.strconv_test.Strconv_test_sink.sink.uint64 = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseFloat" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseFloat.parseFloat((_bytes.number : stdgo.GoString)?.__copy__(), (64 : stdgo.GoInt));
                _internal.strconv_test.Strconv_test_sink.sink.float64 = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("ParseComplex" : stdgo.GoString), _checkNoAllocs(function():Void {
            {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseComplex.parseComplex((_bytes.number : stdgo.GoString)?.__copy__(), (128 : stdgo.GoInt));
                _internal.strconv_test.Strconv_test_sink.sink.complex128 = __tmp__._0;
                _internal.strconv_test.Strconv_test_sink.sink.error = __tmp__._1;
            };
        }));
        _t.run(("CanBackquote" : stdgo.GoString), _checkNoAllocs(function():Void {
            _internal.strconv_test.Strconv_test_sink.sink.bool_ = stdgo._internal.strconv.Strconv_canBackquote.canBackquote((_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuote" : stdgo.GoString), _checkNoAllocs(function():Void {
            _internal.strconv_test.Strconv_test_sink.sink.bytes = stdgo._internal.strconv.Strconv_appendQuote.appendQuote((_bytes.buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuoteToASCII" : stdgo.GoString), _checkNoAllocs(function():Void {
            _internal.strconv_test.Strconv_test_sink.sink.bytes = stdgo._internal.strconv.Strconv_appendQuoteToASCII.appendQuoteToASCII((_bytes.buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
        _t.run(("AppendQuoteToGraphic" : stdgo.GoString), _checkNoAllocs(function():Void {
            _internal.strconv_test.Strconv_test_sink.sink.bytes = stdgo._internal.strconv.Strconv_appendQuoteToGraphic.appendQuoteToGraphic((_bytes.buffer.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>), (_bytes.string : stdgo.GoString)?.__copy__());
        }));
    }
