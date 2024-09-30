package stdgo._internal.runtime.pprof;
@:keep @:allow(stdgo._internal.runtime.pprof.Pprof.T_profileBuilder_asInterface) class T_profileBuilder_static_extension {
    @:keep
    static public function _readMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var __tmp__ = stdgo._internal.os.Os_readFile.readFile(("/proc/self/maps" : stdgo.GoString)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __0:stdgo.Error = __tmp__._1;
        stdgo._internal.runtime.pprof.Pprof__parseProcSelfMaps._parseProcSelfMaps(_data, _b._addMapping);
        if ((_b._mem.length) == ((0 : stdgo.GoInt))) {
            _b._addMappingEntry((0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), (0i64 : stdgo.GoUInt64), stdgo.Go.str()?.__copy__(), stdgo.Go.str()?.__copy__(), true);
        };
    }
    @:keep
    static public function _addMappingEntry( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _fake:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        _b._mem = (_b._mem.__append__(({ _start : (_lo : stdgo.GoUIntptr), _end : (_hi : stdgo.GoUIntptr), _offset : _offset, _file : _file?.__copy__(), _buildID : _buildID?.__copy__(), _fake : _fake } : stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap)));
    }
    @:keep
    static public function _addMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _lo:stdgo.GoUInt64, _hi:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        _b._addMappingEntry(_lo, _hi, _offset, _file?.__copy__(), _buildID?.__copy__(), false);
    }
    @:keep
    static public function _emitLocation( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>):stdgo.GoUInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var __deferstack__:Array<Void -> Void> = [];
        try {
            if ((_b._deck._pcs.length) == ((0 : stdgo.GoInt))) {
                return (0i64 : stdgo.GoUInt64);
            };
            __deferstack__.unshift(() -> _b._deck._reset());
            var _addr = (_b._deck._pcs[(0 : stdgo.GoInt)] : stdgo.GoUIntptr);
            var _firstFrame = (_b._deck._frames[(0 : stdgo.GoInt)] : stdgo._internal.runtime.Runtime_Frame.Frame);
            {};
            var _newFuncs = (new stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332>((0 : stdgo.GoInt).toBasic(), (8 : stdgo.GoInt), ...[for (i in 0 ... ((0 : stdgo.GoInt).toBasic() > (8 : stdgo.GoInt) ? (0 : stdgo.GoInt).toBasic() : (8 : stdgo.GoInt) : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332)]) : stdgo.Slice<stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332>);
            var _id = ((_b._locs.length : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
            _b._locs[_addr] = ({ _id : _id, _pcs : ((new stdgo.Slice<stdgo.GoUIntptr>(0, 0, ...[]) : stdgo.Slice<stdgo.GoUIntptr>).__append__(...(_b._deck._pcs : Array<stdgo.GoUIntptr>))), _firstPCSymbolizeResult : _b._deck._firstPCSymbolizeResult, _firstPCFrames : ((new stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>(0, 0, ...[].concat([for (i in 0 ... (0 > 0 ? 0 : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.runtime.Runtime_Frame.Frame)])) : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>).__append__(...((_b._deck._frames.__slice__(0, _b._deck._firstPCFrames) : stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame>) : Array<stdgo._internal.runtime.Runtime_Frame.Frame>))) } : stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo);
            var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
            _b._pb._uint64Opt((1 : stdgo.GoInt), _id);
            _b._pb._uint64Opt((3 : stdgo.GoInt), (_firstFrame.pc : stdgo.GoUInt64));
            for (__0 => _frame in _b._deck._frames) {
                var _funcID = (_b._funcs[_frame.function_] ?? (0 : stdgo.GoInt) : stdgo.GoUInt64);
                if (_funcID == ((0i64 : stdgo.GoUInt64))) {
                    _funcID = ((_b._funcs.length : stdgo.GoUInt64) + (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
                    _b._funcs[_frame.function_] = (_funcID : stdgo.GoInt);
                    _newFuncs = (_newFuncs.__append__(({ _id : _funcID, _name : stdgo._internal.runtime.pprof.Pprof__runtime_FrameSymbolName._runtime_FrameSymbolName((stdgo.Go.setRef(_frame) : stdgo.Ref<stdgo._internal.runtime.Runtime_Frame.Frame>))?.__copy__(), _file : _frame.file?.__copy__(), _startLine : (stdgo._internal.runtime.pprof.Pprof__runtime_FrameStartLine._runtime_FrameStartLine((stdgo.Go.setRef(_frame) : stdgo.Ref<stdgo._internal.runtime.Runtime_Frame.Frame>)) : stdgo.GoInt64) } : stdgo._internal.runtime.pprof.Pprof_T__emitLocation___localname___newFunc_20332.T__emitLocation___localname___newFunc_20332)));
                };
                _b._pbLine((4 : stdgo.GoInt), _funcID, (_frame.line : stdgo.GoInt64));
            };
            for (_i => _ in _b._mem) {
                if ((((_b._mem[(_i : stdgo.GoInt)]._start <= _addr : Bool) && (_addr < _b._mem[(_i : stdgo.GoInt)]._end : Bool) : Bool) || _b._mem[(_i : stdgo.GoInt)]._fake : Bool)) {
                    _b._pb._uint64Opt((2 : stdgo.GoInt), ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64));
                    var _m = (_b._mem[(_i : stdgo.GoInt)] : stdgo._internal.runtime.pprof.Pprof_T_memMap.T_memMap);
                    _m._funcs = (_m._funcs | (_b._deck._symbolizeResult) : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag);
                    _b._mem[(_i : stdgo.GoInt)] = _m?.__copy__();
                    break;
                };
            };
            _b._pb._endMessage((4 : stdgo.GoInt), _start);
            for (__1 => _fn in _newFuncs) {
                var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
                _b._pb._uint64Opt((1 : stdgo.GoInt), _fn._id);
                _b._pb._int64Opt((2 : stdgo.GoInt), _b._stringIndex(_fn._name?.__copy__()));
                _b._pb._int64Opt((3 : stdgo.GoInt), _b._stringIndex(_fn._name?.__copy__()));
                _b._pb._int64Opt((4 : stdgo.GoInt), _b._stringIndex(_fn._file?.__copy__()));
                _b._pb._int64Opt((5 : stdgo.GoInt), _fn._startLine);
                _b._pb._endMessage((5 : stdgo.GoInt), _start);
            };
            _b._flush();
            {
                for (defer in __deferstack__) {
                    defer();
                };
                return _id;
            };
            {
                final __ret__:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
                for (defer in __deferstack__) {
                    defer();
                };
                if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
                return __ret__;
            };
        } catch(__exception__) {
            var exe:Dynamic = __exception__.native;
            if ((exe is haxe.ValueException)) exe = exe.value;
            if (!(exe is stdgo.AnyInterface.AnyInterfaceData)) {
                if (__exception__.message == "__return__") throw "__return__";
                exe = stdgo.Go.toInterface(__exception__.message);
            };
            stdgo.Go.recover_exception = exe;
            final __ret__:stdgo.GoUInt64 = (0 : stdgo.GoUInt64);
            for (defer in __deferstack__) {
                defer();
            };
            if (stdgo.Go.recover_exception != null) throw stdgo.Go.recover_exception;
            return __ret__;
        };
    }
    @:keep
    static public function _appendLocsForStack( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _locs:stdgo.Slice<stdgo.GoUInt64>, _stk:stdgo.Slice<stdgo.GoUIntptr>):stdgo.Slice<stdgo.GoUInt64> {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _newLocs = (null : stdgo.Slice<stdgo.GoUInt64>);
        _b._deck._reset();
        _stk = stdgo._internal.runtime.pprof.Pprof__runtime_expandFinalInlineFrame._runtime_expandFinalInlineFrame(_stk);
        while (((_stk.length) > (0 : stdgo.GoInt) : Bool)) {
            var _addr = (_stk[(0 : stdgo.GoInt)] : stdgo.GoUIntptr);
            {
                var __tmp__ = (_b._locs != null && _b._locs.exists(_addr) ? { _0 : _b._locs[_addr], _1 : true } : { _0 : ({} : stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo), _1 : false }), _l:stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    if (((_b._deck._pcs.length) > (0 : stdgo.GoInt) : Bool)) {
                        {
                            var _added = (_b._deck._tryAdd(_addr, _l._firstPCFrames, _l._firstPCSymbolizeResult) : Bool);
                            if (_added) {
                                _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                                continue;
                            };
                        };
                    };
                    {
                        var _id = (_b._emitLocation() : stdgo.GoUInt64);
                        if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                            _locs = (_locs.__append__(_id));
                        };
                    };
                    _locs = (_locs.__append__(_l._id));
                    _stk = (_stk.__slice__((_l._pcs.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                    continue;
                };
            };
            var __tmp__ = stdgo._internal.runtime.pprof.Pprof__allFrames._allFrames(_addr), _frames:stdgo.Slice<stdgo._internal.runtime.Runtime_Frame.Frame> = __tmp__._0, _symbolizeResult:stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag = __tmp__._1;
            if ((_frames.length) == ((0 : stdgo.GoInt))) {
                {
                    var _id = (_b._emitLocation() : stdgo.GoUInt64);
                    if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                        _locs = (_locs.__append__(_id));
                    };
                };
                _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                continue;
            };
            {
                var _added = (_b._deck._tryAdd(_addr, _frames, _symbolizeResult) : Bool);
                if (_added) {
                    _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                    continue;
                };
            };
            {
                var _id = (_b._emitLocation() : stdgo.GoUInt64);
                if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                    _locs = (_locs.__append__(_id));
                };
            };
            {
                var __tmp__ = (_b._locs != null && _b._locs.exists(_addr) ? { _0 : _b._locs[_addr], _1 : true } : { _0 : ({} : stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo), _1 : false }), _l:stdgo._internal.runtime.pprof.Pprof_T_locInfo.T_locInfo = __tmp__._0, _ok:Bool = __tmp__._1;
                if (_ok) {
                    _locs = (_locs.__append__(_l._id));
                    _stk = (_stk.__slice__((_l._pcs.length)) : stdgo.Slice<stdgo.GoUIntptr>);
                } else {
                    _b._deck._tryAdd(_addr, _frames, _symbolizeResult);
                    _stk = (_stk.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUIntptr>);
                };
            };
        };
        {
            var _id = (_b._emitLocation() : stdgo.GoUInt64);
            if ((_id > (0i64 : stdgo.GoUInt64) : Bool)) {
                _locs = (_locs.__append__(_id));
            };
        };
        return _locs;
    }
    @:keep
    static public function _build( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        _b._end = stdgo._internal.time.Time_now.now()?.__copy__();
        _b._pb._int64Opt((9 : stdgo.GoInt), _b._start.unixNano());
        if (_b._havePeriod) {
            _b._pbValueType((1 : stdgo.GoInt), ("samples" : stdgo.GoString), ("count" : stdgo.GoString));
            _b._pbValueType((1 : stdgo.GoInt), ("cpu" : stdgo.GoString), ("nanoseconds" : stdgo.GoString));
            _b._pb._int64Opt((10 : stdgo.GoInt), _b._end.sub(_b._start?.__copy__()).nanoseconds());
            _b._pbValueType((11 : stdgo.GoInt), ("cpu" : stdgo.GoString), ("nanoseconds" : stdgo.GoString));
            _b._pb._int64Opt((12 : stdgo.GoInt), _b._period);
        };
        var _values = (new stdgo.Slice<stdgo.GoInt64>(2, 2, ...[(0i64 : stdgo.GoInt64), (0i64 : stdgo.GoInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoInt64>);
        var _locs:stdgo.Slice<stdgo.GoUInt64> = (null : stdgo.Slice<stdgo.GoUInt64>);
        {
            var _e = _b._m._all;
            stdgo.Go.cfor(_e != null && ((_e : Dynamic).__nil__ == null || !(_e : Dynamic).__nil__), _e = _e._nextAll, {
                _values[(0 : stdgo.GoInt)] = _e._count;
                _values[(1 : stdgo.GoInt)] = (_e._count * _b._period : stdgo.GoInt64);
                var _labels:() -> Void = null;
                if (_e._tag != null) {
                    _labels = function():Void {
                        for (_k => _v in ((_e._tag.__convert__(stdgo._internal.internal.reflect.Reflect.GoType.refType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.named("stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap", [], stdgo._internal.internal.reflect.Reflect.GoType.mapType({ get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }, { get : () -> stdgo._internal.internal.reflect.Reflect.GoType.basic(string_kind) }), false, { get : () -> null }) })) : stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap>) : stdgo._internal.runtime.pprof.Pprof_T_labelMap.T_labelMap)) {
                            _b._pbLabel((3 : stdgo.GoInt), _k?.__copy__(), _v?.__copy__(), (0i64 : stdgo.GoInt64));
                        };
                    };
                };
                _locs = _b._appendLocsForStack((_locs.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>), _e._stk);
                _b._pbSample(_values, _locs, _labels);
            });
        };
        for (_i => _m in _b._mem) {
            var _hasFunctions = (_m._funcs == ((1 : stdgo._internal.runtime.pprof.Pprof_T_symbolizeFlag.T_symbolizeFlag)) : Bool);
            _b._pbMapping((3 : stdgo.GoInt), ((_i + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt64), (_m._start : stdgo.GoUInt64), (_m._end : stdgo.GoUInt64), _m._offset, _m._file?.__copy__(), _m._buildID?.__copy__(), _hasFunctions);
        };
        _b._pb._strings((6 : stdgo.GoInt), _b._strings);
        _b._zw.write(_b._pb._data);
        _b._zw.close();
    }
    @:keep
    static public function _addCPUData( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _data:stdgo.Slice<stdgo.GoUInt64>, _tags:stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>):stdgo.Error {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        if (!_b._havePeriod) {
            if (((_data.length) < (3 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("truncated profile" : stdgo.GoString));
            };
            if (((_data[(0 : stdgo.GoInt)] != (3i64 : stdgo.GoUInt64)) || (_data[(2 : stdgo.GoInt)] == (0i64 : stdgo.GoUInt64)) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile" : stdgo.GoString));
            };
            _b._period = ((1000000000i64 : stdgo.GoInt64) / (_data[(2 : stdgo.GoInt)] : stdgo.GoInt64) : stdgo.GoInt64);
            _b._havePeriod = true;
            _data = (_data.__slice__((3 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt64>);
            _tags = (_tags.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
        };
        while (((_data.length) > (0 : stdgo.GoInt) : Bool)) {
            if ((((_data.length) < (3 : stdgo.GoInt) : Bool) || (_data[(0 : stdgo.GoInt)] > (_data.length : stdgo.GoUInt64) : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("truncated profile" : stdgo.GoString));
            };
            if (((_data[(0 : stdgo.GoInt)] < (3i64 : stdgo.GoUInt64) : Bool) || (_tags != null && ((_tags.length) < (1 : stdgo.GoInt) : Bool) : Bool) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("malformed profile" : stdgo.GoString));
            };
            if (((_tags.length) < (1 : stdgo.GoInt) : Bool)) {
                return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched profile records and tags" : stdgo.GoString));
            };
            var _count = (_data[(2 : stdgo.GoInt)] : stdgo.GoUInt64);
            var _stk = (_data.__slice__((3 : stdgo.GoInt), _data[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt64>);
            _data = (_data.__slice__(_data[(0 : stdgo.GoInt)]) : stdgo.Slice<stdgo.GoUInt64>);
            var _tag = (_tags[(0 : stdgo.GoInt)] : stdgo._internal.unsafe.Unsafe.UnsafePointer);
            _tags = (_tags.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo._internal.unsafe.Unsafe.UnsafePointer>);
            if (((_count == (0i64 : stdgo.GoUInt64)) && (_stk.length == (1 : stdgo.GoInt)) : Bool)) {
                _count = (_stk[(0 : stdgo.GoInt)] : stdgo.GoUInt64);
                _stk = (new stdgo.Slice<stdgo.GoUInt64>(1, 1, ...[((stdgo._internal.internal.abi.Abi_funcPCABIInternal.funcPCABIInternal(stdgo.Go.toInterface(stdgo._internal.runtime.pprof.Pprof__lostProfileEvent._lostProfileEvent)) + (1 : stdgo.GoUIntptr) : stdgo.GoUIntptr) : stdgo.GoUInt64)]).__setNumber64__() : stdgo.Slice<stdgo.GoUInt64>);
            };
            _b._m._lookup(_stk, _tag)._count = (_b._m._lookup(_stk, _tag)._count + ((_count : stdgo.GoInt64)) : stdgo.GoInt64);
        };
        if ((_tags.length) != ((0 : stdgo.GoInt))) {
            return stdgo._internal.fmt.Fmt_errorf.errorf(("mismatched profile records and tags" : stdgo.GoString));
        };
        return (null : stdgo.Error);
    }
    @:keep
    static public function _pbMapping( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _tag:stdgo.GoInt, _id:stdgo.GoUInt64, _base:stdgo.GoUInt64, _limit:stdgo.GoUInt64, _offset:stdgo.GoUInt64, _file:stdgo.GoString, _buildID:stdgo.GoString, _hasFuncs:Bool):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
        _b._pb._uint64Opt((1 : stdgo.GoInt), _id);
        _b._pb._uint64Opt((2 : stdgo.GoInt), _base);
        _b._pb._uint64Opt((3 : stdgo.GoInt), _limit);
        _b._pb._uint64Opt((4 : stdgo.GoInt), _offset);
        _b._pb._int64Opt((5 : stdgo.GoInt), _b._stringIndex(_file?.__copy__()));
        _b._pb._int64Opt((6 : stdgo.GoInt), _b._stringIndex(_buildID?.__copy__()));
        if (_hasFuncs) {
            _b._pb._bool((7 : stdgo.GoInt), true);
        };
        _b._pb._endMessage(_tag, _start);
    }
    @:keep
    static public function _pbLine( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _tag:stdgo.GoInt, _funcID:stdgo.GoUInt64, _line:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
        _b._pb._uint64Opt((1 : stdgo.GoInt), _funcID);
        _b._pb._int64Opt((2 : stdgo.GoInt), _line);
        _b._pb._endMessage(_tag, _start);
    }
    @:keep
    static public function _pbLabel( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _tag:stdgo.GoInt, _key:stdgo.GoString, _str:stdgo.GoString, _num:stdgo.GoInt64):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
        _b._pb._int64Opt((1 : stdgo.GoInt), _b._stringIndex(_key?.__copy__()));
        _b._pb._int64Opt((2 : stdgo.GoInt), _b._stringIndex(_str?.__copy__()));
        _b._pb._int64Opt((3 : stdgo.GoInt), _num);
        _b._pb._endMessage(_tag, _start);
    }
    @:keep
    static public function _pbSample( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _values:stdgo.Slice<stdgo.GoInt64>, _locs:stdgo.Slice<stdgo.GoUInt64>, _labels:() -> Void):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
        _b._pb._int64s((2 : stdgo.GoInt), _values);
        _b._pb._uint64s((1 : stdgo.GoInt), _locs);
        if (_labels != null) {
            _labels();
        };
        _b._pb._endMessage((2 : stdgo.GoInt), _start);
        _b._flush();
    }
    @:keep
    static public function _pbValueType( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _tag:stdgo.GoInt, _typ:stdgo.GoString, _unit:stdgo.GoString):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var _start = (_b._pb._startMessage() : stdgo._internal.runtime.pprof.Pprof_T_msgOffset.T_msgOffset);
        _b._pb._int64((1 : stdgo.GoInt), _b._stringIndex(_typ?.__copy__()));
        _b._pb._int64((2 : stdgo.GoInt), _b._stringIndex(_unit?.__copy__()));
        _b._pb._endMessage(_tag, _start);
    }
    @:keep
    static public function _flush( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>):Void {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        {};
        if (((_b._pb._nest == (0 : stdgo.GoInt)) && ((_b._pb._data.length) > (4096 : stdgo.GoInt) : Bool) : Bool)) {
            _b._zw.write(_b._pb._data);
            _b._pb._data = (_b._pb._data.__slice__(0, (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
        };
    }
    @:keep
    static public function _stringIndex( _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder>, _s:stdgo.GoString):stdgo.GoInt64 {
        @:recv var _b:stdgo.Ref<stdgo._internal.runtime.pprof.Pprof_T_profileBuilder.T_profileBuilder> = _b;
        var __tmp__ = (_b._stringMap != null && _b._stringMap.exists(_s?.__copy__()) ? { _0 : _b._stringMap[_s?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoInt), _1 : false }), _id:stdgo.GoInt = __tmp__._0, _ok:Bool = __tmp__._1;
        if (!_ok) {
            _id = (_b._strings.length);
            _b._strings = (_b._strings.__append__(_s?.__copy__()));
            _b._stringMap[_s] = _id;
        };
        return (_id : stdgo.GoInt64);
    }
}
