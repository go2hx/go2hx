package stdgo._internal.text.template;
function _makemap(_arg:haxe.Rest<stdgo.GoString>):stdgo.GoMap<stdgo.GoString, stdgo.GoString> {
        var _arg = new stdgo.Slice<stdgo.GoString>(_arg.length, 0, ..._arg);
        if (((_arg.length) % (2 : stdgo.GoInt) : stdgo.GoInt) != ((0 : stdgo.GoInt))) {
            throw stdgo.Go.toInterface(("bad makemap" : stdgo.GoString));
        };
        var _m = ({
            final x = new stdgo.GoMap.GoStringMap<stdgo.GoString>();
            x.__defaultValue__ = () -> ("" : stdgo.GoString);
            {};
            x;
        } : stdgo.GoMap<stdgo.GoString, stdgo.GoString>);
        {
            var _i = (0 : stdgo.GoInt);
            stdgo.Go.cfor((_i < (_arg.length) : Bool), _i = (_i + ((2 : stdgo.GoInt)) : stdgo.GoInt), {
                _m[_arg[(_i : stdgo.GoInt)]] = _arg[(_i + (1 : stdgo.GoInt) : stdgo.GoInt)]?.__copy__();
            });
        };
        return _m;
    }
