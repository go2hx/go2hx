package stdgo._internal.fmt;
function _intFromArg(_a:stdgo.Slice<stdgo.AnyInterface>, _argNum:stdgo.GoInt):{ var _0 : stdgo.GoInt; var _1 : Bool; var _2 : stdgo.GoInt; } {
        var _num = (0 : stdgo.GoInt), _isInt = false, _newArgNum = (0 : stdgo.GoInt);
        _newArgNum = _argNum;
        if ((_argNum < (_a.length) : Bool)) {
            {
                var __tmp__ = try {
                    { _0 : (stdgo.Go.typeAssert((_a[(_argNum : stdgo.GoInt)] : stdgo.GoInt)) : stdgo.GoInt), _1 : true };
                } catch(_) {
                    { _0 : (0 : stdgo.GoInt), _1 : false };
                };
                _num = @:tmpset0 __tmp__._0;
                _isInt = @:tmpset0 __tmp__._1;
            };
            if (!_isInt) {
                {
                    var _v = (stdgo._internal.reflect.Reflect_valueof.valueOf(_a[(_argNum : stdgo.GoInt)])?.__copy__() : stdgo._internal.reflect.Reflect_value.Value);
                    {
                        final __value__ = _v.kind();
                        if (__value__ == ((2u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((3u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((4u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((5u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((6u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _n = (_v.int_() : stdgo.GoInt64);
                            if (((_n : stdgo.GoInt) : stdgo.GoInt64) == (_n)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else if (__value__ == ((7u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((8u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((9u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((10u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((11u32 : stdgo._internal.reflect.Reflect_kind.Kind)) || __value__ == ((12u32 : stdgo._internal.reflect.Reflect_kind.Kind))) {
                            var _n = (_v.uint() : stdgo.GoUInt64);
                            if ((((_n : stdgo.GoInt64) >= (0i64 : stdgo.GoInt64) : Bool) && (((_n : stdgo.GoInt) : stdgo.GoUInt64) == _n) : Bool)) {
                                _num = (_n : stdgo.GoInt);
                                _isInt = true;
                            };
                        } else {};
                    };
                };
            };
            _newArgNum = (_argNum + (1 : stdgo.GoInt) : stdgo.GoInt);
            if (stdgo._internal.fmt.Fmt__toolarge._tooLarge(_num)) {
                _num = (0 : stdgo.GoInt);
                _isInt = false;
            };
        };
        return { _0 : _num, _1 : _isInt, _2 : _newArgNum };
    }
