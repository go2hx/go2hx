package stdgo._internal.debug.gosym;
@:keep @:allow(stdgo._internal.debug.gosym.Gosym.LineTable_asInterface) class LineTable_static_extension {
    @:keep
    @:tdfield
    static public function _go12MapFiles( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _m:stdgo.GoMap<stdgo.GoString, stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>>, _obj:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_obj.Obj>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L681"
            if (true) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L683"
                            ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                        };
                        a();
                    }) });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L687"
            _t._initFileMap();
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L688"
            for (_file => _ in (@:checkr _t ?? throw "null pointer dereference")._fileMap) {
                _m[_file] = _obj;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
    static public function _initFileMap( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L653"
            (@:checkr _t ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L656"
            if ((@:checkr _t ?? throw "null pointer dereference")._fileMap != null) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L657"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _m = (({
                final x = new stdgo.GoMap.GoStringMap<stdgo.GoUInt32>();
                x.__defaultValue__ = () -> (0 : stdgo.GoUInt32);
                {};
                x;
            } : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>) : stdgo.GoMap<stdgo.GoString, stdgo.GoUInt32>);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L661"
            if ((@:checkr _t ?? throw "null pointer dereference")._version == ((2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L662"
                {
                    var _i = ((1u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    while ((_i < (@:checkr _t ?? throw "null pointer dereference")._nfiletab : Bool)) {
                        var _s = (_t._string((@:checkr _t ?? throw "null pointer dereference")._binary.uint32(((@:checkr _t ?? throw "null pointer dereference")._filetab.__slice__(((4u32 : stdgo.GoUInt32) * _i : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>))).__copy__() : stdgo.GoString);
_m[_s] = _i;
                        _i++;
                    };
                };
            } else {
                var _pos:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L668"
                {
                    var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                    while ((_i < (@:checkr _t ?? throw "null pointer dereference")._nfiletab : Bool)) {
                        var _s = (_t._stringFrom((@:checkr _t ?? throw "null pointer dereference")._filetab, _pos).__copy__() : stdgo.GoString);
_m[_s] = _pos;
_pos = (_pos + ((((_s.length) + (1 : stdgo.GoInt) : stdgo.GoInt) : stdgo.GoUInt32)) : stdgo.GoUInt32);
                        _i++;
                    };
                };
            };
            (@:checkr _t ?? throw "null pointer dereference")._fileMap = _m;
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
    static public function _go12LineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _file:stdgo.GoString, _line:stdgo.GoInt):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _pc = (0 : stdgo.GoUInt64);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L616"
                        if ((true && (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) : Bool)) {
                            _pc = (0i64 : stdgo.GoUInt64);
                        };
                    };
                    a();
                }) });
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L621"
            _t._initFileMap();
            var __tmp__ = ((@:checkr _t ?? throw "null pointer dereference")._fileMap != null && (@:checkr _t ?? throw "null pointer dereference")._fileMap.__exists__(_file?.__copy__()) ? { _0 : (@:checkr _t ?? throw "null pointer dereference")._fileMap[_file?.__copy__()], _1 : true } : { _0 : (0 : stdgo.GoUInt32), _1 : false }), _filenum:stdgo.GoUInt32 = __tmp__._0, _ok:Bool = __tmp__._1;
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L623"
            if (!_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L624"
                {
                    final __ret__:stdgo.GoUInt64 = _pc = (0i64 : stdgo.GoUInt64);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _cutab:stdgo.Slice<stdgo.GoUInt8> = (null : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L631"
            {
                var _i = ((0u32 : stdgo.GoUInt32) : stdgo.GoUInt32);
                while ((_i < (@:checkr _t ?? throw "null pointer dereference")._nfunctab : Bool)) {
                    var _f = (_t._funcData(_i).__copy__() : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
var _entry = (_f._entryPC() : stdgo.GoUInt64);
var _filetab = (_f._pcfile() : stdgo.GoUInt32);
var _linetab = (_f._pcln() : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L636"
                    if ((((@:checkr _t ?? throw "null pointer dereference")._version == ((3 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) || (@:checkr _t ?? throw "null pointer dereference")._version == ((4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) : Bool) || ((@:checkr _t ?? throw "null pointer dereference")._version == (5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L637"
                        if (_f._cuOffset() == ((-1u32 : stdgo.GoUInt32))) {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L639"
                            {
                                _i++;
                                continue;
                            };
                        };
                        _cutab = ((@:checkr _t ?? throw "null pointer dereference")._cutab.__slice__((_f._cuOffset() * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                    };
var _pc = (_t._findFileLine(_entry, _filetab, _linetab, (_filenum : stdgo.GoInt32), (_line : stdgo.GoInt32), _cutab) : stdgo.GoUInt64);
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L644"
                    if (_pc != ((0i64 : stdgo.GoUInt64))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L645"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _pc;
                        };
                    };
                    _i++;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L648"
            {
                final __ret__:stdgo.GoUInt64 = _pc = (0i64 : stdgo.GoUInt64);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return _pc;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return _pc;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _go12PCToFile( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _file = ("" : stdgo.GoString);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L584"
                        if ((true && (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) : Bool)) {
                            _file = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        };
                    };
                    a();
                }) });
            };
            var _f = (_t._findFunc(_pc)?.__copy__() : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L590"
            if (_f.isZero()) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L591"
                {
                    final __ret__:stdgo.GoString = _file = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _entry = (_f._entryPC() : stdgo.GoUInt64);
            var _filetab = (_f._pcfile() : stdgo.GoUInt32);
            var _fno = (_t._pcvalue(_filetab, _entry, _pc) : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L596"
            if ((@:checkr _t ?? throw "null pointer dereference")._version == ((2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L597"
                if ((_fno <= (0 : stdgo.GoInt32) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L598"
                    {
                        final __ret__:stdgo.GoString = _file = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L600"
                {
                    final __ret__:stdgo.GoString = _file = _t._string((@:checkr _t ?? throw "null pointer dereference")._binary.uint32(((@:checkr _t ?? throw "null pointer dereference")._filetab.__slice__(((4 : stdgo.GoInt32) * _fno : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>)))?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L603"
            if ((_fno < (0 : stdgo.GoInt32) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L604"
                {
                    final __ret__:stdgo.GoString = _file = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _cuoff = (_f._cuOffset() : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L607"
            {
                var _fnoff = ((@:checkr _t ?? throw "null pointer dereference")._binary.uint32(((@:checkr _t ?? throw "null pointer dereference")._cutab.__slice__((((_cuoff + (_fno : stdgo.GoUInt32) : stdgo.GoUInt32)) * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                if (_fnoff != ((-1u32 : stdgo.GoUInt32))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L608"
                    {
                        final __ret__:stdgo.GoString = _file = _t._stringFrom((@:checkr _t ?? throw "null pointer dereference")._filetab, _fnoff)?.__copy__();
                        for (defer in __deferstack__) {
                            if (defer.ran) continue;
                            defer.ran = true;
                            defer.f();
                        };
                        return __ret__;
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L610"
            {
                final __ret__:stdgo.GoString = _file = (stdgo.Go.str() : stdgo.GoString)?.__copy__();
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return _file;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return _file;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _go12PCToLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        var _line = (0 : stdgo.GoInt);
        try {
            {
                __deferstack__.unshift({ ran : false, f : () -> ({
                    var a = function():Void {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L567"
                        if ((true && (({
                            final r = stdgo.Go.recover_exception;
                            stdgo.Go.recover_exception = null;
                            r;
                        }) != null) : Bool)) {
                            _line = (-1 : stdgo.GoInt);
                        };
                    };
                    a();
                }) });
            };
            var _f = (_t._findFunc(_pc)?.__copy__() : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L573"
            if (_f.isZero()) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L574"
                {
                    final __ret__:stdgo.GoInt = _line = (-1 : stdgo.GoInt);
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return __ret__;
                };
            };
            var _entry = (_f._entryPC() : stdgo.GoUInt64);
            var _linetab = (_f._pcln() : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L578"
            {
                final __ret__:stdgo.GoInt = _line = (_t._pcvalue(_linetab, _entry, _pc) : stdgo.GoInt);
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return __ret__;
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
                return _line;
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return _line;
            };
        };
    }
    @:keep
    @:tdfield
    static public function _findFileLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _entry:stdgo.GoUInt64, _filetab:stdgo.GoUInt32, _linetab:stdgo.GoUInt32, _filenum:stdgo.GoInt32, _line:stdgo.GoInt32, _cutab:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L524"
        if (((_filetab == (0u32 : stdgo.GoUInt32)) || (_linetab == (0u32 : stdgo.GoUInt32)) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L525"
            return (0i64 : stdgo.GoUInt64);
        };
        var _fp = ((@:checkr _t ?? throw "null pointer dereference")._pctab.__slice__(_filetab) : stdgo.Slice<stdgo.GoUInt8>);
        var _fl = ((@:checkr _t ?? throw "null pointer dereference")._pctab.__slice__(_linetab) : stdgo.Slice<stdgo.GoUInt8>);
        var _fileVal = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _fileVal__pointer__ = stdgo.Go.pointer(_fileVal);
        var _filePC = (_entry : stdgo.GoUInt64);
        var _filePC__pointer__ = stdgo.Go.pointer(_filePC);
        var _lineVal = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _lineVal__pointer__ = stdgo.Go.pointer(_lineVal);
        var _linePC = (_entry : stdgo.GoUInt64);
        var _linePC__pointer__ = stdgo.Go.pointer(_linePC);
        var _fileStartPC = (_filePC : stdgo.GoUInt64);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L535"
        while (_t._step((stdgo.Go.setRef(_fp) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _filePC__pointer__, _fileVal__pointer__, _filePC == (_entry))) {
            var _fileIndex = (_fileVal : stdgo.GoInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L537"
            if ((((@:checkr _t ?? throw "null pointer dereference")._version == ((3 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) || (@:checkr _t ?? throw "null pointer dereference")._version == ((4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) : Bool) || ((@:checkr _t ?? throw "null pointer dereference")._version == (5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) : Bool)) {
                _fileIndex = ((@:checkr _t ?? throw "null pointer dereference")._binary.uint32((_cutab.__slice__((_fileVal * (4 : stdgo.GoInt32) : stdgo.GoInt32)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoInt32);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L540"
            if (((_fileIndex == _filenum) && (_fileStartPC < _filePC : Bool) : Bool)) {
                var _lineStartPC = (_linePC : stdgo.GoUInt64);
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L546"
                while (((_linePC < _filePC : Bool) && _t._step((stdgo.Go.setRef(_fl) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _linePC__pointer__, _lineVal__pointer__, _linePC == (_entry)) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L548"
                    if (_lineVal == (_line)) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L549"
                        if ((_fileStartPC <= _lineStartPC : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L550"
                            return _lineStartPC;
                        };
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L552"
                        if ((_fileStartPC < _linePC : Bool)) {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L553"
                            return _fileStartPC;
                        };
                    };
                    _lineStartPC = _linePC;
                };
            };
            _fileStartPC = _filePC;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L561"
        return (0i64 : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function _pcvalue( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _off:stdgo.GoUInt32, _entry:stdgo.GoUInt64, _targetpc:stdgo.GoUInt64):stdgo.GoInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _p = ((@:checkr _t ?? throw "null pointer dereference")._pctab.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>);
        var _val = ((-1 : stdgo.GoInt32) : stdgo.GoInt32);
        var _val__pointer__ = stdgo.Go.pointer(_val);
        var _pc = (_entry : stdgo.GoUInt64);
        var _pc__pointer__ = stdgo.Go.pointer(_pc);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L509"
        while (_t._step((stdgo.Go.setRef(_p) : stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>), _pc__pointer__, _val__pointer__, _pc == (_entry))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L510"
            if ((_targetpc < _pc : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L511"
                return _val;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L514"
        return (-1 : stdgo.GoInt32);
    }
    @:keep
    @:tdfield
    static public function _step( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _p:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>, _pc:stdgo.Pointer<stdgo.GoUInt64>, _val:stdgo.Pointer<stdgo.GoInt32>, _first:Bool):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _uvdelta = (_t._readvarint(_p) : stdgo.GoUInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L486"
        if (((_uvdelta == (0u32 : stdgo.GoUInt32)) && !_first : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L487"
            return false;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L489"
        if ((_uvdelta & (1u32 : stdgo.GoUInt32) : stdgo.GoUInt32) != ((0u32 : stdgo.GoUInt32))) {
            _uvdelta = (-1 ^ (_uvdelta >> (1i64 : stdgo.GoUInt64) : stdgo.GoUInt32));
        } else {
            _uvdelta = (_uvdelta >> ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt32);
        };
        var _vdelta = (_uvdelta : stdgo.GoInt32);
        var _pcdelta = (_t._readvarint(_p) * (@:checkr _t ?? throw "null pointer dereference")._quantum : stdgo.GoUInt32);
        _pc.value = (_pc.value + ((_pcdelta : stdgo.GoUInt64)) : stdgo.GoUInt64);
        _val.value = (_val.value + (_vdelta) : stdgo.GoInt32);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L498"
        return true;
    }
    @:keep
    @:tdfield
    static public function _funcData( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _i:stdgo.GoUInt32):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _data = ((@:checkr _t ?? throw "null pointer dereference")._funcdata.__slice__(_t._funcTab()._funcOff((_i : stdgo.GoInt))) : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L439"
        return ({ _t : _t, _data : _data } : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
    }
    @:keep
    @:tdfield
    static public function _funcTab( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L393"
        return ({ lineTable : _t, _sz : _t._functabFieldSize() } : stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab);
    }
    @:keep
    @:tdfield
    static public function _functabFieldSize( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L385"
        if (((@:checkr _t ?? throw "null pointer dereference")._version >= (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L386"
            return (4 : stdgo.GoInt);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L388"
        return ((@:checkr _t ?? throw "null pointer dereference")._ptrsize : stdgo.GoInt);
    }
    @:keep
    @:tdfield
    static public function _string( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L380"
        return _t._stringFrom((@:checkr _t ?? throw "null pointer dereference")._funcdata, _off)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _stringFrom( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _arr:stdgo.Slice<stdgo.GoUInt8>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L369"
        {
            var __tmp__ = ((@:checkr _t ?? throw "null pointer dereference")._strings != null && (@:checkr _t ?? throw "null pointer dereference")._strings.__exists__(_off) ? { _0 : (@:checkr _t ?? throw "null pointer dereference")._strings[_off], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L370"
                return _s?.__copy__();
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte((_arr.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _s = (((_arr.__slice__(_off, (_off + (_i : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _t ?? throw "null pointer dereference")._strings[_off] = _s?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L375"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _funcName( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _off:stdgo.GoUInt32):stdgo.GoString {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L358"
        {
            var __tmp__ = ((@:checkr _t ?? throw "null pointer dereference")._funcNames != null && (@:checkr _t ?? throw "null pointer dereference")._funcNames.__exists__(_off) ? { _0 : (@:checkr _t ?? throw "null pointer dereference")._funcNames[_off], _1 : true } : { _0 : ("" : stdgo.GoString), _1 : false }), _s:stdgo.GoString = __tmp__._0, _ok:Bool = __tmp__._1;
            if (_ok) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L359"
                return _s?.__copy__();
            };
        };
        var _i = (stdgo._internal.bytes.Bytes_indexbyte.indexByte(((@:checkr _t ?? throw "null pointer dereference")._funcnametab.__slice__(_off) : stdgo.Slice<stdgo.GoUInt8>), (0 : stdgo.GoUInt8)) : stdgo.GoInt);
        var _s = ((((@:checkr _t ?? throw "null pointer dereference")._funcnametab.__slice__(_off, (_off + (_i : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>) : stdgo.GoString)?.__copy__() : stdgo.GoString);
        (@:checkr _t ?? throw "null pointer dereference")._funcNames[_off] = _s?.__copy__();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L364"
        return _s?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _readvarint( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pp:stdgo.Ref<stdgo.Slice<stdgo.GoUInt8>>):stdgo.GoUInt32 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _v:stdgo.GoUInt32 = (0 : stdgo.GoUInt32), _shift:stdgo.GoUInt32 = (0 : stdgo.GoUInt32);
        var _p = (_pp : stdgo.Slice<stdgo.GoUInt8>);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L344"
        {
            _shift = (0u32 : stdgo.GoUInt32);
            while (true) {
                var _b = (_p[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
_p = (_p.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
_v = (_v | (((((_b : stdgo.GoUInt32) & (127u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) << _shift : stdgo.GoUInt32)) : stdgo.GoUInt32);
//"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L348"
                if ((_b & (128 : stdgo.GoUInt8) : stdgo.GoUInt8) == ((0 : stdgo.GoUInt8))) {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L349"
                    break;
                };
                _shift = (_shift + ((7u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
            };
        };
        (_pp : stdgo.Slice<stdgo.GoUInt8>).__setData__(_p);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L353"
        return _v;
    }
    @:keep
    @:tdfield
    static public function _findFunc( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pc:stdgo.GoUInt64):stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _ft = (_t._funcTab()?.__copy__() : stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L330"
        if (((_pc < _ft._pc((0 : stdgo.GoInt)) : Bool) || (_pc >= _ft._pc(_ft.count()) : Bool) : Bool)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L331"
            return (new stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData() : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
        };
        var _idx = (stdgo._internal.sort.Sort_search.search(((@:checkr _t ?? throw "null pointer dereference")._nfunctab : stdgo.GoInt), function(_i:stdgo.GoInt):Bool {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L334"
            return (_ft._pc(_i) > _pc : Bool);
        }) : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L336"
        _idx--;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L337"
        return _t._funcData((_idx : stdgo.GoUInt32))?.__copy__();
    }
    @:keep
    @:tdfield
    static public function _go12Funcs( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L298"
            if (true) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L300"
                            ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                        };
                        a();
                    }) });
                };
            };
            var _ft = (_t._funcTab()?.__copy__() : stdgo._internal.debug.gosym.Gosym_t_functab.T_funcTab);
            var _funcs = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>((_ft.count() : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_ft.count() : stdgo.GoInt).toBasic() > 0 ? (_ft.count() : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_func.Func)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
            var _syms = (new stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>((_funcs.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... ((_funcs.length : stdgo.GoInt).toBasic() > 0 ? (_funcs.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.debug.gosym.Gosym_sym.Sym)]) : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L307"
            for (_i => _ in _funcs) {
                var _f = (stdgo.Go.setRef(_funcs[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_func.Func>);
                (@:checkr _f ?? throw "null pointer dereference").entry = _ft._pc(_i);
                (@:checkr _f ?? throw "null pointer dereference").end = _ft._pc((_i + (1 : stdgo.GoInt) : stdgo.GoInt));
                var _info = (_t._funcData((_i : stdgo.GoUInt32))?.__copy__() : stdgo._internal.debug.gosym.Gosym_t_funcdata.T_funcData);
                (@:checkr _f ?? throw "null pointer dereference").lineTable = _t;
                (@:checkr _f ?? throw "null pointer dereference").frameSize = (_info._deferreturn() : stdgo.GoInt);
                _syms[(_i : stdgo.GoInt)] = ({ value : (@:checkr _f ?? throw "null pointer dereference").entry, type : (84 : stdgo.GoUInt8), name : _t._funcName(_info._nameOff())?.__copy__(), goType : (0i64 : stdgo.GoUInt64), func : _f, _goVersion : (@:checkr _t ?? throw "null pointer dereference")._version } : stdgo._internal.debug.gosym.Gosym_sym.Sym);
                (@:checkr _f ?? throw "null pointer dereference").sym = (stdgo.Go.setRef(_syms[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_sym.Sym>);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L324"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _funcs;
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
                return (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
            };
        } catch(__exception__) {
            {
                var exe:Dynamic = __exception__.native;
                if ((exe is haxe.ValueException)) exe = exe.value;
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
                return (null : stdgo.Slice<stdgo._internal.debug.gosym.Gosym_func.Func>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function _parsePclnTab( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):Void {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L191"
            (@:checkr _t ?? throw "null pointer dereference")._mu.lock();
            {
                final __f__ = (@:checkr _t ?? throw "null pointer dereference")._mu.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L193"
            if ((@:checkr _t ?? throw "null pointer dereference")._version != ((0 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L194"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _t ?? throw "null pointer dereference")._version = (1 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L204"
            if (true) {
                {
                    __deferstack__.unshift({ ran : false, f : () -> ({
                        var a = function():Void {
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L207"
                            ({
                                final r = stdgo.Go.recover_exception;
                                stdgo.Go.recover_exception = null;
                                r;
                            });
                        };
                        a();
                    }) });
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L212"
            if ((((((((@:checkr _t ?? throw "null pointer dereference").data.length) < (16 : stdgo.GoInt) : Bool) || (@:checkr _t ?? throw "null pointer dereference").data[(4 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || (@:checkr _t ?? throw "null pointer dereference").data[(5 : stdgo.GoInt)] != ((0 : stdgo.GoUInt8)) : Bool) || ((((@:checkr _t ?? throw "null pointer dereference").data[(6 : stdgo.GoInt)] != ((1 : stdgo.GoUInt8)) && (@:checkr _t ?? throw "null pointer dereference").data[(6 : stdgo.GoInt)] != ((2 : stdgo.GoUInt8)) : Bool) && ((@:checkr _t ?? throw "null pointer dereference").data[(6 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) : Bool)) : Bool) || ((((@:checkr _t ?? throw "null pointer dereference").data[(7 : stdgo.GoInt)] != (4 : stdgo.GoUInt8)) && ((@:checkr _t ?? throw "null pointer dereference").data[(7 : stdgo.GoInt)] != (8 : stdgo.GoUInt8)) : Bool)) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L215"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            var _possibleVersion:stdgo._internal.debug.gosym.Gosym_t_version.T_version = ((0 : stdgo.GoInt) : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
            var _leMagic = (stdgo._internal.encoding.binary.Binary_littleendian.littleEndian.uint32((@:checkr _t ?? throw "null pointer dereference").data) : stdgo.GoUInt32);
            var _beMagic = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32((@:checkr _t ?? throw "null pointer dereference").data) : stdgo.GoUInt32);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L221"
            if (_leMagic == ((-5u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                    final __tmp__1 = (2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_beMagic == ((-5u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                    final __tmp__1 = (2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_leMagic == ((-6u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                    final __tmp__1 = (3 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_beMagic == ((-6u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                    final __tmp__1 = (3 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_leMagic == ((-16u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                    final __tmp__1 = (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_beMagic == ((-16u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                    final __tmp__1 = (4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_leMagic == ((-15u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_littleendian.littleEndian);
                    final __tmp__1 = (5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else if (_beMagic == ((-15u32 : stdgo.GoUInt32))) {
                {
                    final __tmp__0 = stdgo.Go.asInterface(stdgo._internal.encoding.binary.Binary_bigendian.bigEndian);
                    final __tmp__1 = (5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version);
                    (@:checkr _t ?? throw "null pointer dereference")._binary = @:binopAssign __tmp__0;
                    _possibleVersion = @:binopAssign __tmp__1;
                };
            } else {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L239"
                {
                    for (defer in __deferstack__) {
                        if (defer.ran) continue;
                        defer.ran = true;
                        defer.f();
                    };
                    return;
                };
            };
            (@:checkr _t ?? throw "null pointer dereference")._version = _possibleVersion;
            (@:checkr _t ?? throw "null pointer dereference")._quantum = ((@:checkr _t ?? throw "null pointer dereference").data[(6 : stdgo.GoInt)] : stdgo.GoUInt32);
            (@:checkr _t ?? throw "null pointer dereference")._ptrsize = ((@:checkr _t ?? throw "null pointer dereference").data[(7 : stdgo.GoInt)] : stdgo.GoUInt32);
            var _offset = (function(_word:stdgo.GoUInt32):stdgo.GoUInt64 {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L248"
                return _t._uintptr(((@:checkr _t ?? throw "null pointer dereference").data.__slice__(((8u32 : stdgo.GoUInt32) + (_word * (@:checkr _t ?? throw "null pointer dereference")._ptrsize : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>));
            } : stdgo.GoUInt32 -> stdgo.GoUInt64);
            var _data = function(_word:stdgo.GoUInt32):stdgo.Slice<stdgo.GoUInt8> {
                //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L251"
                return ((@:checkr _t ?? throw "null pointer dereference").data.__slice__(_offset(_word)) : stdgo.Slice<stdgo.GoUInt8>);
            };
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L254"
            {
                final __value__ = _possibleVersion;
                if (__value__ == ((4 : stdgo._internal.debug.gosym.Gosym_t_version.T_version)) || __value__ == ((5 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                    (@:checkr _t ?? throw "null pointer dereference")._nfunctab = (_offset((0u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._nfiletab = (_offset((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._textStart = (@:checkr _t ?? throw "null pointer dereference").pC;
                    (@:checkr _t ?? throw "null pointer dereference")._funcnametab = _data((3u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._cutab = _data((4u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._filetab = _data((5u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._pctab = _data((6u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._funcdata = _data((7u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._functab = _data((7u32 : stdgo.GoUInt32));
                    var _functabsize = ((((((@:checkr _t ?? throw "null pointer dereference")._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    (@:checkr _t ?? throw "null pointer dereference")._functab = ((@:checkr _t ?? throw "null pointer dereference")._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((3 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                    (@:checkr _t ?? throw "null pointer dereference")._nfunctab = (_offset((0u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._nfiletab = (_offset((1u32 : stdgo.GoUInt32)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._funcnametab = _data((2u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._cutab = _data((3u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._filetab = _data((4u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._pctab = _data((5u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._funcdata = _data((6u32 : stdgo.GoUInt32));
                    (@:checkr _t ?? throw "null pointer dereference")._functab = _data((6u32 : stdgo.GoUInt32));
                    var _functabsize = ((((((@:checkr _t ?? throw "null pointer dereference")._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    (@:checkr _t ?? throw "null pointer dereference")._functab = ((@:checkr _t ?? throw "null pointer dereference")._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                } else if (__value__ == ((2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version))) {
                    (@:checkr _t ?? throw "null pointer dereference")._nfunctab = (_t._uintptr(((@:checkr _t ?? throw "null pointer dereference").data.__slice__((8 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._funcdata = (@:checkr _t ?? throw "null pointer dereference").data;
                    (@:checkr _t ?? throw "null pointer dereference")._funcnametab = (@:checkr _t ?? throw "null pointer dereference").data;
                    (@:checkr _t ?? throw "null pointer dereference")._functab = ((@:checkr _t ?? throw "null pointer dereference").data.__slice__(((8u32 : stdgo.GoUInt32) + (@:checkr _t ?? throw "null pointer dereference")._ptrsize : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _t ?? throw "null pointer dereference")._pctab = (@:checkr _t ?? throw "null pointer dereference").data;
                    var _functabsize = ((((((@:checkr _t ?? throw "null pointer dereference")._nfunctab : stdgo.GoInt) * (2 : stdgo.GoInt) : stdgo.GoInt) + (1 : stdgo.GoInt) : stdgo.GoInt)) * _t._functabFieldSize() : stdgo.GoInt);
                    var _fileoff = ((@:checkr _t ?? throw "null pointer dereference")._binary.uint32(((@:checkr _t ?? throw "null pointer dereference")._functab.__slice__(_functabsize) : stdgo.Slice<stdgo.GoUInt8>)) : stdgo.GoUInt32);
                    (@:checkr _t ?? throw "null pointer dereference")._functab = ((@:checkr _t ?? throw "null pointer dereference")._functab.__slice__(0, _functabsize) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _t ?? throw "null pointer dereference")._filetab = ((@:checkr _t ?? throw "null pointer dereference").data.__slice__(_fileoff) : stdgo.Slice<stdgo.GoUInt8>);
                    (@:checkr _t ?? throw "null pointer dereference")._nfiletab = (@:checkr _t ?? throw "null pointer dereference")._binary.uint32((@:checkr _t ?? throw "null pointer dereference")._filetab);
                    (@:checkr _t ?? throw "null pointer dereference")._filetab = ((@:checkr _t ?? throw "null pointer dereference")._filetab.__slice__(0, ((@:checkr _t ?? throw "null pointer dereference")._nfiletab * (4u32 : stdgo.GoUInt32) : stdgo.GoUInt32)) : stdgo.Slice<stdgo.GoUInt8>);
                } else {
                    //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L291"
                    throw stdgo.Go.toInterface(("unreachable" : stdgo.GoString));
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
                if ((exe is stdgo.AnyInterface.AnyInterfaceData) == false) {
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
    static public function _uintptr( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _b:stdgo.Slice<stdgo.GoUInt8>):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L183"
        if ((@:checkr _t ?? throw "null pointer dereference")._ptrsize == ((4u32 : stdgo.GoUInt32))) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L184"
            return ((@:checkr _t ?? throw "null pointer dereference")._binary.uint32(_b) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L186"
        return (@:checkr _t ?? throw "null pointer dereference")._binary.uint64(_b);
    }
    @:keep
    @:tdfield
    static public function _isGo12( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>):Bool {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L169"
        _t._parsePclnTab();
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L170"
        return ((@:checkr _t ?? throw "null pointer dereference")._version >= (2 : stdgo._internal.debug.gosym.Gosym_t_version.T_version) : Bool);
    }
    @:keep
    @:tdfield
    static public function lineToPC( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _line:stdgo.GoInt, _maxpc:stdgo.GoUInt64):stdgo.GoUInt64 {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L137"
        if (_t._isGo12()) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L138"
            return (0i64 : stdgo.GoUInt64);
        };
        var __tmp__ = _t._parse(_maxpc, _line), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _pc:stdgo.GoUInt64 = __tmp__._1, _line1:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L141"
        if (_line1 != (_line)) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L142"
            return (0i64 : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L145"
        return (_pc - (1i64 : stdgo.GoUInt64) : stdgo.GoUInt64);
    }
    @:keep
    @:tdfield
    static public function pCToLine( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pc:stdgo.GoUInt64):stdgo.GoInt {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L125"
        if (_t._isGo12()) {
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L126"
            return _t._go12PCToLine(_pc);
        };
        var __tmp__ = _t._parse(_pc, (-1 : stdgo.GoInt)), __0:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, __1:stdgo.GoUInt64 = __tmp__._1, _line:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L129"
        return _line;
    }
    @:keep
    @:tdfield
    static public function _slice( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _pc:stdgo.GoUInt64):stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var __tmp__ = _t._parse(_pc, (-1 : stdgo.GoInt)), _data:stdgo.Slice<stdgo.GoUInt8> = __tmp__._0, _pc:stdgo.GoUInt64 = __tmp__._1, _line:stdgo.GoInt = __tmp__._2;
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L118"
        return (stdgo.Go.setRef(({ data : _data, pC : _pc, line : _line } : stdgo._internal.debug.gosym.Gosym_linetable.LineTable)) : stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>);
    }
    @:keep
    @:tdfield
    static public function _parse( _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable>, _targetPC:stdgo.GoUInt64, _targetLine:stdgo.GoInt):{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } {
        @:recv var _t:stdgo.Ref<stdgo._internal.debug.gosym.Gosym_linetable.LineTable> = _t;
        var _b = (null : stdgo.Slice<stdgo.GoUInt8>), _pc = (0 : stdgo.GoUInt64), _line = (0 : stdgo.GoInt);
        {
            final __tmp__0 = (@:checkr _t ?? throw "null pointer dereference").data;
            final __tmp__1 = (@:checkr _t ?? throw "null pointer dereference").pC;
            final __tmp__2 = (@:checkr _t ?? throw "null pointer dereference").line;
            _b = @:binopAssign __tmp__0;
            _pc = @:binopAssign __tmp__1;
            _line = @:binopAssign __tmp__2;
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L91"
        while ((((_pc <= _targetPC : Bool) && _line != (_targetLine) : Bool) && ((_b.length) > (0 : stdgo.GoInt) : Bool) : Bool)) {
            var _code = (_b[(0 : stdgo.GoInt)] : stdgo.GoUInt8);
            _b = (_b.__slice__((1 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L94"
            {
                var __continue__ = false;
                var __switchIndex__ = -1;
                var __run__ = true;
                while (__run__) {
                    __run__ = false;
                    if (_code == ((0 : stdgo.GoUInt8))) {
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L96"
                        if (((_b.length) < (4 : stdgo.GoInt) : Bool)) {
                            _b = (_b.__slice__((0 : stdgo.GoInt), (0 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                            //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L98"
                            break;
                        };
                        var _val = (stdgo._internal.encoding.binary.Binary_bigendian.bigEndian.uint32(_b) : stdgo.GoUInt32);
                        _b = (_b.__slice__((4 : stdgo.GoInt)) : stdgo.Slice<stdgo.GoUInt8>);
                        _line = (_line + ((_val : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else if ((_code <= (64 : stdgo.GoUInt8) : Bool)) {
                        _line = (_line + ((_code : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else if ((_code <= (128 : stdgo.GoUInt8) : Bool)) {
                        _line = (_line - (((_code - (64 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoInt)) : stdgo.GoInt);
                        break;
                    } else {
                        _pc = (_pc + (((1i64 : stdgo.GoUInt64) * ((_code - (128 : stdgo.GoUInt8) : stdgo.GoUInt8) : stdgo.GoUInt64) : stdgo.GoUInt64)) : stdgo.GoUInt64);
                        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L109"
                        {
                            __continue__ = true;
                            break;
                        };
                    };
                    break;
                };
                if (__continue__) continue;
            };
            _pc = (_pc + ((1i64 : stdgo.GoUInt64)) : stdgo.GoUInt64);
        };
        //"file:///home/runner/.go/go1.21.3/src/debug/gosym/pclntab.go#L113"
        return {
            @:typeReturnStmt2 final __tmp__:{ var _0 : stdgo.Slice<stdgo.GoUInt8>; var _1 : stdgo.GoUInt64; var _2 : stdgo.GoInt; } = { _0 : _b, _1 : _pc, _2 : _line };
            _b = __tmp__._0;
            _pc = __tmp__._1;
            _line = __tmp__._2;
            __tmp__;
        };
    }
}
