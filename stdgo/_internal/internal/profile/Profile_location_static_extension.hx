package stdgo._internal.internal.profile;
@:keep @:allow(stdgo._internal.internal.profile.Profile.Location_asInterface) class Location_static_extension {
    @:keep
    @:tdfield
    static public function _key( _l:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>):stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey {
        @:recv var _l:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = _l;
        var _key = ({ _addr : (@:checkr _l ?? throw "null pointer dereference").address, _isFolded : (@:checkr _l ?? throw "null pointer dereference").isFolded } : stdgo._internal.internal.profile.Profile_t_locationkey.T_locationKey);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L247"
        if (({
            final value = (@:checkr _l ?? throw "null pointer dereference").mapping;
            (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
        })) {
            _key._addr = (_key._addr - ((@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").start) : stdgo.GoUInt64);
            _key._mappingID = (@:checkr (@:checkr _l ?? throw "null pointer dereference").mapping ?? throw "null pointer dereference").iD;
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>((((@:checkr _l ?? throw "null pointer dereference").line.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L253"
        for (_i => _line in (@:checkr _l ?? throw "null pointer dereference").line) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L254"
            if (({
                final value = _line.function_;
                (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
            })) {
                _lines[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatuint.formatUint((@:checkr _line.function_ ?? throw "null pointer dereference").iD, (16 : stdgo.GoInt))?.__copy__();
            };
            _lines[((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatint.formatInt(_line.line, (16 : stdgo.GoInt))?.__copy__();
        };
        _key._lines = stdgo._internal.strings.Strings_join.join(_lines, ("|" : stdgo.GoString))?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/merge.go#L260"
        return _key?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _unmatchedLines( _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line> {
        @:recv var _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = _loc;
        var _lines:stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line> = (null : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L78"
        for (__0 => _ln in (@:checkr _loc ?? throw "null pointer dereference").line) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L79"
            {
                var _fn = _ln.function_;
                if (({
                    final value = _fn;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L80"
                    if (_re.matchString((@:checkr _fn ?? throw "null pointer dereference").name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L81"
                        continue;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L83"
                    if (_re.matchString((@:checkr _fn ?? throw "null pointer dereference").filename?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L84"
                        continue;
                    };
                };
            };
            _lines = (_lines.__append__(_ln?.__copy__()) : stdgo.Slice<stdgo._internal.internal.profile.Profile_line.Line>);
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L89"
        return _lines;
    }
    @:keep
    @:tdfield
    static public function _matchesName( _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_regexp.Regexp>):Bool {
        @:recv var _loc:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = _loc;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L61"
        for (__0 => _ln in (@:checkr _loc ?? throw "null pointer dereference").line) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L62"
            {
                var _fn = _ln.function_;
                if (({
                    final value = _fn;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L63"
                    if (_re.matchString((@:checkr _fn ?? throw "null pointer dereference").name?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L64"
                        return true;
                    };
                    //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L66"
                    if (_re.matchString((@:checkr _fn ?? throw "null pointer dereference").filename?.__copy__())) {
                        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L67"
                        return true;
                    };
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/filter.go#L71"
        return false;
    }
    @:keep
    @:tdfield
    static public function _encode( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>, _b:stdgo.Ref<stdgo._internal.internal.profile.Profile_t_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L399"
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").iD);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L400"
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (2 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference")._mappingIDX);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L401"
        stdgo._internal.internal.profile.Profile__encodeuint64opt._encodeUint64Opt(_b, (3 : stdgo.GoInt), (@:checkr _p ?? throw "null pointer dereference").address);
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L402"
        for (_i => _ in (@:checkr _p ?? throw "null pointer dereference").line) {
            //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L403"
            stdgo._internal.internal.profile.Profile__encodemessage._encodeMessage(_b, (4 : stdgo.GoInt), stdgo.Go.asInterface((stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").line[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.internal.profile.Profile_line.Line>)));
        };
    }
    @:keep
    @:tdfield
    static public function _decoder( _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location>):stdgo.Slice<stdgo._internal.internal.profile.Profile_t_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<stdgo._internal.internal.profile.Profile_location.Location> = _p;
        //"file:///home/runner/.go/go1.21.3/src/internal/profile/encode.go#L395"
        return stdgo._internal.internal.profile.Profile__locationdecoder._locationDecoder;
    }
}
