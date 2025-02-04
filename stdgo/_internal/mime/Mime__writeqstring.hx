package stdgo._internal.mime;
function _writeQString(_buf:stdgo.Ref<stdgo._internal.strings.Strings_builder.Builder>, _s:stdgo.GoString):Void {
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                {
                    var _b = (_s[(_i : stdgo.GoInt)] : stdgo.GoUInt8);
                    if (_b == ((32 : stdgo.GoUInt8))) {
                        @:check2r _buf.writeByte((95 : stdgo.GoUInt8));
                    } else if ((((((_b >= (33 : stdgo.GoUInt8) : Bool) && (_b <= (126 : stdgo.GoUInt8) : Bool) : Bool) && _b != ((61 : stdgo.GoUInt8)) : Bool) && _b != ((63 : stdgo.GoUInt8)) : Bool) && (_b != (95 : stdgo.GoUInt8)) : Bool)) {
                        @:check2r _buf.writeByte(_b);
                    } else {
                        @:check2r _buf.writeByte((61 : stdgo.GoUInt8));
                        @:check2r _buf.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_b >> (4i64 : stdgo.GoUInt64) : stdgo.GoUInt8) : stdgo.GoInt)]);
                        @:check2r _buf.writeByte(("0123456789ABCDEF" : stdgo.GoString)[((_b & (15 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)]);
                    };
                };
                _i++;
            };
        };
    }
