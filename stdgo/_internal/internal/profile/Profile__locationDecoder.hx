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
var _locationDecoder : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> = (new stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>(5, 5, ...[null, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>) ?? throw "null pointer dereference").iD));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>) ?? throw "null pointer dereference")._mappingIDX));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        return stdgo._internal.internal.profile.Profile__decodeUint64._decodeUint64(_b, stdgo.Go.pointer((@:checkr (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>) ?? throw "null pointer dereference").address));
    }, function(_b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>, _m:stdgo._internal.internal.profile.Profile_T_message.T_message):stdgo.Error {
        var _pp = (stdgo.Go.typeAssert((stdgo.Go.toInterface(_m) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>);
        var _n = ((@:checkr _pp ?? throw "null pointer dereference").line.length : stdgo.GoInt);
        (@:checkr _pp ?? throw "null pointer dereference").line = ((@:checkr _pp ?? throw "null pointer dereference").line.__append__((new stdgo._internal.internal.profile.Profile_Line.Line() : stdgo._internal.internal.profile.Profile_Line.Line)));
        return stdgo._internal.internal.profile.Profile__decodeMessage._decodeMessage(_b, stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _pp ?? throw "null pointer dereference").line[(_n : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>)));
    }]) : stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder>);
