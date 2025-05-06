package stdgo._internal.go.build;
function _fileListForExt(_p:stdgo.Ref<stdgo._internal.go.build.Build_package.Package>, _ext:stdgo.GoString):stdgo.Ref<stdgo.Slice<stdgo.GoString>> {
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1063"
        {
            final __value__ = _ext;
            if (__value__ == ((".c" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1065"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").cFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".cc" : stdgo.GoString)) || __value__ == ((".cpp" : stdgo.GoString)) || __value__ == ((".cxx" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1067"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").cXXFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".m" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1069"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").mFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".h" : stdgo.GoString)) || __value__ == ((".hh" : stdgo.GoString)) || __value__ == ((".hpp" : stdgo.GoString)) || __value__ == ((".hxx" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1071"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").hFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".f" : stdgo.GoString)) || __value__ == ((".F" : stdgo.GoString)) || __value__ == ((".for" : stdgo.GoString)) || __value__ == ((".f90" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1073"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").fFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".s" : stdgo.GoString)) || __value__ == ((".S" : stdgo.GoString)) || __value__ == ((".sx" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1075"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").sFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".swig" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1077"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").swigFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".swigcxx" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1079"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").swigCXXFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            } else if (__value__ == ((".syso" : stdgo.GoString))) {
                //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1081"
                return (stdgo.Go.setRef((@:checkr _p ?? throw "null pointer dereference").sysoFiles) : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
            };
        };
        //"file:///home/runner/.go/go1.21.3/src/go/build/build.go#L1083"
        return (null : stdgo.Ref<stdgo.Slice<stdgo.GoString>>);
    }
