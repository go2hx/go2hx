package stdgo._internal.encoding.asn1;
function _parseFieldParameters(_str:stdgo.GoString):stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters {
        var _ret = ({} : stdgo._internal.encoding.asn1.Asn1_t_fieldparameters.T_fieldParameters);
        var _part:stdgo.GoString = ("" : stdgo.GoString);
        while (((_str.length) > (0 : stdgo.GoInt) : Bool)) {
            {
                var __tmp__ = stdgo._internal.strings.Strings_cut.cut(_str?.__copy__(), ("," : stdgo.GoString));
                _part = @:tmpset0 __tmp__._0?.__copy__();
                _str = @:tmpset0 __tmp__._1?.__copy__();
            };
            if (_part == (("optional" : stdgo.GoString))) {
                _ret._optional = true;
            } else if (_part == (("explicit" : stdgo.GoString))) {
                _ret._explicit = true;
                if (_ret._tag == null) {
                    _ret._tag = stdgo.Go.pointer((0 : stdgo.GoInt));
                };
            } else if (_part == (("generalized" : stdgo.GoString))) {
                _ret._timeType = (24 : stdgo.GoInt);
            } else if (_part == (("utc" : stdgo.GoString))) {
                _ret._timeType = (23 : stdgo.GoInt);
            } else if (_part == (("ia5" : stdgo.GoString))) {
                _ret._stringType = (22 : stdgo.GoInt);
            } else if (_part == (("printable" : stdgo.GoString))) {
                _ret._stringType = (19 : stdgo.GoInt);
            } else if (_part == (("numeric" : stdgo.GoString))) {
                _ret._stringType = (18 : stdgo.GoInt);
            } else if (_part == (("utf8" : stdgo.GoString))) {
                _ret._stringType = (12 : stdgo.GoInt);
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_part?.__copy__(), ("default:" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_parseint.parseInt((_part.__slice__((8 : stdgo.GoInt)) : stdgo.GoString)?.__copy__(), (10 : stdgo.GoInt), (64 : stdgo.GoInt)), _i:stdgo.GoInt64 = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ret._defaultValue = stdgo.Go.pointer((0 : stdgo.GoInt64));
                    _ret._defaultValue.value = _i;
                };
            } else if (stdgo._internal.strings.Strings_hasprefix.hasPrefix(_part?.__copy__(), ("tag:" : stdgo.GoString))) {
                var __tmp__ = stdgo._internal.strconv.Strconv_atoi.atoi((_part.__slice__((4 : stdgo.GoInt)) : stdgo.GoString)?.__copy__()), _i:stdgo.GoInt = __tmp__._0, _err:stdgo.Error = __tmp__._1;
                if (_err == null) {
                    _ret._tag = stdgo.Go.pointer((0 : stdgo.GoInt));
                    _ret._tag.value = _i;
                };
            } else if (_part == (("set" : stdgo.GoString))) {
                _ret._set = true;
            } else if (_part == (("application" : stdgo.GoString))) {
                _ret._application = true;
                if (_ret._tag == null) {
                    _ret._tag = stdgo.Go.pointer((0 : stdgo.GoInt));
                };
            } else if (_part == (("private" : stdgo.GoString))) {
                _ret._private = true;
                if (_ret._tag == null) {
                    _ret._tag = stdgo.Go.pointer((0 : stdgo.GoInt));
                };
            } else if (_part == (("omitempty" : stdgo.GoString))) {
                _ret._omitEmpty = true;
            };
        };
        return _ret;
    }
