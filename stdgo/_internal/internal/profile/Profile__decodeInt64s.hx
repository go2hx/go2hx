package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import _internal.internal.lazyregexp.Lazyregexp;
import stdgo._internal.strings.Strings;
import stdgo._internal.fmt.Fmt;
import stdgo._internal.bytes.Bytes;
import stdgo._internal.io.Io;
import stdgo._internal.strconv.Strconv;
import stdgo._internal.math.Math;
import stdgo._internal.compress.gzip.Gzip;
import stdgo._internal.sort.Sort;
import stdgo._internal.bufio.Bufio;
import stdgo._internal.time.Time;
import stdgo._internal.regexp.Regexp;
function _decodeInt64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _x:stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>):stdgo.Error {
        if ((@:checkr _b ?? throw "null pointer dereference")._typ == ((2 : stdgo.GoInt))) {
            var _data = (@:checkr _b ?? throw "null pointer dereference")._data;
            while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
                var _u:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                var _err:stdgo.Error = (null : stdgo.Error);
                {
                    {
                        var __tmp__ = stdgo._internal.internal.profile.Profile__decodeVarint._decodeVarint(_data);
                        _u = @:tmpset0 __tmp__._0;
                        _data = @:tmpset0 __tmp__._1;
                        _err = @:tmpset0 __tmp__._2;
                    };
                    if (_err != null) {
                        return _err;
                    };
                };
                (_x : stdgo.Slice<stdgo.GoInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoInt64>).__append__((_u : stdgo.GoInt64))));
            };
            return (null : stdgo.Error);
        };
        var _i:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        var _i__pointer__ = stdgo.Go.pointer(_i);
        {
            var _err = (stdgo._internal.internal.profile.Profile__decodeInt64._decodeInt64(_b, _i__pointer__) : stdgo.Error);
            if (_err != null) {
                return _err;
            };
        };
        (_x : stdgo.Slice<stdgo.GoInt64>).__setData__(((_x : stdgo.Slice<stdgo.GoInt64>).__append__(_i)));
        return (null : stdgo.Error);
    }
