package stdgo._internal.go.token;
@:keep @:allow(stdgo._internal.go.token.Token.FileSet_asInterface) class FileSet_static_extension {
    @:keep
    @:tdfield
    static public function write( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _encode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _ss:stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet = ({} : stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L52"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
        _ss.base = (@:checkr _s ?? throw "null pointer dereference")._base;
        var _files = (new stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>(((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic(), 0, ...[for (i in 0 ... (((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic() > 0 ? ((@:checkr _s ?? throw "null pointer dereference")._files.length : stdgo.GoInt).toBasic() : 0 : stdgo.GoInt).toBasic()) ({} : stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile)]) : stdgo.Slice<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L55"
        for (_i => _f in (@:checkr _s ?? throw "null pointer dereference")._files) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L56"
            (@:checkr _f ?? throw "null pointer dereference")._mutex.lock();
            _files[(_i : stdgo.GoInt)] = ({ name : (@:checkr _f ?? throw "null pointer dereference")._name?.__copy__(), base : (@:checkr _f ?? throw "null pointer dereference")._base, size : (@:checkr _f ?? throw "null pointer dereference")._size, lines : ((null : stdgo.Slice<stdgo.GoInt>).__append__(...((@:checkr _f ?? throw "null pointer dereference")._lines : Array<stdgo.GoInt>)) : stdgo.Slice<stdgo.GoInt>), infos : ((null : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>).__append__(...((@:checkr _f ?? throw "null pointer dereference")._infos : Array<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>)) : stdgo.Slice<stdgo._internal.go.token.Token_t_lineinfo.T_lineInfo>) } : stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile);
            //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L64"
            (@:checkr _f ?? throw "null pointer dereference")._mutex.unlock();
        };
        _ss.files = _files;
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L67"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L69"
        return _encode(stdgo.Go.toInterface(stdgo.Go.asInterface(_ss)));
    }
    @:keep
    @:tdfield
    static public function read( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _decode:stdgo.AnyInterface -> stdgo.Error):stdgo.Error {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _ss:stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet = ({} : stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L24"
        {
            var _err = (_decode(stdgo.Go.toInterface(stdgo.Go.asInterface((stdgo.Go.setRef(_ss) : stdgo.Ref<stdgo._internal.go.token.Token_t_serializedfileset.T_serializedFileSet>)))) : stdgo.Error);
            if (_err != null) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L25"
                return _err;
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L28"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
        (@:checkr _s ?? throw "null pointer dereference")._base = _ss.base;
        var _files = (new stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>((_ss.files.length : stdgo.GoInt).toBasic(), 0) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L31"
        {
            var _i = (0 : stdgo.GoInt);
            while ((_i < (_ss.files.length) : Bool)) {
                var _f = (stdgo.Go.setRef(_ss.files[(_i : stdgo.GoInt)]) : stdgo.Ref<stdgo._internal.go.token.Token_t_serializedfile.T_serializedFile>);
_files[(_i : stdgo.GoInt)] = (stdgo.Go.setRef(({ _name : (@:checkr _f ?? throw "null pointer dereference").name.__copy__(), _base : (@:checkr _f ?? throw "null pointer dereference").base, _size : (@:checkr _f ?? throw "null pointer dereference").size, _lines : (@:checkr _f ?? throw "null pointer dereference").lines, _infos : (@:checkr _f ?? throw "null pointer dereference").infos } : stdgo._internal.go.token.Token_file.File)) : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
                _i++;
            };
        };
        (@:checkr _s ?? throw "null pointer dereference")._files = _files;
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L42"
        (@:checkr _s ?? throw "null pointer dereference")._last.store(null);
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L43"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock();
        //"file:///home/runner/.go/go1.21.3/src/go/token/serialize.go#L45"
        return (null : stdgo.Error);
    }
    @:keep
    @:tdfield
    static public function position( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo._internal.go.token.Token_position.Position {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L538"
        return _pos = _s.positionFor(_p, true)?.__copy__();
    }
    @:keep
    @:tdfield
    static public function positionFor( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos, _adjusted:Bool):stdgo._internal.go.token.Token_position.Position {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _pos = ({} : stdgo._internal.go.token.Token_position.Position);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L527"
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L528"
            {
                var _f = _s._file(_p);
                if (({
                    final value = _f;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                })) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L529"
                    return _pos = _f._position(_p, _adjusted)?.__copy__();
                };
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L532"
        return _pos;
    }
    @:keep
    @:tdfield
    static public function file( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var _f = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L516"
        if (_p != ((0 : stdgo._internal.go.token.Token_pos.Pos))) {
            _f = _s._file(_p);
        };
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L519"
        return _f;
    }
    @:keep
    @:tdfield
    static public function _file( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _p:stdgo._internal.go.token.Token_pos.Pos):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L491"
            {
                var _f = (@:checkr _s ?? throw "null pointer dereference")._last.load();
                if (((({
                    final value = _f;
                    (value != null && ((value : Dynamic).__nil__ == null || !(value : Dynamic).__nil__));
                }) && ((@:checkr _f ?? throw "null pointer dereference")._base <= (_p : stdgo.GoInt) : Bool) : Bool) && ((_p : stdgo.GoInt) <= ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L492"
                    return _f;
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L495"
            (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L499"
            {
                var _i = (stdgo._internal.go.token.Token__searchfiles._searchFiles((@:checkr _s ?? throw "null pointer dereference")._files, (_p : stdgo.GoInt)) : stdgo.GoInt);
                if ((_i >= (0 : stdgo.GoInt) : Bool)) {
                    var _f = (@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L502"
                    if (((_p : stdgo.GoInt) <= ((@:checkr _f ?? throw "null pointer dereference")._base + (@:checkr _f ?? throw "null pointer dereference")._size : stdgo.GoInt) : Bool)) {
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L505"
                        (@:checkr _s ?? throw "null pointer dereference")._last.store(_f);
                        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L506"
                        {
                            for (defer in __deferstack__) {
                                if (defer.ran) continue;
                                defer.ran = true;
                                defer.f();
                            };
                            return _f;
                        };
                    };
                };
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L509"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return null;
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function iterate( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _f:stdgo.Ref<stdgo._internal.go.token.Token_file.File> -> Bool):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L472"
        {
            var _i = (0 : stdgo.GoInt);
            while (true) {
                var _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File> = (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
//"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L474"
                (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
//"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L475"
                if ((_i < ((@:checkr _s ?? throw "null pointer dereference")._files.length) : Bool)) {
                    _file = (@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)];
                };
//"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L478"
                (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock();
//"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L479"
                if ((({
                    final value = _file;
                    (value == null || (value : Dynamic).__nil__);
                }) || !_f(_file) : Bool)) {
                    //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L480"
                    break;
                };
                _i++;
            };
        };
    }
    @:keep
    @:tdfield
    static public function removeFile( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _file:stdgo.Ref<stdgo._internal.go.token.Token_file.File>):Void {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L457"
            (@:checkr _s ?? throw "null pointer dereference")._last.compareAndSwap(_file, null);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L459"
            (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L462"
            {
                var _i = (stdgo._internal.go.token.Token__searchfiles._searchFiles((@:checkr _s ?? throw "null pointer dereference")._files, (@:checkr _file ?? throw "null pointer dereference")._base) : stdgo.GoInt);
                if (((_i >= (0 : stdgo.GoInt) : Bool) && ((@:checkr _s ?? throw "null pointer dereference")._files[(_i : stdgo.GoInt)] == _file) : Bool)) {
                    var _last = stdgo.Go.pointer((@:checkr _s ?? throw "null pointer dereference")._files[(((@:checkr _s ?? throw "null pointer dereference")._files.length) - (1 : stdgo.GoInt) : stdgo.GoInt)]);
                    (@:checkr _s ?? throw "null pointer dereference")._files = (((@:checkr _s ?? throw "null pointer dereference")._files.__slice__(0, _i) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>).__append__(...(((@:checkr _s ?? throw "null pointer dereference")._files.__slice__((_i + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>) : Array<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>)) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
                    _last.value = null;
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
    static public function addFile( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>, _filename:stdgo.GoString, _base:stdgo.GoInt, _size:stdgo.GoInt):stdgo.Ref<stdgo._internal.go.token.Token_file.File> {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        var __deferstack__:Array<{ var ran : Bool; var f : Void -> Void; }> = [];
        try {
            var _f = (stdgo.Go.setRef(({ _name : _filename?.__copy__(), _size : _size, _lines : (new stdgo.Slice<stdgo.GoInt>(1, 1, ...[(0 : stdgo.GoInt)]).__setNumber32__() : stdgo.Slice<stdgo.GoInt>) } : stdgo._internal.go.token.Token_file.File)) : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L426"
            (@:checkr _s ?? throw "null pointer dereference")._mutex.lock();
            {
                final __f__ = (@:checkr _s ?? throw "null pointer dereference")._mutex.unlock;
                __deferstack__.unshift({ ran : false, f : () -> __f__() });
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L428"
            if ((_base < (0 : stdgo.GoInt) : Bool)) {
                _base = (@:checkr _s ?? throw "null pointer dereference")._base;
            };
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L431"
            if ((_base < (@:checkr _s ?? throw "null pointer dereference")._base : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L432"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid base %d (should be >= %d)" : stdgo.GoString), stdgo.Go.toInterface(_base), stdgo.Go.toInterface((@:checkr _s ?? throw "null pointer dereference")._base)));
            };
            (@:checkr _f ?? throw "null pointer dereference")._base = _base;
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L435"
            if ((_size < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L436"
                throw stdgo.Go.toInterface(stdgo._internal.fmt.Fmt_sprintf.sprintf(("invalid size %d (should be >= 0)" : stdgo.GoString), stdgo.Go.toInterface(_size)));
            };
            _base = (_base + ((_size + (1 : stdgo.GoInt) : stdgo.GoInt)) : stdgo.GoInt);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L440"
            if ((_base < (0 : stdgo.GoInt) : Bool)) {
                //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L441"
                throw stdgo.Go.toInterface(("token.Pos offset overflow (> 2G of source code in file set)" : stdgo.GoString));
            };
            (@:checkr _s ?? throw "null pointer dereference")._base = _base;
            (@:checkr _s ?? throw "null pointer dereference")._files = ((@:checkr _s ?? throw "null pointer dereference")._files.__append__(_f) : stdgo.Slice<stdgo.Ref<stdgo._internal.go.token.Token_file.File>>);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L446"
            (@:checkr _s ?? throw "null pointer dereference")._last.store(_f);
            //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L447"
            {
                for (defer in __deferstack__) {
                    if (defer.ran) continue;
                    defer.ran = true;
                    defer.f();
                };
                return _f;
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
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
                return (null : stdgo.Ref<stdgo._internal.go.token.Token_file.File>);
            };
        };
    }
    @:keep
    @:tdfield
    static public function base( _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet>):stdgo.GoInt {
        @:recv var _s:stdgo.Ref<stdgo._internal.go.token.Token_fileset.FileSet> = _s;
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L401"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.rLock();
        var _b = ((@:checkr _s ?? throw "null pointer dereference")._base : stdgo.GoInt);
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L403"
        (@:checkr _s ?? throw "null pointer dereference")._mutex.rUnlock();
        //"file:///home/runner/.go/go1.21.3/src/go/token/position.go#L404"
        return _b;
    }
}
