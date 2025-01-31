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
function _encodeInt64s(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _tag:stdgo.GoInt, _x:stdgo.Slice<stdgo.GoInt64>):Void {
        if (((_x.length) > (2 : stdgo.GoInt) : Bool)) {
            var _n1 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            for (__0 => _u in _x) {
                stdgo._internal.internal.profile.Profile__encodeVarint._encodeVarint(_b, (_u : stdgo.GoUInt64));
            };
            var _n2 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            stdgo._internal.internal.profile.Profile__encodeLength._encodeLength(_b, _tag, (_n2 - _n1 : stdgo.GoInt));
            var _n3 = ((@:checkr _b ?? throw "null pointer dereference")._data.length : stdgo.GoInt);
            ((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n2, _n3) : stdgo.Slice<stdgo.GoUInt8>));
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__((_n1 + ((_n3 - _n2 : stdgo.GoInt)) : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1, _n2) : stdgo.Slice<stdgo.GoUInt8>));
            ((@:checkr _b ?? throw "null pointer dereference")._data.__slice__(_n1) : stdgo.Slice<stdgo.GoUInt8>).__copyTo__(((@:checkr _b ?? throw "null pointer dereference")._tmp.__slice__(0, (_n3 - _n2 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>));
            return;
        };
        for (__0 => _u in _x) {
            stdgo._internal.internal.profile.Profile__encodeInt64._encodeInt64(_b, _tag, _u);
        };
    }
