package stdgo._internal.internal.fuzz;
@:keep @:allow(stdgo._internal.internal.fuzz.Fuzz.T_mutator_asInterface) class T_mutator_static_extension {
    @:keep
    @:tdfield
    static public function _mutateBytes( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _ptrB:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _b = (_ptrB : stdgo.Slice<stdgo.GoUInt8>);
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        if (stdgo._internal.unsafe.Unsafe_slicedata.sliceData((_ptrB : stdgo.Slice<stdgo.GoUInt8>)) != (stdgo._internal.unsafe.Unsafe_slicedata.sliceData(_b))) {
                            throw stdgo.Go.toInterface(("data moved to new address" : stdgo.GoString));
                        };
                        (_ptrB : stdgo.Slice<stdgo.GoUInt8>).__setData__(_b);
                    };
                    a();
                }) });
            };
            while (true) {
                var _mut = (stdgo._internal.internal.fuzz.Fuzz__byteslicemutators._byteSliceMutators[(@:check2r _m._rand((stdgo._internal.internal.fuzz.Fuzz__byteslicemutators._byteSliceMutators.length)) : stdgo.GoInt)] : stdgo._internal.internal.fuzz.Fuzz_t_byteslicemutator.T_byteSliceMutator);
                {
                    var _mutated = _mut(_m, _b);
                    if (_mutated != null) {
                        _b = _mutated;
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return;
                        };
                    };
                };
            };
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                    if (__exception__.message == "__return__") throw "__return__";
                    exe = stdgo.Go.toInterface(__exception__.message);
                };
                stdgo.Go.recover_exception = exe;
                {
                    function f() {
                        try {
                            {
                                for (defer in __deferstack__) {
                                    if (defer.ran) continue;
                                    defer.ran = true;
                                    defer.f();
                                };
                            };
                        } catch(__exception__2) {
                            var exe:Dynamic = __exception__2.native;
                            if ((exe is haxe.ValueException)) exe = exe.value;
                            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                                if (__exception__.message == "__return__") throw "__return__";
                                exe = stdgo.Go.toInterface(__exception__.message);
                            };
                            stdgo.Go.recover_exception = exe;
                            f();
                        };
                    };
                    f();
                };
                if (stdgo.Go.recover_exception != null) {
                    final e = stdgo.Go.recover_exception;
                    stdgo.Go.recover_exception = null;
                    throw e;
                };
                return;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateFloat( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoFloat64, _maxValue:stdgo.GoFloat64):stdgo.GoFloat64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoFloat64 = (0 : stdgo.GoFloat64);
        while (true) {
            {
                final __value__ = @:check2r _m._rand((4 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    if ((_v >= _maxValue : Bool)) {
                        continue;
                    };
                    _max = (100 : stdgo.GoFloat64);
                    if (((_v > (0 : stdgo.GoFloat64) : Bool) && ((_maxValue - _v : stdgo.GoFloat64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoFloat64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    if ((_v <= -_maxValue : Bool)) {
                        continue;
                    };
                    _max = (100 : stdgo.GoFloat64);
                    if (((_v < (0 : stdgo.GoFloat64) : Bool) && ((_maxValue + _v : stdgo.GoFloat64) < _max : Bool) : Bool)) {
                        _max = (_maxValue + _v : stdgo.GoFloat64);
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    return _v;
                } else if (__value__ == ((2 : stdgo.GoInt))) {
                    var _absV = (stdgo._internal.math.Math_abs.abs(_v) : stdgo.GoFloat64);
                    if (((_v == (0 : stdgo.GoFloat64)) || (_absV >= _maxValue : Bool) : Bool)) {
                        continue;
                    };
                    _max = (10 : stdgo.GoFloat64);
                    if (((_maxValue / _absV : stdgo.GoFloat64) < _max : Bool)) {
                        _max = (_maxValue / _absV : stdgo.GoFloat64);
                    };
                    _v = (_v * ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    return _v;
                } else if (__value__ == ((3 : stdgo.GoInt))) {
                    if (_v == (0 : stdgo.GoFloat64)) {
                        continue;
                    };
                    _v = (_v / ((((1 : stdgo.GoInt) + @:check2r _m._rand((10 : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoFloat64)) : stdgo.GoFloat64);
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateUInt( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoUInt64, _maxValue:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
        while (true) {
            _max = (100i64 : stdgo.GoUInt64);
            {
                final __value__ = @:check2r _m._rand((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    if ((_v >= _maxValue : Bool)) {
                        continue;
                    };
                    if (((_v > (0i64 : stdgo.GoUInt64) : Bool) && ((_maxValue - _v : stdgo.GoUInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoUInt64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    if ((_v <= (0i64 : stdgo.GoUInt64) : Bool)) {
                        continue;
                    };
                    if ((_v < _max : Bool)) {
                        _max = _v;
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutateInt( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _v:stdgo.GoInt64, _maxValue:stdgo.GoInt64):stdgo.GoInt64 {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _max:stdgo.GoInt64 = (0 : stdgo.GoInt64);
        while (true) {
            _max = (100i64 : stdgo.GoInt64);
            {
                final __value__ = @:check2r _m._rand((2 : stdgo.GoInt));
                if (__value__ == ((0 : stdgo.GoInt))) {
                    if ((_v >= _maxValue : Bool)) {
                        continue;
                    };
                    if (((_v > (0i64 : stdgo.GoInt64) : Bool) && ((_maxValue - _v : stdgo.GoInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue - _v : stdgo.GoInt64);
                    };
                    _v = (_v + ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                    return _v;
                } else if (__value__ == ((1 : stdgo.GoInt))) {
                    if ((_v <= -_maxValue : Bool)) {
                        continue;
                    };
                    if (((_v < (0i64 : stdgo.GoInt64) : Bool) && ((_maxValue + _v : stdgo.GoInt64) < _max : Bool) : Bool)) {
                        _max = (_maxValue + _v : stdgo.GoInt64);
                    };
                    _v = (_v - ((((1 : stdgo.GoInt) + @:check2r _m._rand((_max : stdgo.GoInt)) : stdgo.GoInt) : stdgo.GoInt64)) : stdgo.GoInt64);
                    return _v;
                };
            };
        };
    }
    @:keep
    @:tdfield
    static public function _mutate( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _vals:stdgo.Slice<stdgo.AnyInterface>, _maxBytes:stdgo.GoInt):Void {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        var _maxPerVal = ((_maxBytes / (_vals.length) : stdgo.GoInt) - (100 : stdgo.GoInt) : stdgo.GoInt);
        var _i = (@:check2r _m._rand((_vals.length)) : stdgo.GoInt);
        {
            final __type__ = _vals[(_i : stdgo.GoInt)];
            if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt))) {
                var _v:stdgo.GoInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateInt((_v : stdgo.GoInt64), (2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt8))) {
                var _v:stdgo.GoInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateInt((_v : stdgo.GoInt64), (127i64 : stdgo.GoInt64)) : stdgo.GoInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt16))) {
                var _v:stdgo.GoInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateInt((_v : stdgo.GoInt64), (32767i64 : stdgo.GoInt64)) : stdgo.GoInt16));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt64))) {
                var _v:stdgo.GoInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(@:check2r _m._mutateInt(_v, (2147483647i64 : stdgo.GoInt64)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt))) {
                var _v:stdgo.GoUInt = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt16))) {
                var _v:stdgo.GoUInt16 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateUInt((_v : stdgo.GoUInt64), (65535i64 : stdgo.GoUInt64)) : stdgo.GoUInt16));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt32))) {
                var _v:stdgo.GoUInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)) : stdgo.GoUInt32));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt64))) {
                var _v:stdgo.GoUInt64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(@:check2r _m._mutateUInt((_v : stdgo.GoUInt64), (4294967295i64 : stdgo.GoUInt64)));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat32))) {
                var _v:stdgo.GoFloat32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateFloat((_v : stdgo.GoFloat64), (3.4028234663852886e+38 : stdgo.GoFloat64)) : stdgo.GoFloat32));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoFloat64))) {
                var _v:stdgo.GoFloat64 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(@:check2r _m._mutateFloat(_v, (1.7976931348623157e+308 : stdgo.GoFloat64)));
            } else if (stdgo.Go.typeEquals((__type__ : Bool))) {
                var _v:Bool = __type__ == null ? false : __type__.__underlying__() == null ? false : __type__ == null ? false : __type__.__underlying__().value;
                if (@:check2r _m._rand((2 : stdgo.GoInt)) == ((1 : stdgo.GoInt))) {
                    _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(!_v);
                };
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoInt32))) {
                var _v:stdgo.GoInt32 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateInt((_v : stdgo.GoInt64), (2147483647i64 : stdgo.GoInt64)) : stdgo.GoInt32));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoUInt8))) {
                var _v:stdgo.GoUInt8 = __type__ == null ? 0 : __type__.__underlying__() == null ? 0 : __type__ == null ? 0 : __type__.__underlying__().value;
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:check2r _m._mutateUInt((_v : stdgo.GoUInt64), (255i64 : stdgo.GoUInt64)) : stdgo.GoUInt8));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.GoString))) {
                var _v:stdgo.GoString = __type__ == null ? "" : __type__.__underlying__() == null ? "" : __type__ == null ? "" : __type__.__underlying__().value;
                if (((_v.length) > _maxPerVal : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot mutate bytes of length %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length))));
                };
                if (((@:checkr _m ?? throw "null pointer dereference")._scratch.capacity < _maxPerVal : Bool)) {
                    (@:checkr _m ?? throw "null pointer dereference")._scratch = ((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _maxPerVal).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_v : Array<stdgo.GoUInt8>)));
                } else {
                    (@:checkr _m ?? throw "null pointer dereference")._scratch = ((@:checkr _m ?? throw "null pointer dereference")._scratch.__slice__(0, (_v.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _m ?? throw "null pointer dereference")._scratch.__copyTo__(_v);
                };
                @:check2r _m._mutateBytes((stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._scratch) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface(((@:checkr _m ?? throw "null pointer dereference")._scratch : stdgo.GoString));
            } else if (stdgo.Go.typeEquals((__type__ : stdgo.Slice<stdgo.GoUInt8>))) {
                var _v:stdgo.Slice<stdgo.GoUInt8> = __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__() == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__ == null ? (null : stdgo.Slice<stdgo.GoUInt8>) : __type__.__underlying__().value;
                if (((_v.length) > _maxPerVal : Bool)) {
                    throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("cannot mutate bytes of length %d" : stdgo.GoString), stdgo.Go.toInterface((_v.length))));
                };
                if (((@:checkr _m ?? throw "null pointer dereference")._scratch.capacity < _maxPerVal : Bool)) {
                    (@:checkr _m ?? throw "null pointer dereference")._scratch = ((new stdgo.Slice<stdgo.GoUInt8>((0 : stdgo.GoInt).toBasic(), _maxPerVal).__setNumber32__() : stdgo.Slice<stdgo.GoUInt8>).__append__(...(_v : Array<stdgo.GoUInt8>)));
                } else {
                    (@:checkr _m ?? throw "null pointer dereference")._scratch = ((@:checkr _m ?? throw "null pointer dereference")._scratch.__slice__(0, (_v.length)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _m ?? throw "null pointer dereference")._scratch.__copyTo__(_v);
                };
                @:check2r _m._mutateBytes((stdgo.Go.setRef((@:checkr _m ?? throw "null pointer dereference")._scratch) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>));
                _vals[(_i : stdgo.GoInt)] = stdgo.Go.toInterface((@:checkr _m ?? throw "null pointer dereference")._scratch);
            } else {
                var _v:stdgo.AnyInterface = __type__?.__underlying__();
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("type not supported for mutating: %T" : stdgo.GoString), _vals[(_i : stdgo.GoInt)]));
            };
        };
    }
    @:keep
    @:tdfield
    static public function _chooseLen( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        {
            var _x = (@:check2r _m._rand((100 : stdgo.GoInt)) : stdgo.GoInt);
            if ((_x < (90 : stdgo.GoInt) : Bool)) {
                return (@:check2r _m._rand(stdgo._internal.internal.fuzz.Fuzz__min._min((8 : stdgo.GoInt), _n)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else if ((_x < (99 : stdgo.GoInt) : Bool)) {
                return (@:check2r _m._rand(stdgo._internal.internal.fuzz.Fuzz__min._min((32 : stdgo.GoInt), _n)) + (1 : stdgo.GoInt) : stdgo.GoInt);
            } else {
                return (@:check2r _m._rand(_n) + (1 : stdgo.GoInt) : stdgo.GoInt);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _randByteOrder( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>):stdgo._internal.encoding.binary.Binary_byteorder.ByteOrder {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        if ((@:checkr _m ?? throw "null pointer dereference")._r._bool()) {
            return stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
        };
        return stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
    }
    @:keep
    @:tdfield
    static public function _rand( _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator>, _n:stdgo.GoInt):stdgo.GoInt {
        @:recv var _m:stdgo.Ref<stdgo._internal.internal.fuzz.Fuzz_t_mutator.T_mutator> = _m;
        return (@:checkr _m ?? throw "null pointer dereference")._r._intn(_n);
    }
}
