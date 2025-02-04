package stdgo._internal.crypto.internal.randutil;
function maybeReadByte(_r:stdgo._internal.io.Io_reader.Reader):Void {
        @:check2 stdgo._internal.crypto.internal.randutil.Randutil__closedchanonce._closedChanOnce.do_(function():Void {
            stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan = (new stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0.T__struct_0>(0, () -> ({  } : stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0.T__struct_0)) : stdgo.Chan<stdgo._internal.crypto.internal.randutil.Randutil_t__struct_0.T__struct_0>);
            if (stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan != null) stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__close__();
        });
        {
            var __select__ = true;
            while (__select__) {
                if (stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan != null && stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__get__();
                        {
                            return;
                        };
                    };
                } else if (stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan != null && stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__isGet__()) {
                    __select__ = false;
                    {
                        stdgo._internal.crypto.internal.randutil.Randutil__closedchan._closedChan.__get__();
                        {
                            var _buf:stdgo.GoArray<stdgo.GoUInt8> = new stdgo.GoArray<stdgo.GoUInt8>(1, 1).__setNumber32__();
                            _r.read((_buf.__slice__(0) : stdgo.Slice<stdgo.GoUInt8>));
                        };
                    };
                };
                #if !js Sys.sleep(0.01) #else null #end;
                stdgo._internal.internal.Async.tick();
            };
        };
    }
