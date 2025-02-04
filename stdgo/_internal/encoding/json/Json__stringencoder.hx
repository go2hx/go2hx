package stdgo._internal.encoding.json;
function _stringEncoder(_e:stdgo.Ref<stdgo._internal.encoding.json.Json_t_encodestate.T_encodeState>, _v:stdgo._internal.reflect.Reflect_value.Value, _opts:stdgo._internal.encoding.json.Json_t_encopts.T_encOpts):Void {
        if ((_v.type().string() : String) == (stdgo._internal.encoding.json.Json__numbertype._numberType.string() : String)) {
            var _numStr = ((_v.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
            if (_numStr == ((stdgo.Go.str() : stdgo.GoString))) {
                _numStr = ("0" : stdgo.GoString);
            };
            if (!stdgo._internal.encoding.json.Json__isvalidnumber._isValidNumber(_numStr?.__copy__())) {
                @:check2r _e._error(stdgo._internal.fmt.Fmt_errorf.errorf(("json: invalid number literal %q" : stdgo.GoString), stdgo.Go.toInterface(_numStr)));
            };
            var _b = @:check2r _e.availableBuffer();
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            _b = (_b.__append__(...(_numStr : Array<stdgo.GoUInt8>)));
            _b = stdgo._internal.encoding.json.Json__mayappendquote._mayAppendQuote(_b, _opts._quoted);
            @:check2r _e.write(_b);
            return;
        };
        if (_opts._quoted) {
            var _b = stdgo._internal.encoding.json.Json__appendstring._appendString((null : stdgo.Slice<stdgo.GoUInt8>), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML);
            @:check2r _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(@:check2r _e.availableBuffer(), _b, false));
        } else {
            @:check2r _e.write(stdgo._internal.encoding.json.Json__appendstring._appendString(@:check2r _e.availableBuffer(), (_v.string() : stdgo.GoString)?.__copy__(), _opts._escapeHTML));
        };
    }
