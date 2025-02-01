package stdgo._internal.internal.profile;
import stdgo._internal.errors.Errors;
import stdgo._internal.internal.lazyregexp.Lazyregexp;
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
@:keep @:allow(stdgo._internal.internal.profile.Profile.Location_asInterface) class Location_static_extension {
    @:keep
    @:tdfield
    static public function _key( _l:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>):stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey {
        @:recv var _l:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location> = _l;
        var _key = ({ _addr : (@:checkr _l ?? throw "null pointer dereference").address, _isFolded : (@:checkr _l ?? throw "null pointer dereference").isFolded } : stdgo._internal.internal.profile.Profile_T_locationKey.T_locationKey);
        if (((@:checkr _l ?? throw "null pointer dereference").mapping != null && (((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__ == null || !((@:checkr _l ?? throw "null pointer dereference").mapping : Dynamic).__nil__))) {
            _key._addr = (_key._addr - ((@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").start) : stdgo.GoUInt64);
            _key._mappingID = (@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").iD;
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>((((@:checkr _l ?? throw "null pointer dereference").line.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _line in (@:checkr _l ?? throw "null pointer dereference").line) {
            if ((_line.function_ != null && ((_line.function_ : Dynamic).__nil__ == null || !(_line.function_ : Dynamic).__nil__))) {
                _lines[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatUint.formatUint((@:checkr _line.function_ ?? throw "null pointer dereference").iD, (16 : stdgo.GoInt))?.__copy__();
            };
            _lines[((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatInt.formatInt(_line.line, (16 : stdgo.GoInt))?.__copy__();
        };
        _key._lines = stdgo._internal.strings.Strings_join.join(_lines, ("|" : stdgo.GoString))?.__copy__();
        return _key?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _unmatchedLines( _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line> {
        @:recv var _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location> = _loc;
        var _lines:stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line> = (null : stdgo.Slice<stdgo._internal.internal.profile.Profile_Line.Line>);
        for (__0 => _ln in (@:checkr _loc ?? throw "null pointer dereference").line) {
            {
                var _fn = _ln.function_;
                if ((_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__))) {
                    if (@:check2r _re.matchString((@:checkr _fn ?? throw "null pointer dereference").name?.__copy__())) {
                        continue;
                    };
                    if (@:check2r _re.matchString((@:checkr _fn ?? throw "null pointer dereference").filename?.__copy__())) {
                        continue;
                    };
                };
            };
            _lines = (_lines.__append__(_ln?.__copy__()));
        };
        return _lines;
    }
    @:keep
    @:tdfield
    static public function _matchesName( _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool {
        @:recv var _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location> = _loc;
        for (__0 => _ln in (@:checkr _loc ?? throw "null pointer dereference").line) {
            {
                var _fn = _ln.function_;
                if ((_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__))) {
                    if (@:check2r _re.matchString((@:checkr _fn ?? throw "null pointer dereference").name?.__copy__())) {
                        return true;
                    };
                    if (@:check2r _re.matchString((@:checkr _fn ?? throw "null pointer dereference").filename?.__copy__())) {
                        return true;
                    };
                };
            };
        };
        return false;
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location> = _p;
        stdgo._internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").iD);
        stdgo._internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._mappingIDX);
        stdgo._internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (3 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").address);
        for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").line) {
            stdgo._internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (4 : stdgo.GoInt), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.profile.Profile_Line.Line>)));
        };
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location>):stdgo.Slice<stdgo._internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_Location.Location> = _p;
        return stdgo._internal.internal.profile.Profile__locationDecoder._locationDecoder;
    }
}
