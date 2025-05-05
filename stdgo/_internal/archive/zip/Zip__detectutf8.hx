package stdgo._internal.archive.zip;
function _detectUTF8(_s:stdgo.GoString):{ var _0 : Bool; var _1 : Bool; } {
        var _valid = false, _require = false;
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L230"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_s.length) : Bool)) {
                var __tmp__ = stdgo._internal.unicode.utf8.Utf8_decoderuneinstring.decodeRuneInString((_s.__slice__(_i) : stdgo.GoString)?.__copy__()), _r:stdgo.GoInt32 = __tmp__._0, _size:stdgo.GoInt = __tmp__._1;
                _i = (_i + (_size) : stdgo.GoInt);
                //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L239"
                if ((((_r < (32 : stdgo.GoInt32) : Bool) || (_r > (125 : stdgo.GoInt32) : Bool) : Bool) || (_r == (92 : stdgo.GoInt32)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L240"
                    if ((!stdgo._internal.unicode.utf8.Utf8_validrune.validRune(_r) || (((_r == (65533 : stdgo.GoInt32)) && (_size == (1 : stdgo.GoInt)) : Bool)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L241"
                        return {
                            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : false, _1 : false };
                            _valid = __tmp__._0;
                            _require = __tmp__._1;
                            __tmp__;
                        };
                    };
                    _require = true;
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/archive/zip/writer.go#L246"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : Bool; var _1 : Bool; } = { _0 : true, _1 : _require };
            _valid = __tmp__._0;
            _require = __tmp__._1;
            __tmp__;
        };
    }
