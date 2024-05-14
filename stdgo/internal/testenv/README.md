# Module: `stdgo.internal.testenv`

[(view library index)](../../stdgo.md)


# Overview


# Index


- [Variables](<#variables>)

- [class Testenv](<#class-testenv>)

  - [`function builder():String`](<#testenv-function-builder>)

  - [`function canInternalLink(withCgo:Bool):Bool`](<#testenv-function-caninternallink>)

  - [`function cleanCmdEnv(cmd:stdgo._internal.os.exec.Cmd):stdgo._internal.os.exec.Cmd`](<#testenv-function-cleancmdenv>)

  - [`function command(t:stdgo._internal.testing.TB, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Cmd`](<#testenv-function-command>)

  - [`function commandContext(t:stdgo._internal.testing.TB, ctx:stdgo._internal.context.Context, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Cmd`](<#testenv-function-commandcontext>)

  - [`function cpuisSlow():Bool`](<#testenv-function-cpuisslow>)

  - [`function goTool():stdgo.Tuple<String, stdgo.Error>`](<#testenv-function-gotool>)

  - [`function goToolPath(t:stdgo._internal.testing.TB):String`](<#testenv-function-gotoolpath>)

  - [`function goroot(t:stdgo._internal.testing.TB):String`](<#testenv-function-goroot>)

  - [`function hasCGO():Bool`](<#testenv-function-hascgo>)

  - [`function hasExternalNetwork():Bool`](<#testenv-function-hasexternalnetwork>)

  - [`function hasGoBuild():Bool`](<#testenv-function-hasgobuild>)

  - [`function hasGoRun():Bool`](<#testenv-function-hasgorun>)

  - [`function hasLink():Bool`](<#testenv-function-haslink>)

  - [`function hasParallelism():Bool`](<#testenv-function-hasparallelism>)

  - [`function hasSrc():Bool`](<#testenv-function-hassrc>)

  - [`function hasSymlink():Bool`](<#testenv-function-hassymlink>)

  - [`function mustHaveBuildMode(t:stdgo._internal.testing.TB, buildmode:String):Void`](<#testenv-function-musthavebuildmode>)

  - [`function mustHaveCGO(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthavecgo>)

  - [`function mustHaveExec(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthaveexec>)

  - [`function mustHaveExecPath(t:stdgo._internal.testing.TB, path:String):Void`](<#testenv-function-musthaveexecpath>)

  - [`function mustHaveExternalNetwork(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthaveexternalnetwork>)

  - [`function mustHaveGoBuild(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthavegobuild>)

  - [`function mustHaveGoRun(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthavegorun>)

  - [`function mustHaveLink(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthavelink>)

  - [`function mustHaveParallelism(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthaveparallelism>)

  - [`function mustHaveSymlink(t:stdgo._internal.testing.TB):Void`](<#testenv-function-musthavesymlink>)

  - [`function mustInternalLink(t:stdgo._internal.testing.TB, withCgo:Bool):Void`](<#testenv-function-mustinternallink>)

  - [`function optimizationOff():Bool`](<#testenv-function-optimizationoff>)

  - [`function skipFlaky(t:stdgo._internal.testing.TB, issue:Int):Void`](<#testenv-function-skipflaky>)

  - [`function skipFlakyNet(t:stdgo._internal.testing.TB):Void`](<#testenv-function-skipflakynet>)

  - [`function skipIfOptimizationOff(t:stdgo._internal.testing.TB):Void`](<#testenv-function-skipifoptimizationoff>)

  - [`function skipIfShortAndSlow(t:stdgo._internal.testing.TB):Void`](<#testenv-function-skipifshortandslow>)

  - [`function syscallIsNotSupported(err:stdgo.Error):Bool`](<#testenv-function-syscallisnotsupported>)

  - [`function writeImportcfg(t:stdgo._internal.testing.TB, dstPath:String, packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, pkgs:haxe.Rest<String>):Void`](<#testenv-function-writeimportcfg>)

- [typedef T\_\_interface\_0](<#typedef-t__interface_0>)

# Variables


```haxe
import stdgo.internal.testenv.Testenv
```


```haxe
var sigquit:stdgo._internal.os.Signal
```


# Classes


```haxe
import stdgo.internal.testenv.*
```


## class Testenv


```
Package testenv provides information about what functionality
    is available in different testing environments run by the Go team.
```

It is an internal package because these details are specific
to the Go team's test setup \(on build.golang.org\) and not
fundamental to tests in general.  

### Testenv function builder


```haxe
function builder():String
```


```
Builder reports the name of the builder running this test
        (for example, "linux-amd64" or "windows-386-gce").
        If the test is not running on the build infrastructure,
        Builder returns the empty string.
```
[\(view code\)](<./Testenv.hx#L91>)


### Testenv function canInternalLink


```haxe
function canInternalLink(withCgo:Bool):Bool
```


```
CanInternalLink reports whether the current system can link programs with
        internal linking.
```
[\(view code\)](<./Testenv.hx#L204>)


### Testenv function cleanCmdEnv


```haxe
function cleanCmdEnv(cmd:stdgo._internal.os.exec.Cmd):stdgo._internal.os.exec.Cmd
```


```
CleanCmdEnv will fill cmd.Env with the environment, excluding certain
        variables that could modify the behavior of the Go tools such as
        GODEBUG and GOTRACEBACK.
```
[\(view code\)](<./Testenv.hx#L56>)


### Testenv function command


```haxe
function command(t:stdgo._internal.testing.TB, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Cmd
```


```
Command is like exec.Command, but applies the same changes as
        testenv.CommandContext (with a default Context).
```
[\(view code\)](<./Testenv.hx#L76>)


### Testenv function commandContext


```haxe
function commandContext(t:stdgo._internal.testing.TB, ctx:stdgo._internal.context.Context, name:String, args:haxe.Rest<String>):stdgo._internal.os.exec.Cmd
```


```
CommandContext is like exec.CommandContext, but:
          - skips t if the platform does not support os/exec,
          - sends SIGQUIT (if supported by the platform) instead of SIGKILL
            in its Cancel function
          - if the test has a deadline, adds a Context timeout and WaitDelay
            for an arbitrary grace period before the test's deadline expires,
          - fails the test if the command does not complete before the test's deadline, and
          - sets a Cleanup function that verifies that the test did not leak a subprocess.
```
[\(view code\)](<./Testenv.hx#L69>)


### Testenv function cpuisSlow


```haxe
function cpuisSlow():Bool
```



CPUIsSlow reports whether the CPU running the test is suspected to be slow.  

[\(view code\)](<./Testenv.hx#L258>)


### Testenv function goTool


```haxe
function goTool():stdgo.Tuple<String, stdgo.Error>
```



GoTool reports the path to the Go tool.  

[\(view code\)](<./Testenv.hx#L161>)


### Testenv function goToolPath


```haxe
function goToolPath(t:stdgo._internal.testing.TB):String
```


```
GoToolPath reports the path to the Go tool.
        It is a convenience wrapper around GoTool.
        If the tool is unavailable GoToolPath calls t.Skip.
        If the tool should be available and isn't, GoToolPath calls t.Fatal.
```
[\(view code\)](<./Testenv.hx#L143>)


### Testenv function goroot


```haxe
function goroot(t:stdgo._internal.testing.TB):String
```


```
GOROOT reports the path to the directory containing the root of the Go
        project source tree. This is normally equivalent to runtime.GOROOT, but
        works even if the test binary was built with -trimpath and cannot exec
        'go env GOROOT'.
```

If GOROOT cannot be found, GOROOT skips t if t is non\-nil,
or panics otherwise.  

[\(view code\)](<./Testenv.hx#L155>)


### Testenv function hasCGO


```haxe
function hasCGO():Bool
```



HasCGO reports whether the current system can use cgo.  

[\(view code\)](<./Testenv.hx#L191>)


### Testenv function hasExternalNetwork


```haxe
function hasExternalNetwork():Bool
```


```
HasExternalNetwork reports whether the current system can use
        external (non-localhost) networks.
```
[\(view code\)](<./Testenv.hx#L177>)


### Testenv function hasGoBuild


```haxe
function hasGoBuild():Bool
```


```
HasGoBuild reports whether the current system can build programs with “go build”
        and then run them with os.StartProcess or exec.Command.
```
[\(view code\)](<./Testenv.hx#L98>)


### Testenv function hasGoRun


```haxe
function hasGoRun():Bool
```



HasGoRun reports whether the current system can run programs with “go run.”  

[\(view code\)](<./Testenv.hx#L112>)


### Testenv function hasLink


```haxe
function hasLink():Bool
```



HasLink reports whether the current system can use os.Link.  

[\(view code\)](<./Testenv.hx#L239>)


### Testenv function hasParallelism


```haxe
function hasParallelism():Bool
```


```
HasParallelism reports whether the current system can execute multiple
        threads in parallel.
        There is a copy of this function in cmd/dist/test.go.
```
[\(view code\)](<./Testenv.hx#L127>)


### Testenv function hasSrc


```haxe
function hasSrc():Bool
```



HasSrc reports whether the entire source tree is available under GOROOT.  

[\(view code\)](<./Testenv.hx#L170>)


### Testenv function hasSymlink


```haxe
function hasSymlink():Bool
```



HasSymlink reports whether the current system can use os.Symlink.  

[\(view code\)](<./Testenv.hx#L226>)


### Testenv function mustHaveBuildMode


```haxe
function mustHaveBuildMode(t:stdgo._internal.testing.TB, buildmode:String):Void
```


```
MustHaveBuildMode reports whether the current system can build programs in
        the given build mode.
        If not, MustHaveBuildMode calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L220>)


### Testenv function mustHaveCGO


```haxe
function mustHaveCGO(t:stdgo._internal.testing.TB):Void
```



MustHaveCGO calls t.Skip if cgo is not available.  

[\(view code\)](<./Testenv.hx#L197>)


### Testenv function mustHaveExec


```haxe
function mustHaveExec(t:stdgo._internal.testing.TB):Void
```


```
MustHaveExec checks that the current system can start new processes
        using os.StartProcess or (more commonly) exec.Command.
        If not, MustHaveExec calls t.Skip with an explanation.
```

On some platforms MustHaveExec checks for exec support by re\-executing the
current executable, which must be a binary built by 'go test'.
We intentionally do not provide a HasExec function because of the risk of
inappropriate recursion in TestMain functions.  


To check for exec support outside of a test, just try to exec the command.
If exec is not supported, testenv.SyscallIsNotSupported will return true
for the resulting error.  

[\(view code\)](<./Testenv.hx#L40>)


### Testenv function mustHaveExecPath


```haxe
function mustHaveExecPath(t:stdgo._internal.testing.TB, path:String):Void
```


```
MustHaveExecPath checks that the current system can start the named executable
        using os.StartProcess or (more commonly) exec.Command.
        If not, MustHaveExecPath calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L48>)


### Testenv function mustHaveExternalNetwork


```haxe
function mustHaveExternalNetwork(t:stdgo._internal.testing.TB):Void
```


```
MustHaveExternalNetwork checks that the current system can use
        external (non-localhost) networks.
        If not, MustHaveExternalNetwork calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L185>)


### Testenv function mustHaveGoBuild


```haxe
function mustHaveGoBuild(t:stdgo._internal.testing.TB):Void
```


```
MustHaveGoBuild checks that the current system can build programs with “go build”
        and then run them with os.StartProcess or exec.Command.
        If not, MustHaveGoBuild calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L106>)


### Testenv function mustHaveGoRun


```haxe
function mustHaveGoRun(t:stdgo._internal.testing.TB):Void
```


```
MustHaveGoRun checks that the current system can run programs with “go run.”
        If not, MustHaveGoRun calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L119>)


### Testenv function mustHaveLink


```haxe
function mustHaveLink(t:stdgo._internal.testing.TB):Void
```


```
MustHaveLink reports whether the current system can use os.Link.
        If not, MustHaveLink calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L246>)


### Testenv function mustHaveParallelism


```haxe
function mustHaveParallelism(t:stdgo._internal.testing.TB):Void
```


```
MustHaveParallelism checks that the current system can execute multiple
        threads in parallel. If not, MustHaveParallelism calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L134>)


### Testenv function mustHaveSymlink


```haxe
function mustHaveSymlink(t:stdgo._internal.testing.TB):Void
```


```
MustHaveSymlink reports whether the current system can use os.Symlink.
        If not, MustHaveSymlink calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L233>)


### Testenv function mustInternalLink


```haxe
function mustInternalLink(t:stdgo._internal.testing.TB, withCgo:Bool):Void
```


```
MustInternalLink checks that the current system can link programs with internal
        linking.
        If not, MustInternalLink calls t.Skip with an explanation.
```
[\(view code\)](<./Testenv.hx#L212>)


### Testenv function optimizationOff


```haxe
function optimizationOff():Bool
```



OptimizationOff reports whether optimization is disabled.  

[\(view code\)](<./Testenv.hx#L82>)


### Testenv function skipFlaky


```haxe
function skipFlaky(t:stdgo._internal.testing.TB, issue:Int):Void
```


[\(view code\)](<./Testenv.hx#L249>)


### Testenv function skipFlakyNet


```haxe
function skipFlakyNet(t:stdgo._internal.testing.TB):Void
```


[\(view code\)](<./Testenv.hx#L252>)


### Testenv function skipIfOptimizationOff


```haxe
function skipIfOptimizationOff(t:stdgo._internal.testing.TB):Void
```



SkipIfOptimizationOff skips t if optimization is disabled.  

[\(view code\)](<./Testenv.hx#L273>)


### Testenv function skipIfShortAndSlow


```haxe
function skipIfShortAndSlow(t:stdgo._internal.testing.TB):Void
```


```
SkipIfShortAndSlow skips t if -short is set and the CPU running the test is
        suspected to be slow.
```

\(This is useful for CPU\-intensive tests that otherwise complete quickly.\)  

[\(view code\)](<./Testenv.hx#L267>)


### Testenv function syscallIsNotSupported


```haxe
function syscallIsNotSupported(err:stdgo.Error):Bool
```


```
SyscallIsNotSupported reports whether err may indicate that a system call is
        not supported by the current platform or execution environment.
```
[\(view code\)](<./Testenv.hx#L291>)


### Testenv function writeImportcfg


```haxe
function writeImportcfg(t:stdgo._internal.testing.TB, dstPath:String, packageFiles:stdgo.GoMap<stdgo.GoString, stdgo.GoString>, pkgs:haxe.Rest<String>):Void
```


```
WriteImportcfg writes an importcfg file used by the compiler or linker to
        dstPath containing entries for the file mappings in packageFiles, as well
        as for the packages transitively imported by the package(s) in pkgs.
```

pkgs may include any package pattern that is valid to pass to 'go list',
so it may also be a list of Go source files all in the same directory.  

[\(view code\)](<./Testenv.hx#L284>)


# Typedefs


```haxe
import stdgo.internal.testenv.*
```


## typedef T\_\_interface\_0


```haxe
typedef T__interface_0 = stdgo._internal.internal.testenv.T__interface_0;
```


