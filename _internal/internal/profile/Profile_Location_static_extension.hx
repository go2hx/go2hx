package _internal.internal.profile;
@:keep @:allow(_internal.internal.profile.Profile.Location_asInterface) class Location_static_extension {
    @:keep
    static public function _key( _l:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>):_internal.internal.profile.Profile_T_locationKey.T_locationKey {
        @:recv var _l:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = _l;
        var _key = ({ _addr : _l.address, _isFolded : _l.isFolded } : _internal.internal.profile.Profile_T_locationKey.T_locationKey);
        if (_l.mapping != null && ((_l.mapping : Dynamic).__nil__ == null || !(_l.mapping : Dynamic).__nil__)) {
            _key._addr = (_key._addr - (_l.mapping.start) : stdgo.GoUInt64);
            _key._mappingID = _l.mapping.id;
        };
        var _lines = (new stdgo.Slice<stdgo.GoString>(((_l.line.length) * (2 : stdgo.GoInt) : stdgo.GoInt).toBasic(), 0).__setString__() : stdgo.Slice<stdgo.GoString>);
        for (_i => _line in _l.line) {
            if (_line.function_ != null && ((_line.function_ : Dynamic).__nil__ == null || !(_line.function_ : Dynamic).__nil__)) {
                _lines[(_i * (2 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatUint.formatUint(_line.function_.id, (16 : stdgo.GoInt))?.__copy__();
            };
            _lines[((_i * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)] = stdgo._internal.strconv.Strconv_formatInt.formatInt(_line.line, (16 : stdgo.GoInt))?.__copy__();
        };
        _key._lines = stdgo._internal.strings.Strings_join.join(_lines, ("|" : stdgo.GoString))?.__copy__();
        return _key?.__copy__();
    }
    @:keep
    static public function _unmatchedLines( _loc:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):stdgo.Slice<_internal.internal.profile.Profile_Line.Line> {
        @:recv var _loc:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = _loc;
        var _lines:stdgo.Slice<_internal.internal.profile.Profile_Line.Line> = (null : stdgo.Slice<_internal.internal.profile.Profile_Line.Line>);
        for (__0 => _ln in _loc.line) {
            {
                var _fn = _ln.function_;
                if (_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__)) {
                    if (_re.matchString(_fn.name?.__copy__())) {
                        continue;
                    };
                    if (_re.matchString(_fn.filename?.__copy__())) {
                        continue;
                    };
                };
            };
            _lines = (_lines.__append__(_ln?.__copy__()));
        };
        return _lines;
    }
    @:keep
    static public function _matchesName( _loc:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>, _re:stdgo.Ref<stdgo._internal.regexp.Regexp_Regexp.Regexp>):Bool {
        @:recv var _loc:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = _loc;
        for (__0 => _ln in _loc.line) {
            {
                var _fn = _ln.function_;
                if (_fn != null && ((_fn : Dynamic).__nil__ == null || !(_fn : Dynamic).__nil__)) {
                    if (_re.matchString(_fn.name?.__copy__())) {
                        return true;
                    };
                    if (_re.matchString(_fn.filename?.__copy__())) {
                        return true;
                    };
                };
            };
        };
        return false;
    }
    @:keep
    static public function _encode( _p:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>, _b:stdgo.Ref<_internal.internal.profile.Profile_T_buffer.T_buffer>):Void {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = _p;
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (1 : stdgo.GoInt), _p.id);
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (2 : stdgo.GoInt), _p._mappingIDX);
        _internal.internal.profile.Profile__encodeUint64Opt._encodeUint64Opt(_b, (3 : stdgo.GoInt), _p.address);
        for (_i => _ in _p.line) {
            _internal.internal.profile.Profile__encodeMessage._encodeMessage(_b, (4 : stdgo.GoInt), stdgo.Go.asInterface((stdgo.Go.setRef(_p.line[(_i : stdgo.GoInt)]) : stdgo.Ref<_internal.internal.profile.Profile_Line.Line>)));
        };
    }
    @:keep
    static public function _decoder( _p:stdgo.Ref<_internal.internal.profile.Profile_Location.Location>):stdgo.Slice<_internal.internal.profile.Profile_T_decoder.T_decoder> {
        @:recv var _p:stdgo.Ref<_internal.internal.profile.Profile_Location.Location> = _p;
        return _internal.internal.profile.Profile__locationDecoder._locationDecoder;
    }
}
