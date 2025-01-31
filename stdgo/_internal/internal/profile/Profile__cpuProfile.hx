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
function _cpuProfile(_b:stdgo.Slice<stdgo.GoUInt8>, _period:stdgo.GoInt64, _parse:stdgo.Slice<stdgo.GoUInt8> -> { var _0 : stdgo.GoUInt64; var _1 : stdgo.Slice<stdgo.GoUInt8>; }):{ var _0 : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>; var _1 : stdgo.Error; } {
        var _p = (stdgo.Go.setRef(({ period : (_period * (1000i64 : stdgo.GoInt64) : stdgo.GoInt64), periodType : (stdgo.Go.setRef(({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>), sampleType : (new stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>(2, 2, ...[({ type : ("samples" : stdgo.GoString), unit : ("count" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_), ({ type : ("cpu" : stdgo.GoString), unit : ("nanoseconds" : stdgo.GoString) } : stdgo._internal.internal.profile.Profile_ValueType_.ValueType_)]) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_ValueType_.ValueType_>>) } : stdgo._internal.internal.profile.Profile_Profile.Profile)) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>);
        var _err:stdgo.Error = (null : stdgo.Error);
        {
            {
                var __tmp__ = stdgo._internal.internal.profile.Profile__parseCPUSamples._parseCPUSamples(_b, _parse, true, _p);
                _b = @:tmpset0 __tmp__._0;
                _err = @:tmpset0 __tmp__._2;
            };
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        if (((((@:checkr _p ?? throw "null pointer dereference").sample.length) > (1 : stdgo.GoInt) : Bool) && (((@:checkr (@:checkr _p ?? throw "null pointer dereference").sample[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").location.length) > (1 : stdgo.GoInt) : Bool) : Bool)) {
            var _allSame = (true : Bool);
            var _id1 = ((@:checkr (@:checkr (@:checkr _p ?? throw "null pointer dereference").sample[(0 : stdgo.GoInt)] ?? throw "null pointer dereference").location[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").address : stdgo.GoUInt64);
            for (__0 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
                if (((((@:checkr _s ?? throw "null pointer dereference").location.length) < (2 : stdgo.GoInt) : Bool) || (_id1 != (@:checkr (@:checkr _s ?? throw "null pointer dereference").location[(1 : stdgo.GoInt)] ?? throw "null pointer dereference").address) : Bool)) {
                    _allSame = false;
                    break;
                };
            };
            if (_allSame) {
                for (__1 => _s in (@:checkr _p ?? throw "null pointer dereference").sample) {
                    (@:checkr _s ?? throw "null pointer dereference").location = (((@:checkr _s ?? throw "null pointer dereference").location.__slice__(0, (1 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>).__append__(...(((@:checkr _s ?? throw "null pointer dereference").location.__slice__((2 : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>) : Array<stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>>)));
                };
            };
        };
        {
            var _err = (@:check2r _p.parseMemoryMap(stdgo.Go.asInterface(stdgo._internal.bytes.Bytes_newBuffer.newBuffer(_b))) : stdgo.Error);
            if (_err != null) {
                return { _0 : null, _1 : _err };
            };
        };
        return { _0 : _p, _1 : (null : stdgo.Error) };
    }
