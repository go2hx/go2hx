package _internal.time_test;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.Time;
import stdgo._internal.time.tzdata.Tzdata;
function testNextStdChunk(_t:stdgo.Ref<stdgo._internal.testing.Testing_T_.T_>):Void {
        var _markChunks = (function(_format:stdgo.GoString):stdgo.GoString {
            var _out = (stdgo.Go.str()?.__copy__() : stdgo.GoString);
            {
                var _s = (_format?.__copy__() : stdgo.GoString);
                while (_s != (stdgo.Go.str())) {
                    var __tmp__ = stdgo._internal.time.Time_nextStdChunk.nextStdChunk(_s?.__copy__()), _prefix:stdgo.GoString = __tmp__._0, _std:stdgo.GoInt = __tmp__._1, _suffix:stdgo.GoString = __tmp__._2;
                    _out = (_out + (_prefix)?.__copy__() : stdgo.GoString);
                    if ((_std > (0 : stdgo.GoInt) : Bool)) {
                        _out = (_out + (((("(" : stdgo.GoString) + (stdgo._internal.time.Time_stdChunkNames.stdChunkNames[_std] ?? ("" : stdgo.GoString))?.__copy__() : stdgo.GoString) + (")" : stdgo.GoString)?.__copy__() : stdgo.GoString))?.__copy__() : stdgo.GoString);
                    };
                    _s = _suffix?.__copy__();
                };
            };
            return _out?.__copy__();
        } : stdgo.GoString -> stdgo.GoString);
        var _noParens = (function(_r:stdgo.GoInt32):stdgo.GoInt32 {
            if (((_r == (40 : stdgo.GoInt32)) || (_r == (41 : stdgo.GoInt32)) : Bool)) {
                return (-1 : stdgo.GoInt32);
            };
            return _r;
        } : stdgo.GoInt32 -> stdgo.GoInt32);
        for (__2 => _marked in _internal.time_test.Time_test__nextStdChunkTests._nextStdChunkTests) {
            var _format = (stdgo._internal.strings.Strings_map_.map_(_noParens, _marked?.__copy__())?.__copy__() : stdgo.GoString);
            var _out = (_markChunks(_format?.__copy__())?.__copy__() : stdgo.GoString);
            if (_out != (_marked)) {
                _t.errorf(("nextStdChunk parses %q as %q, want %q" : stdgo.GoString), stdgo.Go.toInterface(_format), stdgo.Go.toInterface(_out), stdgo.Go.toInterface(_marked));
            };
        };
    }
