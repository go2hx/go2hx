package stdgo._internal.crypto.internal.randutil;
function maybeReadByte(_r:stdgo._internal.io.Io_Reader.Reader):Void {
        @:check2 stdgo._internal.crypto.internal.randutil.Randutil__closedChanOnce._closedChanOnce.do_(function():Void {
            stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan = (new stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0.T__struct_0>(0, () -> ({  } : stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_T__struct_0.T__struct_0>);
            if (stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan != null) stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan.__close__();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan != null && stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan.__get__();
                        {
                            return;
                        };
                    };
                } else if (stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan != null && stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.crypto.internal.randutil.Randutil__closedChan._closedChan.__get__();
                        {
                            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1, ...[for (i in 0 ... 1) (0 : stdgo.GoUInt8)]);
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
