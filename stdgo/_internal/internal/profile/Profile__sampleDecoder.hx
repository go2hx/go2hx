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
var _sampleDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>(4, 4, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64s._decodeUint64s(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>) ?? throw "null pointer dereference")._locationIDX) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt64>>));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeInt64s._decodeInt64s(_b, (stdgo.Go.setRef((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>) ?? throw "null pointer dereference").value) : stdgo.Ref<stdgo.Slice<stdgo.GoInt64>>));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _s = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Sample.Sample>);
        var _n = ((@:checkr _s ?? throw "null pointer dereference")._labelX.length : stdgo.GoInt);
        (@:checkr _s ?? throw "null pointer dereference")._labelX = ((@:checkr _s ?? throw "null pointer dereference")._labelX.__append__((new stdgo._internal.internal.profile.Profile_Label.Label() : stdgo._internal.internal.profile.Profile_Label.Label)));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _s ?? throw "null pointer dereference")._labelX[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Label.Label>)));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>);
