package stdgo._internal.encoding.gob;
function register(_value:stdgo.AnyInterface):Void {
        var _rt = (stdgo._internal.reflect.Reflect_typeof.typeOf(_value) : stdgo._internal.reflect.Reflect_type_.Type_);
        var _name = ((_rt.string() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        var _star = ((stdgo.Go.str() : stdgo.GoString)?.__copy__() : stdgo.GoString);
        if (_rt.name() == ((stdgo.Go.str() : stdgo.GoString))) {
            {
                var _pt = (_rt : stdgo._internal.reflect.Reflect_type_.Type_);
                if (_pt.kind() == ((22u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                    _star = ("*" : stdgo.GoString);
                    _rt = _pt;
                };
            };
        };
        if (_rt.name() != ((stdgo.Go.str() : stdgo.GoString))) {
            if (_rt.pkgPath() == ((stdgo.Go.str() : stdgo.GoString))) {
                _name = (_star + _rt.name()?.__copy__() : stdgo.GoString)?.__copy__();
            } else {
                _name = (((_star + _rt.pkgPath()?.__copy__() : stdgo.GoString) + ("." : stdgo.GoString)?.__copy__() : stdgo.GoString) + _rt.name()?.__copy__() : stdgo.GoString)?.__copy__();
            };
        };
        stdgo._internal.encoding.gob.Gob_registername.registerName(_name?.__copy__(), _value);
    }
