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
function _parseAdditionalSections(_l:stdgo.GoString, _b:stdgo.Ref<stdgo._internal.bytes.Bytes_Buffer.Buffer>, _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Profile.Profile>):stdgo.Error {
        var _err = (null : stdgo.Error);
        while (true) {
            if (stdgo._internal.internal.profile.Profile__sectionTrigger._sectionTrigger(_l?.__copy__()) == ((1 : stdgo._internal.internal.profile.Profile_T_sectionType.T_sectionType))) {
                break;
            };
            {
                var __tmp__ = @:check2r _b.readString((10 : stdgo.GoUInt8)), _l:stdgo.GoString = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err != null) {
                    if (stdgo.Go.toInterface(_err) != (stdgo.Go.toInterface(stdgo._internal.io.Io_eOF.eOF))) {
                        return _err;
                    };
                    if (_l == (stdgo.Go.str())) {
                        break;
                    };
                };
            };
        };
        return _err = @:check2r _p.parseMemoryMap(stdgo.Go.asInterface(_b));
    }
